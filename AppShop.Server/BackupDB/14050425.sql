USE [ShopElectro]
GO
SET IDENTITY_INSERT [admindb].[Category] ON 
GO
INSERT [admindb].[Category] ([Id], [ParentId], [Code], [Name], [IsActive]) VALUES (1, NULL, 1, N'ساختمانی', 0)
GO
INSERT [admindb].[Category] ([Id], [ParentId], [Code], [Name], [IsActive]) VALUES (2, NULL, 2, N'صنعتی', 0)
GO
INSERT [admindb].[Category] ([Id], [ParentId], [Code], [Name], [IsActive]) VALUES (3, NULL, 3, N'روشنایی', 0)
GO
INSERT [admindb].[Category] ([Id], [ParentId], [Code], [Name], [IsActive]) VALUES (4, NULL, 4, N'ابزار', 0)
GO
INSERT [admindb].[Category] ([Id], [ParentId], [Code], [Name], [IsActive]) VALUES (5, NULL, 5, N'متفرقه', 0)
GO
SET IDENTITY_INSERT [admindb].[Category] OFF
GO
SET IDENTITY_INSERT [admindb].[Product] ON 
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1, 3, 1, N'ریسه بلوطی تک رنگ ثابت نور سفید', 1, N'ریسه بلوطی تک رنگ 15 شعله
ریسه طرح بلوط سفید 15 لامپ پارسیان الکتریک طول 10 متر
ریسه تزیینی بلوطی سفید Parsian Electric به طول 10 متر ', 1700000, N'\uploads\products\1\product_1.jpg', N'rysh-blvty-tk-rng-sabt-nvr-sfyd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-23T20:46:25.7914351' AS DateTime2), N'تامین انرژی از طریق برق شهری
مناسب برای استفاده در اتاق خواب، تولد، ویترین  
نوع محصول	
ریسه بلوطی
ریسه برق شهری', N'[{"key":"رنگ نور","value":"سفید"},{"key":"طول کلی","value":"10 متر"},{"key":"نوع لامپ","value":"بلوطی"},{"key":"دوشاخه برای اتصال به برق شهر","value":"ندارد"},{"key":"تعداد لامپ","value":"15 عدد"},{"key":"محدوده طول کابل","value":"5.1 تا 10 متر"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (2, 3, 2, N'ریسه بلوطی تک رنگ ثابت نور قرمز', 1, N'ریسه بلوطی تک رنگ 15 شعله 10 متر 
45 وات حباب بزرگ، ضد آب، ضمانت یکسال  
ریسه طرح بلوط قرمز 15 لامپ پارسیان الکتریک طول 10 متر
ریسه تزیینی بلوطی قرمز Parsian Electric به طول 10 متر 
نور قرمز و تامین انرژی از طریق اتصال دو شاخه به پریز برق 
مجهز به 15 عدد لامپ با طرح بلوط
', 1700000, N'\uploads\products\2\product_1.jpg', N'rysh-blvty-tk-rng-sabt-nvr-ghrmz', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-26T17:35:32.1999316' AS DateTime2), N'تامین انرژی از طریق برق شهری
مناسب برای استفاده در اتاق خواب، تولد، ویترین  
نوع محصول	
ریسه بلوطی
ریسه برق شهری', N'[{"key":"رنگ نور","value":"قرمز"},{"key":"طول کلی","value":"10 متر"},{"key":"نوع لامپ","value":"بلوطی"},{"key":"دوشاخه برای اتصال به برق شهر","value":"ندارد"},{"key":"تعداد لامپ","value":"15 عدد"},{"key":"محدوده طول کابل","value":"5.1 تا 10 متر"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (3, 3, 3, N'ریسه بلوطی تک رنگ ثابت نور سبز', 1, N'ریسه بلوطی تک رنگ 15 شعله 10 متر 
45 وات حباب بزرگ، ضد آب، ضمانت یکسال  
ریسه طرح بلوط سبز 15 لامپ پارسیان الکتریک طول 10 متر
ریسه تزیینی بلوطی سیز Parsian Electric به طول 10 متر 
نور سبز و تامین انرژی از طریق اتصال دو شاخه به پریز برق 
مجهز به 15 عدد لامپ با طرح بلوط
', 1700000, N'\uploads\products\3\product_1.jpg', N'rysh-blvty-tk-rng-sabt-nvr-sbz', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-26T17:39:42.6538821' AS DateTime2), N'تامین انرژی از طریق برق شهری
مناسب برای استفاده در اتاق خواب، تولد، ویترین  
نوع محصول	
ریسه بلوطی
ریسه برق شهری', N'[{"key":"رنگ نور","value":"سبز"},{"key":"طول کلی","value":"10 متر"},{"key":"نوع لامپ","value":"بلوطی"},{"key":"دوشاخه برای اتصال به برق شهر","value":"ندارد"},{"key":"تعداد لامپ","value":"15 عدد"},{"key":"محدوده طول کابل","value":"5.1 تا 10 متر"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (4, 3, 4, N'ریسه بلوطی تک رنگ ثابت رنگ آبی', 1, N'ریسه بلوطی تک رنگ 15 شعله 10 متر 
45 وات حباب بزرگ، ضد آب، ضمانت یکسال  
ریسه طرح بلوط آبی 15 لامپ پارسیان الکتریک طول 10 متر
ریسه تزیینی بلوطی آبی Parsian Electric به طول 10 متر 
نور آبی و تامین انرژی از طریق اتصال دو شاخه به پریز برق 
مجهز به 15 عدد لامپ با طرح بلوط
', 1700000, N'\uploads\products\4\product_1.jpg', N'rysh-blvty-tk-rng-sabt-rng-by', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-26T17:42:44.4425223' AS DateTime2), N'تامین انرژی از طریق برق شهری
مناسب برای استفاده در اتاق خواب، تولد، ویترین  
نوع محصول	
ریسه بلوطی
ریسه برق شهری', N'[{"key":"رنگ نور","value":"آبی"},{"key":"طول کلی","value":"10 متر"},{"key":"نوع لامپ","value":"بلوطی"},{"key":"دوشاخه برای اتصال به برق شهر","value":"ندارد"},{"key":"تعداد لامپ","value":"15 عدد"},{"key":"محدوده طول کابل","value":"5.1 تا 10 متر"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (5, 3, 5, N'ریسه بلوطی تک رنگ ثابت نور زرد، انبه ای', 1, N'ریسه بلوطی تک رنگ 15 شعله 10 متر 
45 وات حباب بزرگ، ضد آب، ضمانت یکسال  
ریسه طرح بلوط زرد 15 لامپ پارسیان الکتریک طول 10 متر
ریسه تزیینی بلوطی زرد Parsian Electric به طول 10 متر 
نور زرد و تامین انرژی از طریق اتصال دو شاخه به پریز برق 
مجهز به 15 عدد لامپ با طرح بلوط
', 1700000, N'\uploads\products\5\product_1.jpg', N'rysh-blvty-tk-rng-sabt-nvr-zrd-anbh-ay', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-26T17:46:24.0862194' AS DateTime2), N'تامین انرژی از طریق برق شهری
مناسب برای استفاده در اتاق خواب، تولد، ویترین  
نوع محصول	
ریسه بلوطی
ریسه برق شهری', N'[{"key":"رنگ نور","value":"زرد"},{"key":"طول کلی","value":"10 متر"},{"key":"نوع لامپ","value":"بلوطی"},{"key":"دوشاخه برای اتصال به برق شهر","value":"ندارد"},{"key":"تعداد لامپ","value":"15 عدد"},{"key":"محدوده طول کابل","value":"5.1 تا 10 متر"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (6, 3, 6, N'ریسه بلوطی تک رنگ ثابت نور آفتابی، روز', 1, N'رتوضیحات کالا :
ریسه بلوطی تک رنگ 15 شعله
ریسه طرح بلوط افتابی15 لامپ پارسیان الکتریک طول 10 متر
ریسه تزیینی بلوطی افتابی Parsian Electric به طول 10 متر
دارای طول 10 متر همراه با 15 عدد لامپ با طرح بلوط و نوردهی افتابی
ریسه بلوطی تک رنگ 15 شعله 10 متر حباب بزرگ 45 وات میزان نوردهی، ضد آب ضمانت یکسال', 1700000, N'\uploads\products\6\product_1.jpg', N'rysh-blvty-tk-rng-sabt-nvr-ftaby-rvz', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-26T17:50:03.9571092' AS DateTime2), N'تامین انرژی از طریق برق شهری
مناسب برای استفاده در اتاق خواب، تولد، ویترین  
نوع محصول	
ریسه بلوطی
ریسه برق شهری', N'[{"key":"رنگ نور","value":"آفتابی"},{"key":"طول کلی","value":"10 متر"},{"key":"نوع لامپ","value":"بلوطی"},{"key":"دوشاخه برای اتصال به برق شهر","value":"ندارد"},{"key":"تعداد لامپ","value":"15 عدد"},{"key":"محدوده طول کابل","value":"5.1 تا 10 متر"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (7, 3, 7, N'ریسه بلوطی میکس ثابت', 1, N'ریسه بلوطی میکس ثابت، 15 شعله 10 متر حباب بزرگ 45وات نوردهی((سبز سفید قرمز زرد آبی آفتابی))', 1700000, N'\uploads\products\7\product_1.jpg', N'rysh-blvty-myks-sabt', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-15T11:24:57.8324877' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (8, 3, 8, N'ریسه بلوطی هفت رنگ ساده', 1, N'ریسه بلوطی هفت رنگ 15 شعله 10 متر، به صورت اتوماتیک یک برنامه تغیر رنگ رو اجرا میکند، ضد آب ضمانت یکسال، امکان سری کردن هر تعداد ریسه وجود دارد، برنامه تعریف شده و مناسب برق شهری((220ولت))', 2500000, N'\uploads\products\8\product_1.jpg', N'rysh-blvty-hft-rng-sadh', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-15T11:25:21.0977457' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (9, 3, 9, N'ریسه بلوطی هفت رنگ سفارشی', 1, N'ریسه های بلوطی هفت رنگ سفارشی دارای متراژ 10 متر و تعداد 15 شعله 
امکان افزایش متراژ بیشتر و سری کردن هر تعداد ریسه رو دارا 
مناسب برق شهری 
تعریف 10 برنامه تغیر رنگ و تغیر سرعت
برنامه های ریسه pro Multi به صورت اتومات و متناوب اجرا میشوند
ریسه های Pro Multiکاملا مقاوم در برابر باران و افتاب هستند', 2700000, N'\uploads\products\9\product_1.jpg', N'rysh-blvty-hft-rng-sfarshy', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-16T18:44:50.9823199' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (10, 3, 10, N'ریسه بلوطی هفت رنگ با جای سیم بکسل و طناب', 1, N'ریسه بلوطی هفت رنگ با جای سیم بکسل و طناب حباب بزرگ 15 شعله 10 متر،این مدل ریسه برای افزایش متراژ طراحی شده که قسمت مخصوصی برای طناب یا سیم بکسل دارد که باعث میشود فشار از کابل ریسه برداشته شود و ریسه منحنی((اصطلاحا شکم ندهد)).این ریسه بخاطر حفره ای که بالای ریسه در نظر گرفته شده قابلیت ضد سرقت بودن را دارد، این ریسه مناسب برق شهری((220ولت)) هستش که یک برنامه را به صورت اتوماتیک اجرا میکند و قابلیت این را دارد که هر تعداد ریسه رو بتوان با یک برق ورودی به صورت هماهنگ و یکنواخت تغیر رنگ داد. این ریسه در مقابل باران و آفتاب مقاوم هست. ابعاد حباب بزرگ تر هست و کابل ها از کنار وارد حباب شده هستن که در راستای طناب باشند', 3500000, N'\uploads\products\10\product_1.jpg', N'rysh-blvty-hft-rng-ba-jay-sym-bksl-v-tnab', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:39:02.6060609' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (11, 3, 11, N'ریسه بلوطی صلیبیPro Multi', 1, N'ریسه Pro Multiصلیبی 15 شعله 10 متر حباب بزرگ، دارای برنامه متنوع و متغیر از لحاظ تغیر رنگ و تغیر سرعت، دارای قسمت مخصوص برای طناب و سیم بکسل، دارای سِت', 4000000, N'\uploads\products\11\product_1.jpg', N'rysh-blvty-slybypro-multi', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:39:20.8330799' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (12, 3, 12, N'ریسه واترپروف هولدوری 20 شعله 10 متر', 1, N'ریسه هولدوری 20 شعله 10 متر
 از جنس کابل با مغزی مس
دارای قسمت مخصوص برای طناب
دارای سوکت نری و مادگی برای تغیر متراژ
 کاملا ضد آب
مقاوم دربرابر انواع لامپ با وات های مختلف،بدون لامپ،این جنس وارداتی میباشد.', 1550000, N'\uploads\products\12\product_1.jpg', N'rysh-vatrprvf-hvldvry-20-shalh-10-mtr', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-07-12T16:40:27.3527626' AS DateTime2), N'null', N'[]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (13, 3, 13, N'ریسه واترپروف هولدوری 10شعله 5 متر', 0, N'ریسه واترپروف 5متری 10شعله
وارداتی
 به صورت کابل و سوکت آب بندی جهت افزایش متراژ
 کاملا ضد آب، مقاوم در برابر آفتاب
 امکان نصب لامپ های وات بالا، نوع سرپیچ E27
بدون لامپ', 550000, N'\uploads\products\13\product_1.jpg', N'rysh-vatrprvf-hvldvry-10shalh-5-mtr', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-21T10:45:30.0042088' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (14, 3, 14, N'ریسه واترپروف هولدوری 40 شعله 20 متر', 0, N'ریسه هولدوری، کاملا ضد اب، دارای سوکت نر و ماده برای تغیر متراژ، دارای بَست بابت آب بندی،دارای قسمت نگهدارنده سیم بکسل، کابل مسی و وارداتی', 2000000, N'\uploads\products\14\product_1.jpg', N'rysh-vatrprvf-hvldvry-40-shalh-20-mtr', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-21T10:45:47.3313599' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (15, 3, 15, N'لامپ 3 وات هفت رنگ', 1, N'لامپ 3 وات هفت رنگ که به صورت سرپیچی هست و برای انواع سرپیچ E27کاربرد دارد به صورت تک و کارتن 50 عدد موجود میباشد', 200000, N'\uploads\products\15\product_1.jpg', N'lamp-3-vat-hft-rng', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:39:37.9430560' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (16, 3, 16, N'ریسه کنفی سیم سفید', 1, N'ریسه سرپیچ دار 20 متری Almas
ریسه کنفی لامپ آویز سرپیچ دار 20 متری الماس
ریسه به طول 20 متر با روکش از جنس کنف، مقاوم در برابر کشش و پارگی
تامین انرژی از طریق اتصال به برق شهری', 1950000, N'\uploads\products\16\product_1.jpg', N'rysh-knfy-sym-sfyd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-26T18:35:06.1020690' AS DateTime2), N'نوع محصول	
سرپیچ آویز لامپ
تبدیل و سرپیچ لامپ
جنس بدنه	پلاستیک کنفی 50 شعله 20 متر با سیم استاندارد و سرپیچ بارانی و سیم کنفی
اتصال سیم به سرپیچ از کنار سرپیچ هست و مقاوم در برابر باد و باران', N'[{"key":"رنگ","value":"سفید"},{"key":"تعداد سرپیچ","value":"50 عدد"},{"key":"طول آویز","value":"حدود 20 متر"},{"key":"قابلیت تعویض لامپ","value":"دارد"},{"key":"نوع پایه","value":"E27"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (17, 1, 95, N'سرپیچ بارانی سرپیچ سوزنی', 1, N'سرپیچ بارانی به علت دارا بودن اتصال سیم از کنار سرپیچ در برابر نفوذ باران مقام بوده و مناسب محیط های باز هستش، سرپیچ بارانی تشکیل شده از درب کلاهک، پیچ نگهدارنده و تنه سرپیچ
سرپیچ ریسه Almas
لامپ آویز ریسه Almas
دارای محل عبور سیم جهت نصب راحت تر، مناسب برای استفاده در مراسم ها، فضا های شهری و ...
', 20000, N'\uploads\products\17\product_1.jpg', N'srpych-barany-srpych-svzny', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-07-12T16:39:13.4280895' AS DateTime2), N'برخوردار از سرپیچ E14، جنس بدنه ساخته شده از پلاستیک باکیفیت و مقاوم در برابر حرارت و گرما', N'[{"key":"نوع پایه","value":"E27"},{"key":"ابعاد","value":"\t4 * 4.5 سانتی متر"},{"key":"جنس بدنه\t","value":"پلاستیک"},{"key":"قابلیت تعویض لامپ\t","value":"دارد"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (18, 1, 18, N'سیم کنفی', 1, N'سیم کنفی دورشته به متراژ 100 متر به علت دارا بودن کنف به عنوان نسوز قابل استفاده هستش. 2در 75 سایز سیم  کنفی میباشد', 4500000, N'\uploads\products\18\product_1.jpg', N'sym-knfy', CAST(N'2025-09-10T11:59:22.9639135' AS DateTime2), CAST(N'2026-05-21T11:59:22.9639135' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (19, 4, 19, N'فازمتر کوتاه اورانوس جیبی', 0, N'فازمتر جیبی اورانوس، نشکن با میله فولادی، لامپ قوی و تشکیل شده از مواد اولیه ایرانی در رنگ بندی متفاوت', 25000, N'\uploads\products\19\product_1.jpg', N'fazmtr-kvtah-avranvs-jyby', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:42:17.1082395' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (20, 4, 20, N'فازمتر بزرگ اورانوس', 0, N'فازمتر های اورانوس رنگ بندی متفاوت، نوک فولادی، ضد ضربه و نشکن', 30000, N'\uploads\products\20\product_1.jpg', N'fazmtr-bzrg-avranvs', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:42:27.7212657' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (21, 4, 21, N'فازمتر اورانوس پیلاس دوکاره', 0, N'فازمتر نشکن، بزرگ. میله فولادی، دکمه دار جهت تشخیص فاز', 40000, N'\uploads\products\21\product_1.jpg', N'fazmtr-avranvs-pylas-dvkarh', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:42:41.3753371' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (22, 4, 22, N'فازمتر کیتکو طرح سیتکو', 0, N'فازمتر کیتکو کاملا شفاف نشکن لامپ باکیفیت میله فولادی وسایز بزرگ میباشد', 40000, N'\uploads\products\22\product_1.jpg', N'fazmtr-kytkv-trh-sytkv', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:43:00.0148072' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (23, 4, 23, N'فازمتر متوسط فاز ایران', 0, N'فازمتر نشکن با نوک فولادی و دکمه دار', 31000, N'\uploads\products\23\product_1.jpg', N'fazmtr-mtvst-faz-ayran', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:43:16.7429645' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (24, 1, 24, N'لامپ خواب سرپیچی', 1, N'لامپ خواب های اورانوس، 3وات،سرپیچی، 6 رنگ، بسته بندی 30 عددی. متنوع', 35000, N'\uploads\products\24\product_1.jpg', N'lamp-khvab-srpychy', CAST(N'2025-09-10T11:59:22.9639135' AS DateTime2), CAST(N'2026-05-21T11:59:22.9639135' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (25, 1, 25, N'چراغ خواب دوشاخه دار', 1, N'لامپ خواب دوشاخه دار بدون نیاز به سرپیچ، رنگ بندی جور، بسته 30 عددی، 3 وات', 35000, N'\uploads\products\25\product_1.jpg', N'chragh-khvab-dvshakhh-dar', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:43:41.1872981' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (26, 2, 26, N'تبدیل سه شاخه به دوشاخه نارکن', 1, N'تبدیل سه به دو 16 آمپر نارکن اصلی، جهت استفاده تمام وسایلی که به جای دوشاخه، سه شاخه دارند. برای تمام وسایل با آمپر بالا از جمله کولر گازی و... تمام وسایل حساس مثل شارژر موبایل', 210000, N'\uploads\products\26\product_1.jpg', N'tbdyl-sh-shakhh-bh-dvshakhh-narkn', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-15T11:27:02.7722443' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (27, 2, 27, N'تبدیل سه به دو 16 آمپر نارکن چراغدار', 1, N'تبدیل سه به دو 16 آمپر نارکن چراغدار، قابل استفاده در تمامی وسایل برقی، دارای رینگ رنگی زیبا، قابل استفاده به عنوان چراغ خواب', 250000, N'\uploads\products\27\product_1.jpg', N'tbdyl-sh-bh-dv-16-mpr-narkn-chraghdar', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-15T11:27:48.1314293' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (28, 2, 28, N'تبدیل دو شاخه تیغه ای به دوشاخه معمولی', 0, N'تبدیل دو به دو نارکن یا تبدیل 110 آیوا که مخصوص وسایل برقی هست که دوشاخه به صورت تیغه ای میباشد', 15000, N'\uploads\products\28\product_1.jpg', N'tbdyl-dv-shakhh-tyghh-ay-bh-dvshakhh-mamvly', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:44:33.8113755' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (29, 1, 29, N'چراغ خواب توپک', 1, N'چراغ خواب های توپک کم مصرف میباشد. رنگ بندی متنوع و طرح های مخلف میباشد. بسته بندی 12عددی', 1000000, N'\uploads\products\29\product_1.jpg', N'chragh-khvab-tvpk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:53:30.6393405' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (30, 1, 30, N'چراغ خواب باب اسفنجی', 1, N'چراغ خواب  باب اسفنجی 3وات. طرح های متنوع، مناسب اتاق کودک، کلید مجزا برای روشن خاموش کردن. تولید ایران.', 150000, N'\uploads\products\30\product_1.jpg', N'chragh-khvab-bab-asfnjy', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:54:00.5414527' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (31, 2, 31, N'چمدان تست منابع روشنایی Z4', 1, N'چمدان تست Z4', 25000000, N'\uploads\products\31\product_1.jpg', N'chmdan-tst-mnaba-rvshnayy-z4', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:55:27.3172024' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (32, 2, 32, N'چمدان تست منابع روشنایی Z2پلاس', 1, N'انجام تست کلیدزنی(SWITCHING) 25هزار بار در ساعت (تست تخمین طول عمر)', 29400000, N'\uploads\products\32\product_1.jpg', N'chmdan-tst-mnaba-rvshnayy-z2plas', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T10:56:53.5969021' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (33, 2, 33, N'دستگاه تست رومیزی Z3', 1, N'محاسبه و نمایش توان مصرفی (Watt) حداکثر تا 200 وات', 4500000, N'\uploads\products\33\product_1.jpg', N'dstgah-tst-rvmyzy-z3', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-15T11:28:18.4104919' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (34, 1, 34, N'بخاری برقی اخوان فرید', 1, N'بخاری برقی اخوان فرید اصلی، 3شعله، المنت سفالی، 1500وات،دارای کلید قطع کن، دوشاخه استاندارد،کابل. مسی سایز 0/75&2.ورق و اسکلت ضخیم کارتن 8 عددی', 850000, N'\uploads\products\34\product_1.jpg', N'bkhary-brghy-akhvan-fryd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:08:01.5548139' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (35, 1, 35, N'کرسی برقی اخوان فرید', 1, N'کرسی برقی دوشعله اخوان فرید. المنت سفالی. دارای اتومات قطع کن و کابل و دوشاخه استانداد', 750000, N'\uploads\products\35\product_1.jpg', N'krsy-brghy-akhvan-fryd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:08:25.3456113' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (36, 1, 36, N'بخاری برقی ابر استاره ایستاده ساده', 1, N'بخاری برقی ابر استاره ساده ایستاده 3شعله میباشد، دارای 3 عدد المنت سفالی 500 وات میباشد کلید قطع کن و سیم و دوشاخه استاندارد، دارای سه کلید برای افزایش و کاهش گرما', 1500000, N'\uploads\products\36\product_1.jpg', N'bkhary-brghy-abr-astarh-aystadh-sadh', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:08:51.0424180' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (37, 1, 37, N'بخاری برقی ابراستاره فن دار', 1, N'بخاری برقی ابر استاره فن دار ایستاده 3شعله میباشد، دارای 3 عدد المنت شیشه ای 500 وات میباشد کلید قطع کن و سیم و دوشاخه استاندارد، دارای سه کلید برای افزایش و کاهش گرما. دارای فن جهت افزایش گرما محیط میباشد', 2000000, N'\uploads\products\37\product_1.jpg', N'bkhary-brghy-abrastarh-fn-dar', CAST(N'2025-09-10T11:59:22.9639135' AS DateTime2), CAST(N'2026-05-21T11:59:22.9639135' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (38, 2, 38, N'سیم1/5 افشان تمام مس لوشان', 1, N'سیم افشان سایز 1/5لوشان، رنگ بندی، کلاف 100 متری، استاندارد و تمام مس', 4600000, N'\uploads\products\38\product_1.jpg', N'sym15-afshan-tmam-ms-lvshan', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:10:04.5999380' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (39, 2, 39, N'سیم2/5افشان', 1, N'سیم افشان 2/5لوشان. تمام مس. کلاف صد متری، رنگبندی. استاندارد ایران', 7250000, N'\uploads\products\39\product_1.jpg', N'sym25afshan', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:11:07.0818311' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (40, 4, 40, N'شبیه ساز حضور در منزل', 1, N'شبيه ساز حضور در منزل طبق برنامه های تعریف شده برای هر فصل کار میکند، کاملا اتوماتیک میباشد و طبق غروب و طلوع خورشید قطع و وصل میشود هر لامپ با هر وات قابل استفاده میباشد', 500000, N'\uploads\products\40\product_1.jpg', N'shbyh-saz-hzvr-dr-mnzl', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:11:27.3032215' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (41, 2, 41, N'دوشاخه نری صنعتی پارت  کد 972', 1, N'دوشاخه نری و مادگی پارت .صنعتی مخصوص آمپر بالا قیمت بر اساس تک', 85000, N'\uploads\products\41\product_1.jpg', N'dvshakhh-nry-snaty-part-kd-972', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-08T10:55:43.5396580' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (42, 2, 42, N'محافظ ولتاژ ورودی 30 آمپر کد 5137', 1, N'محافظ ولتاژ ورودی پارت الکتریک30 امپر .جلوگیری از نوسان حاصل از قطع و وصل شدن برق', 1210000, N'\uploads\products\42\product_1.jpg', N'mhafz-vltazh-vrvdy-30-mpr-kd-5137', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:14:06.7572290' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (43, 1, 43, N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', 1, N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک طرح قدیم کد 689', 850000, N'\uploads\products\43\product_1.jpg', N'mhafz-kvlr-gazy-ykhchal-v-lbasshvyy-part-alktryk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:16:07.4730031' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (44, 1, 44, N'محافظ پکیج', 1, N'محافظ پکیج پارت الکتریک', 710000, N'\uploads\products\44\product_1.jpg', N'mhafz-pkyj', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:16:33.5318813' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (45, 1, 45, N'محافظ یخچال', 1, N'محافظ یخچال  با کابل 1/8متری پارت الکتریک کد767', 1109000, N'\uploads\products\45\product_1.jpg', N'mhafz-ykhchal', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:19:50.3749773' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (46, 1, 46, N'محافظ یخچال با کابل 3متری', 1, N'محافظ یخچال پارت الکتریک', 1413000, N'\uploads\products\46\product_1.jpg', N'mhafz-ykhchal-ba-kabl-3mtry', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:19:12.9721107' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (47, 1, 47, N'محافظ یخچال پارت الکتریک  با کابل 5متری', 1, N'محافظ یخچال پارت الکتریک', 2000000, N'\uploads\products\47\product_1.jpg', N'mhafz-ykhchal-part-alktryk-ba-kabl-5mtry', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T11:20:22.8874064' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (48, 1, 48, N'محافظ 4 خانه کامپیوتر', 1, N'محافظ 4 خانه کامپیوتر پارت الکتریک2204', 1340000, N'\uploads\products\48\product_1.jpg', N'mhafz-4-khanh-kampyvtr', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T12:58:13.7570189' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (49, 1, 49, N'محافظ 4 خانه کامپیوتر پارت', 1, N'محافظ 4 خانه کامپیوتر پارت الکتریک894', 1612000, N'\uploads\products\49\product_1.jpg', N'mhafz-4-khanh-kampyvtr-part', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T12:59:14.4813909' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (50, 1, 50, N'محافظ 4 خانه کامپیوتر پارت الکتریک  ', 1, N'محافظ 4 خانه کامپیوتر پارت الکتریک', 2210000, N'\uploads\products\50\product_1.jpg', N'mhafz-4-khanh-kampyvtr-part-alktryk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T13:51:40.1004874' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (51, 1, 51, N'محافظ 6 خانه کامپیوتر کد 2060', 1, N'محافظ 6 خانه کامپیوتر پارت الکتریک', 1783000, N'\uploads\products\51\product_1.jpg', N'mhafz-6-khanh-kampyvtr-kd-2060', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-21T10:49:04.3863250' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (52, 1, 52, N'محافظ 6 خانه کامپیوتر کد7381', 1, N'محافظ 6 خانه کامپیوتر پارت الکتریک', 1994000, N'\uploads\products\52\product_1.jpg', N'mhafz-6-khanh-kampyvtr-kd7381', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T13:53:34.0504422' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (53, 1, 53, N'محافظ 6 خانه کامپیوتر کد 2160', 1, N'محافظ 6 خانه کامپیوتر پارت الکتریک', 2573000, N'\uploads\products\53\product_1.jpg', N'mhafz-6-khanh-kampyvtr-kd-2160', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-21T10:50:00.4999096' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (54, 2, 54, N'سه راهی صنعتی کرال کد1027', 1, N'3 راهی صنعتی پارت الکتریک کرال یا کله گاوی', 393000, N'\uploads\products\54\product_1.jpg', N'sh-rahy-snaty-kral-kd1027', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T09:52:56.3183461' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (55, 1, 55, N'بخاری رومیزی لاکان خزر( آراسته)', 0, N'بخاری برقی رومیزی فن دار لاکان خزر', 2500000, N'\uploads\products\55\product_1.jpg', N'bkhary-rvmyzy-lakan-khzr-rasth', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T09:53:32.4568062' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (56, 1, 56, N'دوشاخه خانگی سفید پارت5518 و مشکی 5519', 1, N'دوشاخه 16آمپر خانگی پارت الکتریک.سفید و مشکی', 71000, N'\uploads\products\56\product_1.png', N'dvshakhh-khangy-sfyd-part5518-v-mshky-5519', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T09:54:43.7831040' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (57, 1, 57, N'محافظ کولر گازی دیجیتال پارت الکتریک کد 2833', 1, N'مناسب برای:کولرگازی،یخچال و فریزر،ماشین لباسشویی،ماشین ظرفشویی', 1076000, N'\uploads\products\57\product_1.webp', N'mhafz-kvlr-gazy-dyjytal-part-alktryk-kd-2833', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T09:55:47.9677674' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (58, 1, 58, N'محافظ دو شاخه دار یخچال و فریزر پارت الکتریک', 1, N'مناسب برای:یخچال و فریزر،ماشین لباسشویی،ماشین ظرفشویی', 976000, N'\uploads\products\58\product_1.webp', N'mhafz-dv-shakhh-dar-ykhchal-v-fryzr-part-alktryk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T09:57:59.0294012' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (59, 1, 59, N'محافظ پکیج دیجیتال پارت الکتریک 2836', 1, N'مناسب برای:', 976000, N'\uploads\products\59\product_1.webp', N'mhafz-pkyj-dyjytal-part-alktryk-2836', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:00:06.7479462' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (60, 4, 60, N'المنت سفالی الکترو امین 20 سانت 0/30', 0, N'المنت های سفالی الکترو امین، 20 سانت دنده ریز', 20000, N'\uploads\products\60\product_1.jpg', N'almnt-sfaly-alktrv-amyn-20-sant-030', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T09:54:00.3061269' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (61, 2, 61, N'کلید تک پل توکار بارانی دلند پلاس آسا', 0, N'ویژگی‌ها', 97900, N'\uploads\products\61\product_1.jpeg', N'klyd-tk-pl-tvkar-barany-dlnd-plas-sa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:00:39.4427273' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (62, 2, 62, N'کلید دو پل تو کار بارانی دلند پلاس آسا', 0, N'ویژگی‌ها', 115400, N'\uploads\products\62\product_1.jpg', N'klyd-dv-pl-tv-kar-barany-dlnd-plas-sa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:00:58.1132919' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (63, 2, 63, N'پریز محافظ دار توکار بارانی ارت دار پارت الکتریک', 0, N'توان و آمپر مناسب 
کیفیت متریال (پلاستیک نسوز یا فلز مقاوم)
زیبایی و نظم بیشتر در فضا
کاهش سیم‌های اضافی در دید
مناسب فضاهای مدرن و هوشمند
استاندارد بودن محصول
برند معتبر
داشتن ارت (اتصال زمین)', 81700, N'\uploads\products\63\product_1.jpg', N'pryz-mhafz-dar-tvkar-barany-art-dar-part-alktryk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:01:10.0854531' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (64, 1, 64, N'پریز  طرح قدیم پارت کد 115', 0, N'پریز ارتدار توکار با مغزی سرامیکی طرح قدیم پارت کد محصول 115', 55000, N'\uploads\products\64\product_1.jpg', N'pryz-trh-ghdym-part-kd-115', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:02:04.0376914' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (65, 1, 65, N'پریز ارت دار روکار کد 325', 0, N'پریز ارت دار روکار پارت الکتریک طرح قدیم', 52000, N'\uploads\products\65\product_1.jpg', N'pryz-art-dar-rvkar-kd-325', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:02:45.1186612' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (66, 1, 66, N'پریز روکار بدون ارت کد 106', 0, N'پریز بدون روکار پارت الکتریک طرح قدیم', 45000, N'\uploads\products\66\product_1.jpg', N'pryz-rvkar-bdvn-art-kd-106', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:05:01.9838014' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (67, 3, 67, N' سرپیچ تونلی لامپ E40', 0, N'ویژگی‌ها
تعداد سرپیچ
:
1 عدد
نوع پایه
:
E40
جنس
:
سرامیک', 55000, N'\uploads\products\67\product_1.jpg', N'srpych-tvnly-lamp-e40', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:03:53.0658961' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (68, 4, 68, N'قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر', 1, N'ارت دارد
جنس
فلز
تعداد پریز
3عدد', 2500000, N'\uploads\products\68\product_2.jpg', N'ghrghrh-kabl-jma-kn-vhdt-alktryk-zrfyt-30-mtr', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T11:02:50.3064717' AS DateTime2), N'مشخصات محصول
ارت-دارد
جنس	-فلز
مقاوم در برابر فشار و ضربه	دارد
تعداد پریز-3عدد
قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر
قرقره کابل جمع کن صنعتی وحدت الکتریک با ظرفیت 300 سانتی متری
ساخته شده از جنس فلز مقاوم در برابر آسیب های احتمالی همچون فشار و ضربه 
دارای 3پریز ارت دار و حداکثر ظرفیت کابل 30 متری، دارای دسته و پایه جهت سهولت در استفاده', N'[]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (69, 1, 69, N'تبدیل برق 3 به 2 مدیانور SH1059', 1, N'نوع تبدیل : تبدیل 3 به 2   ارت: دارد  تعداد پریز:1 عدد ', 250000, N'\uploads\products\69\product_1.jpg', N'tbdyl-brgh-3-bh-2-mdyanvr-sh1059', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:10:40.7331862' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (70, 2, 70, N'فیوز محافظ جان دو پل 32 آمپر دنا الکتریک RCCB', 0, N'نوع نصب
:
توکار
کلید فیزیکی
:
دارد', 92000, N'\uploads\products\70\product_1.jpg', N'fyvz-mhafz-jan-dv-pl-32-mpr-dna-alktryk-rccb', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:10:55.1128549' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (71, 2, 71, N'فیوز مینیاتوری تک پل 10 آمپر دنا الکتریک', 0, N'پشتیبانی از ولتاژ عملکرد 230 الی 400 ولت و شدت جریان 10 آمپر 

برخوردار از یک عدد کلید برای قطع و وصل مدار در تابلوهای کنتوری', 135000, N'\uploads\products\71\product_1.jpg', N'fyvz-mynyatvry-tk-pl-10-mpr-dna-alktryk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:11:22.6174064' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (72, 3, 72, N'ریسه واترپروف هولدری 100متری', 1, N'ریسه واترپروف 100متری200 شعله ضدآب، ضد سرقت. از نوع کابلی که میتوان 200 عدد لامپ رو پشت سر هم به وسیله این ریسه روشن کرد', 16500000, N'\uploads\products\72\product_1.jpg', N'rysh-vatrprvf-hvldry-100mtry', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-07-12T16:42:45.1302880' AS DateTime2), N'null', N'[]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1067, 5, 73, N' سرپیچ لامپ E27 دیواری عصر توان ', 1, N'نوع پایه
:
E27
جنس بدنه
:
پلاستیک
محل نصب
:
دیوار', 80000, N'\uploads\products\73\product_1.jpg', N'srpych-lamp-e27-dyvary-asr-tvan', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T19:57:54.9588275' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1068, 5, 74, N' سرپیچ دوشاخه دار ساده با کالیت عصر توان ', 1, N'سرپیچ دوشاخه دار ساده با کالیت عصر توان
سر پیچ لامپ با پایه E27
بدنه ساخته شده از جنس باکالیت و پایه از نوع E27 ساخته شده از متریال برنجی

مناسب برای اتصال انواع لامپ های کم مصرف، ال ای دی و ....', 45000, N'\uploads\products\74\product_1.jpg', N'srpych-dvshakhh-dar-sadh-ba-kalyt-asr-tvan', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:13:36.1799556' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1069, 5, 75, N'سرپیچ شمعی Sarshar E14 راکورد دار', 1, N'نوع پایه
:
E14
تعداد سرپیچ
:
1 عدد
جنس بدنه
:
پلاستیک', 45000, N'\uploads\products\75\product_1.jpg', N'srpych-shmay-sarshar-e14-rakvrd-dar', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:14:18.5470704' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1076, 4, 76, N'کیت آموزشی کاردستی جرثقیل کد 2', 1, N'کیت کاردستی آرمیچری ساخت چرثقیل
تشکیل شده از قطعاتی نظیر کلید، چوب MDF برش خورده، موتور آرمیچر، قرقره، جا باتری و...، مناسب برای ساخت کاردستی دانش آموزان
قابلیت نصب آسان
دارد
ابعاد
چوب : 20*15 سانتی متر
پایه چرثقیل : 29*2.2 سانتی متر
اقلام موجود در بسته
کلید، چوب MDF برش خورده، موتور آرمیچر، قرقره، جا باتری و ...', 600000, N'\uploads\products\76\product_1.jpg', N'kyt-mvzshy-kardsty-jrsghyl-kd-2', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:15:56.7619715' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1077, 4, 77, N'نوک هویه گات Goot R-6B', 1, N'نوک هویه 60 وات Goot مدل R-6B
مناسب امور لحیم کاری برد و قطعات موبایل، رایانه، تبلت و ...

ساخته شده از فلز مقاوم در برابر خوردگی و سایش، سازگاری با هویه های 60 وات', 150000, N'\uploads\products\77\product_1.jpg', N'nvk-hvyh-gat-goot-r-6b', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:16:35.8513945' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1078, 4, 78, N' فازیاب VD07E ', 0, N'فازمتر کلید دار مدل VD07E
قابلیت تشخیص ولتاژ AC با دو حالت حساسیت بالا و پایین

مدت زمان استفاده مداوم حدود 6 ساعت و زمان آماده به کار تا 1.5 سال

دارای کلید فیزیکی جهت کنترل بهتر، مجهز به چراغ قوه داخلی برای استفاده در محیط های کم نور

تامین انرژی از طریق دو عدد باتری AAA همراه، مجهز به گیره جهت اتصال به لباس، جیب، کیف و ...', 385000, N'\uploads\products\78\product_1.jpg', N'fazyab-vd07e', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T19:43:57.8642101' AS DateTime2), N'خاموشی خودکار جهت کاهش مصرف باتری، استاندارد ایمنی CAT III تا 1000 ولت و CAT IV تا 600 ولت

محدوده تست ولتاژ در حالت حساسیت بالا 12 تا 1000 ولت، محدوده تست ولتاژ در حالت حساسیت پایین 48 تا 1000 ولت', N'[{"key":"گیره","value":"دارد"},{"key":"چراغ قوه","value":"دارد"},{"key":"کلید فیزیکی","value":"دارد"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1079, 4, 79, N'کلید بین راهی کوچک باریک ', 0, N'ویژگی‌ها
نوع نصب
:
روکار
تعداد پل
:
تک پل
جنس بدنه
:
پلاستیک
کلید بین راهی کوچک باریک
ساخته شده از پلاستیک باکیفیت، دارای کلید فیزیکی جهت خاموش و روشن کردن', 22500, N'\uploads\products\79\product_1.jpg', N'klyd-byn-rahy-kvchk-baryk', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:17:58.3388454' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1080, 1, 80, N'زنگ پیانویی روکار پدرام Pedram', 1, N'ویژگی‌ها
جنس بدنه
:
پلاستیک
ولتاژ
:
220 ولت
نوع نصب
:
روکار
زنگ پیانویی روکار پدرام Pedram
زنگ روکار دینگ دانگ پدرام
متریال بدنه ساخته شده از پلاستیک با کیفیت، دارای صدای پیانویی بلند (دینگ دانگ)

مناسب برای نصب روکار، تامین انرژی از طریق سیم با اتصال به برق شهری با ولتاژ 220 ولت', 250000, N'\uploads\products\80\product_1.jpg', N'zng-pyanvyy-rvkar-pdram-pedram', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:19:53.9295989' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1081, 5, 81, N' کیت آموزشی کاردستی جرثقیل ', 0, N'کیت کاردستی آرمیچری ساخت چرثقیل
تشکیل شده از قطعاتی نظیر کلید، چوب MDF برش خورده، موتور آرمیچر، قرقره، جا باتری و...، مناسب برای افزایش مهارت کودکان و نوجوانان ', 395000, N'\uploads\products\81\product_1.jpg', N'kyt-mvzshy-kardsty-jrsghyl', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:20:36.8982109' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1082, 4, 82, N'آداپتور مودم Mdianoor 12V 2A فیش درشت', 1, N'ویژگی‌ها
طول کابل
:
1.4 متر
روکش کابل
:
پلاستیک
نشانگر وضعیت
:
دارد
آداپتور مودم Mdianoor 12V 2A فیش درشت
منبع تغذیه سوئیچینگ مدیانور با ولتاژ 12 ولت و جریان 2 آمپر
دارای ولتاژ ورودی 85 تا 265 ولت AC و فرکانس ورودی 50/60 هرتز

برخوردار از شدت جریان خروجی برابر با 2 آمپر در ولتاژی معادل  12 ولت

مجهز به سوکت سوزنی 2.5 میلی متری و کابلی با کیفیت به طول 1.4 متر، مقاوم در برابر کشش و خمیدگی احتمالی

مورد استفاده برای دوربین مداربسته، مودم و دستگاه های دیجیتال، مجهز به نشانگر LED جهت نمایش روند کارکرد ', 500000, N'\uploads\products\82\product_1.jpg', N'daptvr-mvdm-mdianoor-12v-2a-fysh-drsht', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:18:33.8472312' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1083, 4, 83, N'کلید راکر سه حالته سه پایه', 0, N'کلید راکر طرح سه حالته سایز کوچیک
ساخته شده از جنس پلاستیک عایق مقاوم در برابر آسیب های احتمالی 

دارای کلید سه حالته نظیر خاموش / روشن و سه حالت قطع وصلی

نوع نصب
توکار
تعداد پل
سه پل
نوع محصول
کلید راکر
کلید برق', 17000, N'\uploads\products\83\product_1.jpg', N'klyd-rakr-sh-halth-sh-payh', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:19:20.8889169' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1084, 5, 84, N' سه راهی تپل بست ', 0, N'3 راهی برق تپل Best
ساخته شده از جنس پلاستیک مقاوم در برابر آسیب های احتمالی

مورد استفاده برای تبدیل یک پریز به سه پریز برق', 38000, N'\uploads\products\84\product_1.jpg', N'sh-rahy-tpl-bst', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:21:07.9461754' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1085, 4, 85, N'کابل برق Honglin HL-0268 1.8m PC', 1, N'طول کابل
:
1.8 متر
روکش کابل
:
پلاستیک
کابل برق هونگلین مدل HL-0268 طول 180 سانتی متر
میزان جریان عبوری 10 آمپر با ولتاژ 250 ولت، دارای استاندارد CE

کانکتور از نوع سه پین و دو شاخه از نوع EU جهت اتصال به پریز برق شهری

طول کابل 180 سانتی متر با روکشی از جنس پلاستیک مقاوم در برابر کشش و خمیدگی', 285000, N'\uploads\products\85\product_1.jpg', N'kabl-brgh-honglin-hl-0268-18m-pc', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-25T10:21:53.5717828' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1086, 3, 86, N'ریسه واترپروف 100متر200 شعله ', 1, N'ریسه واترپروف 100متر200 شعله ضد آب نکهدارنده طناب کابل1/5*2 دارای دوشاخه واترپروف و مادگی', 15000000, N'\uploads\products\86\product_1.jpg', N'rysh-vatrprvf-100mtr200-shalh', CAST(N'2026-05-24T12:01:46.3098604' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1087, 4, 87, N'مولتی متر دیجیتال DT9205A', 1, N'مولتی متر دیجیتال DT9205A
مولتی متر دیجیتال مدل DT9205A
قابلیت اندازه گیری پارامترهایی نظیر ولتاژ AC/DC، جریان AC/DC، دیود، مقاومت، ترانزیستور، خازن و ...

دمای کاری در محدوده ی 0 الی 40 درجه سانتی گراد و دمای ذخیره سازی 10- الی 50 درجه سانتی گراد

مجهز به صفحه نمایش دیجیتال LCD، تامین انرژی توسط باتری 9 ولت، دارای قابلیت خاموش شدن خودکار

تست ولتاژ AC در رنج 700V و ولتاژ DC در رنج 1000V، اقلام همراه شامل دو عدد کابل پراب و باتری 9 ولت کتابی

بدنه ساخته شده از پلاستیک با کیفیت، دارای پایه و مجهز به کلید فیزیکی چرخشی جهت تغییر محدوده اندازه گیری، حالت عملیاتی دستی', 1550000, N'\uploads\products\87\product_1.jpg', N'mvlty-mtr-dyjytal-dt9205a', CAST(N'2026-05-24T13:04:05.5397834' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1088, 5, 88, N'تبدیل برق همه کاره نارکن', 1, N'تبدیل برق همه کاره نارکن
مبدل برق مسافرتی Narken 
حمل و نقل آسان با توجه به طراحی کوچک و وزن کم، بهره مندی از یک عدد کلید قفل به منظور قفل کردن دوشاخه مورد نظر

مجهز به ورودی یونیورسال سازگار با انواع دو شاخه در ایران و سراسر دنیا، دارای یک محفظه پارچه ای همراه

موفق به کسب گواهینامه استاندارد امنیت و سلامت محصولات CE، مقاوم در برابر شوک های الکتریکی

متریال ساخت بدنه محصول از نوع پلاستیک مقاوم در برابر آسیب های فیزیکی همچون ضربه، فشار و ...

میزان شدت جریان و ولتاژ 6 آمپر در 125 ولت الی 13 آمپر در 250 ولت', 260000, N'\uploads\products\88\product_1.jpg', N'tbdyl-brgh-hmh-karh-narkn', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-24T13:11:30.9224047' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1091, 2, 89, N'مادگی صنعتی پارت  کد 963', 1, N'مادگی برق صنعتی پارت الکتریک با بدنه از جنس پلاستیک مرغوب و با حداکثر جریان عبوری 16 آمپر که جهت مصارف خانگی، عمومی و صنعتی مناسب است. در برابر ضربه و جریانات معمولی برق مقاومت خوبی دارد. این محصول برای اتصال ایمن سیم و کابل به برق بکار برده می شود.

 

مشخصات فنی:

مدل: S3

نوع محصول: مادگی

جنس: پلاستیک

ولتاژ ورودی: 250 ولت

حداکثر توان عبوری: 220 وات

حداکثر جریان عبوری: 16 آمپر

ابعاد: 6×6×10 میلیمتر

وزن: 200 گرم', 85000, N'\uploads\products\89\product_1.jpg', N'madgy-snaty-part-kd-963', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-21T10:50:38.9750831' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1122, 3, 90, N'لامپ 9 وات سبز', 1, N'لامپ 9 وات LED رنگی سبز پارس پریا

 

لامپ‌های ال ای دی از جدیدترین و پیشرفته‌ترین تکنولوژی روشنایی هستند که با کمترین مصرف انرژی بیشترین نور را تولید می‌کنند. لامپ ال ای دی که مزیت‌های فراوانی دارد تا حدی فراگیر شده است که زندگی مدرن شهری بدون آن‌ها دور از تصور به نظر می‌رسد. این منابع روشنایی ساختار پیچیده‌ای ندارند و با طول عمر و دوام بالا تمامی رقبای خود مانند لامپ‌های رشته‌ای، فلورسنت و لامپ‌های گازی را کنار گذاشته اند. ال ای دی‌ها علاوه بر مزایایی که دارند قادر به تولید انواع نورهای رنگی هستند.', 140000, N'\uploads\products\90\product_1.jpg', N'lamp-9-vat-sbz', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-21T10:53:50.1726199' AS DateTime2), NULL, NULL)
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1123, 3, 91, N'لامپ 10وات نوا لایت نور قرمز', 1, N'لامپ 10 وات رنگی نوا لایت با نور قرمز
یکسال ضمانت.به صورت فله بدون تک جعبه بخاطر قیمت اقتصادی
لامپ 10 وات رنگی  با نور قرمز یکی از گزینه‌های کاربردی برای ایجاد جلوه‌های بصری خاص در فضاهای مختلف است. این محصول با توان مصرفی 10 وات طراحی شده و با استفاده از فناوری LED، روشنایی یکنواخت و کم‌مصرفی ارائه می‌دهد. رنگ قرمز این لامپ بیشتر برای نورپردازی دکوراتیو، استفاده در فضاهای جشن و تزئین محیط‌های خاص کاربرد دارد و می‌تواند جلوه‌ای متفاوت به محیط ببخشد.

بدنه این لامپ با ساختار مقاوم تولید شده و برای استفاده در چراغ‌های استاندارد خانگی و تجاری مناسب است. تکنولوژی LED به کار رفته در این محصول موجب کاهش تولید گرما و افزایش عمر مفید لامپ می‌شود. مصرف انرژی پایین در کنار کیفیت نوردهی مناسب باعث شده این لامپ گزینه‌ای اقتصادی برای نورپردازی رنگی باشد.', 75000, N'\uploads\products\91\product_1.jpg', N'lamp-10vat-nva-layt-nvr-ghrmz', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T11:25:49.8443923' AS DateTime2), N'null', N'[{"key":"توان","value":"10وات"},{"key":"ضمانت","value":"یکسال"},{"key":"تعداد در کارتن","value":"250عدد"},{"key":"جعبه تک","value":"ندارد"},{"key":"حباب","value":"قرمز"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1124, 3, 17, N'ریسه کنفی  سیم مشکی', 1, N'ریسه سرپیچ دار 20 متری Almas
ریسه کنفی لامپ آویز سرپیچ دار 20 متری الماس
ریسه به طول 20 متر با روکش از جنس کنف، مقاوم در برابر کشش و پارگی
تامین انرژی از طریق اتصال به برق شهری', 1950000, N'\uploads\products\17\product_5.jpg', N'rysh-knfy-sym-mshky', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-07-14T13:07:20.2060282' AS DateTime2), N'نوع محصول	
سرپیچ آویز لامپ
تبدیل و سرپیچ لامپ
جنس بدنه	پلاستیک کنفی 50 شعله 20 متر با سیم استاندارد و سرپیچ بارانی و سیم کنفی
اتصال سیم به سرپیچ از کنار سرپیچ هست و مقاوم در برابر باد و باران', N'[{"key":"رنگ","value":"مشکی"},{"key":"تعداد سرپیچ","value":"50 عدد"},{"key":"طول آویز","value":"حدود 20 متر"},{"key":"قابلیت تعویض لامپ","value":"دارد"},{"key":"نوع پایه","value":"E27"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1125, 2, 93, N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', 1, N'ویژگی ها
ارت :دارد
جنس :فلز
تعداد پریز :4 عدد
قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر
قرقره کابل جمع کن صنعتی وحدت الکتریک با ظرفیت 300 سانتی متری
ساخته شده از جنس فلز مقاوم در برابر آسیب های احتمالی همچون فشار و ضربه 
دارای 4 پریز ارت دار و حداکثر ظرفیت کابل 30 متری، دارای دسته و پایه جهت سهولت در استفاده', 2900000, N'\uploads\products\93\product_1.webp', N'ghrghrh-kabl-jma-kn-vhdt-alktryk-4-pryz-zrfyt-30-mtr', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T11:24:32.8516195' AS DateTime2), N'', N'[{"key":"ارن","value":"دارد"},{"key":"جنس","value":"فلز"},{"key":"نوع چرخش","value":"بلبرینگ"},{"key":"پریز","value":"4عدد"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1126, 4, 94, N'چراغ خودرویی 20 وات', 1, N'چراغ LED خودرویی 20ولت دسته‌دار
مناسب اتصال مستقیم به باتری خودرو (20ولت)
دارای گیره سوسماری برای اتصال سریع
نوردهی قوی با LED کم‌مصرف
دسته ارگونومیک برای حمل آسان
قاب محافظ مات برای پخش یکنواخت نور
مناسب تعمیر خودرو، مکانیکی، امداد جاده‌ای، کمپینگ و استفاده در کارگاه', 200000, N'\uploads\products\94\product_3.jpg', N'chragh-khvdrvyy-20-vat', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T15:55:15.3743164' AS DateTime2), N'نوردهی قوی و یکنواخت با LED کم‌مصرف
:: اتصال مستقیم به باتری 20ولت خودرو
: مجهز به گیره سوسماری برای اتصال سریع و ایمن
: دسته ارگونومیک برای حمل و استفاده آسان
: بدنه مقاوم و پخش نور مناسب برای کار در محیط‌های کم‌نور
: مناسب برای مکانیکی، برق خودرو، کمپینگ، امداد جاده‌ای و کارگاه', N'[{"key":"توان","value":"20وات"},{"key":"گیره سوسماری","value":"دارد"},{"key":"قابلیت اتصال به سقف","value":"دارد"},{"key":"دسته جدا شونده","value":"دارد"},{"key":"نوع لامپ ","value":"SMD"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1127, 4, 96, N'فنر سیم کشی برق 6 متری', 1, N'فنر سیم کشی برق ۶ متری
این نوع فنر جهت هدایت سیم های برق به داخل لوله ها و انجام بهتر عمل وایرینگ مورد استفاده قرار می گیرد. ', 52000, N'\uploads\products\96\product_1.webp', N'fnr-sym-kshy-brgh-6-mtry', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T15:51:55.3507810' AS DateTime2), N'انتخابی مطمئن برای عبور آسان سیم و کابل از داخل لوله برق
:: ساخته شده از فلز فنری مقاوم و باکیفیت
:: انعطاف‌پذیری بالا و حرکت روان داخل لوله‌ها
:: مقاوم در برابر خم‌شدگی و شکستگی
:: مناسب برای برق‌کاران، نصابان و پروژه‌های ساختمانی
:: موجود در متراژهای ۶، ۱۰، ۱۵ و ۲۰ متر', N'[{"key":"متراژ ","value":"6متر"},{"key":"جنس","value":"فلز"},{"key":"قیمت واحد","value":"9000 تومان"}]')
GO
INSERT [admindb].[Product] ([Id], [CategoryId], [Code], [Name], [IsActive], [Description], [Price], [PathImg], [Slug], [CreatedDate], [UpdatedDate], [Description2], [Feature]) VALUES (1128, 4, 97, N'فنر سیم کشی فلزی 10متری', 1, N'انتخابی مطمئن برای عبور آسان سیم و کابل از داخل لوله برق
:: ساخته شده از فلز فنری مقاوم و باکیفیت
:: انعطاف‌پذیری بالا و حرکت روان داخل لوله‌ها
:: مقاوم در برابر خم‌شدگی و شکستگی
:: مناسب برای برق‌کاران، نصابان و پروژه‌های ساختمانی
:: موجود در متراژهای ۶، ۱۰، ۱۵ و ۲۰ متر', 95000, N'\uploads\products\97\product_1.webp', N'fnr-sym-kshy-flzy-10mtry', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-06-28T15:49:05.9547946' AS DateTime2), N'فنر سیم کشی برق ۱۰ متری
این نوع فنر جهت هدایت سیم های برق به داخل لوله ها و انجام بهتر عمل وایرینگ مورد استفاده قرار می گیرد.', N'[{"key":"متراژ","value":"10متر"},{"key":"جنس ","value":"فلز"},{"key":"مارک","value":"اسیا"}]')
GO
SET IDENTITY_INSERT [admindb].[Product] OFF
GO
SET IDENTITY_INSERT [admindb].[City] ON 
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1, N'اردبیل', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (2, N'اصفهان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (3, N'البرز', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (4, N'ایلام', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (5, N'آذربایجان شرقی', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (6, N'آذربایجان غربی', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (7, N'بوشهر', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (8, N'تهران', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (9, N'چهارمحال وبختیاری', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (10, N'خراسان جنوبی', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (11, N'خراسان رضوی', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (12, N'خراسان شمالی', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (13, N'خوزستان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (14, N'زنجان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (15, N'سمنان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (16, N'سیستان وبلوچستان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (17, N'فارس', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (18, N'قزوین', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (19, N'قم', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (20, N'کردستان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (21, N'کرمان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (22, N'کرمانشاه', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (23, N'کهگیلویه وبویراحمد', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (24, N'گلستان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (25, N'گیلان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (26, N'لرستان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (27, N'مازندران', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (28, N'مرکزی', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (29, N'هرمزگان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (30, N'همدان', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (31, N'یزد', NULL)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (32, N'اردبیل', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (33, N'اصلاندوز', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (34, N'آبی بیگلو', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (35, N'بیله سوار', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (36, N'پارس آباد', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (37, N'تازه کند', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (38, N'تازه کندانگوت', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (39, N'جعفرآباد', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (40, N'خلخال', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (41, N'رضی', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (42, N'سرعین', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (43, N'عنبران', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (44, N'فخرآباد', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (45, N'کلور', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (46, N'کوراییم', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (47, N'گرمی', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (48, N'گیوی', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (49, N'لاهرود', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (50, N'مرادلو', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (51, N'مشگین شهر', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (52, N'نمین', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (53, N'نیر', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (54, N'هشتجین', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (55, N'هیر', 1)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (56, N'ابریشم', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (57, N'ابوزیدآباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (58, N'اردستان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (59, N'اژیه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (60, N'اصفهان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (61, N'افوس', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (62, N'انارک', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (63, N'ایمانشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (64, N'آران وبیدگل', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (65, N'بادرود', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (66, N'باغ بهادران', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (67, N'بافران', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (68, N'برزک', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (69, N'برف انبار', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (70, N'بوئین ومیاندشت', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (71, N'بهاران شهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (72, N'بهارستان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (73, N'پیربکران', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (74, N'تودشک', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (75, N'تیران', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (76, N'جندق', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (77, N'جوزدان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (78, N'جوشقان وکامو', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (79, N'چادگان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (80, N'چرمهین', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (81, N'چمگردان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (82, N'حبیب آباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (83, N'حسن آباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (84, N'حنا', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (85, N'خالدآباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (86, N'خمینی شهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (87, N'خوانسار', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (88, N'خور', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (89, N'خوراسگان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (90, N'خورزوق', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (91, N'داران', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (92, N'دامنه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (93, N'درچه پیاز', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (94, N'دستگرد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (95, N'دولت آباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (96, N'دهاقان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (97, N'دهق', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (98, N'دیزیچه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (99, N'رزوه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (100, N'رضوانشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (101, N'زاینده رود', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (102, N'زرین شهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (103, N'زواره', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (104, N'زیباشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (105, N'سده لنجان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (106, N'سفیدشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (107, N'سگزی', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (108, N'سمیرم', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (109, N'شاپورآباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (110, N'شاهین شهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (111, N'شهرضا', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (112, N'طالخونچه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (113, N'عسگران', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (114, N'علویچه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (115, N'فرخی', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (116, N'فریدونشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (117, N'فلاورجان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (118, N'فولادشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (119, N'قمصر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (120, N'قهجاورستان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (121, N'قهدریجان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (122, N'کاشان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (123, N'کرکوند', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (124, N'کلیشادوسودرجان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (125, N'کمشچه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (126, N'کمه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (127, N'کوشک', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (128, N'کوهپایه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (129, N'کهریزسنگ', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (130, N'گرگاب', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (131, N'گزبرخوار', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (132, N'گلپایگان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (133, N'گلدشت', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (134, N'گلشن', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (135, N'گلشهر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (136, N'گوگد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (137, N'لای بید', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (138, N'مبارکه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (139, N'محمدآباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (140, N'مشکات', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (141, N'منظریه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (142, N'مهاباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (143, N'میمه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (144, N'نائین', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (145, N'نجف آباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (146, N'نصرآباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (147, N'نطنز', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (148, N'نوش آباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (149, N'نیاسر', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (150, N'نیک آباد', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (151, N'ورزنه', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (152, N'ورنامخواست', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (153, N'وزوان', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (154, N'ونک', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (155, N'هرند', 2)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (156, N'اشتهارد', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (157, N'آسارا', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (158, N'تنکمان', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (159, N'چهارباغ', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (160, N'سیف آباد', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (161, N'شهرجدیدهشتگرد', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (162, N'طالقان', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (163, N'کرج', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (164, N'کمال شهر', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (165, N'کوهسار', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (166, N'گرمدره', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (167, N'ماهدشت', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (168, N'محمدشهر', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (169, N'مشکین دشت', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (170, N'نظرآباد', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (171, N'هشتگرد', 3)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (172, N'ارکواز', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (173, N'ایلام', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (174, N'ایوان', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (175, N'آبدانان', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (176, N'آسمان آباد', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (177, N'بدره', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (178, N'پهله', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (179, N'توحید', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (180, N'چوار', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (181, N'دره شهر', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (182, N'دلگشا', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (183, N'دهلران', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (184, N'زرنه', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (185, N'سراب باغ', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (186, N'سرابله', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (187, N'صالح آباد', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (188, N'لومار', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (189, N'مورموری', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (190, N'موسیان', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (191, N'مهران', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (192, N'میمه', 4)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (193, N'اسکو', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (194, N'اهر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (195, N'ایلخچی', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (196, N'آبش احمد', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (197, N'آذرشهر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (198, N'آقکند', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (199, N'باسمنج', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (200, N'بخشایش', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (201, N'بستان آباد', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (202, N'بناب', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (203, N'بناب جدید', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (204, N'تبریز', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (205, N'ترک', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (206, N'ترکمانچای', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (207, N'تسوج', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (208, N'تیکمه داش', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (209, N'جلفا', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (210, N'خاروانا', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (211, N'خامنه', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (212, N'خراجو', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (213, N'خسروشهر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (214, N'خمارلو', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (215, N'خواجه', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (216, N'دوزدوزان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (217, N'زرنق', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (218, N'زنوز', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (219, N'سراب', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (220, N'سردرود', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (221, N'سیس', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (222, N'سیه رود', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (223, N'شبستر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (224, N'شربیان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (225, N'شرفخانه', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (226, N'شندآباد', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (227, N'شهرجدیدسهند', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (228, N'صوفیان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (229, N'عجب شیر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (230, N'قره آغاج', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (231, N'کشکسرای', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (232, N'کلوانق', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (233, N'کلیبر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (234, N'کوزه کنان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (235, N'گوگان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (236, N'لیلان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (237, N'مراغه', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (238, N'مرند', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (239, N'ملکان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (240, N'ممقان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (241, N'مهربان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (242, N'میانه', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (243, N'نظرکهریزی', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (244, N'وایقان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (245, N'ورزقان', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (246, N'هادیشهر', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (247, N'هریس', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (248, N'هشترود', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (249, N'هوراند', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (250, N'یامچی', 5)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (251, N'ارومیه', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (252, N'اشنویه', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (253, N'ایواوغلی', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (254, N'آواجیق', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (255, N'باروق', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (256, N'بازرگان', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (257, N'بوکان', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (258, N'پلدشت', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (259, N'پیرانشهر', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (260, N'تازه شهر', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (261, N'تکاب', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (262, N'چهاربرج', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (263, N'خلیفان', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (264, N'خوی', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (265, N'دیزج دیز', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (266, N'ربط', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (267, N'سردشت', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (268, N'سرو', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (269, N'سلماس', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (270, N'سیلوانه', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (271, N'سیمینه', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (272, N'سیه چشمه', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (273, N'شاهین دژ', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (274, N'شوط', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (275, N'فیرورق', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (276, N'قره ضیاءالدین', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (277, N'قطور', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (278, N'قوشچی', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (279, N'کشاورز', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (280, N'گردکشانه', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (281, N'ماکو', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (282, N'محمدیار', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (283, N'محمودآباد', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (284, N'مهاباد', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (285, N'میاندوآب', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (286, N'میرآباد', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (287, N'نالوس', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (288, N'نقده', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (289, N'نوشین', 6)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (290, N'امام حسن', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (291, N'انارستان', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (292, N'اهرم', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (293, N'آبپخش', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (294, N'آبدان', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (295, N'برازجان', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (296, N'بردخون', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (297, N'بردستان', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (298, N'بندردیر', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (299, N'بندردیلم', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (300, N'بندرریگ', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (301, N'بندرکنگان', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (302, N'بندرگناوه', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (303, N'بنک', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (304, N'بوشهر', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (305, N'تنگ ارم', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (306, N'جم', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (307, N'چغادک', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (308, N'خارک', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (309, N'خورموج', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (310, N'دالکی', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (311, N'دلوار', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (312, N'ریز', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (313, N'سعدآباد', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (314, N'سیراف', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (315, N'شبانکاره', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (316, N'شنبه', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (317, N'عسلویه', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (318, N'کاکی', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (319, N'کلمه', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (320, N'نخل تقی', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (321, N'وحدتیه', 7)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (322, N'ارجمند', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (323, N'اسلامشهر', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (324, N'اندیشه', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (325, N'آبسرد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (326, N'آبعلی', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (327, N'باغستان', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (328, N'باقرشهر', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (329, N'بومهن', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (330, N'پاکدشت', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (331, N'پردیس', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (332, N'پیشوا', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (333, N'تجریش', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (334, N'تهران', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (335, N'جوادآباد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (336, N'چهاردانگه', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (337, N'حسن آباد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (338, N'دماوند', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (339, N'رباط کریم', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (340, N'رودهن', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (341, N'ری', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (342, N'شاهدشهر', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (343, N'شریف آباد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (344, N'شهریار', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (345, N'صالح آباد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (346, N'صباشهر', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (347, N'صفادشت', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (348, N'فردوسیه', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (349, N'فرون آباد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (350, N'فشم', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (351, N'فیروزکوه', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (352, N'قدس', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (353, N'قرچک', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (354, N'کهریزک', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (355, N'کیلان', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (356, N'گلستان', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (357, N'لواسان', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (358, N'ملارد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (359, N'نسیم شهر', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (360, N'نصیرآباد', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (361, N'وحیدیه', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (362, N'ورامین', 8)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (363, N'اردل', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (364, N'آلونی', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (365, N'باباحیدر', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (366, N'بروجن', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (367, N'بلداجی', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (368, N'بن', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (369, N'جونقان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (370, N'چلگرد', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (371, N'سامان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (372, N'سفیددشت', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (373, N'سودجان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (374, N'سورشجان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (375, N'شلمزار', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (376, N'شهرکرد', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (377, N'طاقانک', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (378, N'فارسان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (379, N'فرادنبه', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (380, N'فرخ شهر', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (381, N'کیان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (382, N'گندمان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (383, N'گهرو', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (384, N'لردگان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (385, N'مال خلیفه', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (386, N'ناغان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (387, N'نافچ', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (388, N'نقنه', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (389, N'هفشجان', 9)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (390, N'ارسک', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (391, N'اسدیه', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (392, N'اسفدن', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (393, N'اسلامیه', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (394, N'آرین شهر', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (395, N'آیسک', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (396, N'بشرویه', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (397, N'بیرجند', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (398, N'حاجی آباد', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (399, N'خضری دشت بیاض', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (400, N'خوسف', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (401, N'زهان', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (402, N'سرایان', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (403, N'سربیشه', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (404, N'سه قلعه', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (405, N'شوسف', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (406, N'طبس مسینا', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (407, N'فردوس', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (408, N'قائن', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (409, N'قهستان', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (410, N'گزیک', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (411, N'محمد شهر', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (412, N'مود', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (413, N'نهبندان', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (414, N'نیمبلوک', 10)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (415, N'احمدآبادصولت', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (416, N'انابد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (417, N'باجگیران', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (418, N'باخرز', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (419, N'بار', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (420, N'بایگ', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (421, N'بجستان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (422, N'بردسکن', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (423, N'بیدخت', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (424, N'تایباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (425, N'تربت جام', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (426, N'تربت حیدریه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (427, N'جغتای', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (428, N'جنگل', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (429, N'چاپشلو', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (430, N'چکنه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (431, N'چناران', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (432, N'خرو', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (433, N'خلیل آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (434, N'خواف', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (435, N'داورزن', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (436, N'درگز', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (437, N'درود', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (438, N'دولت آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (439, N'رباط سنگ', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (440, N'رشتخوار', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (441, N'رضویه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (442, N'روداب', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (443, N'ریوش', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (444, N'سبزوار', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (445, N'سرخس', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (446, N'سفیدسنگ', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (447, N'سلامی', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (448, N'سلطان آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (449, N'سنگان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (450, N'شادمهر', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (451, N'شاندیز', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (452, N'ششتمد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (453, N'شهرآباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (454, N'شهرزو', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (455, N'صالح آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (456, N'طرقبه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (457, N'عشق آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (458, N'فرهادگرد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (459, N'فریمان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (460, N'فیروزه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (461, N'فیض آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (462, N'قاسم آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (463, N'قدمگاه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (464, N'قلندرآباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (465, N'قوچان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (466, N'کاخک', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (467, N'کاریز', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (468, N'کاشمر', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (469, N'کدکن', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (470, N'کلات', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (471, N'کندر', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (472, N'گلمکان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (473, N'گناباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (474, N'لطف آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (475, N'مزدآوند', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (476, N'مشهد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (477, N'مشهدریزه', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (478, N'ملک آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (479, N'نشتیفان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (480, N'نصر آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (481, N'نقاب', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (482, N'نوخندان', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (483, N'نیشابور', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (484, N'نیل شهر', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (485, N'همت آباد', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (486, N'یونسی', 11)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (487, N'اسفراین', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (488, N'ایور', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (489, N'آشخانه', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (490, N'بجنورد', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (491, N'پیش قلعه', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (492, N'تیتکانلو', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (493, N'جاجرم', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (494, N'حصارگرمخان', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (495, N'درق', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (496, N'راز', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (497, N'سنخواست', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (498, N'شوقان', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (499, N'شیروان', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (500, N'صفی آباد', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (501, N'فاروج', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (502, N'قاضی', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (503, N'گرمه', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (504, N'لوجلی', 12)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (505, N'اروندکنار', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (506, N'الوان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (507, N'امیدیه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (508, N'اندیمشک', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (509, N'اهواز', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (510, N'ایذه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (511, N'آبادان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (512, N'آغاجاری', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (513, N'باغ ملک', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (514, N'بستان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (515, N'بندرامام خمینی', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (516, N'بندرماهشهر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (517, N'بهبهان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (518, N'ترکالکی', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (519, N'جایزان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (520, N'جنت مکان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (521, N'چغامیش', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (522, N'چمران', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (523, N'چوئبده', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (524, N'حر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (525, N'حسینیه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (526, N'حمزه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (527, N'حمیدیه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (528, N'خرمشهر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (529, N'دارخوین', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (530, N'دزآب', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (531, N'دزفول', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (532, N'دهدز', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (533, N'رامشیر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (534, N'رامهرمز', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (535, N'رفیع', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (536, N'زهره', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (537, N'سالند', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (538, N'سردشت', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (539, N'سماله', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (540, N'سوسنگرد', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (541, N'شادگان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (542, N'شاوور', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (543, N'شرافت', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (544, N'شوش', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (545, N'شوشتر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (546, N'شیبان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (547, N'صالح شهر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (548, N'صالح مشطط', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (549, N'صفی آباد', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (550, N'صیدون', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (551, N'قلعه تل', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (552, N'قلعه خواجه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (553, N'گتوند', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (554, N'گوریه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (555, N'لالی', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (556, N'مسجدسلیمان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (557, N'مشراگه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (558, N'مقاومت', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (559, N'ملاثانی', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (560, N'میانرود', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (561, N'میداود', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (562, N'مینوشهر', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (563, N'ویس', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (564, N'هفتگل', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (565, N'هندیجان', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (566, N'هویزه', 13)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (567, N'ابهر', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (568, N'ارمغانخانه', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (569, N'آب بر', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (570, N'چورزق', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (571, N'حلب', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (572, N'خرمدره', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (573, N'دندی', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (574, N'زرین آباد', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (575, N'زرین رود', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (576, N'زنجان', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (577, N'سجاس', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (578, N'سلطانیه', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (579, N'سهرورد', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (580, N'صائین قلعه', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (581, N'قیدار', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (582, N'گرماب', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (583, N'ماه نشان', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (584, N'هیدج', 14)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (585, N'امیریه', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (586, N'ایوانکی', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (587, N'آرادان', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (588, N'بسطام', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (589, N'بیارجمند', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (590, N'دامغان', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (591, N'درجزین', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (592, N'دیباج', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (593, N'سرخه', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (594, N'سمنان', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (595, N'شاهرود', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (596, N'شهمیرزاد', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (597, N'کلاته خیج', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (598, N'گرمسار', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (599, N'مجن', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (600, N'مهدی شهر', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (601, N'میامی', 15)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (602, N'ادیمی', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (603, N'اسپکه', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (604, N'ایرانشهر', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (605, N'بزمان', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (606, N'بمپور', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (607, N'بنت', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (608, N'بنجار', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (609, N'پیشین', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (610, N'جالق', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (611, N'چاه بهار', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (612, N'خاش', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (613, N'دوست محمد', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (614, N'راسک', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (615, N'زابل', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (616, N'زابلی', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (617, N'زاهدان', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (618, N'زرآباد', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (619, N'زهک', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (620, N'سراوان', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (621, N'سرباز', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (622, N'سوران', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (623, N'سیرکان', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (624, N'علی اکبر', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (625, N'فنوج', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (626, N'قصرقند', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (627, N'کنارک', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (628, N'گشت', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (629, N'گلمورتی', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (630, N'محمدان', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (631, N'محمد آباد', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (632, N'محمدی', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (633, N'میرجاوه', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (634, N'نصرت آباد', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (635, N'نگور', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (636, N'نوک آباد', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (637, N'نیک شهر', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (638, N'هیدوج', 16)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (639, N'اردکان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (640, N'ارسنجان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (641, N'استهبان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (642, N'اسیر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (643, N'اشکنان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (644, N'افزر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (645, N'اقلید', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (646, N'امام شهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (647, N'اوز', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (648, N'اهل', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (649, N'ایج', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (650, N'ایزدخواست', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (651, N'آباده', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (652, N'آباده طشک', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (653, N'باب انار', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (654, N'بالاده', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (655, N'بنارویه', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (656, N'بوانات', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (657, N'بهمن', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (658, N'بیرم', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (659, N'بیضا', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (660, N'جنت شهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (661, N'جویم', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (662, N'جهرم', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (663, N'حاجی آباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (664, N'حسامی', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (665, N'حسن آباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (666, N'خانه زنیان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (667, N'خاوران', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (668, N'خرامه', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (669, N'خشت', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (670, N'خنج', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (671, N'خور', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (672, N'خومه زار', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (673, N'داراب', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (674, N'داریان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (675, N'دبیران', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (676, N'دژکرد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (677, N'دوبرجی', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (678, N'دوزه', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (679, N'دهرم', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (680, N'رامجرد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (681, N'رونیز', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (682, N'زاهدشهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (683, N'زرقان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (684, N'سده', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (685, N'سروستان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (686, N'سعادت شهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (687, N'سورمق', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (688, N'سیدان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (689, N'ششده', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (690, N'شهر جدید صدرا', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (691, N'شهرپیر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (692, N'شیراز', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (693, N'صغاد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (694, N'صفاشهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (695, N'علامرودشت', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (696, N'عمادده', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (697, N'فدامی', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (698, N'فراشبند', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (699, N'فسا', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (700, N'فیروزآباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (701, N'قادرآباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (702, N'قائمیه', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (703, N'قطب آباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (704, N'قطرویه', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (705, N'قیر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (706, N'کارزین', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (707, N'کازرون', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (708, N'کامفیروز', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (709, N'کره ای', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (710, N'کنارتخته', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (711, N'کوار', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (712, N'کوهنجان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (713, N'گراش', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (714, N'گله دار', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (715, N'لار', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (716, N'لامرد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (717, N'لپوئی', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (718, N'لطیفی', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (719, N'مبارک آباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (720, N'مرودشت', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (721, N'مشکان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (722, N'مصیری', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (723, N'مهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (724, N'میمند', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (725, N'نوبندگان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (726, N'نوجین', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (727, N'نودان', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (728, N'نورآباد', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (729, N'نی ریز', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (730, N'وراوی', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (731, N'هماشهر', 17)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (732, N'ارداق', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (733, N'اسفرورین', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (734, N'اقبالیه', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (735, N'الوند', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (736, N'آبگرم', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (737, N'آبیک', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (738, N'آوج', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (739, N'بوئین زهرا', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (740, N'بیدستان', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (741, N'تاکستان', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (742, N'خاکعلی', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (743, N'خرمدشت', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (744, N'دانسفهان', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (745, N'رازمیان', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (746, N'سگزآباد', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (747, N'سیردان', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (748, N'شال', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (749, N'شریفیه', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (750, N'ضیاءآباد', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (751, N'قزوین', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (752, N'کوهین', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (753, N'محمدیه', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (754, N'محمودآبادنمونه', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (755, N'معلم کلایه', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (756, N'نرجه', 18)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (757, N'جعفریه', 19)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (758, N'دستجرد', 19)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (759, N'سلفچگان', 19)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (760, N'قم', 19)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (761, N'قنوات', 19)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (762, N'کهک', 19)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (763, N'آرمرده', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (764, N'بابارشانی', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (765, N'بانه', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (766, N'بلبان آباد', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (767, N'بوئین سفلی', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (768, N'بیجار', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (769, N'چناره', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (770, N'دزج', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (771, N'دلبران', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (772, N'دهگلان', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (773, N'دیواندره', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (774, N'زرینه', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (775, N'سروآباد', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (776, N'سریش آباد', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (777, N'سقز', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (778, N'سنندج', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (779, N'شویشه', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (780, N'صاحب', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (781, N'قروه', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (782, N'کامیاران', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (783, N'کانی دینار', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (784, N'کانی سور', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (785, N'مریوان', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (786, N'موچش', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (787, N'یاسوکند', 20)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (788, N'اختیارآباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (789, N'ارزوئیه', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (790, N'امین شهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (791, N'انار', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (792, N'اندوهجرد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (793, N'باغین', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (794, N'بافت', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (795, N'بردسیر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (796, N'بروات', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (797, N'بزنجان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (798, N'بم', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (799, N'بهرمان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (800, N'پاریز', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (801, N'جبالبارز', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (802, N'جوپار', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (803, N'جوزم', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (804, N'جیرفت', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (805, N'چترود', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (806, N'خاتون آباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (807, N'خانوک', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (808, N'خورسند', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (809, N'درب بهشت', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (810, N'دوساری', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (811, N'دهج', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (812, N'رابر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (813, N'راور', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (814, N'راین', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (815, N'رفسنجان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (816, N'رودبار', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (817, N'ریحان شهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (818, N'زرند', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (819, N'زنگی آباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (820, N'زیدآباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (821, N'سرچشمه', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (822, N'سیرجان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (823, N'شهداد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (824, N'شهربابک', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (825, N'صفائیه', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (826, N'عنبرآباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (827, N'فاریاب', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (828, N'فهرج', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (829, N'قلعه گنج', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (830, N'کاظم آباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (831, N'کرمان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (832, N'کشکوئیه', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (833, N'کوهبنان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (834, N'کهنوج', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (835, N'کیانشهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (836, N'گلباف', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (837, N'گلزار', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (838, N'لاله زار', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (839, N'ماهان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (840, N'محمد آباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (841, N'محی آباد', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (842, N'مردهک', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (843, N'منوجان', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (844, N'نجف شهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (845, N'نرماشیر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (846, N'نظام شهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (847, N'نگار', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (848, N'نودژ', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (849, N'هجدک', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (850, N'هماشهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (851, N'یزدان شهر', 21)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (852, N'ازگله', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (853, N'اسلام آبادغرب', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (854, N'باینگان', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (855, N'بیستون', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (856, N'پاوه', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (857, N'تازه آباد', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (858, N'جوانرود', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (859, N'حمیل', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (860, N'رباط', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (861, N'روانسر', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (862, N'سرپل ذهاب', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (863, N'سرمست', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (864, N'سطر', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (865, N'سنقر', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (866, N'سومار', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (867, N'شاهو', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (868, N'صحنه', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (869, N'قصرشیرین', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (870, N'کرمانشاه', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (871, N'کرندغرب', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (872, N'کنگاور', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (873, N'کوزران', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (874, N'گهواره', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (875, N'گیلانغرب', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (876, N'میان راهان', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (877, N'نودشه', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (878, N'نوسود', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (879, N'هرسین', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (880, N'هلشی', 22)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (881, N'باشت', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (882, N'پاتاوه', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (883, N'چرام', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (884, N'چیتاب', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (885, N'دوگنبدان', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (886, N'دهدشت', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (887, N'دیشموک', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (888, N'سوق', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (889, N'سی سخت', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (890, N'قلعه رئیسی', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (891, N'گراب سفلی', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (892, N'لنده', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (893, N'لیکک', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (894, N'مادوان', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (895, N'مارگون', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (896, N'یاسوج', 23)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (897, N'انبارآلوم', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (898, N'اینچه برون', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (899, N'آزادشهر', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (900, N'آق قلا', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (901, N'بندرگز', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (902, N'ترکمن', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (903, N'جلین', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (904, N'خان ببین', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (905, N'دلند', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (906, N'رامیان', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (907, N'سرخنکلاته', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (908, N'سیمین شهر', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (909, N'علی آباد', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (910, N'فاضل آباد', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (911, N'کردکوی', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (912, N'کلاله', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (913, N'گالیکش', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (914, N'گرگان', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (915, N'گمیش تپه', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (916, N'گنبد کاووس', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (917, N'مراوه تپه', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (918, N'مینودشت', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (919, N'نگین شهر', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (920, N'نوده خاندوز', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (921, N'نوکنده', 24)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (922, N'احمدسرگوراب', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (923, N'اسالم', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (924, N'اطاقور', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (925, N'املش', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (926, N'آستارا', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (927, N'آستانه اشرفیه', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (928, N'بازارجمعه', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (929, N'بره سر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (930, N'بندرانزلی', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (931, N'پره سر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (932, N'توتکابن', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (933, N'جیرنده', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (934, N'چابکسر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (935, N'چاف وچمخاله', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (936, N'چوبر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (937, N'حویق', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (938, N'خشکبیجار', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (939, N'خمام', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (940, N'دیلمان', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (941, N'رانکوه', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (942, N'رحیم آباد', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (943, N'رستم آباد', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (944, N'رشت', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (945, N'رضوانشهر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (946, N'رودبار', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (947, N'رودبنه', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (948, N'رودسر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (949, N'سنگر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (950, N'سیاهکل', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (951, N'شفت', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (952, N'شلمان', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (953, N'صومعه سرا', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (954, N'فومن', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (955, N'کلاچای', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (956, N'کوچصفهان', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (957, N'کومله', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (958, N'کیاشهر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (959, N'گوراب زرمیخ', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (960, N'لاهیجان', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (961, N'لشت نشاء', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (962, N'لنگرود', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (963, N'لوشان', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (964, N'لولمان', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (965, N'لوندویل', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (966, N'لیسار', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (967, N'ماسال', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (968, N'ماسوله', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (969, N'مرجقل', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (970, N'منجیل', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (971, N'واجارگاه', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (972, N'هشتپر', 25)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (973, N'ازنا', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (974, N'اشترینان', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (975, N'الشتر', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (976, N'الیگودرز', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (977, N'بروجرد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (978, N'پلدختر', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (979, N'چالانچولان', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (980, N'چغلوندی', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (981, N'چقابل', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (982, N'خرم آباد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (983, N'درب گنبد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (984, N'دورود', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (985, N'زاغه', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (986, N'سپیددشت', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (987, N'سراب دوره', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (988, N'شول آباد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (989, N'فیروز آباد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (990, N'کونانی', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (991, N'کوهدشت', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (992, N'گراب', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (993, N'معمولان', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (994, N'مؤمن آباد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (995, N'نور آباد', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (996, N'ویسیان', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (997, N'هفت چشمه', 26)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (998, N'امیرکلا', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (999, N'ایزدشهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1000, N'آلاشت', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1001, N'آمل', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1002, N'بابل', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1003, N'بابلسر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1004, N'بلده', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1005, N'بهشهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1006, N'بهنمیر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1007, N'پل سفید', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1008, N'پول', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1009, N'تنکابن', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1010, N'جویبار', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1011, N'چالوس', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1012, N'چمستان', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1013, N'خرم آباد', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1014, N'خلیل شهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1015, N'خوش رودپی', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1016, N'دابودشت', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1017, N'رامسر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1018, N'رستمکلا', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1019, N'رویان', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1020, N'رینه', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1021, N'زرگر محله', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1022, N'زیرآب', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1023, N'ساری', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1024, N'سرخرود', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1025, N'سلمان شهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1026, N'سورک', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1027, N'شیرگاه', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1028, N'شیرود', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1029, N'عباس آباد', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1030, N'فریدونکنار', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1031, N'فریم', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1032, N'قائم شهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1033, N'کتالم وسادات شهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1034, N'کلارآباد', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1035, N'کلاردشت', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1036, N'کله بست', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1037, N'کوهی خیل', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1038, N'کیاسر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1039, N'کیاکلا', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1040, N'گتاب', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1041, N'گزنک', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1042, N'گلوگاه', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1043, N'محمود آباد', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1044, N'مرزن آباد', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1045, N'مرزیکلا', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1046, N'نشتارود', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1047, N'نکا', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1048, N'نور', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1049, N'نوشهر', 27)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1050, N'اراک', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1051, N'آستانه', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1052, N'آشتیان', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1053, N'پرندک', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1054, N'تفرش', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1055, N'توره', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1056, N'جاورسیان', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1057, N'خشکرود', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1058, N'خمین', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1059, N'خنداب', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1060, N'داودآباد', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1061, N'دلیجان', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1062, N'رازقان', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1063, N'زاویه', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1064, N'ساروق', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1065, N'ساوه', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1066, N'سنجان', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1067, N'شازند', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1068, N'شهرجدیدمهاجران', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1069, N'غرق آباد', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1070, N'فرمهین', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1071, N'قورچی باشی', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1072, N'کرهرود', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1073, N'کمیجان', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1074, N'مأمونیه', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1075, N'محلات', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1076, N'میلاجرد', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1077, N'نراق', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1078, N'نوبران', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1079, N'نیمور', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1080, N'هندودر', 28)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1081, N'ابوموسی', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1082, N'بستک', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1083, N'بندرجاسک', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1084, N'بندرچارک', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1085, N'بندرعباس', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1086, N'بندرلنگه', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1087, N'بیکاه', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1088, N'پارسیان', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1089, N'تخت', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1090, N'جناح', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1091, N'حاجی آباد', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1092, N'خمیر', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1093, N'درگهان', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1094, N'دهبارز', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1095, N'رویدر', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1096, N'زیارتعلی', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1097, N'سردشت بشاگرد', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1098, N'سرگز', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1099, N'سندرک', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1100, N'سوزا', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1101, N'سیریک', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1102, N'فارغان', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1103, N'فین', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1104, N'قشم', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1105, N'قلعه قاضی', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1106, N'کنگ', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1107, N'کوشکنار', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1108, N'کیش', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1109, N'گوهران', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1110, N'میناب', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1111, N'هرمز', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1112, N'هشتبندی', 29)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1113, N'ازندریان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1114, N'اسدآباد', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1115, N'برزول', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1116, N'بهار', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1117, N'تویسرکان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1118, N'جورقان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1119, N'جوکار', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1120, N'دمق', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1121, N'رزن', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1122, N'زنگنه', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1123, N'سامن', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1124, N'سرکان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1125, N'شیرین سو', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1126, N'صالح آباد', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1127, N'فامنین', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1128, N'فرسفج', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1129, N'فیروزان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1130, N'قروه در جزین', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1131, N'قهاوند', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1132, N'کبودرآهنگ', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1133, N'گل تپه', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1134, N'گیان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1135, N'لالجین', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1136, N'مریانج', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1137, N'ملایر', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1138, N'نهاوند', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1139, N'همدان', 30)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1140, N'ابرکوه', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1141, N'احمدآباد', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1142, N'اردکان', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1143, N'اشکذر', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1144, N'بافق', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1145, N'بفروئیه', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1146, N'بهاباد', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1147, N'تفت', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1148, N'حمیدیا', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1149, N'خضرآباد', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1150, N'دیهوک', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1151, N'زارچ', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1152, N'شاهدیه', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1153, N'طبس', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1154, N'عشق آباد', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1155, N'عقدا', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1156, N'مروست', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1157, N'مهردشت', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1158, N'مهریز', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1159, N'میبد', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1160, N'ندوشن', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1161, N'نیر', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1162, N'هرات', 31)
GO
INSERT [admindb].[City] ([Id], [Name], [ParentId]) VALUES (1163, N'یزد', 31)
GO
SET IDENTITY_INSERT [admindb].[City] OFF
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'29508f07-9369-4d53-4500-08de019ce957', N'مدیر سیستم', N'1', N'2025-10-02 13:47:35.8749804', NULL, NULL, 1, N'admin', N'admin', NULL)
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'b1f6b3ec-52ea-401a-8e74-08de43131bbc', N'محسن سالمی', N'09379182264', N'2025-12-24 21:07:28.0926953', NULL, NULL, 0, N'محسن سالمی ', N'122121', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'e2bb895f-3a7a-4203-833f-08de5f4a28c3', N'حسین', N'09940105121', N'2026-01-29 18:52:04.7712394', NULL, NULL, 0, N'Naderyas313', N'naderyas313', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', N'elahe jafari', N'09127765863', N'2026-01-29 21:12:26.1142437', NULL, NULL, 0, N'elahe', N'123', N'pone.5053@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'd3fe0710-7523-4765-5911-08de6ae820d5', N'محمد حسین آردن', N'09136887488', N'2026-02-13 13:40:34.6811614', NULL, NULL, 0, N'Aa2525', N'Aa1234567', N'm.huseein.f@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'3678829b-a1b1-4337-9676-08deba0d7329', N'علی مایلی', N'09352516541', N'2026-05-25 06:56:46.152865', NULL, NULL, 0, N'علی', N'ali12345678', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'9e29a531-4518-4248-6ca6-08debb6f17ea', N'حمید رضا سامعی ', N'09183111531', N'2026-05-27 01:08:14.8740112', NULL, NULL, 0, N'حمید ماهواره', N'۲۵۲۶۲', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'56d82e20-b50c-4d6c-a592-08debd6b8260', N'علیرضا ', N'۰۹۳۹۶۸۲۰۸۰۱', N'2026-05-29 13:47:37.8540991', NULL, NULL, 0, N'علی فخرابادی ', N'alireza', N'۹۱۹۹۶۵۱۱۶۶')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'87bffcb4-5b9d-47f2-cedc-08debe405c83', N'محمد ده بزرگی', N'09170181863', N'2026-05-30 15:11:17.1434415', NULL, NULL, 0, N'محمد', N'860728', N'Dehbozorgi.m63@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'66434dac-4280-4336-7429-08debe50e5a9', N'آخوندزاده', N'09381532600', N'2026-05-30 17:09:39.2114392', NULL, NULL, 0, N'مرتضی', N'SSecret_1631', N'dlgsm.com@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'87949977-fdfb-4bb3-d8fb-08debef79761', N'سینا ابوئی مهریزی ', N'09124178114', N'2026-05-31 13:02:53.8016893', NULL, NULL, 0, N'sinamehr1 ', N'110012', N'sinaaboueimehrizi@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'39da54ec-1ebb-42c0-97ea-08debefa6bd5', N'ابراهیمی', N'1098758', N'2026-05-31 13:23:09.2179479', NULL, NULL, 0, N'ابراهیمی', N'66754051', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'6741f1a3-c535-42da-00cb-08debf0f8695', N'خدابخش', N'09156329308', N'2026-05-31 15:54:13.5063384', NULL, NULL, 0, N'پلنگی', N'@123456kp', N'plngykhdabkhsh@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'8649cd90-9adf-4614-5c15-08debf451b87', N'مهدی سالمیان', N'09138009610', N'2026-05-31 22:17:46.7717646', NULL, NULL, 0, N'Mahde', N'M69f74', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'3ff7e9a5-d2f5-4bac-e2d4-08debf580ae2', N'صادق نصرالهی ', N'09188456416', N'2026-06-01 00:33:19.2816545', NULL, NULL, 0, N'صادق نصراللهی ', N'Mn5911932', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'42e269ec-d5c0-4891-9a04-08dec212a4dd', N'جعفری', N'09124462355', N'2026-06-04 11:54:06.2953395', NULL, NULL, 0, N'جعفری', N'658', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'78f07c6c-7772-49f3-f317-08dec25a9c61', N'محمد', N'09126580385', N'2026-06-04 20:29:15.8330453', NULL, NULL, 0, N'شکاری', N'Mm@654321', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'3e15b333-ca61-4be5-b0b5-08dec307d4bb', N'madadi', N'09012629182', N'2026-06-05 17:09:13.3090005', NULL, NULL, 0, N'sina', N'@#/j333176', N'kashkoll333@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'bda599b4-a585-40a2-57f3-08dec60dafdb', N'ابوالفضل ', N'09902302186', N'2026-06-09 13:28:41.9235798', NULL, NULL, 0, N'هادیزاده', N'abolfazl1389', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'0939c7dc-abc4-4387-2f32-08dec864092c', N'مسعود محمدب', N'09133339296', N'2026-06-12 12:51:50.6431726', NULL, NULL, 0, N'Masoud', N'Masoud15243', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'07cec447-2129-4c80-a598-08dec9291bf1', N'پروانی', N'09221897259', N'2026-06-13 12:22:33.1475216', NULL, NULL, 0, N'قاسم', N'Sarband1323', N'ghasem.p63@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'8ee52680-be8d-4540-d2b5-08decbfc5785', N'حسام رهبرزارع', N'09376464792', N'2026-06-17 02:39:39.2649905', NULL, NULL, 0, N'حسام', N'رهبرزارع', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'067b8a13-d32f-451b-e556-08decc556e69', N'شکری', N'09124462355', N'2026-06-17 13:17:22.9506848', NULL, NULL, 0, N'شکری', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'14adfb58-0860-4e57-e557-08decc556e69', N'توفیقی', N'09121786738', N'2026-06-17 13:22:20.646029', NULL, NULL, 0, N'توفیقی', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'd6422e0b-521a-45b0-6618-08decd6fba15', N'حسین قلی پور بورخیلی', N'09909938188', N'2026-06-18 22:58:07.7931028', NULL, NULL, 0, N'Hoosein', N'Hh138284', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'34ec697d-6fdd-4b73-96ef-08deced7889c', N'محمد فرجی', N'09922399478', N'2026-06-20 17:53:43.7457914', NULL, NULL, 0, N'Sardar110', N'Mohammad1382', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'8955e412-9dcd-4a11-654c-08decf699f8d', N'صنعت', N'09123454450', N'2026-06-21 11:19:28.8082674', NULL, NULL, 0, N'صنعت', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'6f541d9e-6ab4-408d-8c97-08decf848049', N'صادق نصرالهی', N'09188456416', N'2026-06-21 14:31:52.5316102', NULL, NULL, 0, N'صادق ', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'1ef1d865-9918-4770-16ec-08decf8c61e8', N'دهنوی', N'09156151048', N'2026-06-21 15:28:17.7254888', NULL, NULL, 0, N'دهنوی', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'961009e3-4e72-4080-2f22-08ded348965d', N'احمد هنرمند', N'09128922865', N'2026-06-26 09:33:04.4427491', NULL, NULL, 0, N'هنرمند', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'3526fe96-2f23-4970-8801-08ded478d0ef', N'متقی', N'09358845691', N'2026-06-27 21:50:49.888481', NULL, NULL, 0, N'رضا', N'Reza1234', N'rezamottaghi8@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'91bf2935-e127-44c2-6c7f-08ded4e8cde8', N'حسامی', N'09183708526', N'2026-06-28 11:12:28.4668242', NULL, NULL, 0, N'حسامی', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'daf5c3a0-03c1-492c-24ac-08ded4ef6332', N'کارن', N'09192800234', N'2026-06-28 11:59:35.8363466', NULL, NULL, 0, N'1', N'658815', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'ddb9219d-9889-41d1-93d3-08ded6cac7fb', N'مهدی ', N'09229691789', N'2026-06-30 20:42:35.9316347', NULL, NULL, 0, N'شیرازی ', N'Mahdi.sh23', N'mahdi.punisher23@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'4c1e11b4-a27a-4074-1ea8-08ded6dbe70d', N'مهدی', N'09157159167', N'2026-06-30 22:45:09.3447429', NULL, NULL, 0, N'مداح', N'137106', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'07a387e6-ac6f-40e3-dda4-08ded734277a', N'مصطفی', N'09309722638', N'2026-07-01 09:16:53.2137251', NULL, NULL, 0, N'Mostafa.zmia', N'12345678', N'Mostafazarghami1997@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'832344c3-8eb1-48f1-e825-08ded8f73df7', N'مهدی هاشم زاده ', N'09053057228', N'2026-07-03 15:05:54.0557987', NULL, NULL, 0, N'mahdi', N'mehdi1386', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'315c9c38-c279-48d9-496c-08deda694339', N'Saeedeh', N'09127210656', N'2026-07-05 11:14:36.5248468', NULL, NULL, 0, N'Saeedeh', N'afsoon', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'e2052a31-f93c-413c-41dd-08dedcbb6b39', N'هیات رهروان ولایت ', N'09195508589', N'2026-07-08 10:07:44.8172057', NULL, NULL, 0, N'صدف', N'6588', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'9dd66be6-3a20-460d-eec6-08dedd011bd4', N'احمدرضا', N'09033004873', N'2026-07-08 18:26:36.3365311', NULL, NULL, 0, N'فرشادی', N'Ahmad11042', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'5ce2b89a-6100-4fda-16d8-08dedea6542a', N'بیت سیاح', N'09165869940', N'2026-07-10 20:41:49.1001366', NULL, NULL, 0, N'Reza', N'Reza@3062171', N'www.ROZEGAR1234MOBILE@GMILE.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'ae68993b-7ce1-42ab-6f26-08dedf49456e', N'هیات محبان الرقیه', N'09907687932', N'2026-07-11 16:08:12.27507', NULL, NULL, 0, N'هیات محبان الرقیه', N'هیات محبان الرقیه', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'7023d7b3-2ca4-49ef-fb8b-08dedfa09f74', N'عباس عزیزی', N'09124291995', N'2026-07-12 02:33:29.5486255', NULL, NULL, 0, N'Cy13eri', N'AZiZi133', N'cy13eri@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'94d58523-e345-4e16-1e2e-08dee0ecbafa', N'پرویز', N'09190936528', N'2026-07-13 18:10:48.6303967', NULL, NULL, 0, N'پرویز', N'پرویز', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'6e67f825-0316-4811-1e2f-08dee0ecbafa', N'سعید', N'091214050422', N'2026-07-13 18:15:19.2458445', NULL, NULL, 0, N'سعید ', N'سعید ', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'7956f8d8-0783-4103-9eee-08dee0f1f53a', N'رضا زاده', N'0', N'2026-07-13 18:48:13.6486301', NULL, NULL, 0, N'رضا زاده', N'رضا زاده', N'')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'cece606b-b8be-483c-0e37-08dee10d7370', N'یلمه', N'09132358694', N'2026-07-13 22:05:01.963199', NULL, NULL, 0, N'احسان', N'123456789', N'ehsan.yalameh1366@gmail.com')
GO
INSERT [admindb].[Users] ([Id], [FullName], [Phone], [CreatedDate], [ModifiedDate], [LastLogin], [IsAdmin], [UserName], [Password], [Email]) VALUES (N'a4bb93ff-e99c-4005-9865-08dee25ee194', N'نجفی نژاد', N'09904652055', N'2026-07-15 14:20:27.0792116', NULL, NULL, 0, N'حمیدرضا', N'6haMid80', N'')
GO
SET IDENTITY_INSERT [admindb].[Address] ON 
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1, N'b1f6b3ec-52ea-401a-8e74-08de43131bbc', 509, N'6144974788', N'اهواز خشایار بین هلالی و غزنوی کوچه اسلامی پ 262', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2, N'e2bb895f-3a7a-4203-833f-08de5f4a28c3', 304, N'7516743656', N'بوشهر خیابان عاشوری کوچه شهید میگلی نژاد فرعی ۱۴ پلاک ۶', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1002, N'3678829b-a1b1-4337-9676-08deba0d7329', 334, N'1111111111', N'اتوبان شهید چمران رو به شمال پل عابر مدیریت', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1003, N'66434dac-4280-4336-7429-08debe50e5a9', 122, N'8714855629', N'بلوار ستوده،گلبرگ۱۳ مجتمع طلوع،واحد ۶', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1004, N'39da54ec-1ebb-42c0-97ea-08debefa6bd5', 334, N'1145656979', N'تهران', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1005, N'6741f1a3-c535-42da-00cb-08debf0f8695', 629, N'9947194943', N'دلگان روستای چاه میرک', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1006, N'8649cd90-9adf-4614-5c15-08debf451b87', 56, N'8178974339 ', N'شهرابریشم، کوچه گلستان، بن بست 6 پلاک ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (1007, N'3ff7e9a5-d2f5-4bac-e2d4-08debf580ae2', 173, N'6935146573', N'ایلام بلوار شهید بهشتی بیمه آسیا شعبه مرکزی ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2007, N'87bffcb4-5b9d-47f2-cedc-08debe405c83', 692, N'1111111111', N'بلوار فرصت شیرازی، خیابان بیست متری فاضل  مجتمع اسکان ۴، بلوک ۱۴، طبقه اول، پلاک ۴۱۱', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2008, N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', 334, N'1786874651', N'asa', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2009, N'42e269ec-d5c0-4891-9a04-08dec212a4dd', 334, N'1145656979', N'1145656979', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2010, N'78f07c6c-7772-49f3-f317-08dec25a9c61', 334, N'1783655545', N'افسریه اتوبان بسیج نبش خیابان تارخ پلاک ۵۱۱ فروشگاه کپسول اتشنشانی ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2011, N'3e15b333-ca61-4be5-b0b5-08dec307d4bb', 334, N'1493744515', N'منطقه ۲۲ چیتگر بلوار علیمرادی خیابان امام رضا شهرک کوثر ب ۷۱', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2012, N'14adfb58-0860-4e57-e557-08decc556e69', 334, N'1145656979', N'مهر شهر کرج .بلوار ولیعصر خیابان دوم و سوم مسجد امام حسن مجتبی', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2013, N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', 334, N'1786874651', N'طططططططظ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2014, N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', 334, N'', N'asa', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2015, N'd6422e0b-521a-45b0-6618-08decd6fba15', 1027, N'4798193824', N'نارنجستان_ دهستان هتکه_ روستای بورخیل', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2016, N'd6422e0b-521a-45b0-6618-08decd6fba15', 1027, N'4798193824', N'شهر شیرگاه _ بخش نارنجستان_ دهستان هتکه_ روستای بورخیل', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2017, N'6f541d9e-6ab4-408d-8c97-08decf848049', 173, N'کد پستی 6935146573', N'ایلام بلوار شهید بهشتی بیمه آسیا شعبه مرکزی', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2018, N'961009e3-4e72-4080-2f22-08ded348965d', 334, N'', N'شهرک غرب خیابان درختی فروشگاه هنرمند', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2019, N'3526fe96-2f23-4970-8801-08ded478d0ef', 358, N'3169768836', N'سرآسیاب خیابان امام خمینی پلاک 299', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2020, N'91bf2935-e127-44c2-6c7f-08ded4e8cde8', 781, N'3341866616', N'استان کردستان شهرستان قروه خیابان تختی کوچه دانش پلاک ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2021, N'ddb9219d-9889-41d1-93d3-08ded6cac7fb', 1139, N'', N'بلوار مدنی کوچه امام زاده یحیی 2 جنب سنگکی پالیز لاین', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2022, N'4c1e11b4-a27a-4074-1ea8-08ded6dbe70d', 476, N'9149162328', N'بین رسالت108و110قبل پل هوایی فست فود و پروتینی مدرن معمولا12ظهر به بعد هستیم ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2023, N'07a387e6-ac6f-40e3-dda4-08ded734277a', 692, N'7156996964', N'شیراز فضل آباد کوچه9 پلاک 159', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2024, N'832344c3-8eb1-48f1-e825-08ded8f73df7', 117, N'۸۴۶۴۱۱۳۴۸۱', N'اصفهان،شهرستان‌فلاورجان،شهربوستان زر،محله درچه عابد،خیابان شهید آیت الله طالقانی،بن بست شهید سید محمد حسین بهشتی،پلاک ۲۳۹', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2025, N'e2052a31-f93c-413c-41dd-08dedcbb6b39', 334, N'', N'تهرانسر-شهرک دریا -خ صدف -ک 27شرقی پ22', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2026, N'9dd66be6-3a20-460d-eec6-08dedd011bd4', 954, N'4351755789', N'گیلان فومن  شهرک امام خمینی ک بوستا اول منزل حسن فرشادی', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2027, N'ae68993b-7ce1-42ab-6f26-08dedf49456e', 334, N'', N'تقاطع رجایی و آزادگان ', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2028, N'7023d7b3-2ca4-49ef-fb8b-08dedfa09f74', 323, N'3315896175', N'شهرک قائمیه کوچه ۴۳/۱ پلاک ۱۲۳ واحد ۳', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2029, N'6e67f825-0316-4811-1e2f-08dee0ecbafa', 334, N'', N'افسریه -انتهای 15متری دوم-بلوار خاتم النبیا -سوپرمارکت سعید', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2030, N'6e67f825-0316-4811-1e2f-08dee0ecbafa', 334, N'', N'افسریه-انتهای 15متری اول-بلوار خاتم النبیا -سوپر مارکت سعید', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2031, N'ae68993b-7ce1-42ab-6f26-08dedf49456e', 334, N'', N'پیروزی -خیابان نبرد شمالی -کوچه خسروآبادی -تماس گرفته شود', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2032, N'cece606b-b8be-483c-0e37-08dee10d7370', 112, N'8498145571', N'طالخونچه خ شهید یلمه ک شهید خلیلی منزل خداداد یلمه', 0)
GO
INSERT [admindb].[Address] ([Id], [UserId], [CityId], [PostalCode], [AddressStr], [IsLast]) VALUES (2033, N'a4bb93ff-e99c-4005-9865-08dee25ee194', 1050, N'3818335665', N'اراک،روستای گاوخانه', 0)
GO
SET IDENTITY_INSERT [admindb].[Address] OFF
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'8495e1b1-e55b-46a2-879c-048fb938184b', N'07a387e6-ac6f-40e3-dda4-08ded734277a', CAST(N'2026-07-01T15:46:47.8669330' AS DateTime2), CAST(N'2026-07-04T15:46:47.8666246' AS DateTime2), 4, 1244, 2, 1, 2023, N'88562645901', 40521, 1950000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'6ff50889-1af9-4b6f-a417-091167bf051a', N'87bffcb4-5b9d-47f2-cedc-08debe405c83', CAST(N'2026-06-02T23:28:15.1402517' AS DateTime2), CAST(N'2026-06-03T23:28:15.1401801' AS DateTime2), 6, 1159, 2, 1, 2007, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'15cc40ea-ae13-485a-91a5-1157de99b379', N'e2bb895f-3a7a-4203-833f-08de5f4a28c3', CAST(N'2026-01-29T18:55:44.3336604' AS DateTime2), CAST(N'2026-01-31T18:55:44.3333997' AS DateTime2), 4, 1051, 2, NULL, 2, NULL, 40502, 4000000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'34bfd472-6f6b-4e4d-b356-14710f5bfae8', N'b1f6b3ec-52ea-401a-8e74-08de43131bbc', CAST(N'2025-12-24T21:36:52.0104957' AS DateTime2), CAST(N'2025-12-27T21:36:52.0102999' AS DateTime2), 4, 1002, 1, NULL, 1, NULL, 40501, 68000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'460da8fd-5dad-493d-94aa-1620ffe19160', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-19T13:03:41.3103881' AS DateTime2), CAST(N'2026-06-24T13:03:41.3103295' AS DateTime2), 6, 1230, 2, 2, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'0f2d3ee4-12a3-4be7-b463-16c1182c6d9b', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-16T11:24:50.1775265' AS DateTime2), CAST(N'2026-06-19T11:24:50.1772091' AS DateTime2), 6, 1171, 2, 1, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'c054d69b-c1b8-4da6-9278-173465121893', N'42e269ec-d5c0-4891-9a04-08dec212a4dd', CAST(N'2026-06-04T11:55:53.8534878' AS DateTime2), CAST(N'2026-06-06T11:55:53.8529780' AS DateTime2), 6, 1165, 1, 3, 2009, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', N'e2052a31-f93c-413c-41dd-08dedcbb6b39', CAST(N'2026-07-08T10:41:31.7339292' AS DateTime2), CAST(N'2026-07-09T10:41:31.7334494' AS DateTime2), 4, 1246, 2, 3, 2025, N'88865791301', 40522, 9750000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'e07d5a04-2842-4ee8-9c25-2086d293dc33', N'4c1e11b4-a27a-4074-1ea8-08ded6dbe70d', CAST(N'2026-06-30T23:36:39.8279375' AS DateTime2), CAST(N'2026-07-01T23:36:39.8275046' AS DateTime2), 4, 1243, 2, 2, 2022, N'88530008001', 40520, 5600000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'8b64f8aa-ab62-4ca9-84ad-2571f82c9f8c', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-05T11:52:58.1760406' AS DateTime2), CAST(N'2026-06-10T11:52:58.1758134' AS DateTime2), 6, 1167, 2, 1, 2008, NULL, NULL, 1650000, 150000)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'ed06dd56-89c2-45a2-becf-280ea544bfb2', N'ae68993b-7ce1-42ab-6f26-08dedf49456e', CAST(N'2026-07-11T16:14:29.8233258' AS DateTime2), CAST(N'2026-07-12T16:14:29.8230713' AS DateTime2), 4, 1248, 2, 3, 2027, N'89016193701', 40524, 5300000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'69cf68b3-864c-403e-b534-28fa03c4e90c', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-17T13:31:36.9209584' AS DateTime2), CAST(N'2026-06-21T13:31:36.9209254' AS DateTime2), 6, 1222, 1, 2, 2013, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'e5c4a913-5ae8-4e6d-b1f1-2ca954ee9c4d', N'3526fe96-2f23-4970-8801-08ded478d0ef', CAST(N'2026-06-27T21:53:40.3302877' AS DateTime2), CAST(N'2026-06-28T21:53:40.3299960' AS DateTime2), 6, 1237, 2, 1, 2019, NULL, NULL, 3900000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'e6151203-2aa4-4105-a6f3-2d5db171c602', N'87bffcb4-5b9d-47f2-cedc-08debe405c83', CAST(N'2026-06-02T23:39:34.4849527' AS DateTime2), CAST(N'2026-06-03T23:39:34.4846547' AS DateTime2), 6, 1161, 2, 1, 2007, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'a46fdb53-7079-4c2f-8b9e-2d84808234c4', N'14adfb58-0860-4e57-e557-08decc556e69', CAST(N'2026-06-17T13:24:37.1211855' AS DateTime2), CAST(N'2026-06-18T13:24:37.1208559' AS DateTime2), 4, 1221, 1, 3, 2012, NULL, 40512, 3400000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'ff2c543f-b4e6-475e-ba3d-32974970da14', N'8955e412-9dcd-4a11-654c-08decf699f8d', CAST(N'2026-06-21T11:22:14.8925706' AS DateTime2), CAST(N'2026-06-21T11:22:14.8923192' AS DateTime2), 4, 1233, 2, 4, NULL, N'88047280001', 40513, 18500000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'91e28853-266c-4508-914c-35998f690e93', N'8649cd90-9adf-4614-5c15-08debf451b87', CAST(N'2026-05-31T22:19:57.8653008' AS DateTime2), CAST(N'2026-06-04T22:19:57.8650731' AS DateTime2), 4, 1106, 2, 1, 1006, NULL, 40507, 2800000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', N'78f07c6c-7772-49f3-f317-08dec25a9c61', CAST(N'2026-06-04T20:35:15.0253854' AS DateTime2), CAST(N'2026-06-06T20:35:15.0251524' AS DateTime2), 4, 1166, 2, 1, 2010, N'87263429501', 40511, 18000000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'77eede75-eef7-4daf-9849-3eb23e7ccd4e', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-18T13:17:39.6696572' AS DateTime2), CAST(N'2026-06-23T13:17:39.6693293' AS DateTime2), 6, 1224, 1, 3, 2014, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'ba043c0e-3363-4dbb-b502-471dfe89059b', N'87bffcb4-5b9d-47f2-cedc-08debe405c83', CAST(N'2026-06-02T23:27:48.4068923' AS DateTime2), CAST(N'2026-06-03T23:27:48.4068439' AS DateTime2), 6, 1158, 2, 1, 2007, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'c3b00507-a358-4cac-bf72-47ce8869ca0a', N'961009e3-4e72-4080-2f22-08ded348965d', CAST(N'2026-06-26T09:36:24.0141957' AS DateTime2), CAST(N'2026-06-27T09:36:24.0137756' AS DateTime2), 4, 1236, 2, 3, 2018, N'88281095501', 40516, 15000000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'b11ca75c-8fe6-4cac-9813-4f79cf819023', N'ddb9219d-9889-41d1-93d3-08ded6cac7fb', CAST(N'2026-06-30T20:50:40.5789251' AS DateTime2), CAST(N'2026-07-01T20:50:40.5785815' AS DateTime2), 4, 1242, 2, 1, 2021, N'88523421601', 40519, 2975000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', N'1ef1d865-9918-4770-16ec-08decf8c61e8', CAST(N'2026-06-21T15:29:36.1890144' AS DateTime2), CAST(N'2026-06-22T15:29:36.1887239' AS DateTime2), 4, 1235, 2, 4, NULL, N'88063296801', 40514, 9825000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'4cbd637e-a692-483c-9f9d-5260b5228a6e', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-19T13:30:42.8961693' AS DateTime2), CAST(N'2026-06-24T13:30:42.8958092' AS DateTime2), 6, 1231, 2, 3, 2014, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'89625879-4bee-490b-9faf-54bc67bc213f', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-15T19:56:40.4927233' AS DateTime2), CAST(N'2026-06-22T19:56:40.4923512' AS DateTime2), 6, 1170, 2, 1, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'38c38c75-e5e2-4454-b975-54f8541a7d69', N'94d58523-e345-4e16-1e2e-08dee0ecbafa', CAST(N'2026-07-13T18:11:33.8021398' AS DateTime2), CAST(N'2026-07-14T18:11:33.8018314' AS DateTime2), 3, 1250, 2, 4, NULL, N'89126192701', 40525, 976000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'743fff64-6822-431e-b81d-567e6a864ddb', N'3678829b-a1b1-4337-9676-08deba0d7329', CAST(N'2026-05-25T06:58:33.4464383' AS DateTime2), CAST(N'2026-05-26T06:58:33.4461184' AS DateTime2), 6, 1101, 2, 1, 1002, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'463cce3c-a0a9-48fa-ace3-580b582cb888', N'd6422e0b-521a-45b0-6618-08decd6fba15', CAST(N'2026-06-18T23:36:01.8708781' AS DateTime2), CAST(N'2026-06-22T23:36:01.8706797' AS DateTime2), 6, 1225, 2, 1, 2015, NULL, NULL, 5100000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'dac47c5d-984f-4555-97e8-5b8fc2f01069', N'ae68993b-7ce1-42ab-6f26-08dedf49456e', CAST(N'2026-07-13T18:29:43.8106864' AS DateTime2), CAST(N'2026-07-14T18:29:43.8106403' AS DateTime2), 4, 1253, 2, 3, 2031, N'89126851001', 40528, 3900000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'0806d58d-c9a9-42a8-91c2-6424d7794237', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-19T13:01:47.5308653' AS DateTime2), CAST(N'2026-06-24T13:01:47.5308374' AS DateTime2), 6, 1229, 2, 2, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'6abb39b0-4431-4580-994d-651f195c5f27', N'9dd66be6-3a20-460d-eec6-08dedd011bd4', CAST(N'2026-07-08T18:30:00.6367131' AS DateTime2), CAST(N'2026-07-09T18:30:00.6362753' AS DateTime2), 4, 1247, 2, 2, 2026, N'88886410501', 40523, 5600000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'fd5f243b-478d-48ad-82d8-680ce8f9b898', N'3ff7e9a5-d2f5-4bac-e2d4-08debf580ae2', CAST(N'2026-06-01T00:39:38.9297358' AS DateTime2), CAST(N'2026-06-02T00:39:38.9293877' AS DateTime2), 4, 1107, 2, 1, 1007, NULL, 40508, 20300000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', N'6e67f825-0316-4811-1e2f-08dee0ecbafa', CAST(N'2026-07-13T18:21:38.0332694' AS DateTime2), CAST(N'2026-07-14T18:21:38.0328582' AS DateTime2), 4, 1252, 2, 3, 2030, N'89126557701', 40527, 1803000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'c9c673a2-d266-4195-966a-73763c838156', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-19T13:01:12.2539689' AS DateTime2), CAST(N'2026-06-24T13:01:12.2536842' AS DateTime2), 6, 1228, 2, 2, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'449d42fa-6cbf-4b0c-8e28-7c4a9cc6b544', N'd6422e0b-521a-45b0-6618-08decd6fba15', CAST(N'2026-06-19T11:53:05.7717836' AS DateTime2), CAST(N'2026-06-23T11:53:05.7715115' AS DateTime2), 6, 1226, 2, 1, 2016, N'87942839701', NULL, 3400000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'6a0debc1-5954-43e2-9d8c-8232cdb2f1ea', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-16T11:28:20.2016520' AS DateTime2), CAST(N'2026-06-22T11:28:20.2014067' AS DateTime2), 6, 1172, 2, 2, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'2bdd88ba-9808-43d0-a7d6-863e3515f965', N'a4bb93ff-e99c-4005-9865-08dee25ee194', CAST(N'2026-07-15T14:23:22.7624437' AS DateTime2), CAST(N'2026-07-18T14:23:22.7620213' AS DateTime2), 8, 1256, 2, 1, 2033, NULL, NULL, 4500000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', N'3e15b333-ca61-4be5-b0b5-08dec307d4bb', CAST(N'2026-06-05T17:30:52.4860937' AS DateTime2), CAST(N'2026-06-07T17:30:52.4860758' AS DateTime2), 5, 1169, 2, 2, 2011, N'87293536801', 40510, 987800, 89800)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'3a1266fa-c119-47f4-ac76-892b314d013c', N'3678829b-a1b1-4337-9676-08deba0d7329', CAST(N'2026-05-25T07:02:19.2168749' AS DateTime2), CAST(N'2026-05-26T07:02:19.2168176' AS DateTime2), 4, 1102, 2, 3, 1002, NULL, 40503, 1050000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'821aa4b8-6168-4bf9-a3ed-899742eb293e', N'b1f6b3ec-52ea-401a-8e74-08de43131bbc', CAST(N'2025-12-24T21:10:39.6471598' AS DateTime2), CAST(N'2025-12-27T21:10:39.6468327' AS DateTime2), 6, 1001, 2, NULL, 1, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'5cd70ccb-6191-423a-b680-89d4bf197d9a', N'66434dac-4280-4336-7429-08debe50e5a9', CAST(N'2026-05-30T21:55:38.5403204' AS DateTime2), CAST(N'2026-05-31T21:55:38.5400416' AS DateTime2), 4, 1103, 2, 1, 1003, NULL, 40504, 6500000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'84b5c016-6b3e-446e-8eb5-8efa0f6956a2', N'87bffcb4-5b9d-47f2-cedc-08debe405c83', CAST(N'2026-06-02T23:28:25.7837851' AS DateTime2), CAST(N'2026-06-03T23:28:25.7837479' AS DateTime2), 6, 1160, 2, 1, 2007, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'4e6843db-3bb5-4012-9b0b-919369128707', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-19T12:42:41.1965325' AS DateTime2), CAST(N'2026-06-23T12:42:41.1963264' AS DateTime2), 6, 1227, 2, 2, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'625280b6-5070-410b-8ce2-9378ae9615e9', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-28T14:07:54.2376485' AS DateTime2), CAST(N'2026-07-02T14:07:54.2376166' AS DateTime2), 6, 1241, 2, 4, NULL, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'9b54ec75-5b68-47a3-a26b-9385416a00b3', N'87bffcb4-5b9d-47f2-cedc-08debe405c83', CAST(N'2026-06-02T23:26:06.2322125' AS DateTime2), CAST(N'2026-06-03T23:26:06.2318378' AS DateTime2), 4, 1157, 2, 1, 2007, NULL, 40509, 640000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'685bcac2-f2bf-4874-a58c-95a1d614dd7e', N'87bffcb4-5b9d-47f2-cedc-08debe405c83', CAST(N'2026-06-02T23:42:28.2155199' AS DateTime2), CAST(N'2026-06-03T23:42:28.2154274' AS DateTime2), 6, 1162, 2, 1, 2007, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'8eac6ff1-55ca-488b-b371-9de6f8c54b45', N'3e15b333-ca61-4be5-b0b5-08dec307d4bb', CAST(N'2026-06-05T17:21:11.3021049' AS DateTime2), CAST(N'2026-06-07T17:21:11.3017805' AS DateTime2), 6, 1168, 2, 2, 2011, NULL, NULL, 899800, 81800)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'42aad136-a2f6-4e85-b034-a6d9a00936fd', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-28T14:07:17.8719374' AS DateTime2), CAST(N'2026-07-02T14:07:17.8715880' AS DateTime2), 6, 1240, 2, 4, NULL, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', N'6e67f825-0316-4811-1e2f-08dee0ecbafa', CAST(N'2026-07-13T18:17:19.7022478' AS DateTime2), CAST(N'2026-07-14T18:17:19.7021824' AS DateTime2), 4, 1251, 2, 3, 2029, N'89126398301', 40526, 976000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'fd111f46-b9db-42ae-a4ad-b1989a47b329', N'91bf2935-e127-44c2-6c7f-08ded4e8cde8', CAST(N'2026-06-28T11:14:07.1212691' AS DateTime2), CAST(N'2026-06-29T11:14:07.1209308' AS DateTime2), 4, 1238, 2, 1, 2020, N'88386993001', 40518, 2500000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', N'6f541d9e-6ab4-408d-8c97-08decf848049', CAST(N'2026-06-21T14:38:41.2067396' AS DateTime2), CAST(N'2026-06-22T14:38:41.2063574' AS DateTime2), 4, 1234, 2, 1, 2017, N'88060031301', 40515, 27600000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'e24cc150-8522-44c2-9ab6-b88f9390250a', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-21T07:22:58.1696337' AS DateTime2), CAST(N'2026-06-24T07:22:58.1693937' AS DateTime2), 6, 1232, 2, 3, 2008, NULL, NULL, 1413000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'7fc81627-1c9e-4f03-9d8e-bef593e95973', N'7956f8d8-0783-4103-9eee-08dee0f1f53a', CAST(N'2026-07-13T18:48:58.4617714' AS DateTime2), CAST(N'2026-07-14T18:48:58.4614278' AS DateTime2), 4, 1254, 2, 4, NULL, N'89127554601', 40529, 850000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', N'7023d7b3-2ca4-49ef-fb8b-08dedfa09f74', CAST(N'2026-07-13T01:13:35.7184820' AS DateTime2), CAST(N'2026-07-14T01:13:35.7181286' AS DateTime2), 6, 1249, 2, 1, 2028, NULL, NULL, 4200000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'9a3aecb5-9c26-43c5-b351-c6c55722d22e', N'832344c3-8eb1-48f1-e825-08ded8f73df7', CAST(N'2026-07-03T15:12:06.2658383' AS DateTime2), CAST(N'2026-07-06T15:12:06.2654561' AS DateTime2), 6, 1245, 2, 1, 2024, NULL, NULL, 187000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'eee75204-bbd6-4bd9-b029-c7cb9c24d285', N'39da54ec-1ebb-42c0-97ea-08debefa6bd5', CAST(N'2026-05-31T13:24:43.8497251' AS DateTime2), CAST(N'2026-06-01T13:24:43.8494331' AS DateTime2), 4, 1104, 1, 3, 1004, NULL, 40505, 150000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'10e571e3-b504-4850-ad31-c9c29dc18b37', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-03T20:48:34.0651321' AS DateTime2), CAST(N'2026-06-06T20:48:34.0646712' AS DateTime2), 6, 1163, 2, 3, 2008, NULL, NULL, 0, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'1260b4ca-274a-4f31-a158-d057fe77f6f2', N'6741f1a3-c535-42da-00cb-08debf0f8695', CAST(N'2026-05-31T15:59:17.0207901' AS DateTime2), CAST(N'2026-06-06T15:59:17.0205549' AS DateTime2), 4, 1105, 1, 1, 1005, NULL, 40506, 6500000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'4e2fa349-f07e-4877-b9e9-d44ff469cdf0', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-16T19:19:09.6727008' AS DateTime2), CAST(N'2026-06-22T19:19:09.6723655' AS DateTime2), 6, 1173, 2, 1, 2008, NULL, NULL, 1700000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', N'daf5c3a0-03c1-492c-24ac-08ded4ef6332', CAST(N'2026-06-28T12:00:09.0629042' AS DateTime2), CAST(N'2026-06-29T12:00:09.0626860' AS DateTime2), 4, 1239, 2, 4, NULL, N'88390359501', 40517, 150000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'085db207-6dcd-4260-9bcb-dc5cfbbccf20', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-03T20:56:52.0258810' AS DateTime2), CAST(N'2026-06-07T20:56:52.0256594' AS DateTime2), 6, 1164, 2, 3, 2008, N'87226766301', NULL, 35000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'912db8c6-fda2-4f1a-9d98-dfc2e134d034', N'74bb3e00-2f0a-4ba1-b2a8-08de5f5dc43b', CAST(N'2026-06-18T10:07:33.9224436' AS DateTime2), CAST(N'2026-06-23T10:07:33.9221109' AS DateTime2), 6, 1223, 2, 3, 2014, NULL, NULL, 35000, 0)
GO
INSERT [admindb].[OrderBuy] ([Id], [UserId], [DateOrder], [DateDelivery], [Statues], [TrackingCode], [PayType], [SendType], [AddressId], [PaymentCode], [FactorNumber], [FinalPrice], [GildPrice]) VALUES (N'3152a09a-368c-4df2-a3da-ef05b4703097', N'cece606b-b8be-483c-0e37-08dee10d7370', CAST(N'2026-07-13T22:08:14.0318983' AS DateTime2), CAST(N'2026-07-16T22:08:14.0313353' AS DateTime2), 8, 1255, 2, 1, 2032, NULL, NULL, 3400000, 0)
GO
SET IDENTITY_INSERT [admindb].[OrderBuyItem] ON 
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1, N'821aa4b8-6168-4bf9-a3ed-899742eb293e', 2, 1, 680000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2, N'34bfd472-6f6b-4e4d-b356-14710f5bfae8', 2, 1, 680000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1002, N'15cc40ea-ae13-485a-91a5-1157de99b379', 17, 400, 10000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2002, N'743fff64-6822-431e-b81d-567e6a864ddb', 68, 1, 1050000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2003, N'3a1266fa-c119-47f4-ac76-892b314d013c', 68, 1, 1050000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2004, N'5cd70ccb-6191-423a-b680-89d4bf197d9a', 12, 5, 1300000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2005, N'eee75204-bbd6-4bd9-b029-c7cb9c24d285', 24, 3, 35000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2006, N'1260b4ca-274a-4f31-a158-d057fe77f6f2', 12, 5, 1300000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2007, N'91e28853-266c-4508-914c-35998f690e93', 12, 1, 1300000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2008, N'91e28853-266c-4508-914c-35998f690e93', 7, 1, 1500000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2009, N'fd5f243b-478d-48ad-82d8-680ce8f9b898', 12, 11, 1300000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2010, N'fd5f243b-478d-48ad-82d8-680ce8f9b898', 7, 4, 1500000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3009, N'9b54ec75-5b68-47a3-a26b-9385416a00b3', 17, 40, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3010, N'ba043c0e-3363-4dbb-b502-471dfe89059b', 17, 40, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3011, N'6ff50889-1af9-4b6f-a417-091167bf051a', 17, 40, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3012, N'84b5c016-6b3e-446e-8eb5-8efa0f6956a2', 17, 40, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3013, N'e6151203-2aa4-4105-a6f3-2d5db171c602', 17, 40, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3014, N'685bcac2-f2bf-4874-a58c-95a1d614dd7e', 17, 40, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3015, N'10e571e3-b504-4850-ad31-c9c29dc18b37', 25, 1, 35000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3016, N'085db207-6dcd-4260-9bcb-dc5cfbbccf20', 25, 1, 35000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3017, N'c054d69b-c1b8-4da6-9278-173465121893', 16, 2, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3018, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', 12, 12, 1500000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3019, N'8b64f8aa-ab62-4ca9-84ad-2571f82c9f8c', 1, 1, 1500000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3020, N'8eac6ff1-55ca-488b-b371-9de6f8c54b45', 41, 5, 85000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3021, N'8eac6ff1-55ca-488b-b371-9de6f8c54b45', 54, 1, 393000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3022, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', 17, 5, 16000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3023, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', 41, 5, 85000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3024, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', 54, 1, 393000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3025, N'89625879-4bee-490b-9faf-54bc67bc213f', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3026, N'0f2d3ee4-12a3-4be7-b463-16c1182c6d9b', 4, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3027, N'6a0debc1-5954-43e2-9d8c-8232cdb2f1ea', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3028, N'4e2fa349-f07e-4877-b9e9-d44ff469cdf0', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4026, N'a46fdb53-7079-4c2f-8b9e-2d84808234c4', 2, 2, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4027, N'69cf68b3-864c-403e-b534-28fa03c4e90c', 5, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4028, N'912db8c6-fda2-4f1a-9d98-dfc2e134d034', 25, 1, 35000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4029, N'77eede75-eef7-4daf-9849-3eb23e7ccd4e', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4030, N'463cce3c-a0a9-48fa-ace3-580b582cb888', 2, 3, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4031, N'449d42fa-6cbf-4b0c-8e28-7c4a9cc6b544', 2, 2, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4032, N'4e6843db-3bb5-4012-9b0b-919369128707', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4033, N'c9c673a2-d266-4195-966a-73763c838156', 2, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4034, N'0806d58d-c9a9-42a8-91c2-6424d7794237', 2, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4035, N'460da8fd-5dad-493d-94aa-1620ffe19160', 2, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4036, N'4cbd637e-a692-483c-9f9d-5260b5228a6e', 3, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4037, N'e24cc150-8522-44c2-9ab6-b88f9390250a', 46, 1, 1413000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4038, N'ff2c543f-b4e6-475e-ba3d-32974970da14', 7, 4, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4039, N'ff2c543f-b4e6-475e-ba3d-32974970da14', 16, 6, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4040, N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', 1123, 368, 75000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4041, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', 16, 3, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4042, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', 1123, 53, 75000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4043, N'c3b00507-a358-4cac-bf72-47ce8869ca0a', 72, 1, 15000000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4044, N'e5c4a913-5ae8-4e6d-b1f1-2ca954ee9c4d', 16, 2, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4045, N'fd111f46-b9db-42ae-a4ad-b1989a47b329', 68, 1, 2500000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4046, N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', 1123, 2, 75000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4047, N'42aad136-a2f6-4e85-b034-a6d9a00936fd', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4048, N'625280b6-5070-410b-8ce2-9378ae9615e9', 1, 1, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4049, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', 17, 150, 17000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4050, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', 1091, 5, 85000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4051, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', 1124, 2, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4052, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', 17, 100, 17000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4053, N'8495e1b1-e55b-46a2-879c-048fb938184b', 16, 1, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4054, N'9a3aecb5-9c26-43c5-b351-c6c55722d22e', 17, 11, 17000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4055, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', 12, 3, 1400000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4056, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', 1123, 74, 75000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4057, N'6abb39b0-4431-4580-994d-651f195c5f27', 12, 4, 1400000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4058, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', 17, 100, 17000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4059, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', 1123, 48, 75000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4060, N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', 12, 3, 1400000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4061, N'38c38c75-e5e2-4454-b975-54f8541a7d69', 58, 1, 976000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4062, N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', 58, 1, 976000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4063, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', 51, 1, 1783000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4064, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', 17, 1, 20000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4065, N'dac47c5d-984f-4555-97e8-5b8fc2f01069', 1124, 2, 1950000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4066, N'7fc81627-1c9e-4f03-9d8e-bef593e95973', 43, 1, 850000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4067, N'3152a09a-368c-4df2-a3da-ef05b4703097', 1, 2, 1700000)
GO
INSERT [admindb].[OrderBuyItem] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4068, N'2bdd88ba-9808-43d0-a7d6-863e3515f965', 1123, 60, 75000)
GO
SET IDENTITY_INSERT [admindb].[OrderBuyItem] OFF
GO
SET IDENTITY_INSERT [admindb].[ProductImage] ON 
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (119, 37, N'\uploads\products\37\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4153, 18, N'\uploads\products\18\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4155, 24, N'\uploads\products\24\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4165, 10, N'\uploads\products\10\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4166, 11, N'\uploads\products\11\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4167, 15, N'\uploads\products\15\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4170, 19, N'\uploads\products\19\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4171, 20, N'\uploads\products\20\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4172, 21, N'\uploads\products\21\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4173, 22, N'\uploads\products\22\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4174, 23, N'\uploads\products\23\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4175, 25, N'\uploads\products\25\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4178, 28, N'\uploads\products\28\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4179, 29, N'\uploads\products\29\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4180, 30, N'\uploads\products\30\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4181, 31, N'\uploads\products\31\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4182, 32, N'\uploads\products\32\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4184, 34, N'\uploads\products\34\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4185, 35, N'\uploads\products\35\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4186, 36, N'\uploads\products\36\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4187, 38, N'\uploads\products\38\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4188, 39, N'\uploads\products\39\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4189, 40, N'\uploads\products\40\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4191, 42, N'\uploads\products\42\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4193, 43, N'\uploads\products\43\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4194, 44, N'\uploads\products\44\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4196, 46, N'\uploads\products\46\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4197, 45, N'\uploads\products\45\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4198, 47, N'\uploads\products\47\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4200, 1086, N'\uploads\products\86\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4203, 48, N'\uploads\products\48\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4204, 49, N'\uploads\products\49\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4205, 1087, N'\uploads\products\87\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4209, 1088, N'\uploads\products\88\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4210, 1088, N'\uploads\products\88\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4211, 1088, N'\uploads\products\88\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4212, 50, N'\uploads\products\50\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4215, 52, N'\uploads\products\52\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4217, 1067, N'\uploads\products\73\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4218, 54, N'\uploads\products\54\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4219, 55, N'\uploads\products\55\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4220, 60, N'\uploads\products\60\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4221, 56, N'\uploads\products\56\product_1.png')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4222, 57, N'\uploads\products\57\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4233, 58, N'\uploads\products\58\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4234, 59, N'\uploads\products\59\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4235, 61, N'\uploads\products\61\product_1.jpeg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4236, 62, N'\uploads\products\62\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4237, 63, N'\uploads\products\63\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4238, 64, N'\uploads\products\64\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4240, 65, N'\uploads\products\65\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4241, 67, N'\uploads\products\67\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4242, 66, N'\uploads\products\66\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4244, 69, N'\uploads\products\69\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4245, 70, N'\uploads\products\70\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4246, 71, N'\uploads\products\71\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4247, 71, N'\uploads\products\71\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4248, 71, N'\uploads\products\71\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4249, 1068, N'\uploads\products\74\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4250, 1068, N'\uploads\products\74\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4251, 1068, N'\uploads\products\74\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4252, 1069, N'\uploads\products\75\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4253, 1076, N'\uploads\products\76\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4254, 1076, N'\uploads\products\76\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4255, 1076, N'\uploads\products\76\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4256, 1076, N'\uploads\products\76\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4257, 1076, N'\uploads\products\76\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4258, 1076, N'\uploads\products\76\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4259, 1076, N'\uploads\products\76\product_7.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4260, 1076, N'\uploads\products\76\product_8.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4261, 1077, N'\uploads\products\77\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4262, 1077, N'\uploads\products\77\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4272, 1079, N'\uploads\products\79\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4273, 1079, N'\uploads\products\79\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4274, 1079, N'\uploads\products\79\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4275, 1079, N'\uploads\products\79\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4276, 1082, N'\uploads\products\82\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4277, 1082, N'\uploads\products\82\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4278, 1082, N'\uploads\products\82\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4279, 1082, N'\uploads\products\82\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4280, 1082, N'\uploads\products\82\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4281, 1083, N'\uploads\products\83\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4282, 1080, N'\uploads\products\80\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4283, 1081, N'\uploads\products\81\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4284, 1081, N'\uploads\products\81\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4285, 1081, N'\uploads\products\81\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4286, 1081, N'\uploads\products\81\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4287, 1081, N'\uploads\products\81\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4288, 1081, N'\uploads\products\81\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4289, 1081, N'\uploads\products\81\product_7.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4290, 1084, N'\uploads\products\84\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4291, 1085, N'\uploads\products\85\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4292, 1085, N'\uploads\products\85\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4293, 1085, N'\uploads\products\85\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (4294, 1085, N'\uploads\products\85\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5298, 41, N'\uploads\products\41\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5299, 41, N'\uploads\products\41\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5405, 7, N'\uploads\products\7\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5406, 8, N'\uploads\products\8\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5409, 26, N'\uploads\products\26\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5410, 27, N'\uploads\products\27\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5411, 33, N'\uploads\products\33\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (5412, 9, N'\uploads\products\9\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6460, 13, N'\uploads\products\13\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6461, 14, N'\uploads\products\14\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6462, 51, N'\uploads\products\51\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6463, 53, N'\uploads\products\53\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6464, 1091, N'\uploads\products\89\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6465, 1122, N'\uploads\products\90\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6466, 1122, N'\uploads\products\90\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6626, 1, N'\uploads\products\1\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6627, 1, N'\uploads\products\1\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6628, 1, N'\uploads\products\1\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6629, 1, N'\uploads\products\1\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6630, 1, N'\uploads\products\1\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6631, 1, N'\uploads\products\1\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6632, 2, N'\uploads\products\2\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6633, 2, N'\uploads\products\2\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6634, 2, N'\uploads\products\2\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6635, 2, N'\uploads\products\2\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6636, 2, N'\uploads\products\2\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6637, 2, N'\uploads\products\2\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6643, 3, N'\uploads\products\3\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6644, 3, N'\uploads\products\3\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6645, 3, N'\uploads\products\3\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6646, 3, N'\uploads\products\3\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6647, 3, N'\uploads\products\3\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6648, 4, N'\uploads\products\4\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6649, 4, N'\uploads\products\4\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6650, 4, N'\uploads\products\4\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6651, 4, N'\uploads\products\4\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6652, 4, N'\uploads\products\4\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6653, 4, N'\uploads\products\4\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6660, 5, N'\uploads\products\5\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6661, 5, N'\uploads\products\5\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6662, 5, N'\uploads\products\5\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6663, 5, N'\uploads\products\5\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6664, 5, N'\uploads\products\5\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6665, 5, N'\uploads\products\5\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6672, 6, N'\uploads\products\6\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6673, 6, N'\uploads\products\6\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6674, 6, N'\uploads\products\6\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6675, 6, N'\uploads\products\6\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6676, 6, N'\uploads\products\6\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6677, 6, N'\uploads\products\6\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6685, 16, N'\uploads\products\16\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6686, 16, N'\uploads\products\16\product_2.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6687, 16, N'\uploads\products\16\product_4.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6731, 68, N'\uploads\products\68\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6732, 68, N'\uploads\products\68\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6733, 68, N'\uploads\products\68\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6744, 1125, N'\uploads\products\93\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6745, 1125, N'\uploads\products\93\product_2.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6746, 1125, N'\uploads\products\93\product_3.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6747, 1123, N'\uploads\products\91\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6748, 1123, N'\uploads\products\91\product_2.png')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6749, 1123, N'\uploads\products\91\product_3.png')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6750, 1123, N'\uploads\products\91\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6763, 1128, N'\uploads\products\97\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6764, 1127, N'\uploads\products\96\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6769, 1126, N'\uploads\products\94\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6770, 1126, N'\uploads\products\94\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6771, 1126, N'\uploads\products\94\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6772, 1126, N'\uploads\products\94\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6773, 1078, N'\uploads\products\78\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6774, 1078, N'\uploads\products\78\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6775, 1078, N'\uploads\products\78\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6776, 1078, N'\uploads\products\78\product_4.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6777, 1078, N'\uploads\products\78\product_5.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6778, 1078, N'\uploads\products\78\product_6.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6779, 1078, N'\uploads\products\78\product_7.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6780, 1078, N'\uploads\products\78\product_8.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6781, 1078, N'\uploads\products\78\product_9.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6787, 17, N'\uploads\products\17\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6788, 17, N'\uploads\products\95\product_3.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6789, 17, N'\uploads\products\95\product_4.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6790, 17, N'\uploads\products\95\product_5.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6791, 12, N'\uploads\products\12\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6792, 72, N'\uploads\products\72\product_1.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6793, 72, N'\uploads\products\72\product_2.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6794, 72, N'\uploads\products\72\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6795, 1124, N'\uploads\products\92\product_1.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6796, 1124, N'\uploads\products\17\product_3.jpg')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6797, 1124, N'\uploads\products\17\product_4.png')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6798, 1124, N'\uploads\products\17\product_4.webp')
GO
INSERT [admindb].[ProductImage] ([Id], [ProductId], [PathImg]) VALUES (6799, 1124, N'\uploads\products\17\product_5.jpg')
GO
SET IDENTITY_INSERT [admindb].[ProductImage] OFF
GO
SET IDENTITY_INSERT [admindb].[OrderBuyStatues] ON 
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (1, N'821aa4b8-6168-4bf9-a3ed-899742eb293e', CAST(N'2025-12-24T21:10:39.7078857' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2, N'821aa4b8-6168-4bf9-a3ed-899742eb293e', CAST(N'2025-12-24T21:13:47.6693222' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3, N'34bfd472-6f6b-4e4d-b356-14710f5bfae8', CAST(N'2025-12-24T21:36:52.2347795' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4, N'34bfd472-6f6b-4e4d-b356-14710f5bfae8', CAST(N'2025-12-25T18:42:10.4673434' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (5, N'34bfd472-6f6b-4e4d-b356-14710f5bfae8', CAST(N'2025-12-25T18:42:17.5365025' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (6, N'34bfd472-6f6b-4e4d-b356-14710f5bfae8', CAST(N'2025-12-25T18:42:25.5677336' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (1002, N'15cc40ea-ae13-485a-91a5-1157de99b379', CAST(N'2026-01-29T18:55:44.4550352' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (1003, N'15cc40ea-ae13-485a-91a5-1157de99b379', CAST(N'2026-01-31T11:04:38.8098403' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (1004, N'15cc40ea-ae13-485a-91a5-1157de99b379', CAST(N'2026-01-31T11:04:46.3395803' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (1005, N'15cc40ea-ae13-485a-91a5-1157de99b379', CAST(N'2026-01-31T11:04:52.9656831' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2002, N'743fff64-6822-431e-b81d-567e6a864ddb', CAST(N'2026-05-25T06:58:33.5192384' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2003, N'3a1266fa-c119-47f4-ac76-892b314d013c', CAST(N'2026-05-25T07:02:19.2380152' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2004, N'3a1266fa-c119-47f4-ac76-892b314d013c', CAST(N'2026-05-25T15:21:48.6387700' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2005, N'3a1266fa-c119-47f4-ac76-892b314d013c', CAST(N'2026-05-25T15:21:55.7262974' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2006, N'3a1266fa-c119-47f4-ac76-892b314d013c', CAST(N'2026-05-25T16:33:51.9742552' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2007, N'3a1266fa-c119-47f4-ac76-892b314d013c', CAST(N'2026-05-25T16:33:51.9742069' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2008, N'3a1266fa-c119-47f4-ac76-892b314d013c', CAST(N'2026-05-25T16:33:51.9742281' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2009, N'743fff64-6822-431e-b81d-567e6a864ddb', CAST(N'2026-05-25T16:52:09.5332642' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2010, N'5cd70ccb-6191-423a-b680-89d4bf197d9a', CAST(N'2026-05-30T21:55:38.6013720' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2011, N'5cd70ccb-6191-423a-b680-89d4bf197d9a', CAST(N'2026-05-31T10:38:17.8399225' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2012, N'eee75204-bbd6-4bd9-b029-c7cb9c24d285', CAST(N'2026-05-31T13:24:43.9072403' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2013, N'5cd70ccb-6191-423a-b680-89d4bf197d9a', CAST(N'2026-05-31T13:35:53.7462058' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2014, N'eee75204-bbd6-4bd9-b029-c7cb9c24d285', CAST(N'2026-05-31T13:36:44.5696845' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2015, N'eee75204-bbd6-4bd9-b029-c7cb9c24d285', CAST(N'2026-05-31T13:36:52.3807926' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2016, N'eee75204-bbd6-4bd9-b029-c7cb9c24d285', CAST(N'2026-05-31T13:36:57.0267392' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2017, N'1260b4ca-274a-4f31-a158-d057fe77f6f2', CAST(N'2026-05-31T15:59:17.1368026' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2018, N'5cd70ccb-6191-423a-b680-89d4bf197d9a', CAST(N'2026-05-31T19:16:51.2007697' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2019, N'1260b4ca-274a-4f31-a158-d057fe77f6f2', CAST(N'2026-05-31T19:17:11.6724808' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2020, N'91e28853-266c-4508-914c-35998f690e93', CAST(N'2026-05-31T22:19:57.9080364' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2021, N'fd5f243b-478d-48ad-82d8-680ce8f9b898', CAST(N'2026-06-01T00:39:38.9922935' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2022, N'91e28853-266c-4508-914c-35998f690e93', CAST(N'2026-06-01T09:43:42.5737942' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (2023, N'fd5f243b-478d-48ad-82d8-680ce8f9b898', CAST(N'2026-06-01T09:43:48.0772146' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3021, N'fd5f243b-478d-48ad-82d8-680ce8f9b898', CAST(N'2026-06-01T18:26:30.3193722' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3022, N'91e28853-266c-4508-914c-35998f690e93', CAST(N'2026-06-01T18:26:42.9553167' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3023, N'9b54ec75-5b68-47a3-a26b-9385416a00b3', CAST(N'2026-06-02T23:26:09.0859389' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3024, N'ba043c0e-3363-4dbb-b502-471dfe89059b', CAST(N'2026-06-02T23:27:48.4278910' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3025, N'6ff50889-1af9-4b6f-a417-091167bf051a', CAST(N'2026-06-02T23:28:15.1506013' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3026, N'84b5c016-6b3e-446e-8eb5-8efa0f6956a2', CAST(N'2026-06-02T23:28:25.7917155' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3027, N'e6151203-2aa4-4105-a6f3-2d5db171c602', CAST(N'2026-06-02T23:39:34.6224493' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3028, N'685bcac2-f2bf-4874-a58c-95a1d614dd7e', CAST(N'2026-06-02T23:42:28.2398660' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3029, N'9b54ec75-5b68-47a3-a26b-9385416a00b3', CAST(N'2026-06-03T12:08:04.8074094' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3030, N'10e571e3-b504-4850-ad31-c9c29dc18b37', CAST(N'2026-06-03T20:48:34.1115718' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3031, N'085db207-6dcd-4260-9bcb-dc5cfbbccf20', CAST(N'2026-06-03T20:56:52.1000367' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3032, N'085db207-6dcd-4260-9bcb-dc5cfbbccf20', CAST(N'2026-06-03T20:59:46.4478488' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3033, N'c054d69b-c1b8-4da6-9278-173465121893', CAST(N'2026-06-04T11:55:53.9198222' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3034, N'c054d69b-c1b8-4da6-9278-173465121893', CAST(N'2026-06-04T11:56:10.7999129' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3035, N'10e571e3-b504-4850-ad31-c9c29dc18b37', CAST(N'2026-06-04T12:04:29.4564030' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3036, N'10e571e3-b504-4850-ad31-c9c29dc18b37', CAST(N'2026-06-04T12:04:29.3731676' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3037, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-04T20:35:15.0991878' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3038, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-04T20:36:45.3447455' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3039, N'8b64f8aa-ab62-4ca9-84ad-2571f82c9f8c', CAST(N'2026-06-05T11:52:58.3672805' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3040, N'8b64f8aa-ab62-4ca9-84ad-2571f82c9f8c', CAST(N'2026-06-05T11:53:29.3265641' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3041, N'8b64f8aa-ab62-4ca9-84ad-2571f82c9f8c', CAST(N'2026-06-05T11:53:29.3054850' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3042, N'8eac6ff1-55ca-488b-b371-9de6f8c54b45', CAST(N'2026-06-05T17:21:11.3713894' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3043, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', CAST(N'2026-06-05T17:30:52.5086357' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3044, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', CAST(N'2026-06-05T17:31:54.6697820' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3045, N'8eac6ff1-55ca-488b-b371-9de6f8c54b45', CAST(N'2026-06-06T00:05:02.6680053' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3046, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', CAST(N'2026-06-06T03:20:55.9728348' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3047, N'91e28853-266c-4508-914c-35998f690e93', CAST(N'2026-06-06T09:35:32.9874473' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3048, N'9b54ec75-5b68-47a3-a26b-9385416a00b3', CAST(N'2026-06-06T09:52:01.7754215' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3049, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-06T09:52:13.4997057' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3050, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', CAST(N'2026-06-06T13:48:18.9067790' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3051, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', CAST(N'2026-06-06T13:48:26.1052590' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3052, N'e7972558-9d9c-46b4-9cc2-869ebe5cf37f', CAST(N'2026-06-06T13:48:47.4283989' AS DateTime2), 5)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3053, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-06T15:14:51.7711131' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3054, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-06T16:38:25.1883195' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3055, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-06T16:38:25.5465700' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3056, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-06T16:38:25.1883712' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3057, N'a29cc9e6-42b0-43f6-b7f1-3706cd9cfd7f', CAST(N'2026-06-06T16:38:25.1883321' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3058, N'89625879-4bee-490b-9faf-54bc67bc213f', CAST(N'2026-06-15T19:56:40.5538062' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3059, N'89625879-4bee-490b-9faf-54bc67bc213f', CAST(N'2026-06-15T19:57:11.2797895' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3060, N'0f2d3ee4-12a3-4be7-b463-16c1182c6d9b', CAST(N'2026-06-16T11:24:50.2552900' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3061, N'0f2d3ee4-12a3-4be7-b463-16c1182c6d9b', CAST(N'2026-06-16T11:25:14.3342576' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3062, N'6a0debc1-5954-43e2-9d8c-8232cdb2f1ea', CAST(N'2026-06-16T11:28:20.2749908' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3063, N'6a0debc1-5954-43e2-9d8c-8232cdb2f1ea', CAST(N'2026-06-16T11:28:45.7786057' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3064, N'4e2fa349-f07e-4877-b9e9-d44ff469cdf0', CAST(N'2026-06-16T19:19:09.7498932' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3065, N'4e2fa349-f07e-4877-b9e9-d44ff469cdf0', CAST(N'2026-06-16T19:19:32.0228419' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (3066, N'4e2fa349-f07e-4877-b9e9-d44ff469cdf0', CAST(N'2026-06-16T19:19:32.0388311' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4060, N'a46fdb53-7079-4c2f-8b9e-2d84808234c4', CAST(N'2026-06-17T13:24:37.1828191' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4061, N'69cf68b3-864c-403e-b534-28fa03c4e90c', CAST(N'2026-06-17T13:31:36.9343423' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4062, N'69cf68b3-864c-403e-b534-28fa03c4e90c', CAST(N'2026-06-17T13:31:46.0415777' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4063, N'912db8c6-fda2-4f1a-9d98-dfc2e134d034', CAST(N'2026-06-18T10:07:33.9587949' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4064, N'912db8c6-fda2-4f1a-9d98-dfc2e134d034', CAST(N'2026-06-18T10:09:07.7848490' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4065, N'77eede75-eef7-4daf-9849-3eb23e7ccd4e', CAST(N'2026-06-18T13:17:39.7655167' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4066, N'77eede75-eef7-4daf-9849-3eb23e7ccd4e', CAST(N'2026-06-18T16:52:43.3288039' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4067, N'a46fdb53-7079-4c2f-8b9e-2d84808234c4', CAST(N'2026-06-18T19:16:18.6510971' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4068, N'a46fdb53-7079-4c2f-8b9e-2d84808234c4', CAST(N'2026-06-18T19:16:26.6371730' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4069, N'a46fdb53-7079-4c2f-8b9e-2d84808234c4', CAST(N'2026-06-18T19:16:42.9946595' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4070, N'463cce3c-a0a9-48fa-ace3-580b582cb888', CAST(N'2026-06-18T23:36:02.1677814' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4071, N'449d42fa-6cbf-4b0c-8e28-7c4a9cc6b544', CAST(N'2026-06-19T11:53:05.8161250' AS DateTime2), 1)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4072, N'449d42fa-6cbf-4b0c-8e28-7c4a9cc6b544', CAST(N'2026-06-19T11:56:08.6885831' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4073, N'463cce3c-a0a9-48fa-ace3-580b582cb888', CAST(N'2026-06-19T11:56:44.4408806' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4074, N'4e6843db-3bb5-4012-9b0b-919369128707', CAST(N'2026-06-19T12:42:41.2780653' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4075, N'4e6843db-3bb5-4012-9b0b-919369128707', CAST(N'2026-06-19T12:46:00.5154765' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4076, N'c9c673a2-d266-4195-966a-73763c838156', CAST(N'2026-06-19T13:01:12.3049527' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4077, N'0806d58d-c9a9-42a8-91c2-6424d7794237', CAST(N'2026-06-19T13:01:47.5374759' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4078, N'460da8fd-5dad-493d-94aa-1620ffe19160', CAST(N'2026-06-19T13:03:41.3169900' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4079, N'0806d58d-c9a9-42a8-91c2-6424d7794237', CAST(N'2026-06-19T13:05:11.8905347' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4080, N'460da8fd-5dad-493d-94aa-1620ffe19160', CAST(N'2026-06-19T13:05:18.1000105' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4081, N'c9c673a2-d266-4195-966a-73763c838156', CAST(N'2026-06-19T13:05:27.3051564' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4082, N'4cbd637e-a692-483c-9f9d-5260b5228a6e', CAST(N'2026-06-19T13:30:42.9491838' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4083, N'4cbd637e-a692-483c-9f9d-5260b5228a6e', CAST(N'2026-06-19T13:39:15.5387031' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4084, N'449d42fa-6cbf-4b0c-8e28-7c4a9cc6b544', CAST(N'2026-06-20T10:56:18.0672518' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4085, N'e24cc150-8522-44c2-9ab6-b88f9390250a', CAST(N'2026-06-21T07:22:58.2713716' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4086, N'e24cc150-8522-44c2-9ab6-b88f9390250a', CAST(N'2026-06-21T07:54:54.2996461' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4087, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T11:22:14.9082022' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4088, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T11:24:32.5728127' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4089, N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', CAST(N'2026-06-21T14:38:41.2858108' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4090, N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', CAST(N'2026-06-21T14:40:37.4269209' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4091, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T15:25:06.8929478' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4092, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T15:25:06.8929394' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4093, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T15:25:06.8929520' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4094, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T15:26:18.0274450' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4095, N'ff2c543f-b4e6-475e-ba3d-32974970da14', CAST(N'2026-06-21T15:26:23.3102295' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4096, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', CAST(N'2026-06-21T15:29:36.2037154' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4097, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', CAST(N'2026-06-21T15:53:42.4261200' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4098, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', CAST(N'2026-06-22T16:51:09.5086705' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4099, N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', CAST(N'2026-06-22T16:51:16.9117779' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4100, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', CAST(N'2026-06-22T16:51:34.5581799' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4101, N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', CAST(N'2026-06-22T16:51:39.8552332' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4102, N'cc0a05c1-17cb-48ef-a8dc-5244fc971f0e', CAST(N'2026-06-22T16:51:45.4427040' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4103, N'9bfff656-3851-467c-b4ef-b2dd3a32ab22', CAST(N'2026-06-22T16:51:50.7006206' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4104, N'c3b00507-a358-4cac-bf72-47ce8869ca0a', CAST(N'2026-06-26T09:36:24.1038233' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4105, N'c3b00507-a358-4cac-bf72-47ce8869ca0a', CAST(N'2026-06-26T09:37:21.8610210' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4106, N'e5c4a913-5ae8-4e6d-b1f1-2ca954ee9c4d', CAST(N'2026-06-27T21:53:40.3999061' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4107, N'c3b00507-a358-4cac-bf72-47ce8869ca0a', CAST(N'2026-06-28T10:04:17.5050970' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4108, N'c3b00507-a358-4cac-bf72-47ce8869ca0a', CAST(N'2026-06-28T10:04:34.2000196' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4109, N'c3b00507-a358-4cac-bf72-47ce8869ca0a', CAST(N'2026-06-28T10:04:40.6767453' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4110, N'9b54ec75-5b68-47a3-a26b-9385416a00b3', CAST(N'2026-06-28T10:04:51.8516086' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4111, N'fd5f243b-478d-48ad-82d8-680ce8f9b898', CAST(N'2026-06-28T10:04:59.1845006' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4112, N'1260b4ca-274a-4f31-a158-d057fe77f6f2', CAST(N'2026-06-28T10:05:07.5253215' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4113, N'1260b4ca-274a-4f31-a158-d057fe77f6f2', CAST(N'2026-06-28T10:05:24.7543113' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4114, N'fd111f46-b9db-42ae-a4ad-b1989a47b329', CAST(N'2026-06-28T11:14:07.1743505' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4115, N'fd111f46-b9db-42ae-a4ad-b1989a47b329', CAST(N'2026-06-28T11:15:12.8889801' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4116, N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', CAST(N'2026-06-28T12:00:09.0813257' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4117, N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', CAST(N'2026-06-28T12:02:04.7533810' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4118, N'42aad136-a2f6-4e85-b034-a6d9a00936fd', CAST(N'2026-06-28T14:07:17.8844295' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4119, N'625280b6-5070-410b-8ce2-9378ae9615e9', CAST(N'2026-06-28T14:07:54.2377739' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4120, N'625280b6-5070-410b-8ce2-9378ae9615e9', CAST(N'2026-06-28T14:10:36.3007092' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4121, N'42aad136-a2f6-4e85-b034-a6d9a00936fd', CAST(N'2026-06-28T14:10:42.0970059' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4122, N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', CAST(N'2026-06-28T15:37:25.1439686' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4123, N'fd111f46-b9db-42ae-a4ad-b1989a47b329', CAST(N'2026-06-29T13:58:27.8196233' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4124, N'fd111f46-b9db-42ae-a4ad-b1989a47b329', CAST(N'2026-06-29T13:58:43.6115546' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4125, N'fd111f46-b9db-42ae-a4ad-b1989a47b329', CAST(N'2026-06-29T13:58:48.8291457' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4126, N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', CAST(N'2026-06-29T13:58:53.6006646' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4127, N'6b047d80-3899-42f5-8c99-d4ba8adcbc5c', CAST(N'2026-06-29T13:58:58.5574620' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4128, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', CAST(N'2026-06-30T20:50:40.6391618' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4129, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', CAST(N'2026-06-30T20:52:21.1626840' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4130, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', CAST(N'2026-06-30T23:36:39.8983322' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4131, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', CAST(N'2026-06-30T23:37:24.8823567' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4132, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', CAST(N'2026-07-01T10:09:45.0663737' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4133, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', CAST(N'2026-07-01T10:09:50.5738050' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4134, N'8495e1b1-e55b-46a2-879c-048fb938184b', CAST(N'2026-07-01T15:46:50.5952829' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4135, N'8495e1b1-e55b-46a2-879c-048fb938184b', CAST(N'2026-07-01T15:48:44.9027149' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4136, N'e5c4a913-5ae8-4e6d-b1f1-2ca954ee9c4d', CAST(N'2026-07-01T16:13:14.3540128' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4137, N'8495e1b1-e55b-46a2-879c-048fb938184b', CAST(N'2026-07-01T17:11:52.1592995' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4138, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', CAST(N'2026-07-01T17:12:11.4464944' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4139, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', CAST(N'2026-07-01T17:12:16.2149772' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4140, N'8495e1b1-e55b-46a2-879c-048fb938184b', CAST(N'2026-07-01T17:12:21.0003879' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4141, N'9a3aecb5-9c26-43c5-b351-c6c55722d22e', CAST(N'2026-07-03T15:12:08.7830719' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4142, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', CAST(N'2026-07-08T10:41:34.5215178' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4143, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', CAST(N'2026-07-08T10:42:45.0878186' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4144, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', CAST(N'2026-07-08T11:41:11.5488785' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4145, N'b11ca75c-8fe6-4cac-9813-4f79cf819023', CAST(N'2026-07-08T11:41:26.4295435' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4146, N'e07d5a04-2842-4ee8-9c25-2086d293dc33', CAST(N'2026-07-08T11:41:31.5061401' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4147, N'8495e1b1-e55b-46a2-879c-048fb938184b', CAST(N'2026-07-08T11:41:36.3936809' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4148, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', CAST(N'2026-07-08T11:41:42.5149228' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4149, N'e3a10e24-8fc0-46df-9f40-1a40caa66b07', CAST(N'2026-07-08T11:41:47.1228514' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4150, N'6abb39b0-4431-4580-994d-651f195c5f27', CAST(N'2026-07-08T18:30:00.7028224' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4151, N'6abb39b0-4431-4580-994d-651f195c5f27', CAST(N'2026-07-08T18:31:32.1171860' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4152, N'6abb39b0-4431-4580-994d-651f195c5f27', CAST(N'2026-07-11T16:06:16.3424166' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4153, N'6abb39b0-4431-4580-994d-651f195c5f27', CAST(N'2026-07-11T16:06:16.3424060' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4154, N'6abb39b0-4431-4580-994d-651f195c5f27', CAST(N'2026-07-11T16:06:32.6781090' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4155, N'6abb39b0-4431-4580-994d-651f195c5f27', CAST(N'2026-07-11T16:06:37.5419277' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4156, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', CAST(N'2026-07-11T16:14:29.8981004' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4157, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', CAST(N'2026-07-11T16:15:53.7180026' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4158, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', CAST(N'2026-07-12T09:32:20.3638282' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4159, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', CAST(N'2026-07-12T09:32:32.0511136' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4160, N'ed06dd56-89c2-45a2-becf-280ea544bfb2', CAST(N'2026-07-12T09:32:37.7204786' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4161, N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', CAST(N'2026-07-13T01:13:36.0375004' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4162, N'38c38c75-e5e2-4454-b975-54f8541a7d69', CAST(N'2026-07-13T18:11:33.8374330' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4163, N'38c38c75-e5e2-4454-b975-54f8541a7d69', CAST(N'2026-07-13T18:12:48.9690937' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4164, N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', CAST(N'2026-07-13T18:17:19.7386389' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4165, N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', CAST(N'2026-07-13T18:18:24.6352384' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4166, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', CAST(N'2026-07-13T18:21:38.0679844' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4167, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', CAST(N'2026-07-13T18:22:27.2017914' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4168, N'dac47c5d-984f-4555-97e8-5b8fc2f01069', CAST(N'2026-07-13T18:29:43.8212042' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4169, N'dac47c5d-984f-4555-97e8-5b8fc2f01069', CAST(N'2026-07-13T18:30:36.7233859' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4170, N'7fc81627-1c9e-4f03-9d8e-bef593e95973', CAST(N'2026-07-13T18:48:58.4738818' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4171, N'7fc81627-1c9e-4f03-9d8e-bef593e95973', CAST(N'2026-07-13T18:49:43.7529262' AS DateTime2), 7)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4172, N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', CAST(N'2026-07-13T19:49:50.7858606' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4173, N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', CAST(N'2026-07-13T19:49:50.7859047' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4174, N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', CAST(N'2026-07-13T19:49:50.7859458' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4175, N'046188c7-a1ed-461d-8352-c1d1f8d6e76a', CAST(N'2026-07-13T19:49:50.7858427' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4176, N'9a3aecb5-9c26-43c5-b351-c6c55722d22e', CAST(N'2026-07-13T19:50:01.2554459' AS DateTime2), 6)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4177, N'3152a09a-368c-4df2-a3da-ef05b4703097', CAST(N'2026-07-13T22:08:14.1223843' AS DateTime2), 8)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4178, N'38c38c75-e5e2-4454-b975-54f8541a7d69', CAST(N'2026-07-14T10:47:38.5054190' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4179, N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', CAST(N'2026-07-14T10:47:45.2829288' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4180, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', CAST(N'2026-07-14T10:47:49.8285098' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4181, N'dac47c5d-984f-4555-97e8-5b8fc2f01069', CAST(N'2026-07-14T10:47:54.7955844' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4182, N'7fc81627-1c9e-4f03-9d8e-bef593e95973', CAST(N'2026-07-14T10:47:59.3520605' AS DateTime2), 2)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4183, N'38c38c75-e5e2-4454-b975-54f8541a7d69', CAST(N'2026-07-14T10:48:16.7141043' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4184, N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', CAST(N'2026-07-14T10:48:20.6776267' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4185, N'7fc81627-1c9e-4f03-9d8e-bef593e95973', CAST(N'2026-07-14T10:48:26.0809322' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4186, N'dac47c5d-984f-4555-97e8-5b8fc2f01069', CAST(N'2026-07-14T10:48:30.0194551' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4187, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', CAST(N'2026-07-14T10:48:33.8151328' AS DateTime2), 3)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4188, N'7fc81627-1c9e-4f03-9d8e-bef593e95973', CAST(N'2026-07-14T10:48:38.5011668' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4189, N'dac47c5d-984f-4555-97e8-5b8fc2f01069', CAST(N'2026-07-14T10:48:45.3333452' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4190, N'011186e1-ccd5-45cf-beb3-6f81d7e5c2b2', CAST(N'2026-07-14T10:48:50.8925923' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4191, N'63ae9f4d-b79a-49e3-92cb-a72f5efbfc35', CAST(N'2026-07-14T10:48:56.5712464' AS DateTime2), 4)
GO
INSERT [admindb].[OrderBuyStatues] ([Id], [OrderId], [DateStatues], [Statues]) VALUES (4192, N'2bdd88ba-9808-43d0-a7d6-863e3515f965', CAST(N'2026-07-15T14:23:22.8169682' AS DateTime2), 8)
GO
SET IDENTITY_INSERT [admindb].[OrderBuyStatues] OFF
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20251002081251_shop-001', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20251003061351_shop-002', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20251205064646_shop-003', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260521081739_shop-004', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260605060753_shop-005', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260616095005_shop-006', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260619081651_shop-007', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260623070147_shop-008', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260623071242_shop-009', N'8.0.0')
GO
INSERT [admindb].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260710141003_shop-010', N'8.0.0')
GO
INSERT [admindb].[Contact] ([Id], [Name], [Message], [Email], [CreateDate], [ProductId], [Rate]) VALUES (N'3eb4fb58-a1df-41e4-bad5-08dece4aaf63', N'حسین قلی پور بورخیلی', N'سلام خرید محصولی انجام دادم متاسفانه نیاز بهش نداریم و میخوام لغو کنم خرید رو', N'hoosingholipor@gmail.com', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [admindb].[Visit] ON 
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (1, CAST(N'2026-06-16T18:22:53.6773892' AS DateTime2), N'فازمتر اورانوس پیلاس دوکاره', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (2, CAST(N'2026-06-16T18:22:54.0078723' AS DateTime2), N'فازمتر اورانوس پیلاس دوکاره', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (3, CAST(N'2026-06-16T18:22:54.0581803' AS DateTime2), N'فازمتر اورانوس پیلاس دوکاره', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (4, CAST(N'2026-06-16T18:22:54.3047508' AS DateTime2), N'فازمتر اورانوس پیلاس دوکاره', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (5, CAST(N'2026-06-16T18:26:10.8437651' AS DateTime2), N'فازمتر اورانوس پیلاس دوکاره', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (6, CAST(N'2026-06-16T18:34:20.2247833' AS DateTime2), N'لامپ 3 وات هفت رنگ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (7, CAST(N'2026-06-16T18:34:39.5831448' AS DateTime2), N'لامپ 3 وات هفت رنگ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (8, CAST(N'2026-06-16T18:34:39.6894989' AS DateTime2), N'لامپ 3 وات هفت رنگ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (9, CAST(N'2026-06-16T18:35:01.1738548' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10, CAST(N'2026-06-16T18:35:01.2025601' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (11, CAST(N'2026-06-16T19:18:09.2648771' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (12, CAST(N'2026-06-16T19:18:19.1911420' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (13, CAST(N'2026-06-16T19:18:25.4794063' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (14, CAST(N'2026-06-16T19:36:54.8451699' AS DateTime2), N'محافظ 6 خانه کامپیوترکد2160', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (15, CAST(N'2026-06-16T19:37:19.7827139' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (16, CAST(N'2026-06-16T19:43:22.3663666' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (17, CAST(N'2026-06-16T19:43:24.7648026' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (18, CAST(N'2026-06-16T21:16:22.1050093' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10002, CAST(N'2026-06-17T01:24:47.0398672' AS DateTime2), N'تبدیل برق همه کاره نارکن', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10003, CAST(N'2026-06-17T02:30:24.5455439' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10004, CAST(N'2026-06-17T02:37:14.6167133' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10005, CAST(N'2026-06-17T02:39:43.2241207' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10006, CAST(N'2026-06-17T02:40:32.7539967' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10007, CAST(N'2026-06-17T02:43:34.5766356' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10008, CAST(N'2026-06-17T10:35:29.8523729' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10009, CAST(N'2026-06-17T13:12:18.5033752' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10010, CAST(N'2026-06-17T13:16:05.5904776' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10011, CAST(N'2026-06-17T13:17:25.7240468' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10012, CAST(N'2026-06-17T13:17:40.2931917' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10013, CAST(N'2026-06-17T13:18:58.0048470' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10014, CAST(N'2026-06-17T13:22:23.1165423' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10015, CAST(N'2026-06-17T13:26:49.4766564' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10016, CAST(N'2026-06-17T13:30:26.2890700' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10017, CAST(N'2026-06-17T13:30:51.8496488' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10018, CAST(N'2026-06-17T13:34:08.0203850' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10019, CAST(N'2026-06-17T13:57:21.6237793' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10020, CAST(N'2026-06-17T14:35:37.7703376' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10021, CAST(N'2026-06-17T16:11:43.2567799' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10022, CAST(N'2026-06-17T22:58:51.9583135' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10023, CAST(N'2026-06-17T23:09:25.5320778' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10024, CAST(N'2026-06-17T23:09:25.5320985' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10025, CAST(N'2026-06-17T23:09:28.7282167' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10026, CAST(N'2026-06-17T23:09:29.2258643' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10027, CAST(N'2026-06-17T23:59:12.6716908' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10028, CAST(N'2026-06-17T23:59:57.4538525' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10029, CAST(N'2026-06-18T00:04:38.5441226' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10030, CAST(N'2026-06-18T00:06:30.6720406' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10031, CAST(N'2026-06-18T07:27:13.8394593' AS DateTime2), N'محافظ یخچال با کابل 3متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10032, CAST(N'2026-06-18T09:51:40.6434829' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10033, CAST(N'2026-06-18T09:51:51.4661348' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10034, CAST(N'2026-06-18T10:05:58.3385909' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10035, CAST(N'2026-06-18T10:06:03.0596449' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10036, CAST(N'2026-06-18T10:06:35.9318696' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10037, CAST(N'2026-06-18T10:06:44.6571878' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10038, CAST(N'2026-06-18T10:33:23.7264566' AS DateTime2), N'چمدان تست منابع روشنایی Z2پلاس', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10039, CAST(N'2026-06-18T12:08:13.4596993' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10040, CAST(N'2026-06-18T12:08:20.4870405' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10041, CAST(N'2026-06-18T12:08:33.8164030' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10042, CAST(N'2026-06-18T12:09:06.4288636' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10043, CAST(N'2026-06-18T12:09:11.2254851' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10044, CAST(N'2026-06-18T12:09:28.1875072' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10045, CAST(N'2026-06-18T12:11:10.9665867' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10046, CAST(N'2026-06-18T12:11:13.5730481' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10047, CAST(N'2026-06-18T12:35:27.2774158' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10048, CAST(N'2026-06-18T12:36:28.1079671' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10049, CAST(N'2026-06-18T13:16:49.3317915' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10050, CAST(N'2026-06-18T13:17:09.7828596' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10051, CAST(N'2026-06-18T16:51:07.6954715' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10052, CAST(N'2026-06-18T16:51:20.2203814' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10053, CAST(N'2026-06-18T18:05:33.4719777' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10054, CAST(N'2026-06-18T18:06:25.1872733' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10055, CAST(N'2026-06-18T20:38:17.1259740' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10056, CAST(N'2026-06-18T21:44:29.0996402' AS DateTime2), N'محافظ پکیج دیجیتال پارت الکتریک 2836', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10057, CAST(N'2026-06-18T22:56:14.9698806' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10058, CAST(N'2026-06-18T22:58:11.5218256' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10059, CAST(N'2026-06-18T23:00:02.2225331' AS DateTime2), N'لامپ 9وات سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10060, CAST(N'2026-06-18T23:36:24.4837238' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10061, CAST(N'2026-06-18T23:36:41.5544945' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10062, CAST(N'2026-06-19T01:29:18.9430193' AS DateTime2), N'محافظ 6 خانه کامپیوترکد2160', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10063, CAST(N'2026-06-19T10:58:47.0445546' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10064, CAST(N'2026-06-19T10:58:56.1193937' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10065, CAST(N'2026-06-19T10:59:00.3936797' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10066, CAST(N'2026-06-19T10:59:03.9273417' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10067, CAST(N'2026-06-19T10:59:07.1907921' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10068, CAST(N'2026-06-19T11:49:28.4962310' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10069, CAST(N'2026-06-19T11:53:00.7457583' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10070, CAST(N'2026-06-19T12:07:53.6014477' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10071, CAST(N'2026-06-19T12:26:44.1855596' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10072, CAST(N'2026-06-19T12:27:08.6306746' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10073, CAST(N'2026-06-19T12:27:17.2916410' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10074, CAST(N'2026-06-19T12:27:22.5385497' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10075, CAST(N'2026-06-19T12:27:30.8829078' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10076, CAST(N'2026-06-19T12:27:34.6631905' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10077, CAST(N'2026-06-19T12:27:47.0311560' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10078, CAST(N'2026-06-19T12:29:27.8887448' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10079, CAST(N'2026-06-19T12:30:57.8494683' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10080, CAST(N'2026-06-19T12:31:02.9434149' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10081, CAST(N'2026-06-19T12:41:48.4096515' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10082, CAST(N'2026-06-19T12:42:02.3692050' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10083, CAST(N'2026-06-19T12:45:20.5069276' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10084, CAST(N'2026-06-19T12:59:46.7172331' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10085, CAST(N'2026-06-19T13:00:00.3302342' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10086, CAST(N'2026-06-19T13:00:08.6271990' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10087, CAST(N'2026-06-19T13:00:11.3584539' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10088, CAST(N'2026-06-19T13:00:31.2627449' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10089, CAST(N'2026-06-19T13:00:33.0950291' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10090, CAST(N'2026-06-19T13:00:46.2372128' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10091, CAST(N'2026-06-19T13:01:38.1774904' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10092, CAST(N'2026-06-19T13:02:13.9860807' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10093, CAST(N'2026-06-19T13:02:22.5754958' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10094, CAST(N'2026-06-19T13:02:46.9006527' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10095, CAST(N'2026-06-19T13:03:10.6523731' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10096, CAST(N'2026-06-19T13:03:15.9856544' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10097, CAST(N'2026-06-19T13:04:00.1170049' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10098, CAST(N'2026-06-19T13:04:33.1542548' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10099, CAST(N'2026-06-19T13:15:34.9298157' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10100, CAST(N'2026-06-19T13:15:49.7060400' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10101, CAST(N'2026-06-19T13:17:17.1192157' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10102, CAST(N'2026-06-19T13:24:01.6738650' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10103, CAST(N'2026-06-19T13:24:29.6835685' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10104, CAST(N'2026-06-19T13:26:19.5991577' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10105, CAST(N'2026-06-19T13:26:37.3233015' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10106, CAST(N'2026-06-19T13:27:11.3292735' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10107, CAST(N'2026-06-19T13:27:36.0072319' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10108, CAST(N'2026-06-19T13:34:11.8381510' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10109, CAST(N'2026-06-19T20:32:24.1462921' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10110, CAST(N'2026-06-19T20:37:04.9420876' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10111, CAST(N'2026-06-19T20:37:11.2784539' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10112, CAST(N'2026-06-19T21:18:11.1898515' AS DateTime2), N'چراغ خواب دوشاخه دار', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10113, CAST(N'2026-06-19T22:07:36.1155754' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10114, CAST(N'2026-06-19T22:14:42.8647979' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10115, CAST(N'2026-06-19T22:14:46.2384270' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10116, CAST(N'2026-06-19T23:53:23.5825288' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10117, CAST(N'2026-06-20T00:25:15.3518075' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10118, CAST(N'2026-06-20T05:11:46.0905354' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10119, CAST(N'2026-06-20T07:04:49.8272101' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10120, CAST(N'2026-06-20T08:21:34.8307212' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10121, CAST(N'2026-06-20T10:43:12.9249940' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10122, CAST(N'2026-06-20T12:11:11.1664304' AS DateTime2), N'ریسه واترپرو ف هولدوری 20شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10123, CAST(N'2026-06-20T12:33:19.5443152' AS DateTime2), N'تبدیل برق همه کاره نارکن', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10124, CAST(N'2026-06-20T16:04:33.0611862' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10125, CAST(N'2026-06-20T16:33:02.8497825' AS DateTime2), N'محافظ یخچال با کابل 3متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10126, CAST(N'2026-06-20T17:44:12.4634200' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10127, CAST(N'2026-06-20T17:49:32.6394815' AS DateTime2), N'مولتی متر دیجیتال DT9205A', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10128, CAST(N'2026-06-20T17:53:46.9886043' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10129, CAST(N'2026-06-20T17:54:03.5624910' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10130, CAST(N'2026-06-20T18:03:26.9717075' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور آفتابی، روز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10131, CAST(N'2026-06-20T19:38:40.8582688' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10132, CAST(N'2026-06-20T19:39:23.6463938' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10133, CAST(N'2026-06-20T19:40:17.6423318' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10134, CAST(N'2026-06-20T19:40:31.7738298' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10135, CAST(N'2026-06-20T19:40:43.7769439' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10136, CAST(N'2026-06-20T19:43:36.5176300' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10137, CAST(N'2026-06-20T21:59:08.0916706' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10138, CAST(N'2026-06-20T22:17:19.0887517' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10139, CAST(N'2026-06-20T23:11:53.1385728' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10140, CAST(N'2026-06-20T23:13:34.1308196' AS DateTime2), N'ریسه کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10141, CAST(N'2026-06-20T23:16:37.8086206' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10142, CAST(N'2026-06-21T00:55:26.9533218' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10143, CAST(N'2026-06-21T00:56:02.1189675' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10144, CAST(N'2026-06-21T00:56:08.2274110' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10145, CAST(N'2026-06-21T03:56:19.4036788' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10146, CAST(N'2026-06-21T03:56:25.6771499' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10147, CAST(N'2026-06-21T06:24:31.5849303' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10148, CAST(N'2026-06-21T07:01:45.2417074' AS DateTime2), N'ریسه واترپروف هولدوری40شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10149, CAST(N'2026-06-21T07:22:08.2208115' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10150, CAST(N'2026-06-21T07:22:15.5044830' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10151, CAST(N'2026-06-21T07:25:55.1936502' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10152, CAST(N'2026-06-21T07:39:04.6448167' AS DateTime2), N'محافظ یخچال', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10153, CAST(N'2026-06-21T08:17:10.4125981' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10154, CAST(N'2026-06-21T09:48:14.9823373' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10155, CAST(N'2026-06-21T09:52:23.8746552' AS DateTime2), N'ریسه واترپرو ف هولدوری 20شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10156, CAST(N'2026-06-21T09:54:32.9354886' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10157, CAST(N'2026-06-21T10:24:37.1255228' AS DateTime2), N'محافظ 6 خانه کامپیوترکد2160', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10158, CAST(N'2026-06-21T11:14:21.5320331' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10159, CAST(N'2026-06-21T11:18:31.3551411' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10160, CAST(N'2026-06-21T11:19:31.5188678' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10161, CAST(N'2026-06-21T12:15:25.1597395' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10162, CAST(N'2026-06-21T12:15:58.2877121' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10163, CAST(N'2026-06-21T12:16:21.8689316' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10164, CAST(N'2026-06-21T12:50:48.0615558' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10165, CAST(N'2026-06-21T12:53:43.4178845' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10166, CAST(N'2026-06-21T12:53:58.4553326' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10167, CAST(N'2026-06-21T12:57:17.7556493' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10168, CAST(N'2026-06-21T13:54:33.9495678' AS DateTime2), N'محافظ دو شاخه دار یخچال و فریزر پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10169, CAST(N'2026-06-21T13:56:27.4496400' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10170, CAST(N'2026-06-21T14:30:28.4380439' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10171, CAST(N'2026-06-21T14:31:55.4242013' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10172, CAST(N'2026-06-21T14:47:43.9059318' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10173, CAST(N'2026-06-21T15:27:35.7684319' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10174, CAST(N'2026-06-21T15:28:20.3138881' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10175, CAST(N'2026-06-21T15:30:11.4697462' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10176, CAST(N'2026-06-21T15:33:13.6137128' AS DateTime2), N'تبدیل سه به دو 16 آمپر نارکن چراغدار', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10177, CAST(N'2026-06-21T15:49:57.1836143' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10178, CAST(N'2026-06-21T15:51:43.8871283' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10179, CAST(N'2026-06-21T16:23:56.8971170' AS DateTime2), N'سیم2/5افشان', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10180, CAST(N'2026-06-22T02:06:08.5274963' AS DateTime2), N'کیت آموزشی کاردستی جرثقیل کد 2', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10181, CAST(N'2026-06-22T12:05:12.8945701' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10182, CAST(N'2026-06-22T12:16:08.6275133' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10183, CAST(N'2026-06-22T13:30:27.2577260' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10184, CAST(N'2026-06-22T13:31:11.2798325' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10185, CAST(N'2026-06-22T14:10:09.6580218' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10186, CAST(N'2026-06-22T14:10:10.0010570' AS DateTime2), N'ریسه واترپروف هولدوری 10شعله 5 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10187, CAST(N'2026-06-22T14:14:08.7190198' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10188, CAST(N'2026-06-22T14:19:31.0618509' AS DateTime2), N'محافظ 6 خانه کامپیوتر کد 2160', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10189, CAST(N'2026-06-22T14:29:35.4691953' AS DateTime2), N'لامپ 9 وات سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10190, CAST(N'2026-06-22T14:30:40.6457840' AS DateTime2), N'محافظ 6 خانه کامپیوتر کد 2060', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10191, CAST(N'2026-06-22T14:47:42.5725605' AS DateTime2), N'محافظ 6 خانه کامپیوتر کد 2060', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10192, CAST(N'2026-06-22T14:52:11.6349767' AS DateTime2), N'ریسه واترپروف هولدوری 10شعله 5 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10193, CAST(N'2026-06-22T14:56:59.1630424' AS DateTime2), N'مادگی صنعتی پارت  کد 963', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10194, CAST(N'2026-06-22T15:02:12.5202484' AS DateTime2), N'محافظ 6 خانه کامپیوتر کد 2160', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10195, CAST(N'2026-06-22T15:02:13.0147049' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10196, CAST(N'2026-06-22T15:07:22.7094784' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10197, CAST(N'2026-06-22T15:13:29.0050841' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10198, CAST(N'2026-06-22T15:29:12.1574451' AS DateTime2), N'دوشاخه نری صنعتی پارت  کد 972', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10199, CAST(N'2026-06-22T15:34:49.7909631' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10200, CAST(N'2026-06-22T15:56:20.5814118' AS DateTime2), N'مادگی صنعتی پارت  کد 963', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10201, CAST(N'2026-06-22T16:20:41.5008404' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10202, CAST(N'2026-06-22T16:27:30.6147269' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10203, CAST(N'2026-06-22T16:33:52.0576391' AS DateTime2), N'لامپ 9 وات سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10204, CAST(N'2026-06-22T16:50:24.6224223' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10205, CAST(N'2026-06-22T16:50:53.3784961' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10206, CAST(N'2026-06-22T16:55:07.7596099' AS DateTime2), N'ریسه واترپروف هولدوری 10شعله 5 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10207, CAST(N'2026-06-22T17:01:32.2336511' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10208, CAST(N'2026-06-22T17:03:05.4501622' AS DateTime2), N'ریسه واترپروف 100متر200 شعله ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10209, CAST(N'2026-06-22T17:03:26.9109864' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10210, CAST(N'2026-06-22T17:11:44.5402030' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10211, CAST(N'2026-06-22T18:00:04.0709241' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10212, CAST(N'2026-06-22T19:50:26.9068968' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10213, CAST(N'2026-06-22T22:33:15.1603637' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10214, CAST(N'2026-06-23T02:09:31.8999014' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10215, CAST(N'2026-06-23T11:01:46.1295887' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10216, CAST(N'2026-06-23T12:14:05.2257395' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10217, CAST(N'2026-06-23T13:33:53.8173927' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10218, CAST(N'2026-06-24T17:58:12.4942415' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10219, CAST(N'2026-06-24T20:27:09.8077975' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10220, CAST(N'2026-06-25T03:50:54.0400465' AS DateTime2), N'محافظ یخچال با کابل 3متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10221, CAST(N'2026-06-25T06:19:22.0055573' AS DateTime2), N'محافظ 4 خانه کامپیوتر پارت', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10222, CAST(N'2026-06-25T18:31:48.8136499' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10223, CAST(N'2026-06-25T23:10:07.4125497' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10224, CAST(N'2026-06-26T04:44:36.9075162' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10225, CAST(N'2026-06-26T09:31:52.8758103' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10226, CAST(N'2026-06-26T09:33:07.8283836' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10227, CAST(N'2026-06-26T10:13:57.1522898' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10228, CAST(N'2026-06-26T10:39:17.0794761' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10229, CAST(N'2026-06-26T15:27:22.0758460' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10230, CAST(N'2026-06-26T17:19:53.1153253' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10231, CAST(N'2026-06-27T00:37:52.0768808' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10232, CAST(N'2026-06-27T10:03:10.1679976' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10233, CAST(N'2026-06-27T11:32:15.8532867' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10234, CAST(N'2026-06-27T14:41:45.9948479' AS DateTime2), N'محافظ دو شاخه دار یخچال و فریزر پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10235, CAST(N'2026-06-27T14:41:59.4475384' AS DateTime2), N'محافظ دو شاخه دار یخچال و فریزر پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10236, CAST(N'2026-06-27T16:38:49.1809553' AS DateTime2), N'لامپ خواب سرپیچی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10237, CAST(N'2026-06-27T16:38:49.8107843' AS DateTime2), N'لامپ خواب سرپیچی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10238, CAST(N'2026-06-27T17:41:48.1944442' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10239, CAST(N'2026-06-27T20:28:43.7130867' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10240, CAST(N'2026-06-27T20:30:01.2955224' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور آفتابی، روز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10241, CAST(N'2026-06-27T21:48:26.6062868' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10242, CAST(N'2026-06-27T21:50:53.7264269' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10243, CAST(N'2026-06-28T03:31:13.5746790' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10244, CAST(N'2026-06-28T10:59:40.7675202' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10245, CAST(N'2026-06-28T11:10:09.5459750' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10246, CAST(N'2026-06-28T11:12:30.9426020' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10247, CAST(N'2026-06-28T11:16:09.7209213' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10248, CAST(N'2026-06-28T11:27:09.1331139' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10249, CAST(N'2026-06-28T11:58:25.6555356' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10250, CAST(N'2026-06-28T11:59:38.7373153' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10251, CAST(N'2026-06-28T12:04:42.6704654' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10252, CAST(N'2026-06-28T12:07:40.4782195' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10253, CAST(N'2026-06-28T12:07:44.4330749' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10254, CAST(N'2026-06-28T12:54:25.3316811' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10255, CAST(N'2026-06-28T14:06:39.3367255' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10256, CAST(N'2026-06-28T14:06:46.0443102' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10257, CAST(N'2026-06-28T14:06:51.5385453' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10258, CAST(N'2026-06-28T14:06:53.6531512' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10259, CAST(N'2026-06-28T14:09:52.0965344' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10260, CAST(N'2026-06-28T14:10:15.9398044' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10261, CAST(N'2026-06-28T14:35:41.2502043' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10262, CAST(N'2026-06-28T14:45:26.2945115' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10263, CAST(N'2026-06-28T15:44:40.3122317' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10264, CAST(N'2026-06-28T15:45:20.3133179' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10265, CAST(N'2026-06-28T19:37:51.5900952' AS DateTime2), N'ریسه واترپروف 100متر200 شعله ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10266, CAST(N'2026-06-29T01:33:42.6794387' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10267, CAST(N'2026-06-29T08:13:14.6783936' AS DateTime2), N'ریسه بلوطی هفت رنگ ساده', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10268, CAST(N'2026-06-29T09:21:13.8564969' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10269, CAST(N'2026-06-29T09:21:51.6495974' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10270, CAST(N'2026-06-29T09:22:09.1587683' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10271, CAST(N'2026-06-29T09:22:13.2096499' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10272, CAST(N'2026-06-29T18:10:38.1773818' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10273, CAST(N'2026-06-29T18:25:59.5406660' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10274, CAST(N'2026-06-29T23:24:57.9003198' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10275, CAST(N'2026-06-30T11:06:48.9931791' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10276, CAST(N'2026-06-30T11:07:07.3179201' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10277, CAST(N'2026-06-30T11:07:31.3822182' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10278, CAST(N'2026-06-30T11:07:42.4616241' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10279, CAST(N'2026-06-30T11:08:24.3757920' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10280, CAST(N'2026-06-30T14:17:25.2401907' AS DateTime2), N'ریسه واترپروف 100متر200 شعله ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10281, CAST(N'2026-06-30T20:27:30.3263366' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10282, CAST(N'2026-06-30T20:37:02.6874037' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10283, CAST(N'2026-06-30T20:38:30.9957328' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10284, CAST(N'2026-06-30T20:39:02.3141333' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10285, CAST(N'2026-06-30T20:39:06.0379281' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10286, CAST(N'2026-06-30T20:42:38.6538215' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10287, CAST(N'2026-06-30T20:46:17.0524623' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10288, CAST(N'2026-06-30T22:01:00.0533403' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10289, CAST(N'2026-06-30T22:32:18.2459678' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10290, CAST(N'2026-06-30T22:45:12.7915690' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10291, CAST(N'2026-06-30T22:45:53.1480777' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10292, CAST(N'2026-06-30T22:53:50.5292488' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10293, CAST(N'2026-06-30T22:54:39.3510764' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10294, CAST(N'2026-06-30T23:28:51.9134610' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10295, CAST(N'2026-06-30T23:29:00.8070598' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10296, CAST(N'2026-06-30T23:32:07.8941619' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10297, CAST(N'2026-07-01T05:57:15.9569523' AS DateTime2), N'چراغ خواب دوشاخه دار', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10298, CAST(N'2026-07-01T08:00:11.4049354' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10299, CAST(N'2026-07-01T08:03:52.6730818' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10300, CAST(N'2026-07-01T08:20:43.0411817' AS DateTime2), N'فازمتر اورانوس پیلاس دوکاره', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10301, CAST(N'2026-07-01T08:26:25.7769800' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10302, CAST(N'2026-07-01T09:14:00.4394032' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10303, CAST(N'2026-07-01T09:14:50.4390736' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10304, CAST(N'2026-07-01T09:16:56.2624020' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10305, CAST(N'2026-07-01T10:07:40.2848199' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10306, CAST(N'2026-07-01T11:00:17.8750695' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10307, CAST(N'2026-07-01T15:26:34.1333841' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10308, CAST(N'2026-07-01T17:12:34.8041317' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10309, CAST(N'2026-07-01T17:13:20.3915295' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10310, CAST(N'2026-07-01T19:43:53.5163876' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10311, CAST(N'2026-07-01T23:25:36.8502403' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10312, CAST(N'2026-07-01T23:27:21.8505699' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10313, CAST(N'2026-07-02T04:01:45.4468809' AS DateTime2), N'ریسه واترپروف 100متر200 شعله ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10314, CAST(N'2026-07-02T09:36:26.3634402' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10315, CAST(N'2026-07-02T10:51:11.5233054' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10316, CAST(N'2026-07-02T10:59:10.5630642' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10317, CAST(N'2026-07-02T13:31:36.7108939' AS DateTime2), N'سیم کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10318, CAST(N'2026-07-02T13:32:11.4460688' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10319, CAST(N'2026-07-02T20:28:55.8504898' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10320, CAST(N'2026-07-02T20:29:38.8639261' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10321, CAST(N'2026-07-02T20:45:16.9046704' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10322, CAST(N'2026-07-02T20:49:47.0800011' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10323, CAST(N'2026-07-03T01:22:05.8383557' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10324, CAST(N'2026-07-03T01:22:16.1104554' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10325, CAST(N'2026-07-03T01:22:16.9739598' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10326, CAST(N'2026-07-03T03:15:42.7635608' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10327, CAST(N'2026-07-03T03:19:07.9304161' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10328, CAST(N'2026-07-03T04:11:44.7381025' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10329, CAST(N'2026-07-03T13:22:22.8349569' AS DateTime2), N'بخاری برقی ابراستاره فن دار', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10330, CAST(N'2026-07-03T13:22:41.9816365' AS DateTime2), N'بخاری برقی ابر استاره ایستاده ساده', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10331, CAST(N'2026-07-03T15:04:29.2283363' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10332, CAST(N'2026-07-03T15:05:56.9457403' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10333, CAST(N'2026-07-03T15:12:22.4117057' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10334, CAST(N'2026-07-03T16:05:48.2798686' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10335, CAST(N'2026-07-03T16:06:45.5785883' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10336, CAST(N'2026-07-03T16:06:56.0126854' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10337, CAST(N'2026-07-03T16:07:17.6117875' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10338, CAST(N'2026-07-03T16:36:13.3355220' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10339, CAST(N'2026-07-04T05:00:46.1380067' AS DateTime2), N'ریسه واترپروف 100متر200 شعله ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10340, CAST(N'2026-07-04T08:02:51.3092287' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10341, CAST(N'2026-07-04T09:17:24.2360258' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10342, CAST(N'2026-07-04T10:16:40.1972659' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10343, CAST(N'2026-07-04T10:16:51.6635695' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10344, CAST(N'2026-07-04T10:33:00.5902566' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10345, CAST(N'2026-07-04T11:46:59.4300232' AS DateTime2), N'محافظ یخچال با کابل 3متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10346, CAST(N'2026-07-04T12:06:51.8802488' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10347, CAST(N'2026-07-04T12:07:30.1428975' AS DateTime2), N'ریسه بلوطی هفت رنگ ساده', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10348, CAST(N'2026-07-04T12:52:31.1232861' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10349, CAST(N'2026-07-04T12:55:38.2611869' AS DateTime2), N'فنر سیم کشی برق 6 متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10350, CAST(N'2026-07-04T14:16:52.2759144' AS DateTime2), N'چراغ خودرویی 20 وات', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10351, CAST(N'2026-07-04T15:31:55.9832577' AS DateTime2), N'چمدان تست منابع روشنایی Z2پلاس', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10352, CAST(N'2026-07-04T16:48:21.4128500' AS DateTime2), N'مادگی صنعتی پارت  کد 963', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10353, CAST(N'2026-07-04T17:05:58.0708068' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10354, CAST(N'2026-07-04T17:09:23.3851202' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10355, CAST(N'2026-07-04T18:03:02.3669109' AS DateTime2), N'محافظ 6 خانه کامپیوتر کد 2160', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10356, CAST(N'2026-07-04T22:22:32.2190226' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10357, CAST(N'2026-07-04T22:23:17.7739302' AS DateTime2), N'ریسه بلوطی هفت رنگ ساده', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10358, CAST(N'2026-07-04T23:37:56.2600479' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10359, CAST(N'2026-07-05T11:12:41.0648043' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10360, CAST(N'2026-07-05T11:15:16.9912519' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10361, CAST(N'2026-07-05T14:07:54.4421458' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10362, CAST(N'2026-07-05T14:08:27.6153022' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10363, CAST(N'2026-07-05T14:13:07.9034505' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10364, CAST(N'2026-07-05T14:15:05.7247906' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10365, CAST(N'2026-07-05T14:45:09.3346679' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10366, CAST(N'2026-07-05T18:08:57.1878783' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10367, CAST(N'2026-07-05T22:10:27.3290684' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10368, CAST(N'2026-07-06T00:53:59.7558421' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10369, CAST(N'2026-07-06T08:52:03.0669647' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10370, CAST(N'2026-07-06T10:17:23.1631951' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10371, CAST(N'2026-07-06T15:23:32.8697860' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10372, CAST(N'2026-07-06T15:23:32.8698136' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10373, CAST(N'2026-07-06T17:48:06.9895199' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10374, CAST(N'2026-07-06T17:48:10.8162379' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10375, CAST(N'2026-07-06T17:48:49.4818613' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10376, CAST(N'2026-07-06T18:02:13.0003124' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10377, CAST(N'2026-07-06T18:18:30.9597128' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10378, CAST(N'2026-07-06T18:18:46.2193682' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10379, CAST(N'2026-07-06T18:18:47.4003537' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10380, CAST(N'2026-07-06T18:18:53.7742811' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10381, CAST(N'2026-07-06T18:18:55.4370095' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10382, CAST(N'2026-07-06T18:18:59.3720175' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10383, CAST(N'2026-07-06T18:20:57.6250825' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10384, CAST(N'2026-07-06T18:35:23.8481207' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10385, CAST(N'2026-07-06T18:53:04.4167301' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10386, CAST(N'2026-07-06T19:31:54.6153450' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10387, CAST(N'2026-07-06T20:22:29.4970758' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10388, CAST(N'2026-07-06T20:22:57.7546680' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10389, CAST(N'2026-07-06T20:23:09.0398436' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10390, CAST(N'2026-07-06T20:26:02.9906457' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10391, CAST(N'2026-07-06T20:26:09.0594746' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10392, CAST(N'2026-07-07T00:53:26.6742248' AS DateTime2), N'فنر سیم کشی برق 6 متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10393, CAST(N'2026-07-07T01:14:57.8026433' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10394, CAST(N'2026-07-07T02:32:49.2395030' AS DateTime2), N'لامپ 9 وات سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10395, CAST(N'2026-07-07T02:36:39.5522252' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10396, CAST(N'2026-07-07T03:44:45.4845722' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10397, CAST(N'2026-07-07T03:51:48.8199737' AS DateTime2), N' سه راهی تپل بست ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10398, CAST(N'2026-07-07T06:43:54.7916425' AS DateTime2), N'سیم کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10399, CAST(N'2026-07-07T06:51:11.3616066' AS DateTime2), N'سیم کنفی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10400, CAST(N'2026-07-07T07:33:29.7789330' AS DateTime2), N'محافظ 6 خانه کامپیوتر کد 2060', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10401, CAST(N'2026-07-07T07:46:42.5222706' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10402, CAST(N'2026-07-07T11:03:27.5846986' AS DateTime2), N'ریسه بلوطی هفت رنگ با جای سیم بکسل و طناب', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10403, CAST(N'2026-07-07T13:50:39.3347916' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10404, CAST(N'2026-07-07T15:15:48.8165166' AS DateTime2), N'تبدیل برق 3 به 2 مدیانور SH1059', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10405, CAST(N'2026-07-07T16:38:32.8086941' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10406, CAST(N'2026-07-07T16:39:21.7604520' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10407, CAST(N'2026-07-07T17:45:12.6871451' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10408, CAST(N'2026-07-07T17:50:45.9644351' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10409, CAST(N'2026-07-07T17:51:04.0333288' AS DateTime2), N'ریسه بلوطی میکس ثابت', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10410, CAST(N'2026-07-07T17:51:07.0169619' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور آفتابی، روز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10411, CAST(N'2026-07-07T20:09:07.6490724' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10412, CAST(N'2026-07-07T20:09:30.9679990' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10413, CAST(N'2026-07-07T20:11:22.8363085' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10414, CAST(N'2026-07-07T20:11:33.2153897' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10415, CAST(N'2026-07-07T20:11:36.2766591' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10416, CAST(N'2026-07-07T20:11:36.4878835' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10417, CAST(N'2026-07-07T20:11:36.5504247' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10418, CAST(N'2026-07-07T20:11:37.5176865' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10419, CAST(N'2026-07-07T20:11:37.5515209' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10420, CAST(N'2026-07-07T20:11:41.6921516' AS DateTime2), N'فازمتر کوتاه اورانوس جیبی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10421, CAST(N'2026-07-07T20:11:54.5074815' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10422, CAST(N'2026-07-07T20:12:06.3478249' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10423, CAST(N'2026-07-07T20:12:16.2759834' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10424, CAST(N'2026-07-08T10:06:32.9618137' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10425, CAST(N'2026-07-08T10:07:47.3733146' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10426, CAST(N'2026-07-08T10:10:14.1346385' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10427, CAST(N'2026-07-08T11:05:25.6632699' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10428, CAST(N'2026-07-08T11:40:21.1344169' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10429, CAST(N'2026-07-08T13:00:27.6490913' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10430, CAST(N'2026-07-08T14:04:29.9020114' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10431, CAST(N'2026-07-08T14:04:47.2570677' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10432, CAST(N'2026-07-08T14:05:06.5118948' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10433, CAST(N'2026-07-08T14:09:27.5543706' AS DateTime2), N'ریسه واترپروف 100متر200 شعله ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10434, CAST(N'2026-07-08T14:30:58.7875008' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10435, CAST(N'2026-07-08T15:34:18.3775372' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10436, CAST(N'2026-07-08T15:34:18.2732183' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10437, CAST(N'2026-07-08T15:54:43.4326330' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10438, CAST(N'2026-07-08T16:11:47.0539505' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10439, CAST(N'2026-07-08T16:12:50.9776356' AS DateTime2), N'ریسه بلوطی هفت رنگ سفارشی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10440, CAST(N'2026-07-08T16:32:18.7657938' AS DateTime2), N'کابل برق Honglin HL-0268 1.8m PC', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10441, CAST(N'2026-07-08T18:26:11.7508787' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10442, CAST(N'2026-07-08T18:26:39.7448789' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10443, CAST(N'2026-07-08T18:26:53.7878362' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10444, CAST(N'2026-07-08T18:27:13.8866731' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10445, CAST(N'2026-07-08T18:27:31.2231514' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10446, CAST(N'2026-07-08T18:27:36.4218068' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10447, CAST(N'2026-07-08T18:31:38.7809681' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10448, CAST(N'2026-07-08T18:31:46.4234123' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10449, CAST(N'2026-07-08T23:11:16.7967013' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10450, CAST(N'2026-07-08T23:11:26.3180919' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10451, CAST(N'2026-07-09T01:14:16.5333793' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10452, CAST(N'2026-07-09T01:34:07.8197282' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10453, CAST(N'2026-07-09T01:34:08.1077375' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10454, CAST(N'2026-07-09T01:34:08.5268600' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10455, CAST(N'2026-07-09T02:31:32.9433504' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10456, CAST(N'2026-07-09T02:35:10.7759277' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10457, CAST(N'2026-07-09T02:41:09.0406307' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10458, CAST(N'2026-07-09T05:09:06.2972675' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10459, CAST(N'2026-07-09T05:59:27.0220494' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10460, CAST(N'2026-07-09T10:36:41.1366880' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10461, CAST(N'2026-07-09T10:39:42.4842725' AS DateTime2), N'لامپ 3 وات هفت رنگ', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10462, CAST(N'2026-07-09T10:40:02.8580790' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10463, CAST(N'2026-07-09T10:40:50.3630783' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10464, CAST(N'2026-07-09T10:40:56.0958441' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10465, CAST(N'2026-07-09T10:42:35.9638139' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10466, CAST(N'2026-07-09T10:43:00.2990137' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10467, CAST(N'2026-07-09T15:38:50.5737831' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10468, CAST(N'2026-07-09T22:22:50.3276418' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10469, CAST(N'2026-07-09T22:22:50.0428593' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10470, CAST(N'2026-07-10T14:04:15.1025535' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10471, CAST(N'2026-07-10T17:48:43.8222989' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10472, CAST(N'2026-07-10T18:36:28.9356379' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10473, CAST(N'2026-07-10T19:45:16.6770581' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10474, CAST(N'2026-07-10T19:46:36.1719838' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10475, CAST(N'2026-07-10T20:33:54.0314419' AS DateTime2), N'دستگاه تست رومیزی Z3', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10476, CAST(N'2026-07-10T20:41:52.3675777' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10477, CAST(N'2026-07-10T21:04:51.1592364' AS DateTime2), N'محافظ یخچال با کابل 3متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10478, CAST(N'2026-07-11T00:07:36.7698497' AS DateTime2), N'سرپیچ بارانی سرپیچ سوزنی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10479, CAST(N'2026-07-11T00:08:35.8358755' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10480, CAST(N'2026-07-11T00:10:44.9247560' AS DateTime2), N'لامپ خواب سرپیچی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10481, CAST(N'2026-07-11T00:26:03.1400652' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10482, CAST(N'2026-07-11T00:26:06.7554747' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10483, CAST(N'2026-07-11T06:31:34.0775327' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10484, CAST(N'2026-07-11T12:03:37.7665322' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10485, CAST(N'2026-07-11T16:06:55.3473164' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10486, CAST(N'2026-07-11T16:08:14.8506991' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10487, CAST(N'2026-07-11T17:04:29.6806250' AS DateTime2), N'تبدیل برق 3 به 2 مدیانور SH1059', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10488, CAST(N'2026-07-11T20:24:08.0044884' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10489, CAST(N'2026-07-11T22:32:40.3588360' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10490, CAST(N'2026-07-12T02:32:39.0814287' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10491, CAST(N'2026-07-12T02:33:32.3507461' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10492, CAST(N'2026-07-12T02:33:36.5969252' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10493, CAST(N'2026-07-12T02:34:10.1535985' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10494, CAST(N'2026-07-12T02:34:43.9114719' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10495, CAST(N'2026-07-12T02:34:59.4405953' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10496, CAST(N'2026-07-12T02:38:25.6932972' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10497, CAST(N'2026-07-12T02:38:55.8304454' AS DateTime2), N'لامپ خواب سرپیچی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10498, CAST(N'2026-07-12T02:45:09.9748860' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10499, CAST(N'2026-07-12T02:45:18.2087898' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10500, CAST(N'2026-07-12T07:53:39.9612137' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10501, CAST(N'2026-07-12T07:54:36.2351046' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10502, CAST(N'2026-07-12T07:59:28.6641312' AS DateTime2), N'لامپ 9 وات سبز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10503, CAST(N'2026-07-12T07:59:32.8009640' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10504, CAST(N'2026-07-12T07:59:33.8922300' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10505, CAST(N'2026-07-12T07:59:35.7685003' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10506, CAST(N'2026-07-12T07:59:37.0191199' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10507, CAST(N'2026-07-12T07:59:39.3083120' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10508, CAST(N'2026-07-12T07:59:40.4048887' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10509, CAST(N'2026-07-12T08:08:15.6477702' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10510, CAST(N'2026-07-12T08:14:55.9645881' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10511, CAST(N'2026-07-12T08:14:56.8927513' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10512, CAST(N'2026-07-12T08:16:58.2257817' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10513, CAST(N'2026-07-12T08:17:25.1840498' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10514, CAST(N'2026-07-12T08:29:58.6087141' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10515, CAST(N'2026-07-12T09:31:35.0923136' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10516, CAST(N'2026-07-12T09:31:41.4229405' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10517, CAST(N'2026-07-12T11:36:14.7938491' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10518, CAST(N'2026-07-12T12:01:48.5520552' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10519, CAST(N'2026-07-12T12:34:20.0577388' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10520, CAST(N'2026-07-12T12:43:15.3395818' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10521, CAST(N'2026-07-12T12:43:21.6825073' AS DateTime2), N'ریسه واترپروف هولدری 100متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10522, CAST(N'2026-07-12T13:28:34.9763385' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10523, CAST(N'2026-07-12T15:56:52.9339604' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10524, CAST(N'2026-07-12T16:34:14.1269107' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10525, CAST(N'2026-07-12T16:35:06.8364539' AS DateTime2), N'سیم2/5افشان', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10526, CAST(N'2026-07-12T16:45:59.1199003' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10527, CAST(N'2026-07-12T17:17:06.5085774' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10528, CAST(N'2026-07-12T18:23:43.1083445' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10529, CAST(N'2026-07-12T18:24:56.4515799' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10530, CAST(N'2026-07-12T18:24:58.0537852' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10531, CAST(N'2026-07-12T18:25:11.5217472' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10532, CAST(N'2026-07-12T18:25:13.7774888' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10533, CAST(N'2026-07-12T18:25:18.4635409' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10534, CAST(N'2026-07-12T18:25:21.4330563' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10535, CAST(N'2026-07-12T18:26:42.0770843' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10536, CAST(N'2026-07-12T18:29:56.3409698' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10537, CAST(N'2026-07-12T18:29:57.3244670' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10538, CAST(N'2026-07-12T18:29:59.3522748' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10539, CAST(N'2026-07-12T18:30:00.2596167' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10540, CAST(N'2026-07-12T18:30:03.3295840' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10541, CAST(N'2026-07-12T18:30:05.3551340' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10542, CAST(N'2026-07-12T18:30:07.2799698' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10543, CAST(N'2026-07-12T18:30:09.2679768' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10544, CAST(N'2026-07-12T18:30:13.2616986' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10545, CAST(N'2026-07-12T18:30:42.4257815' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10546, CAST(N'2026-07-12T18:30:44.3046761' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10547, CAST(N'2026-07-12T18:30:47.2530186' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10548, CAST(N'2026-07-12T18:30:53.2977118' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10549, CAST(N'2026-07-12T18:30:57.3879161' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10550, CAST(N'2026-07-12T18:31:07.5187640' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10551, CAST(N'2026-07-12T18:31:17.3885491' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10552, CAST(N'2026-07-12T18:31:19.2563266' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10553, CAST(N'2026-07-12T18:33:10.9948720' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10554, CAST(N'2026-07-12T18:33:25.4099874' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10555, CAST(N'2026-07-12T18:49:17.1008727' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10556, CAST(N'2026-07-12T19:13:13.1974239' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10557, CAST(N'2026-07-12T19:40:02.8883343' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10558, CAST(N'2026-07-13T01:20:54.7608807' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10559, CAST(N'2026-07-13T01:31:46.0349339' AS DateTime2), N'ریسه واترپروف هولدوری 20 شعله 10 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10560, CAST(N'2026-07-13T05:41:34.2749949' AS DateTime2), N'قرقره کابل جمع کن وحدت الکتریک 4 پریز ظرفیت 30 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10561, CAST(N'2026-07-13T13:50:14.7277697' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10562, CAST(N'2026-07-13T18:09:49.9552226' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10563, CAST(N'2026-07-13T18:10:51.1660860' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10564, CAST(N'2026-07-13T18:13:22.3770274' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10565, CAST(N'2026-07-13T18:15:21.8592532' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10566, CAST(N'2026-07-13T18:19:15.1929006' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10567, CAST(N'2026-07-13T18:22:32.2816722' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10568, CAST(N'2026-07-13T18:26:39.9677387' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10569, CAST(N'2026-07-13T18:27:39.7270138' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10570, CAST(N'2026-07-13T18:29:43.9709380' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10571, CAST(N'2026-07-13T18:30:42.2281151' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10572, CAST(N'2026-07-13T18:47:38.1128153' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10573, CAST(N'2026-07-13T18:48:16.5182068' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10574, CAST(N'2026-07-13T21:58:55.1892819' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10575, CAST(N'2026-07-13T21:58:55.1893155' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10576, CAST(N'2026-07-13T22:03:51.3093260' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10577, CAST(N'2026-07-13T22:05:05.5301918' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10578, CAST(N'2026-07-13T23:05:45.5018932' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10579, CAST(N'2026-07-13T23:20:07.8786137' AS DateTime2), N'ریسه کنفی سیم سفید', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10580, CAST(N'2026-07-13T23:20:57.9265195' AS DateTime2), N'ریسه واترپروف هولدوری 40 شعله 20 متر', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10581, CAST(N'2026-07-13T23:21:02.9865436' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10582, CAST(N'2026-07-13T23:22:34.3862508' AS DateTime2), N'ریسه کنفی  سیم مشکی', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10583, CAST(N'2026-07-14T02:03:21.2727068' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10584, CAST(N'2026-07-14T10:23:55.7668618' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10585, CAST(N'2026-07-14T10:46:06.5459578' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10586, CAST(N'2026-07-14T17:04:39.1038622' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10587, CAST(N'2026-07-14T17:04:50.5239999' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10588, CAST(N'2026-07-14T21:15:16.0850573' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10589, CAST(N'2026-07-14T21:21:21.3826583' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10590, CAST(N'2026-07-14T21:22:41.0952472' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10591, CAST(N'2026-07-15T10:44:30.7846857' AS DateTime2), N'محافظ کولر گازی / یخچال و لباسشویی پارت الکتریک', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10592, CAST(N'2026-07-15T10:44:34.9952456' AS DateTime2), N'فنر سیم کشی فلزی 10متری', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10593, CAST(N'2026-07-15T11:22:33.5447907' AS DateTime2), N'تبدیل برق 3 به 2 مدیانور SH1059', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10594, CAST(N'2026-07-15T12:06:33.4516804' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10595, CAST(N'2026-07-15T13:16:55.9575691' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10596, CAST(N'2026-07-15T13:17:43.9954733' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10597, CAST(N'2026-07-15T13:17:47.5214240' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10598, CAST(N'2026-07-15T14:19:46.6221543' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10599, CAST(N'2026-07-15T14:20:30.0191492' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10600, CAST(N'2026-07-15T14:21:12.0061996' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10601, CAST(N'2026-07-15T14:21:12.4466243' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10602, CAST(N'2026-07-15T14:21:39.3216217' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10603, CAST(N'2026-07-15T14:24:01.2124012' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10604, CAST(N'2026-07-15T14:24:02.6737357' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10605, CAST(N'2026-07-15T14:24:04.2082607' AS DateTime2), N'لامپ 10وات نوا لایت نور قرمز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10606, CAST(N'2026-07-15T20:49:20.5102150' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10607, CAST(N'2026-07-16T09:00:52.9400190' AS DateTime2), N'تبدیل برق 3 به 2 مدیانور SH1059', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10608, CAST(N'2026-07-16T11:05:41.3432978' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10609, CAST(N'2026-07-16T12:26:08.0800672' AS DateTime2), N'ریسه بلوطی تک رنگ ثابت نور آفتابی، روز', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10610, CAST(N'2026-07-16T12:41:00.8986397' AS DateTime2), N'Home', NULL)
GO
INSERT [admindb].[Visit] ([Id], [Date], [NamePage], [IsTorob]) VALUES (10611, CAST(N'2026-07-16T18:31:03.1251258' AS DateTime2), N'Home', NULL)
GO
SET IDENTITY_INSERT [admindb].[Visit] OFF
GO
