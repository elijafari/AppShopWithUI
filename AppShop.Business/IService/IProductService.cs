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
        bool DeleteAll();
        bool ConvertImage();
    }
}