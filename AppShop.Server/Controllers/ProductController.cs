using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Service;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.AspNetCore.Mvc;
using Org.BouncyCastle.X509;
using System.Net;
using System.Security.Claims;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class ProductController : BaseController
    {

        private readonly IProductService service;
        public ProductController(IProductService _service, ILogService _logService) : base(_logService)
        {
            service = _service;

        }
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult Add()
        {
            return Response(() =>
            {
                var input = ConvertToDto();
                return service.Add(input);
            });
        }
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult Update()
        {
            return Response(() =>
            {
                var input = ConvertToDto();
                return service.Update(input);
            });
        }
        private InProduct ConvertToDto()
        {

            InProduct input = new InProduct();

            var form = Request.Form;
            input.Id = int.Parse(form[nameof(input.Id).ToCamelCose()]);
            input.Code = int.Parse(form[nameof(input.Code).ToCamelCose()]);
            input.IndexMain = int.Parse(form[nameof(input.IndexMain).ToCamelCose()]);
            input.Name = form[nameof(input.Name).ToCamelCose()];
            input.Price = int.Parse(form[nameof(input.Price).ToCamelCose()]);
            input.Description = form[nameof(input.Description).ToCamelCose()];
            input.Description2 = form[nameof(input.Description2).ToCamelCose()];
            input.Feature = form[nameof(input.Feature).ToCamelCose()];
            input.CategoryId = int.Parse(form[nameof(input.CategoryId).ToCamelCose()]);
            input.IsActive = bool.Parse(form[nameof(input.IsActive).ToCamelCose()]);
            input.OldFiles = form[nameof(input.OldFiles).ToCamelCose()];
            if (!string.IsNullOrEmpty(input.OldFiles))
            {
                foreach (var old in input.OldFiles.Split(","))
                {
                    var index =old.IndexOf("upload") - 1;
                    if (index > 0)
                        input.ListOldFile.Add( old.Substring(index));
                }
            }
            if (Request.Form.Files.Any())
                input.Files = Request.Form.Files.ToList();
            return input;
        }


        [HttpPost]
        public IActionResult GetAll(InputRequest inputRequest)
        {
            return Response(() =>
            {
                var param = new DataRequest(inputRequest.PageNumber, 100,inputRequest.Sort);
                param.Filter = inputRequest.Filter;
                var isAdmin = User.FindFirstValue(ClaimTypes.Role) == "Admin" ? true : false;
                return service.GetAll(param,isAdmin);
            });
        }
        [HttpPost]
        [Authorize(Roles = "Admin")]

        public IActionResult GetAllAdmin(InputRequestProduct inputRequest)
        {
            return Response(() =>
            {
                var param = new DataRequest(inputRequest.PageNumber, 1000);
                return service.GetAll(param,true);
            });
        }
        [HttpPost]
        public IActionResult GetById(InRecord input) => Response(() => service.GetById(int.Parse(input.Id)));
        [HttpPost]
        public IActionResult GetBySlug(InSlug input) => Response(() => service.GetBySlug(input.Slug,User.FindFirstValue(ClaimTypes.Role) == "Admin" ? true : false));
        [HttpGet]
        [Authorize(Roles = "Admin")]
        public IActionResult DeleteAll() => Response(() => service.DeleteAll());
        [HttpGet]
        public IActionResult ConvertSlug() => Response(() => service.ConvertSlug());
        [HttpGet]
        public IActionResult GetJson() => Response(() => service.GetJson());

    }
}