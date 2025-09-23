using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using AppShop.Business.Entity;
using AppShop.Business.Service;

namespace AppShop.Business.Email
{
    public class EmailMessege
    {
        public static string ForgetMessage(int resetCode)
        {
            return $@"
<!DOCTYPE html>
<html lang='fa'>
<head>
  <meta charset='UTF-8'>
  <title>بازیابی رمز عبور</title>
</head>
<body style='font-family:Tahoma, Arial, sans-serif; background-color:#f9f9f9; margin:0; padding:0;'>
  <table align='center' width='100%' cellpadding='0' cellspacing='0' style='max-width:600px; background:#ffffff; border-radius:12px; overflow:hidden; box-shadow:0 4px 10px rgba(0,0,0,0.1);'>
    <tr>
      <td style='background-color:#FFD700; padding:20px; text-align:center; color:#000; font-size:20px; font-weight:bold;'>
        بازیابی رمز عبور
      </td>
    </tr>
    <tr>
      <td style='padding:30px; color:#333; font-size:15px; line-height:1.8; direction:rtl; text-align:right;'>
        <p>کاربر گرامی،</p>
        <p>درخواست بازیابی رمز عبور برای حساب شما ثبت شده است.</p>
        <p>لطفاً از کد زیر برای تکمیل فرآیند استفاده کنید:</p>
        <div style='text-align:center; margin:25px 0;'>
          <span style='display:inline-block; background:#FFD700; color:#000; font-size:22px; font-weight:bold; letter-spacing:4px; padding:15px 30px; border-radius:8px;'>
            {resetCode.ToString()}
          </span>
        </div>
        <p style='font-size:14px; color:#555;'>این کد تنها به مدت <b>۱۰ دقیقه</b> معتبر است.</p>
        <p style='font-size:13px; color:#888;'>اگر شما این درخواست را انجام نداده‌اید، لطفاً این پیام را نادیده بگیرید.</p>
      </td>
    </tr>
    <tr>
      <td style='background-color:#f1f1f1; padding:15px; text-align:center; font-size:12px; color:#777;'>
        با احترام، تیم پشتیبانی <b>[نام سایت شما]</b>
      </td>
    </tr>
  </table>
</body>
</html>
";
        }

        public static string OrderMessage(OrderBuy entity, User user, List<Product>products)
        {

            // ساخت جدول محصولات
            var productsTable = new StringBuilder();
            foreach (var p in entity.ItemBuys)
            {
                productsTable.Append($@"
                <tr>
                    <td style='padding:10px; border-bottom:1px solid #ddd;'>{products.FirstOrDefault(x=>x.Id==p.ProductId).Name}</td>
                    <td style='padding:10px; text-align:center; border-bottom:1px solid #ddd;'>{p.Count}</td>
                    <td style='padding:10px; text-align:left; border-bottom:1px solid #ddd;'>{p.Price.ToString("N0")}</td>
                </tr>
            ");
            }

            return $@"
<!DOCTYPE html>
<html lang='fa'>
<head>
  <meta charset='UTF-8'>
  <title>تأیید سفارش شما</title>
</head>
<body style='font-family:Tahoma, Arial, sans-serif; background-color:#f9f9f9; margin:0; padding:0;'>
  <table align='center' width='100%' cellpadding='0' cellspacing='0' style='max-width:700px; background:#ffffff; border-radius:12px; overflow:hidden; box-shadow:0 4px 12px rgba(0,0,0,0.1);'>
    <tr>
      <td style='background-color:#FFD700; padding:20px; text-align:center; color:#000; font-size:22px; font-weight:bold;'>
        🛒 تأیید سفارش شما
      </td>
    </tr>
    <tr>
      <td style='padding:30px; color:#333; font-size:15px; line-height:1.8; direction:rtl; text-align:right;'>
        <p>کاربر گرامی،</p>
        <p>{user.FullName}</p>
        <p>سفارش شما با موفقیت ثبت شد. جزئیات سفارش به شرح زیر است:</p>
      </td>
    </tr>
    <tr>
      <td style='padding:0 30px 30px 30px; direction:rtl;'>
        <table width='100%' cellpadding='0' cellspacing='0' style='border-collapse:collapse;'>
          <tr>
            <td style='padding:10px; border-bottom:1px solid #ddd; font-weight:bold;'>شماره سفارش:</td>
            <td style='padding:10px; border-bottom:1px solid #ddd;'>{entity.TrackingCode}</td>
          </tr>
          <tr>
            <td style='padding:10px; border-bottom:1px solid #ddd; font-weight:bold;'>تاریخ سفارش:</td>
            <td style='padding:10px; border-bottom:1px solid #ddd;'>{Utility.GetPersion(entity.DateOrder)}</td>
          </tr>
        <tr>
            <td style='padding:10px; border-bottom:1px solid #ddd; font-weight:bold;'>تاریخ تحویل:</td>
            <td style='padding:10px; border-bottom:1px solid #ddd;'>{Utility.GetPersion(entity.DateDelivery)}</td>
          </tr>
          <tr>
            <td style='padding:10px; border-bottom:1px solid #ddd; font-weight:bold;'>مبلغ کل:</td>
            <td style='padding:10px; border-bottom:1px solid #ddd;'>{entity.ItemBuys.Sum(x=>x.Price*x.Count).ToString("N0")} تومان</td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td style='padding:0 30px 30px 30px; direction:rtl;'>
        <p style='font-weight:bold; font-size:16px;'>🛍️ محصولات سفارش داده شده:</p>
        <table width='100%' cellpadding='0' cellspacing='0' style='border-collapse:collapse; font-size:14px;'>
          <tr style='background:#f1f1f1;'>
            <th style='padding:10px; text-align:right;'>محصول</th>
            <th style='padding:10px; text-align:center;'>تعداد</th>
            <th style='padding:10px; text-align:left;'>قیمت</th>
          </tr>
          {productsTable}
        </table>
      </td>
    </tr>
    <tr>
      <td style='background-color:#f1f1f1; padding:20px; text-align:center; font-size:13px; color:#777; direction:rtl;'>
        با احترام، تیم پشتیبانی <b>ElectroEj</b><br/>
        برای پیگیری سفارش خود می‌توانید به پنل کاربری مراجعه کنید.
      </td>
    </tr>
  </table>
</body>
</html>
";
        }

        public static string OrderMessage(long number)
        {

            return $@"
<!DOCTYPE html>
<html lang='fa'>
<head>
  <meta charset='UTF-8'>
  <title>ثبت سفارش</title>
</head>
<body style='font-family:Tahoma, Arial, sans-serif; background-color:#f9f9f9; margin:0; padding:0;'>
  <table align='center' width='100%' cellpadding='0' cellspacing='0' style='max-width:700px; background:#ffffff; border-radius:12px; overflow:hidden; box-shadow:0 4px 12px rgba(0,0,0,0.1);'>
    <tr>
      <td style='background-color:#FFD700; padding:20px; text-align:center; color:#000; font-size:22px; font-weight:bold;'>
        🛒 ثبت سفارش
      </td>
    </tr>
    <tr>
      <td style='padding:30px; color:#333; font-size:15px; line-height:1.8; direction:rtl; text-align:right;'>
        <p>سفارش  با شماره پیگیری زیر ثبت شد</p>
        <b>{number}</b>
      </td>
    </tr>
</table>
</body>
</html>
";
        }
    }
}