using Microsoft.AspNetCore.Identity;

using Blazor.Core.Domain.Common;

namespace Blazor.Core.Domain.Users;
public class User : IdentityUser<Guid>, ISoftDeleteEntity
{
    public string FirstName { get; set; } = null!;
    public string LastName { get; set; } = null!;
    public string IdNumber { get; set; } = null!;
    public string? ProfileImage { get; set; }
    public DateTime CreatedOnUtc { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedOnUtc { get; set; } = DateTime.UtcNow;
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }

    public string? CurrentLocation { get; set; }
    public string? PreferdLangugae { get; set; }
    public bool? AllowNotification { get; set; }
   
    public string? DeviceID { get; set; }

 

}