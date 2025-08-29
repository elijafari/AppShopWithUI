
using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.IService;
using AppShop.Business.Service;
using Microsoft.AspNetCore.Mvc;
using System.Net;
namespace AppShop.Server.Helper
{
    [ApiController]
    public abstract class BaseController : ControllerBase
    {
        private readonly ILogService logService;
        public BaseController(ILogService _logService)
        {
            logService = _logService;
        }

        protected IActionResult Response(Func<object> func)
        {
            try
            {
                var result = func();

                if (result == null)
                {
                    return NotFound(new ApiResponse
                    {
                        Success = false,
                        Message = "موردی یافت نشد"
                    });
                }

                return Ok(new ApiResponse
                {
                    Success = true,
                    Message = "عملیات با موفقیت انجام شد",
                    Data = result
                });
            }
            catch (KeyNotFoundException ex) // خطای پیدا نشدن
            {
                return NotFound(new ApiResponse
                {
                    Success = false,
                    Message = "اطلاعات مورد نیاز یافت نشد"
                });
            }
            catch (UnauthorizedAccessException ex) // خطای دسترسی
            {
                return StatusCode((int)HttpStatusCode.Forbidden, new ApiResponse
                {
                    Success = false,
                    Message = "شما دسترسی لازم زا ندارید"
                });
            }
            catch (PersianException ex) //پیام ها
            {
                return StatusCode((int)HttpStatusCode.Conflict, new ApiResponse
                {
                    Success = false,
                    Message = ex.Message
                });
            }
            catch (Exception ex) // سایر خطاها
            {

                logService.Add(ex.Message);
                return StatusCode((int)HttpStatusCode.InternalServerError, new ApiResponse
                {
                    Success = false,
                    Message = ex.Message
                });
            }
        }

        protected async Task<IActionResult> ResponseAsync(Func<Task<object>> func)
        {
            try
            {
                var result = await func();

                if (result == null)
                {
                    return NotFound(new ApiResponse
                    {
                        Success = false,
                        Message = "موردی یافت نشد"
                    });
                }

                return Ok(new ApiResponse
                {
                    Success = true,
                    Message = "عملیات با موفقیت انجام شد",
                    Data = result
                });
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(new ApiResponse
                {
                    Success = false,
                    Message = ex.Message
                });
            }
            catch (UnauthorizedAccessException ex)
            {
                return StatusCode((int)HttpStatusCode.Forbidden, new ApiResponse
                {
                    Success = false,
                    Message = ex.Message
                });
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, new ApiResponse
                {
                    Success = false,
                    Message = ex.Message
                });
            }
        }
    }

}
