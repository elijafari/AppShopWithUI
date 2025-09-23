using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business
{
    public static class ExtensionMethod
    {
        public static string ToCamelCose(this string str)
        {

            return str.Substring(0, 1).ToLower() + str.Substring(1);
        }

        public static string GetEnumDescription(this Enum enumValue)
        {
            var field = enumValue.GetType().GetField(enumValue.ToString());
            if (Attribute.GetCustomAttribute(field, typeof(DescriptionAttribute)) is DescriptionAttribute attribute)
            {
                return attribute.Description;
            }
            throw new ArgumentException("Item not found.", nameof(enumValue));
        }
        public static string Ecoding(this int num)
        {
            return num.ToString().Ecoding();
        }
        public static string Ecoding(this string str)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes("ejejej" + str + "586468");
            return System.Convert.ToBase64String(plainTextBytes);
        }
        public static string Decoding(this string str)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(str);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes).Replace("ejejej", "").Replace("586468", "");
        }
    }
}
