using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Service
{
    public class UploadPathProvider
    {
        public string Path { get; }
        public UploadPathProvider(string path)
        {
            Path = path;
        }
    }

}
