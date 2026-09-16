using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Service;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Globalization;
using System.Net;
using System.Text.Json;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class TalaController : BaseController
    {
        private readonly ITalaService _talaService;

        public TalaController(ITalaService talaService, ILogService _logService) : base(_logService)
        {
            _talaService = talaService;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            return Ok(await _talaService.GetData());
        }

    }
}