using AppShop.Business;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AppShop.Business.Service;
using AutoMapper;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System.IdentityModel.Tokens.Jwt;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// 👉 تنظیمات EF Core برای SQL Server
builder.Services.AddDbContext<AppShopDBContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("Connection")));

// 👉 AutoMapper
var mapperConfig = new MapperConfiguration(mc =>
{
    mc.AddProfile(new MappingProfile());
});
IMapper mapper = mapperConfig.CreateMapper();
builder.Services.AddSingleton(mapper);

// 👉 Controller ها
builder.Services.AddControllers();

// 👉 Swagger + JWT
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new OpenApiInfo { Title = "فروشگاه لوازم الکتریکی", Version = "v1" });

    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Description = "توکن JWT را وارد کنید. مثال: Bearer {your token}",
        Name = "Authorization",
        In = ParameterLocation.Header,
        Type = SecuritySchemeType.ApiKey,
        Scheme = "Bearer"
    });

    c.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference { Type = ReferenceType.SecurityScheme, Id = "Bearer" }
            },
            new string[] {}
        }
    });
});

// 👉 JWT Authentication
var jwtKey = builder.Configuration["Jwt:Key"];
var jwtIssuer = builder.Configuration["Jwt:Issuer"];

JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(options =>
{
    options.RequireHttpsMetadata = false; // فقط برای لوکال
    options.SaveToken = true;
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = true,
        ValidateIssuerSigningKey = true,
        ValidIssuer = jwtIssuer,
        ValidAudience = jwtIssuer,
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtKey)),
        RoleClaimType = "http://schemas.microsoft.com/ws/2008/06/identity/claims/role",
    };
});

builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("AdminOnly", policy => policy.RequireRole("Admin"));
});

// 👉 CORS
var urlFront = builder.Configuration["AppSettings:UrlFront"];
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowFrontend", policy =>
        policy.WithOrigins(urlFront)
              .AllowAnyHeader()
              .AllowAnyMethod()
              .AllowCredentials());
});

// 👉 DI
builder.Services.AddScoped<TokenService>();
builder.Services.AddScoped<ICategoryService, CategoryService>();
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddScoped<IProductService, ProductService>();
builder.Services.AddScoped<IOrderBuyService, OrderBuyService>();
builder.Services.AddScoped<ILogService, LogService>();
builder.Services.AddScoped<ICityService, CityService>();
builder.Services.AddScoped<IAddressService, AddressService>();
builder.Services.AddScoped<IEmailService, EmailService>();


// مسیر wwwroot درست بعد از Build قابل دسترسی است
var uploadFolder = Path.Combine(builder.Environment.WebRootPath, "uploads", "products");

if (!Directory.Exists(uploadFolder))
{
    Directory.CreateDirectory(uploadFolder);
}
builder.Services.AddSingleton(new UploadPathProvider(uploadFolder));
var app = builder.Build();
// ================== Middleware ==================

app.UseHttpsRedirection();
app.UseCors("AllowFrontend");

app.UseAuthentication();
app.UseAuthorization();

// 👉 فایل‌های استاتیک (wwwroot)
app.UseStaticFiles(new StaticFileOptions
{
    OnPrepareResponse = ctx =>
    {
        var path = ctx.File.PhysicalPath;

        if (path != null && path.EndsWith("index.html"))
        {
            // برای SPA: کش غیرفعال
            ctx.Context.Response.Headers["Cache-Control"] = "no-cache, no-store, must-revalidate";
            ctx.Context.Response.Headers["Pragma"] = "no-cache";
            ctx.Context.Response.Headers["Expires"] = "0";
        }
        else
        {
            // برای js, css, images: کش طولانی
            ctx.Context.Response.Headers["Cache-Control"] = "public,max-age=31536000,immutable";
        }
    }
});

// 👉 Swagger
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "فروشگاه v1");
        c.DocumentTitle = "مستندات فروشگاه";
    });
}
else
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "فروشگاه v1");
        c.DocumentTitle = "مستندات فروشگاه";
    });

    app.UseExceptionHandler("/Error");
    app.UseHsts();
}

// 👉 API Controllers
app.MapControllers();

// 👉 SPA React (fallback)
app.MapFallbackToFile("/index.html");

app.Run();
