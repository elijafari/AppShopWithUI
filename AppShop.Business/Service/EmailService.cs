using AppShop.Business.IService;
using MailKit.Net.Smtp;
using MailKit.Security;
using Microsoft.Extensions.Configuration;
using MimeKit;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;


namespace AppShop.Business.Service
{
    public class EmailService : IEmailService
    {
        private readonly IConfiguration _config;

        public EmailService(IConfiguration config)
        {
            _config = config;
        }
        public async Task<bool> SendEmailAsync(string to, string subject, string body)
        {
            var listTo = new List<string>();
            listTo.Add(to);
            return await SendEmailAsync(listTo, subject, body);
        }
        public async Task<bool> SendEmailAsync1(List<string> to, string subject, string body)
        {
            var SenderName = _config["SmtpSettings:SenderName"];
            var SenderEmail = _config["SmtpSettings:SenderEmail"];

            var Server = _config["SmtpSettings:Server"];
            var Port = int.Parse(_config["SmtpSettings:Port"]);
            var UseSSL = bool.Parse(_config["SmtpSettings:UseSSL"]);
            var message = new MimeMessage();
            message.From.Add(new MailboxAddress(SenderName, SenderEmail));

            foreach (var item in to)
            {
                message.To.Add(MailboxAddress.Parse(item));
            }
            message.Subject = subject;
            message.Body = new TextPart("html") { Text = body };

            var client = new MailKit.Net.Smtp.SmtpClient();

            try
            {
                await client.ConnectAsync(Server, Port, UseSSL);

                await client.AuthenticateAsync(
                    _config["SmtpSettings:Username"],
                    _config["SmtpSettings:Password"]
                );

                await client.SendAsync(message);
                await client.DisconnectAsync(true);
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.InnerException?.Message);
                return false;
            }

        }

        public bool SendEmail1(List<string> to, string subject, string body)
        {
            string fromMail = "info.electroej@gmail.com";
            string fromPassword = "vjbb dgct sahe qibw"; // رمز عبور برنامه (App Password)

            MailMessage message = new MailMessage();
            message.From = new MailAddress(fromMail);
            message.Subject = subject;
            foreach (var item in to)
            {
                message.To.Add(item);
            }
            message.Body = body;
            message.IsBodyHtml = true;

            var smtpClient = new System.Net.Mail.SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true,
            };
            bool tag = false;
            try
            {
                smtpClient.SendAsync(message, "");
                tag = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("خطا در ارسال ایمیل: " + ex.Message);
            }
            message.Dispose();
            smtpClient.Dispose();
            return true;
        }

        public async Task<bool> SendEmailAsync(List<string> to, string subject, string body)
        {

            string fromMail = "info.electroej@gmail.com";
            string fromPassword = "vjbb dgct sahe qibw"; // رمز عبور برنامه (App Password)

            var message = new MimeMessage();

            message.From.Add(new MailboxAddress("electorej.ir - الکتروایجی", fromMail));
            foreach (var item in to)
            {
                message.To.Add(MailboxAddress.Parse(item));
            }

            message.Subject = subject;

            message.Body = new TextPart("html")
            {
                Text = body
            };
            try
            {
                using (var client = new MailKit.Net.Smtp.SmtpClient())
                {
                    client.Connect("smtp.gmail.com", 587, SecureSocketOptions.StartTls);                
                    client.Authenticate(fromMail, fromPassword);

                    await client.SendAsync(message);
                    client.Disconnect(true);
                }
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("خطا در ارسال ایمیل: " + ex.Message);
                return false;
            }
        }
    }

}
