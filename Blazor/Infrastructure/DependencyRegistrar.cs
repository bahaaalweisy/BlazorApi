using Microsoft.AspNetCore.Identity;

using Blazor.Core;
using Blazor.Core.Domain.Users;
using Blazor.Infrastructure.Context;
using Blazor.Services.Interfaces;
using Blazor.Services.Contacts;

namespace Blazor.Web.Api.Infrastructure
{
    public static class DependencyRegistrar
    {
        public static void RegisterDependencies(this IServiceCollection services)
        {
            services.AddAutoMapper(typeof(Program));

            services.AddIdentity<User, UserRole>(options => options.SignIn.RequireConfirmedAccount = true)
                .AddEntityFrameworkStores<BlazorDbDbContext>()
                .AddDefaultTokenProviders();

            services.AddScoped(typeof(IRepository<>), typeof(Repository<>));

            services.AddScoped<IContactService, ContactService>();


        }
    }
}
