using AppShop.Business.Entity;

namespace AppShop.Business.IService
{
    public interface IUserService
    {
        bool Add(User entity);
        User Login(User entity);
        bool AddAdmin();
    }
}