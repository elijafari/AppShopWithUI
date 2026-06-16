using AppShop.Business.IService;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    [Authorize]
    public class VisitController : BaseController
    {

        private readonly IVisitService service;
        public VisitController(IVisitService _service, ILogService _logService) : base(_logService)
        {
            service = _service;
        }
        [Authorize(Roles = "Admin")]
        [HttpGet]
        public IActionResult GetAll()
        {
            return Response(service.GetAll);
        }
    }
}