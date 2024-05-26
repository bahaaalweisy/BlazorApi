using Blazor.Core.Domain.Activities;
using Blazor.Core.Domain.Common;
using Blazor.Core.Domain.Users;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Blazor.Infrastructure.Context
{
    public class BlazorDbDbContext : IdentityDbContext<User, UserRole, Guid>
    {
        public BlazorDbDbContext(DbContextOptions<BlazorDbDbContext> options)
       : base(options)
        {
        }
     
        public DbSet<Accessibility> Accessibilities { get; set; }
  
        public DbSet<UserRoleAccessibility> UserRoleAccessibilities { get; set; }
        public DbSet<UserLoginInfo> UserLoginInfos { get; set; }
        public DbSet<UserOTP> UserOTP { get; set; }

        public DbSet<Contact> contacts { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<UserRole>(entity =>
            {
                entity.HasIndex(e => e.Name).IsUnique(false);
            });

        }
    }
}
