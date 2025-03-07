﻿using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace AppShop.Server.Controllers
{
    [Route("api/securewebsite")]
    [ApiController]
    public class SecureWebsiteController: ControllerBase
    {
        private readonly SignInManager<User> signInManager = null;
        private readonly UserManager<User> userManager = null;
        public SecureWebsiteController(SignInManager<User> sm, UserManager<User> um)
        {
           signInManager = sm;
            userManager = um;
        }

        [HttpPost("register")]
        public async Task<ActionResult> RegisterUser(Login user)
        {

            IdentityResult result = new();

            try
            {
                User user_ = new User()
                {
                    Name = user.Name,
                    Email = user.Email,
                    UserName = user.UserName,
                };

                result = await userManager.CreateAsync(user_, user.Password);

                if (!result.Succeeded)
                {
                    return BadRequest(result);
                }
            }
            catch (Exception ex)
            {
                return BadRequest("Something went wrong, please try again. " + ex.Message);
            }

            return Ok(new { message = "Registered Successfully.", result = result });
        }
        [HttpPost("registerElahe")]
        public async Task<ActionResult> RegisterElaheUser()
        {

            IdentityResult result = new();

            try
            {
                User user_ = new User()
                {
                    Name = "elahe jafari",
                    Email = "pone.5053@gmail.com",
                    UserName ="elahe",
                };

                result = await userManager.CreateAsync(user_, "a23");

                if (!result.Succeeded)
                {
                    return BadRequest(result);
                }
            }
            catch (Exception ex)
            {
                return BadRequest("Something went wrong, please try again. " + ex.Message);
            }

            return Ok(new { message = "Registered Successfully.", result = result });
        }
        [HttpPost("login")]
        public async Task<ActionResult> LoginUser(Login login)
        {

            try
            {
                User user_ = await userManager.FindByNameAsync(login.UserName);
                if (user_ != null)
                {
                    login.UserName = user_.UserName;

                    if (!user_.EmailConfirmed)
                    {
                        user_.EmailConfirmed = true;
                    }

                    var result = await signInManager.PasswordSignInAsync(user_, login.Password,false, false);

                    if (!result.Succeeded)
                    {
                        return Unauthorized(new { message = "Check your login credentials and try again" });
                    }

                    user_.LastLogin = DateTime.Now;
                    var updateResult = await userManager.UpdateAsync(user_);
                }
                else
                {
                    return BadRequest(new { message = "Please check your credentials and try again. " });
                }
            }
            catch (Exception ex)
            {
                return BadRequest(new { message = "Something went wrong, please try again. " + ex.Message });
            }

            return Ok(new { message = "Login Successful." });
        }

        [HttpGet("loginElahe")]
        public async Task<ActionResult> LoginUserElahe()
        {

            try
            {
                var login = new Login();
                login.UserName = "elahe";
                login.Password = "Jafari@1364";
                User user_ = await userManager.FindByNameAsync(login.UserName);
                if (user_ != null)
                {
                    login.UserName = user_.UserName;

                    if (!user_.EmailConfirmed)
                    {
                        user_.EmailConfirmed = true;
                    }

                    var result = await signInManager.PasswordSignInAsync(user_, login.Password, false, false);

                    if (!result.Succeeded)
                    {
                        return Unauthorized(new { message = "Check your login credentials and try again" });
                    }

                    user_.LastLogin = DateTime.Now;
                    var updateResult = await userManager.UpdateAsync(user_);
                }
                else
                {
                    return BadRequest(new { message = "Please check your credentials and try again. " });
                }
            }
            catch (Exception ex)
            {
                return BadRequest(new { message = "Something went wrong, please try again. " + ex.Message });
            }

            return Ok(new { message = "Login Successful." });
        }
        [HttpGet("logout"), Authorize]
        public async Task<ActionResult> LogoutUser()
        {

            try
            {
                await signInManager.SignOutAsync();
            }
            catch (Exception ex)
            {
                return BadRequest(new { message = "Someting went wrong, please try again. " + ex.Message });
            }

            return Ok(new { message = "You are free to go!" });
        }

        [HttpGet("admin"), Authorize]
        public ActionResult AdminPage()
        {
            string[] partners = { "Raja", "Bill Gates", "Elon Musk", "Taylor Swift", "Jeff Bezoss",
                                        "Mark Zuckerberg", "Joe Biden", "Putin"};

            return Ok(new { trustedPartners = partners });
        }
        [HttpGet("admin1")]
        public ActionResult AdminPage1()
        {
            string[] partners = { "Raja", "Bill Gates", "Elon Musk", "Taylor Swift", "Jeff Bezoss",
                                        "Mark Zuckerberg", "Joe Biden", "Putin"};

            return Ok(new { trustedPartners = partners });
        }

        [HttpGet("home/{email}"), Authorize]
        public async Task<ActionResult> HomePage(string email)
        {
            User userInfo = await userManager.FindByEmailAsync(email);
            if (userInfo == null)
            {
                return BadRequest(new { message = "Something went wrong, please try again." });
            }

            return Ok(new { userInfo = userInfo });
        }

        [HttpGet("xhtlekd")]
        public async Task<ActionResult> CheckUser()
        {
            User currentuser = new();

            try
            {
                var user_ = HttpContext.User;
                var principals = new ClaimsPrincipal(user_);
                var result = signInManager.IsSignedIn(principals);
                if (result)
                {
                    currentuser = await signInManager.UserManager.GetUserAsync(principals);
                }
                else
                {
                    return Forbid();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(new { message = "Something went wrong please try again. " + ex.Message });
            }

            return Ok(new { message = "Logged in", user = currentuser });
        }

    }
}
