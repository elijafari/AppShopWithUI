using AppShop.Business.DataModel;
using AppShop.Business.Entity;

namespace AppShop.Business.IService
{
    public interface IUserService
    {
        string Add(User entity);
        string  Login(InUser entity);
        bool AddAdmin();
    }
}