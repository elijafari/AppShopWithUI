using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business
{
    public class PersianException : Exception
    {
        public PersianException() { }

        public PersianException(string message)
            : base(message) { }

        public PersianException(string message, Exception inner)
            : base(message, inner) { }
    }

}
