using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.IService
{
    public interface ISmsService
    {
        Task<bool> SendAsync(Guid userId, SmsType smsType);
        Task<bool> SendPatternAsync(Guid userId, long trackingCode, SmsType smsType);
        Task<bool> SendPatternMeAsync(long trackingCode);
    }
}
