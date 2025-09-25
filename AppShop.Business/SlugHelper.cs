using System.Text;
using System.Globalization;
using System.Text.RegularExpressions;

namespace AppShop.Business
{

    public static class SlugHelper
    {
        private static readonly Dictionary<char, string> PersianMap = new()
    {
        { 'ا', "a" }, { 'ب', "b" }, { 'پ', "p" }, { 'ت', "t" },
        { 'ث', "s" }, { 'ج', "j" }, { 'چ', "ch" }, { 'ح', "h" },
        { 'خ', "kh" }, { 'د', "d" }, { 'ذ', "z" }, { 'ر', "r" },
        { 'ز', "z" }, { 'ژ', "zh" }, { 'س', "s" }, { 'ش', "sh" },
        { 'ص', "s" }, { 'ض', "z" }, { 'ط', "t" }, { 'ظ', "z" },
        { 'ع', "a" }, { 'غ', "gh" }, { 'ف', "f" }, { 'ق', "gh" },
        { 'ک', "k" }, { 'ك', "k" }, { 'گ', "g" }, { 'ل', "l" },
        { 'م', "m" }, { 'ن', "n" }, { 'و', "v" }, { 'ه', "h" },
        { 'ی', "y" }, { 'ي', "y" }
    };

        public static string GenerateSlug(string phrase)
        {
            if (string.IsNullOrWhiteSpace(phrase))
                return string.Empty;

            // به حروف کوچک تبدیل کن
            string str = phrase.ToLowerInvariant();

            // تبدیل حروف فارسی به انگلیسی
            var sb = new StringBuilder();
            foreach (char c in str)
            {
                if (PersianMap.ContainsKey(c))
                    sb.Append(PersianMap[c]);
                else
                    sb.Append(c);
            }
            str = sb.ToString();

            // حذف اعراب و حروف ترکیبی
            str = RemoveDiacritics(str);

            // حذف کاراکترهای غیرمجاز (فقط حروف، اعداد و فاصله/خط تیره مجازن)
            str = Regex.Replace(str, @"[^a-z0-9\s-]", "");

            // جایگزینی فاصله‌ها با خط تیره
            str = Regex.Replace(str, @"\s+", "-").Trim('-');

            // کوتاه‌سازی در صورت خیلی بلند بودن
            str = str.Length <= 80 ? str : str.Substring(0, 80);

            return str;
        }

        private static string RemoveDiacritics(string text)
        {
            var normalizedString = text.Normalize(NormalizationForm.FormD);
            var stringBuilder = new StringBuilder();

            foreach (var c in normalizedString)
            {
                var unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                    stringBuilder.Append(c);
            }

            return stringBuilder.ToString().Normalize(NormalizationForm.FormC);
        }
    }

}
