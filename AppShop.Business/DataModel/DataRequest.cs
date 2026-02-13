using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public enum Sort
    {
        Asc=1,
        Desc=2,
    }
    public class DataRequest
    {
        public DataRequest(int pageNumber, int take,Sort? sort=null)
        {
            PageNumber = pageNumber;
            Take = take;
            Sort = sort;
        }

        public int PageNumber { get;  set; }
        public int Take { get;  set; }
        public Filter Filter { get; set; }
        public Sort? Sort { get; set; }


    }
}
