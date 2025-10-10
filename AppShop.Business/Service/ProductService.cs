using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Threading.Tasks;
using static Org.BouncyCastle.Crypto.Engines.SM2Engine;

namespace AppShop.Business.Service
{
    public class ProductService : IProductService
    {
        AppShopDBContext db;
        private readonly IMapper mapper;
        private readonly UploadPathProvider uploadPathProvider;
        public ProductService(AppShopDBContext _db, IMapper _mapper, UploadPathProvider _uploadPathProvider)
        {
            db = _db;
            mapper = _mapper;
            uploadPathProvider = _uploadPathProvider;
        }
        public bool Add(InProduct input)
        {
            var entity = mapper.Map<Product>(input);
            ValidtionData(entity);
            var pathImgs = CopyImage(input, entity.Code,0).Result;
            if (!pathImgs.Any())
            {
                throw new PersianException(Utility.GetMsgRequired("عکس"));
            }
            entity.PathImg = pathImgs.First();
            entity.Slug = SlugHelper.GenerateSlug(entity.Name);
            foreach (var item in pathImgs)
            {
                entity.ProductImages.Add(new ProductImage()
                {
                    PathImg = item
                });
            }
            db.Products.Add(entity);
            db.SaveChanges();
            return true;
        }
        public bool Update(InProduct input)
        {
            var old = db.Products.AsNoTracking().FirstOrDefault(x => x.Id == input.Id);
            var entity = mapper.Map<Product>(input);
            var fileName = $"product_{input.Id}";

            var pathImgs = input.ListOldFile;
            var newpathImgs = CopyImage(input, entity.Code,input.ListOldFile.Count).Result;
            if(newpathImgs.Any())
                pathImgs.AddRange(newpathImgs);
            
            if (!pathImgs.Any())
            {
                throw new PersianException(Utility.GetMsgRequired("عکس"));
            }
            var oldPathImage = db.ProductImages.Where(x => x.ProductId == input.Id).ToList();
            db.ProductImages.RemoveRange(oldPathImage);
            foreach (var item in pathImgs)
            {
                entity.ProductImages.Add(new ProductImage()
                {
                    PathImg = item
                });
            }
            ValidtionData(entity);
            entity.PathImg = pathImgs.First();
            entity.Slug = SlugHelper.GenerateSlug(entity.Name);
            db.Products.Update(entity);
            db.SaveChanges();
            return true;


        }
        private async Task<List<string>> CopyImage(InProduct input, int Code,int counter)
        {
            var paths = new List<string>();
            if (input.Files != null)
            {
                foreach (var itemFile in input.Files)
                {
                    var extension = Path.GetExtension(itemFile.FileName);
                    var fileName = $"product_{input.Files.IndexOf(itemFile) + 1+counter}{extension}";

                    var folderName = uploadPathProvider.Path + "\\" + Code;
                    if (!Directory.Exists(folderName))
                        Directory.CreateDirectory(folderName);

                    var savePath = Path.Combine(uploadPathProvider.Path + "\\" + Code, fileName);
                    var file = new FileInfo(savePath);
                    if (file.Exists)
                        file.Delete();
                    using (var stream = new FileStream(savePath, FileMode.Create))
                    {
                        await itemFile.CopyToAsync(stream);
                        paths.Add($@"\uploads\products\{Code}\{fileName}");
                    }
                }
            }
            return paths;
        }
        private void ValidtionData(Product entity)
        {
            if (entity.Code == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("کد"));
            }
            else if (db.Products.Any(x => x.Code == entity.Code && x.Id != entity.Id))
            {
                throw new PersianException(Utility.GetMsgRepert("کد"));
            }
            if (entity.Name == null || entity.Name.Length == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("نام"));
            }

