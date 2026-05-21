using AppShop.Business.DataModel;
using AppShop.Business.IService;
using Microsoft.AspNetCore.Mvc;
using MimeKit;
using System.Text.Json;

//curl--header "Content-Type: application/json" \
//     --header "Accept: application/json" \
//     --header "X-Torob-Token: [JWT]" \
//     --header "C-Torob-Token-Version: 1" \
//     --request POST \
//     --data '{"page": 2, "sort": "date_added_desc"}' \
    // 'https://example.com/torob_api/v3/products'
[ApiController]
[Route("torob_api/v3/products")]
public class ToropController : ControllerBase
{
    private readonly IProductService service;
    public ToropController(IProductService _service)
    {
        service = _service;
    }

    [HttpPost]
    public IActionResult Get([FromBody] JsonElement body)
    {
        InTorop input = null;

        if (body.ValueKind == JsonValueKind.Undefined || body.ValueKind == JsonValueKind.Null)
            return BadRequest(new { error = "INVALID_REQUEST", message = "Empty body" });

        if (body.TryGetProperty("page_urls", out var pageUrlsEl))
        {
            var pageUrls = pageUrlsEl.Deserialize<List<string>>();

            if (pageUrls == null || pageUrls.Count == 0)
                return BadRequest(new { error = "INVALID_REQUEST", message = "page_urls must have at least one item" });

            input = new InTorop()
            {
                page_urls = pageUrls
            };
        }
      else  if (body.TryGetProperty("page_uniques", out var pageUniquesEl))
        {
            var pageUniques = pageUniquesEl.Deserialize<List<string>>();

            if (pageUniques == null || pageUniques.Count == 0)
                return BadRequest(new { error = "INVALID_REQUEST", message = "page_uniques must have at least one item" });

             input = new InTorop
            {
                page_uniques = pageUniques,
            };
        }

        // 3) Case: page + sort
        // (اگر sort یا page نباشد باید 400 برگردانید طبق توضیح ترب)
        if (body.TryGetProperty("page", out var pageEl) || body.TryGetProperty("sort", out var sortEl))
        {
            if (!body.TryGetProperty("page", out pageEl))
                return BadRequest(new { error = "INVALID_REQUEST", message = "Parameter 'page' is required" });

            if (!body.TryGetProperty("sort", out sortEl))
                return BadRequest(new { error = "INVALID_REQUEST", message = "Parameter 'sort' is required" });

            int page = pageEl.GetInt32();
            string sort = sortEl.GetString()!; // اگر null شود بهتر است 400 بدهید

             input = new InTorop
            {
                page = page,
                sort = sort,
            };
        }
        if(input==null)
            return BadRequest(new { error = "INVALID_REQUEST", message = "Expected one of: page_urls OR page_uniques OR (page + sort)" });

        var result = service.GetForTorop(input);
        if (result is not null && result.ToString()!.Contains("error"))
            return BadRequest(result);

        return Content(result, "application/json; charset=utf-8");
    }
}
