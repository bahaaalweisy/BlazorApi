using System.ComponentModel.DataAnnotations;

namespace Blazor.Core.Models.Account
{
    public class ForgotPasswordRequestModel
    {
        [Required]
        public string Email { get; set; } = null!;
    }
}
