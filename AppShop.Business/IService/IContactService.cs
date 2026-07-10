using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.IService
{
    public interface IContactService
    {
        bool Add(InContact input);
        bool AddComment(InComment input);
        List<Contact> GetContacts();
        List<ContactVM> GetComments();

    }
}
