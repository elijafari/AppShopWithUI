using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class InContact
    {
        public string Name { get; set; }
        public string Message { get; set; }
        public string Email { get; set; }
    }
    public class InComment
    {
        public string Name { get; set; }
        public string Message { get; set; }
        public double Rate { get; set; }
        public int? ProductId { get; set; }
    }
}
