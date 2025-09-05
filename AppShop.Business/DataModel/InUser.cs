using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class InUser
    {
        public string UserName { get; set; }
        public string Password { get; set; }
    }
    public class InRecord
    {
        public string Id { get; set; }
    }
    public class InUserForget
    {
        public string UserName { get; set; }
    }
    public class InUserAnswer
    {
        public string UserName { get; set; }
        public string Answer { get; set; }
    }
    public class InUserNewPassword
    {
        public string UserName { get; set; }
        public string NewPassword { get; set; }
    }
}