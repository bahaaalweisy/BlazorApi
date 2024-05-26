using System.ComponentModel.DataAnnotations;

namespace Blazor.Core.Models.Account
{
    public class ForgotEmailRequestModel
    {
        [Required]
        public string PhoneNumber { get; set; } = null!;
        [Required]
        public string IdNumber { get; set; } = null!;
    }
}
