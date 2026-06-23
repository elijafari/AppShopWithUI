using Microsoft.AspNetCore.Http;
using Org.BouncyCastle.Bcpg.Sig;

namespace AppShop.Business.DataModel
{
    public class InProduct
    {
        public int CategoryId { get; set; }
        public int Code { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }
        public string? Description { get; set; }
        public int Price { get; set; }
        public int Id { get; set; }
        public string OldFiles { get; set; }
        public List<IFormFile> Files { get; set; }
        public int IndexMain { get; set; }
        public List<string> ListOldFile { get; set; } = new List<string>();
        public string Feature { get; set; }
        public string? Description2 { get; set; }


    }
}
