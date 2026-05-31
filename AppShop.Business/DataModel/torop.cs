using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel;

public class ToropProduct
{
    public string page_unique { get; set; }
    public string page_url { get; set; }
    public string title { get; set; }
    public int current_price { get; set; }
    public bool availability { get; set; }
    public string category_name { get; set; }
    public List<string> image_links { get; set; } = new List<string>();
    public InfoToropProduct spec { get; set; }
    public string short_desc { get; set; }
    public string date_added { get; set; }
    public string date_updated { get; set; }
}
public class Torop
{
    public string api_version = "torob_api_v3";
    public int current_page = 1;
    public int total { get; set; }
    public int max_pages = 1;
    public List<ToropProduct> products { get; set; }

}
public class InfoToropProduct
{
    public string description { get; set; }
}