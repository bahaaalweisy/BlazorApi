using Microsoft.AspNetCore.Identity;

using Blazor.Core.Domain.Common;

namespace Blazor.Core.Domain.Users;

public partial class UserRole : IdentityRole<Guid>, ISoftDeleteEntity
{
    public bool IsDeleted { get; set; }
}


