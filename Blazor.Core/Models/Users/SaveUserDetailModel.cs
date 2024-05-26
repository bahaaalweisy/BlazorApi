
using System.ComponentModel.DataAnnotations;

namespace Blazor.Core.Models.Users
{
    public class SaveUserDetailModel
    {
        [Required]
        public string FirstName { get; set; } = null!;
        [Required]
        public string LastName { get; set; } = null!;
        [Required]
        public string IdNumber { get; set; } = null!;
        [Required]
        public string PhoneNumber { get; set; } = null!;
        [Required]
        public string Email { get; set; } = null!;

        [Required(ErrorMessage = "City is required")]
        [ValidGuid]
        public string CityId { get; set; } = null!; 
        
        [Required(ErrorMessage = "City is required")]
        [ValidGuid]
        public string RegionId { get; set; } = null!;

        [Required(ErrorMessage = "User type is required")]
        [ValidGuid]
        public string UserTypeId { get; set; } = null!;

        [Required(ErrorMessage = "Specility sector is required")]
        [ValidGuid]
        public string SpecilitySectorId { get; set; } = null!;

        [Required(ErrorMessage = "Experience level is required")]
        [ValidGuid]
        public string ExperienceLevelId { get; set; } = null!;

        [Required]
        public bool IsActive { get; set; }

        [Required]
        public string Password { get; set; }    
     

    }
}
