using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Service;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Security.Claims;
using System.Text.Json;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class AddDataController : BaseController
    {

        private readonly IProductService productService;
        private readonly IUserService userService;
        private readonly ICategoryService categoryService;
        private readonly ICityService  cityService;
        public AddDataController(IProductService _productService,IUserService _userService,ICategoryService _categoryService ,ICityService _cityService, ILogService _logService):base(_logService)
        {
           productService = _productService;
            userService = _userService;
            categoryService = _categoryService;                                     
            cityService = _cityService;
        }

        [HttpGet]
        public IActionResult AddCategory() => Response(() => categoryService.AddRange());
        [HttpGet]
        public IActionResult AddAdmin() => Response(() => userService.AddAdmin());

        [HttpGet]
        public IActionResult AddProduct() => Response(() => productService.AddAll());

        [HttpGet]
        public IActionResult AddImage() => Response(() => productService.AddImage());
        [HttpGet]
        public IActionResult UpdatePath() => Response(() => productService.UpdatePath());

        [HttpGet]
        public ActionResult AddCity()
        {
            string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Data", "Cities.json");

            string json = System.IO.File.ReadAllText(filePath);

            var cities = JsonSerializer.Deserialize<List<InCity>>(json);
            return Ok(cityService.Add(cities));
        }

    }
}