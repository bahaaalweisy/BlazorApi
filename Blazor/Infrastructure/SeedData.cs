using Microsoft.AspNetCore.Identity;

using Blazor.Core.Constants;
using Blazor.Core.Domain.Users;
using Blazor.Core.Models.Common;
using Blazor.Services.Interfaces;

namespace Blazor.Web.Api.Infrastructure
{
    public class SeedData
    {
        public static async Task Initialize(IServiceProvider serviceProvider)
        {
            UserManager<User> userManager = serviceProvider.GetRequiredService<UserManager<User>>();
            RoleManager<UserRole> roleManager = serviceProvider.GetRequiredService<RoleManager<UserRole>>();

            // Seed roles
            string[] roles = { "Administrator" };
            foreach (string roleName in roles)
            {
                bool roleExists = await roleManager.RoleExistsAsync(roleName);
                if (!roleExists)
                {
                    UserRole role = new UserRole { Name = roleName };
                    await roleManager.CreateAsync(role);
                }
            }

          
     
     

            var admin = await userManager.FindByEmailAsync("admin@yourstore.com");
            if (admin == null)
            {
                var user = new User
                {
                    CreatedOnUtc = DateTime.UtcNow,
                    IsActive = true,
                    IsDeleted = false,
                    Email = "admin@yourstore.com",
                    UserName = "admin@yourstore.com",
                    PhoneNumber = "966545545344",
                    FirstName = "Admin",
                    EmailConfirmed = true,
                    LastName = "Admin",
                    IdNumber = $"Admin_{DateTime.UtcNow.Year}",

                };
                await userManager.CreateAsync(user, DefaultConstants.DefaultPassword);
                await userManager.AddToRoleAsync(user, roles.FirstOrDefault());
            }
        }
    }
}
