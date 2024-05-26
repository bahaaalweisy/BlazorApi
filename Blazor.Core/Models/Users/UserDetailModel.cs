﻿using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace Blazor.Core.Models.Users
{
    public class UserDetailModel
    {
        public Guid Id { get; set; }
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
        [Required]
        public Guid CityId { get; set; }
        [Required]
        public Guid UserTypeId { get; set; }
        [Required]
        public Guid SpecilitySectorId { get; set; }
        [Required]
        public Guid ExperienceLevelId { get; set; }

        [JsonIgnore]
        public List<string> Roles { get; set; }= new List<string>();

        public string? ProfileImage { get; set; }
        // public string UserReadableId { get; set; } = null!;
        public bool IsActive { get; set; }
    }
    
   
   
}