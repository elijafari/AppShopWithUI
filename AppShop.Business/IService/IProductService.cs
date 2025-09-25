using AppShop.Business.DataModel;
using AppShop.Business.Entity;

namespace AppShop.Business.IService
{
    public interface IProductService
    {
        bool Add(InProduct input );
        bool Update(InProduct entity);
        DataView GetAll(DataRequest param);
        Product GetById(int id);
        Product GetBySlug(string slug);
        bool DeleteAll();
        //     bool ConvertImage();
        List<Product> GetAll();
        bool ConvertSlug();
    }
}