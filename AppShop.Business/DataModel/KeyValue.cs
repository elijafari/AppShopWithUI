using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class KeyValue
    {
        public KeyValue(object _key,string _title) {
         Key = _key;
            Title = _title;
        
        }
        public object Key { get; set; }
       public string Title { get; set; }
    }
}
