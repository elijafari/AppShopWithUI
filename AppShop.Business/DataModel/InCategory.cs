using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class InCategory
    {
        public string Name { get; set; }
    }
    public class InCategoryById:InCategory
    {
        public int Id { get; set; }
    }
}
