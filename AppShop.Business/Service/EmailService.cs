using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MailKit.Net.Smtp;
using MimeKit;
using Microsoft.Extensions.Configuration;
using AppShop.Business.IService;


namespace AppShop.Business.Service
{
    public class EmailService:IEmailService
    {
        private readonly IConfiguration _config;

        public EmailService(IConfiguration config)
        {
            _config = config;
        }

        public async Task<bool> SendEmailAsync(string to, string subject, string body)
        {
            var SenderName = _config["SmtpSettings:SenderName"];
            var SenderEmail = _config["SmtpSettings:SenderEmail"];

             var Server   = _config["SmtpSettings:Server"];
              var Port  = int.Parse(_config["SmtpSettings:Port"]);
          var UseSSL = bool.Parse(_config["SmtpSettings:UseSSL"]);
            var message = new MimeMessage();
            message.From.Add(new MailboxAddress(SenderName,SenderEmail));

            message.To.Add(MailboxAddress.Parse(to));
            message.Subject = subject;
            message.Body = new TextPart("html") { Text = body };

            using var client = new SmtpClient();
            await client.ConnectAsync(Server, Port, UseSSL);

            await client.AuthenticateAsync(
                _config["SmtpSettings:Username"],
                _config["SmtpSettings:Password"]
            );

            await client.SendAsync(message);
            await client.DisconnectAsync(true);
            return true;
        }
    }

}