            else if (db.Products.Any(x => x.Name == entity.Name && x.Id != entity.Id))
            {
                throw new PersianException(Utility.GetMsgRepert("نام"));
            }
            if (entity.CategoryId == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("گروه کالا"));

            }
            if (entity.Price == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("قیمت"));
            }

        }

        public DataView GetAll(DataRequest param)
        {
            var result = new DataView(param.Take, param.PageNumber);

            var query = from p in db.Products select p;

            if (param != null)
                if (param.Filter != null)
                {
                    if (param.Filter.CategoryId != 0)
                        query = query.Where(x => x.CategoryId == param.Filter.CategoryId);
                    if (param.Filter.ProductName != string.Empty)
                        query = query.Where(x => x.Name.Contains(param.Filter.ProductName));
                    if (param.Filter.FromPrice != 0)
                        query = query.Where(x => x.Price >= param.Filter.FromPrice);
                    if (param.Filter.ToPrice != 0)
                        query = query.Where(x => x.Price <= param.Filter.ToPrice);
                }

            result.Data = query.OrderBy(x => x.Code).Skip(result.StartRow).Take(param.Take).Cast<object>().ToList();
            result.TotalCount = query.Count();

          
            return result;
        }
        public List<Product> GetAll()
        {
            return db.Products.ToList();
        }

        public string GetJson()
        {
            var data = db.Products.ToList();
            return JsonConvert.SerializeObject(data.Select(x => new { x.CategoryId, x.IsActive, x.Code, x.Description, x.PathImg, x.Name, x.Slug, x.Price }));
        }
        public bool AddImage()
        {
            var data = db.Products.Where(x=>x.Id<67).ToList();
            var list = new List<ProductImage>();

            foreach (var item in data)
            {
                var extension = Path.GetExtension(item.PathImg);
                var fileName = $"product_1{extension}";

                //var sourceFileName = uploadPathProvider.Path + "\\" + item.PathImg.Replace(@"/uploads/products", "");

                //var destFolder = uploadPathProvider.Path + "\\" + item.Code;
                //if (!Directory.Exists(destFolder))
                //    Directory.CreateDirectory(destFolder);

                //var destFileName = Path.Combine(destFolder, fileName);
                //File.Copy(sourceFileName, destFileName, true);
                list.Add(new ProductImage()
                {
                    ProductId = item.Id,
                    PathImg = $@"\uploads\products\{item.Code}\{fileName}",
                });
            }
            db.ProductImages.AddRange(list);
            db.SaveChanges();
            return true;
        }
        public bool UpdatePath()
        {
            var data = db.Products.Where(x => x.Id < 67).ToList();

            foreach (var item in data)
            {
           item.PathImg= $"\\uploads\\products\\{item.Id}\\product_1.jpg";

            }
            db.Products.UpdateRange(data);
            db.SaveChanges();
            return true;
        }

        public Product GetById(int id)
        {
            var entity= db.Products.Where(x => x.Id == id).SingleOrDefault();
            entity.PathImags=db.ProductImages.Where(x=>x.ProductId==id).Select(x=>x.PathImg).ToList();
            return entity;
        }
        public Product GetBySlug(string slug)
        {
            var entity = db.Products.Where(x => x.Slug == slug).AsNoTracking().SingleOrDefault();
            entity.CategoryName = db.Categories.FirstOrDefault(x => x.Id == entity.CategoryId)?.Name;
            entity.PathImags = db.ProductImages.Where(x => x.ProductId == entity.Id).Select(x => x.PathImg).ToList();
            return entity;
        }

        public bool AddAll()
        {
            var data = "[{\"CategoryId\":3,\"IsActive\":true,\"Code\":1,\"Description\":\"ریسه بلوطی تک رنگ 15 شعله 10 متر حباب بزرگ 45 وات، ضد آب، ضمانت یکسال\",\"PathImg\":\"/uploads/products/product_1.jpg\",\"Name\":\"ریسه بلوطی تک رنگ ثابت ((رنگ سفید))\",\"Slug\":\"rysh-blvty-tk-rng-sabt-rng-sfyd\",\"Price\":600000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":2,\"Description\":\"ریسه بلوطی تک رنگ 15 شعله 10 متر 45 وات حباب بزرگ، ضد آب، ضمانت یکسال\",\"PathImg\":\"/uploads/products/product_2.jpg\",\"Name\":\"ریسه بلوطی تک رنگ ثابت ((رنگ قرمز))\",\"Slug\":\"rysh-blvty-tk-rng-sabt-rng-ghrmz\",\"Price\":600000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":3,\"Description\":\"ریسه بلوطی تک رنگ 15 شعله 10 متر حباب بزرگ 45 وات، ضد آب ضمانت یک سال\",\"PathImg\":\"/uploads/products/product_3.jpg\",\"Name\":\"ریسه بلوطی تک رنگ ثابت((رنگ سبز))\",\"Slug\":\"rysh-blvty-tk-rng-sabtrng-sbz\",\"Price\":600000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":4,\"Description\":\"ریسه بلوطی تک رنگ 15 شعله 10 متر حباب بزرگ، 45وات نوردهی، ضد اب، ضمانت یکسال\",\"PathImg\":\"/uploads/products/product_4.jpg\",\"Name\":\"ریسه بلوطی تک رنگ ثابت((رنگ آبی))\",\"Slug\":\"rysh-blvty-tk-rng-sabtrng-by\",\"Price\":600000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":5,\"Description\":\"ریسه بلوطی تک رنگ 15 شعله 10 متر حباب بزرگ 45 وات میزان نوردهی، ضد آب ضمانت یکسال\",\"PathImg\":\"/uploads/products/product_5.jpg\",\"Name\":\"ریسه بلوطی تک رنگ ثابت((رنگ زرد، انبه ای،))\",\"Slug\":\"rysh-blvty-tk-rng-sabtrng-zrd-anbh-ay\",\"Price\":600000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":6,\"Description\":\"ریسه بلوطی تک رنگ 15 شعله 10 متر حباب بزرگ 45 وات میزان نوردهی، ضد آب ضمانت یکسال\",\"PathImg\":\"/uploads/products/product_6.jpg\",\"Name\":\"ریسه بلوطی تک رنگ ثابت((رنگ آفتابی، روز))\",\"Slug\":\"rysh-blvty-tk-rng-sabtrng-ftaby-rvz\",\"Price\":600000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":7,\"Description\":\"ریسه بلوطی میکس ثابت، 15 شعله 10 متر حباب بزرگ 45وات نوردهی((سبز سفید قرمز زرد آبی آفتابی))\",\"PathImg\":\"/uploads/products/product_7.jpg\",\"Name\":\"ریسه بلوطی میکس ثابت\",\"Slug\":\"rysh-blvty-myks-sabt\",\"Price\":650000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":8,\"Description\":\"ریسه بلوطی هفت رنگ 15 شعله 10 متر، به صورت اتوماتیک یک برنامه تغیر رنگ رو اجرا میکند، ضد آب ضمانت یکسال، امکان سری کردن هر تعداد ریسه وجود دارد، برنامه تعریف شده و مناسب برق شهری((220ولت))\",\"PathImg\":\"/uploads/products/product_8.jpg\",\"Name\":\"ریسه بلوطی هفت رنگ\",\"Slug\":\"rysh-blvty-hft-rng\",\"Price\":800000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":9,\"Description\":\"ریسه های بلوطی هفت رنگ سفارشی دارای متراژ 10 متر و تعداد 15 شعله هستن، امکان افزایش متراژ بیشتر و سری کردن هر تعداد ریسه رو دارا هستن، مناسب برق شهری هستن، 10 برنامه تغیر رنگ و تغیر سرعت برایشان تعریف شده، برنامه های ریسهpro Multiبه صورت اتومات و متناوب اجرا میشوند، ریسه های Pro Multiکاملا مقاوم در برابر باران و افتاب هستن\",\"PathImg\":\"/uploads/products/product_9.jpg\",\"Name\":\"ریسه بلوطی هفت رنگ سفارشی((pro multi))\",\"Slug\":\"rysh-blvty-hft-rng-sfarshypro-multi\",\"Price\":900000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":10,\"Description\":\"ریسه بلوطی هفت رنگ با جای سیم بکسل و طناب حباب بزرگ 15 شعله 10 متر،این مدل ریسه برای افزایش متراژ طراحی شده که قسمت مخصوصی برای طناب یا سیم بکسل دارد که باعث میشود فشار از کابل ریسه برداشته شود و ریسه منحنی((اصطلاحا شکم ندهد)).این ریسه بخاطر حفره ای که بالای ریسه در نظر گرفته شده قابلیت ضد سرقت بودن را دارد، این ریسه مناسب برق شهری((220ولت)) هستش که یک برنامه را به صورت اتوماتیک اجرا میکند و قابلیت این را دارد که هر تعداد ریسه رو بتوان با یک برق ورودی به صورت هماهنگ و یکنواخت تغیر رنگ داد. این ریسه در مقابل باران و آفتاب مقاوم هست. ابعاد حباب بزرگ تر هست و کابل ها از کنار وارد حباب شده هستن که در راستای طناب باشند\",\"PathImg\":\"/uploads/products/product_10.jpg\",\"Name\":\"ریسه بلوطی هفت رنگ با جای سیم بکسل و طناب\",\"Slug\":\"rysh-blvty-hft-rng-ba-jay-sym-bksl-v-tnab\",\"Price\":950000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":11,\"Description\":\"ریسه Pro Multiصلیبی 15 شعله 10 متر حباب بزرگ، دارای برنامه متنوع و متغیر از لحاظ تغیر رنگ و تغیر سرعت، دارای قسمت مخصوص برای طناب و سیم بکسل، دارای سِت\",\"PathImg\":\"/uploads/products/product_11.jpg\",\"Name\":\"ریسه بلوطی صلیبیPro Multi\",\"Slug\":\"rysh-blvty-slybypro-multi\",\"Price\":1050000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":12,\"Description\":\"ریسه هولدوری 20 شعله 10 متر، از جنس کابل با مغزی مس، دارای قسمت مخصوص برای طناب، دارای سوکت نری و مادگی برای تغیر متراژ، کاملا ضد آب، مقاوم دربرابر انواع لامپ با وات های مختلف،بدون لامپ،این جنس وارداتی میباشد.\",\"PathImg\":\"/uploads/products/product_12.jpg\",\"Name\":\"ریسه واترپروف((هولدوری)) 20شعله 10 متر\",\"Slug\":\"rysh-vatrprvfhvldvry-20shalh-10-mtr\",\"Price\":900000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":13,\"Description\":\"ریسه واترپروف 5متری 10شعله، وارداتی، به صورت کابل و سوکت آب بندی جهت افزایش متراژ، کاملا ضد آب، مقاوم در برابر آفتاب، امکان نصب لامپ های وات بالا، نوع سرپیچ E27\",\"PathImg\":\"/uploads/products/product_13.jpg\",\"Name\":\"ریسه واترپروف ((هولدوری)) 10شعله 5متر\",\"Slug\":\"rysh-vatrprvf-hvldvry-10shalh-5mtr\",\"Price\":450000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":14,\"Description\":\"ریسه هولدوری، کاملا ضد اب، دارای سوکت نر و ماده برای تغیر متراژ، دارای بَست بابت آب بندی،دارای قسمت نگهدارنده سیم بکسل، کابل مسی و وارداتی\",\"PathImg\":\"/uploads/products/product_14.jpg\",\"Name\":\"ریسه واترپروف ((هولدوری)) 40شعله 20 متر\",\"Slug\":\"rysh-vatrprvf-hvldvry-40shalh-20-mtr\",\"Price\":1800000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":15,\"Description\":\"لامپ 3 وات هفت رنگ که به صورت سرپیچی هست و برای انواع سرپیچ E27کاربرد دارد به صورت تک و کارتن 50 عدد موجود میباشد\",\"PathImg\":\"/uploads/products/product_15.jpg\",\"Name\":\"لامپ 3 وات هفت رنگ\",\"Slug\":\"lamp-3-vat-hft-rng\",\"Price\":60000},{\"CategoryId\":3,\"IsActive\":true,\"Code\":16,\"Description\":\"ریسه کنفی 50 شعله 20 متر با سیم استاندارد و سرپیچ بارانی و سیم کنفی، اتصال سیم به سرپیچ از کنار سرپیچ هست و مقاوم در برابر باد و باران. در دو رنگ سیم سفید و مشکی موجود میباشد\",\"PathImg\":\"/uploads/products/product_16.jpg\",\"Name\":\"ریسه کنفی\",\"Slug\":\"rysh-knfy\",\"Price\":900000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":17,\"Description\":\"سرپیچ بارانی به علت دارا بودن اتصال سیم از کنار سرپیچ در برابر نفوذ باران مقام بوده و مناسب محیط های باز هستش، سرپیچ بارانی تشکیل شده از درب کلاهک، پیچ نگهدارنده و تنه سرپیچ\",\"PathImg\":\"/uploads/products/product_17.jpg\",\"Name\":\"سرپیچ بارانی ((سرپیچ میخی))\",\"Slug\":\"srpych-barany-srpych-mykhy\",\"Price\":10000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":18,\"Description\":\"سیم کنفی دورشته به متراژ 100 متر به علت دارا بودن کنف به عنوان نسوز قابل استفاده هستش. 2در 75 سایز سیم  کنفی میباشد\",\"PathImg\":\"/uploads/products/product_18.jpg\",\"Name\":\"سیم کنفی\",\"Slug\":\"sym-knfy\",\"Price\":2000000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":19,\"Description\":\"فازمتر جیبی اورانوس، نشکن با میله فولادی، لامپ قوی و تشکیل شده از مواد اولیه ایرانی در رنگ بندی متفاوت\",\"PathImg\":\"/uploads/products/product_19.jpg\",\"Name\":\"فازمتر کوتاه اورانوس((جیبی))\",\"Slug\":\"fazmtr-kvtah-avranvsjyby\",\"Price\":25000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":20,\"Description\":\"فازمتر های اورانوس رنگ بندی متفاوت، نوک فولادی، ضد ضربه و نشکن\",\"PathImg\":\"/uploads/products/product_20.jpg\",\"Name\":\"فازمتر بزرگ اورانوس\",\"Slug\":\"fazmtr-bzrg-avranvs\",\"Price\":30000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":21,\"Description\":\"فازمتر نشکن، بزرگ. میله فولادی، دکمه دار جهت تشخیص فاز\",\"PathImg\":\"/uploads/products/product_21.jpg\",\"Name\":\"فازمتر اورانوس پیلاس دوکاره\",\"Slug\":\"fazmtr-avranvs-pylas-dvkarh\",\"Price\":40000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":22,\"Description\":\"فازمتر کیتکو کاملا شفاف نشکن لامپ باکیفیت میله فولادی وسایز بزرگ میباشد\",\"PathImg\":\"/uploads/products/product_22.jpg\",\"Name\":\"فازمتر کیتکو((طرح سیتکو))\",\"Slug\":\"fazmtr-kytkvtrh-sytkv\",\"Price\":40000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":23,\"Description\":\"فازمتر نشکن با نوک فولادی و دکمه دار\",\"PathImg\":\"/uploads/products/product_23.jpg\",\"Name\":\"فازمتر متوسط فاز ایران\",\"Slug\":\"fazmtr-mtvst-faz-ayran\",\"Price\":31000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":24,\"Description\":\"لامپ خواب های اورانوس، 3وات،سرپیچی، 6 رنگ، بسته بندی 30 عددی. متنوع\",\"PathImg\":\"/uploads/products/product_24.jpg\",\"Name\":\"لامپ خواب سرپیچی\",\"Slug\":\"lamp-khvab-srpychy\",\"Price\":15000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":25,\"Description\":\"لامپ خواب دوشاخه دار بدون نیاز به سرپیچ، رنگ بندی جور، بسته 30 عددی، 3 وات\",\"PathImg\":\"/uploads/products/product_25.jpg\",\"Name\":\"چراغ خواب دوشاخه دار\",\"Slug\":\"chragh-khvab-dvshakhh-dar\",\"Price\":15000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":26,\"Description\":\"تبدیل سه به دو 16 آمپر نارکن اصلی، جهت استفاده تمام وسایلی که به جای دوشاخه، سه شاخه دارند. برای تمام وسایل با آمپر بالا از جمله کولر گازی و... تمام وسایل حساس مثل شارژر موبایل\",\"PathImg\":\"/uploads/products/product_26.jpg\",\"Name\":\"تبدیل سه شاخه به دوشاخه نارکن\",\"Slug\":\"tbdyl-sh-shakhh-bh-dvshakhh-narkn\",\"Price\":75000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":27,\"Description\":\"تبدیل سه به دو 16 آمپر نارکن چراغدار، قابل استفاده در تمامی وسایل برقی، دارای رینگ رنگی زیبا، قابل استفاده به عنوان چراغ خواب\",\"PathImg\":\"/uploads/products/product_27.jpg\",\"Name\":\"تبدیل سه به دو 16 آمپر نارکن چراغدار\",\"Slug\":\"tbdyl-sh-bh-dv-16-mpr-narkn-chraghdar\",\"Price\":120000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":28,\"Description\":\"تبدیل دو به دو نارکن یا تبدیل 110 آیوا که مخصوص وسایل برقی هست که دوشاخه به صورت تیغه ای میباشد\",\"PathImg\":\"/uploads/products/product_28.jpg\",\"Name\":\"تبدیل دو شاخه تیغه ای به دوشاخه معمولی\",\"Slug\":\"tbdyl-dv-shakhh-tyghh-ay-bh-dvshakhh-mamvly\",\"Price\":15000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":29,\"Description\":\"چراغ خواب های توپک کم مصرف میباشد. رنگ بندی متنوع و طرح های مخلف میباشد. بسته بندی 12عددی\",\"PathImg\":\"/uploads/products/product_29.jpg\",\"Name\":\"چراغ خواب توپک\",\"Slug\":\"chragh-khvab-tvpk\",\"Price\":40000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":30,\"Description\":\"چراغ خواب  باب اسفنجی 3وات. طرح های متنوع، مناسب اتاق کودک، کلید مجزا برای روشن خاموش کردن. تولید ایران.\",\"PathImg\":\"/uploads/products/product_30.jpg\",\"Name\":\"چراغ خواب باب اسفنجی\",\"Slug\":\"chragh-khvab-bab-asfnjy\",\"Price\":45000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":31,\"Description\":\"چمدان تست Z4\",\"PathImg\":\"/uploads/products/product_31.jpg\",\"Name\":\"چمدان تست منابع روشنایی Z4\",\"Slug\":\"chmdan-tst-mnaba-rvshnayy-z4\",\"Price\":12000000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":32,\"Description\":\"انجام تست کلیدزنی(SWITCHING) 25هزار بار در ساعت (تست تخمین طول عمر)\",\"PathImg\":\"/uploads/products/product_32.jpg\",\"Name\":\"چمدان تست منابع روشنایی Z2پلاس\",\"Slug\":\"chmdan-tst-mnaba-rvshnayy-z2plas\",\"Price\":16000000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":33,\"Description\":\"محاسبه و نمایش توان مصرفی (Watt) حداکثر تا 200 وات\",\"PathImg\":\"/uploads/products/product_33.jpg\",\"Name\":\"دستگاه تست رومیزی Z3\",\"Slug\":\"dstgah-tst-rvmyzy-z3\",\"Price\":3000000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":34,\"Description\":\"بخاری برقی اخوان فرید اصلی، 3شعله، المنت سفالی، 1500وات،دارای کلید قطع کن، دوشاخه استاندارد،کابل. مسی سایز 0/75&2.ورق و اسکلت ضخیم کارتن 8 عددی\",\"PathImg\":\"/uploads/products/product_34.jpg\",\"Name\":\"بخاری برقی اخوان فرید\",\"Slug\":\"bkhary-brghy-akhvan-fryd\",\"Price\":350000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":35,\"Description\":\"کرسی برقی دوشعله اخوان فرید. المنت سفالی. دارای اتومات قطع کن و کابل و دوشاخه استانداد\",\"PathImg\":\"/uploads/products/product_35.jpg\",\"Name\":\"کرسی برقی اخوان فرید\",\"Slug\":\"krsy-brghy-akhvan-fryd\",\"Price\":340000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":36,\"Description\":\"بخاری برقی ابر استاره ساده ایستاده 3شعله میباشد، دارای 3 عدد المنت سفالی 500 وات میباشد کلید قطع کن و سیم و دوشاخه استاندارد، دارای سه کلید برای افزایش و کاهش گرما\",\"PathImg\":\"/uploads/products/product_36.jpg\",\"Name\":\"بخاری برقی ابر استاره ایستاده ساده\",\"Slug\":\"bkhary-brghy-abr-astarh-aystadh-sadh\",\"Price\":750000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":37,\"Description\":\"بخاری برقی ابر استاره فن دار ایستاده 3شعله میباشد، دارای 3 عدد المنت شیشه ای 500 وات میباشد کلید قطع کن و سیم و دوشاخه استاندارد، دارای سه کلید برای افزایش و کاهش گرما. دارای فن جهت افزایش گرما محیط میباشد\",\"PathImg\":\"/uploads/products/product_37.jpg\",\"Name\":\"بخاری برقی ابراستاره فن دار\",\"Slug\":\"bkhary-brghy-abrastarh-fn-dar\",\"Price\":1100000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":38,\"Description\":\"سیم افشان سایز 1/5لوشان، رنگ بندی، کلاف 100 متری، استاندارد و تمام مس\",\"PathImg\":\"/uploads/products/product_38.jpg\",\"Name\":\"سیم1/5 افشان تمام مس لوشان\",\"Slug\":\"sym15-afshan-tmam-ms-lvshan\",\"Price\":1800000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":39,\"Description\":\"سیم افشان 2/5لوشان. تمام مس. کلاف صد متری، رنگبندی. استاندارد ایران\",\"PathImg\":\"/uploads/products/product_39.jpg\",\"Name\":\"سیم2/5افشان\",\"Slug\":\"sym25afshan\",\"Price\":2800000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":40,\"Description\":\"شبيه ساز حضور در منزل طبق برنامه های تعریف شده برای هر فصل کار میکند، کاملا اتوماتیک میباشد و طبق غروب و طلوع خورشید قطع و وصل میشود هر لامپ با هر وات قابل استفاده میباشد\",\"PathImg\":\"/uploads/products/product_40.jpg\",\"Name\":\"شبیه ساز حضور در منزل\",\"Slug\":\"shbyh-saz-hzvr-dr-mnzl\",\"Price\":450000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":41,\"Description\":\"دوشاخه نری و مادگی پارت .صنعتی مخصوص آمپر بالا قیمت بر اساس جفت\",\"PathImg\":\"/uploads/products/product_41.jpg\",\"Name\":\"دوشاخه نری  کد 972و مادگی کد963\",\"Slug\":\"dvshakhh-nry-kd-972v-madgy-kd963\",\"Price\":70000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":42,\"Description\":\"محافظ ولتاژ ورودی پارت الکتریک30 امپر .جلوگیری از نوسان حاصل از قطع و وصل شدن برق\",\"PathImg\":\"/uploads/products/product_42.jpg\",\"Name\":\"محافظ ولتاژ ورودی 30 آمپر کد 5137\",\"Slug\":\"mhafz-vltazh-vrvdy-30-mpr-kd-5137\",\"Price\":838000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":43,\"Description\":\"محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک طرح قدیم\",\"PathImg\":\"/uploads/products/product_43.jpg\",\"Name\":\"محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک\",\"Slug\":\"mhafz-kvlr-gazy-ykhchal-v-lbasshvyy-part-alktryk\",\"Price\":466000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":44,\"Description\":\"محافظ پکیج پارت الکتریک\",\"PathImg\":\"/uploads/products/product_44.jpg\",\"Name\":\"محافظ پکیج\",\"Slug\":\"mhafz-pkyj\",\"Price\":388000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":45,\"Description\":\"محافظ یخچال پارت الکتریک\",\"PathImg\":\"/uploads/products/product_45.jpg\",\"Name\":\"محافظ یخچال\",\"Slug\":\"mhafz-ykhchal\",\"Price\":460000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":46,\"Description\":\"محافظ یخچال پارت الکتریک\",\"PathImg\":\"/uploads/products/product_46.jpg\",\"Name\":\"محافظ یخچال با کابل 3متری\",\"Slug\":\"mhafz-ykhchal-ba-kabl-3mtry\",\"Price\":528000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":47,\"Description\":\"محافظ یخچال پارت الکتریک\",\"PathImg\":\"/uploads/products/product_47.jpg\",\"Name\":\"محافظ یخچال پارت الکتریک  با کابل 5متری\",\"Slug\":\"mhafz-ykhchal-part-alktryk-ba-kabl-5mtry\",\"Price\":643000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":48,\"Description\":\"محافظ 4 خانه کامپیوتر پارت الکتریک\",\"PathImg\":\"/uploads/products/product_48.jpg\",\"Name\":\"محافظ 4 خانه کامپیوتر\",\"Slug\":\"mhafz-4-khanh-kampyvtr\",\"Price\":554000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":49,\"Description\":\"محافظ 4 خانه کامپیوتر پارت الکتریک\",\"PathImg\":\"/uploads/products/product_49.jpg\",\"Name\":\"محافظ 4 خانه کامپیوتر پارت\",\"Slug\":\"mhafz-4-khanh-kampyvtr-part\",\"Price\":620000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":50,\"Description\":\"محافظ 4 خانه کامپیوتر پارت الکتریک\",\"PathImg\":\"/uploads/products/product_50.jpg\",\"Name\":\"محافظ 4 خانه کامپیوتر پارت الکتریک  \",\"Slug\":\"mhafz-4-khanh-kampyvtr-part-alktryk\",\"Price\":736000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":51,\"Description\":\"محافظ 6 خانه کامپیوتر پارت الکتریک\",\"PathImg\":\"/uploads/products/product_51.jpg\",\"Name\":\"محافظ 6 خانه کامپیوتر کد2060\",\"Slug\":\"mhafz-6-khanh-kampyvtr-kd2060\",\"Price\":740000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":52,\"Description\":\"محافظ 6 خانه کامپیوتر پارت الکتریک\",\"PathImg\":\"/uploads/products/product_52.jpg\",\"Name\":\"محافظ 6 خانه کامپیوتر کد7381\",\"Slug\":\"mhafz-6-khanh-kampyvtr-kd7381\",\"Price\":794000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":53,\"Description\":\"محافظ 6 خانه کامپیوتر پارت الکتریک\",\"PathImg\":\"/uploads/products/product_53.jpg\",\"Name\":\"محافظ 6 خانه کامپیوترکد2160\",\"Slug\":\"mhafz-6-khanh-kampyvtrkd2160\",\"Price\":896000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":54,\"Description\":\"3 راهی صنعتی پارت الکتریک کرال یا کله گاوی\",\"PathImg\":\"/uploads/products/product_54.jpg\",\"Name\":\"3 راهی صنعتی کرال کد1027\",\"Slug\":\"3-rahy-snaty-kral-kd1027\",\"Price\":170000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":55,\"Description\":\"بخاری برقی رومیزی فن دار لاکان خزر\",\"PathImg\":\"/uploads/products/product_55.jpg\",\"Name\":\"بخاری رومیزی لاکان خزر( آراسته)\",\"Slug\":\"bkhary-rvmyzy-lakan-khzr-rasth\",\"Price\":2000000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":56,\"Description\":\"دوشاخه 16آمپر خانگی پارت الکتریک.سفید و مشکی\",\"PathImg\":\"/uploads/products/product_56.png\",\"Name\":\"دوشاخه خانگی سفید پارت5518 و مشکی 5519\",\"Slug\":\"dvshakhh-khangy-sfyd-part5518-v-mshky-5519\",\"Price\":29000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":57,\"Description\":\"مناسب برای:کولرگازی،یخچال و فریزر،ماشین لباسشویی،ماشین ظرفشویی\",\"PathImg\":\"/uploads/products/product_57.webp\",\"Name\":\"محافظ کولر گازی دیجیتال پارت الکتریک کد 2833\",\"Slug\":\"mhafz-kvlr-gazy-dyjytal-part-alktryk-kd-2833\",\"Price\":680000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":58,\"Description\":\"مناسب برای:یخچال و فریزر،ماشین لباسشویی،ماشین ظرفشویی\",\"PathImg\":\"/uploads/products/product_58.webp\",\"Name\":\"محافظ دو شاخه دار یخچال و فریزر پارت الکتریک\",\"Slug\":\"mhafz-dv-shakhh-dar-ykhchal-v-fryzr-part-alktryk\",\"Price\":616000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":59,\"Description\":\"مناسب برای:\",\"PathImg\":\"/uploads/products/product_59.webp\",\"Name\":\"محافظ پکیج دیجیتال پارت الکتریک\",\"Slug\":\"mhafz-pkyj-dyjytal-part-alktryk\",\"Price\":616000},{\"CategoryId\":4,\"IsActive\":true,\"Code\":60,\"Description\":\"المنت های سفالی الکترو امین، 20 سانت دنده ریز\",\"PathImg\":\"/uploads/products/product_60.jpg\",\"Name\":\"المنت سفالی الکترو امین 20 سانت 0/30\",\"Slug\":\"almnt-sfaly-alktrv-amyn-20-sant-030\",\"Price\":20000},{\"CategoryId\":2,\"IsActive\":true,\"Code\":61,\"Description\":\"ویژگی‌ها\",\"PathImg\":\"/uploads/products/product_61.jpeg\",\"Name\":\"کلید تک پل توکار بارانی دلند پلاس آسا\",\"Slug\":\"klyd-tk-pl-tvkar-barany-dlnd-plas-sa\",\"Price\":97900},{\"CategoryId\":2,\"IsActive\":true,\"Code\":62,\"Description\":\"ویژگی‌ها\",\"PathImg\":\"/uploads/products/product_62.jpg\",\"Name\":\"کلید دو پل تو کار بارانی دلند پلاس آسا\",\"Slug\":\"klyd-dv-pl-tv-kar-barany-dlnd-plas-sa\",\"Price\":115400},{\"CategoryId\":2,\"IsActive\":true,\"Code\":63,\"Description\":\"نوع نصب\",\"PathImg\":\"/uploads/products/product_63.jpg\",\"Name\":\"پریز محافظ دار توکار بارانی ارت دار پارت الکتریک\",\"Slug\":\"pryz-mhafz-dar-tvkar-barany-art-dar-part-alktryk\",\"Price\":81700},{\"CategoryId\":1,\"IsActive\":true,\"Code\":64,\"Description\":\"پریز ارتدار توکار با مغزی سرامیکی طرح قدیم پارت کد محصول 115\",\"PathImg\":\"/uploads/products/product_64.jpg\",\"Name\":\"پریز  طرح قدیم پارت کد 115\",\"Slug\":\"pryz-trh-ghdym-part-kd-115\",\"Price\":55000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":65,\"Description\":\"پریز ارت دار روکار پارت الکتریک طرح قدیم\",\"PathImg\":\"/uploads/products/product_65.jpg\",\"Name\":\"پریز ارت دار روکار کد 325\",\"Slug\":\"pryz-art-dar-rvkar-kd-325\",\"Price\":52000},{\"CategoryId\":1,\"IsActive\":true,\"Code\":66,\"Description\":\"پریز بدون روکار پارت الکتریک طرح قدیم\",\"PathImg\":\"/uploads/products/product_66.jpg\",\"Name\":\"پریز روکار بدون ارت کد 106\",\"Slug\":\"pryz-rvkar-bdvn-art-kd-106\",\"Price\":45000}]";
            var list = JsonConvert.DeserializeObject<List<Product>>(data);
            db.Products.AddRange(list);
            db.SaveChanges();
            return true;


        }
        public bool DeleteAll()
        {
            db.Products.RemoveRange(db.Products.ToList());
            return true;

        }
        public bool ConvertSlug()
        {
            var products = db.Products.ToList();
            foreach (var entity in products)
            {
                entity.Slug = SlugHelper.GenerateSlug(entity.Name);

            }
            db.SaveChanges();
            return true;
        }
    }
}
