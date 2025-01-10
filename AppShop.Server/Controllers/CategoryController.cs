﻿using AppShop.Business.Entity;
using AppShop.Business.IService;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class CategoryController : ControllerBase
    {

        private readonly ICategoryService service;
        private readonly ILogService logService;
        public CategoryController(ICategoryService _service,ILogService _logService)
        {
            service = _service;
            logService = _logService;
        }
        [HttpPost]
        public void Add()
        {
            service.Add(new Category()
            {
                Name = "صنعتی",
                Code = 1,
            });
            service.Add(new Category()
            {
                Name = "خانگی",
                Code = 2,
            });
            service.Add(new Category()
            {
                Name = "A",
                Code = 3,
            });
        }

        [HttpGet]
        public ActionResult GetAll()
        {
            try
            {
                return Ok(service.GetAll(false));
            }
            catch (Exception ex)
            {
                logService.Add(ex.Message, ex.StackTrace);
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }
        [HttpGet]
        public ActionResult GetAllForSearch()
        {
            try
            {
                return Ok(service.GetAll(true));
            }
            catch (Exception ex)
            {
                logService.Add(ex.Message, ex.StackTrace);
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }
    }
}