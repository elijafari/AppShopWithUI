using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MailKit.Net.Smtp;
using MimeKit;
using Microsoft.Extensions.Configuration;


namespace AppShop.Business.IService
{
    public interface IEmailService
    {
        public Task<bool> SendEmailAsync(string to, string subject, string body);
        public Task<bool> SendEmailAsync(List<string> to, string subject, string body);
    }

}
