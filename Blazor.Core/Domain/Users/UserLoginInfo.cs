﻿using Blazor.Core.Domain.Common;

namespace Blazor.Core.Domain.Users
{
    public class UserLoginInfo : BaseEntity, ISoftDeleteEntity
    {
        public string DeviceName { get; set; } = null!;
        public string? Location { get; set; }
        public bool IsDeleted { get; set; }
        public Guid UserId { get; set; }

        //navigation
        public virtual  User User { get; set; }
    }
}
