using System.ComponentModel.DataAnnotations;

namespace Blazor.Core.Models.Account
{
    public class VerifyOTPModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string Otp { get; set; }
    }
}
