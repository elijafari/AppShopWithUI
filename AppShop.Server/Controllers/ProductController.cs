using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Service;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class ProductController : BaseController
    {

        private readonly IProductService service;
        public ProductController(IProductService _service, ILogService _logService) :base(_logService)
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
            input.Name = form[nameof(input.Name).ToCamelCose()];
            input.Price = int.Parse(form[nameof(input.Price).ToCamelCose()]);
            input.Description = form[nameof(input.Description).ToCamelCose()];
            input.CategoryId = int.Parse(form[nameof(input.CategoryId).ToCamelCose()]);
            input.IsActive = bool.Parse(form[nameof(input.IsActive).ToCamelCose()]);

            if (Request.Form.Files.Any())
            {
               input.File = Request.Form.Files[0];

             

            }
            return input;
        }


        [HttpPost]
        public IActionResult GetAll(InputRequest inputRequest)
        {
            return Response(() =>
            {
                var param = new DataRequest(inputRequest.PageNumber, 20);
                param.Filter = inputRequest.Filter;
                return service.GetAll(param);
            }); 
        }
        [HttpPost]
        [Authorize(Roles = "Admin")]

        public IActionResult GetAllAdmin(InputRequestProduct inputRequest)
        {
            return Response(() =>
            {
                var param = new DataRequest(inputRequest.PageNumber, 100);
                return service.GetAll(param);
            });
        }
        [HttpPost]
        public IActionResult GetById(InRecord input) => Response(() => service.GetById(int.Parse(input.Id)));
        [HttpGet]
        [Authorize(Roles = "Admin")]
        public IActionResult DeleteAll() => Response(() => service.DeleteAll());
      //  [HttpGet]
    //    public IActionResult ConvertImage() => Response(() => service.ConvertImage());
    }
}