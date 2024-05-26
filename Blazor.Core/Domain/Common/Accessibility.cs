using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blazor.Core.Domain.Common
{
    public class Accessibility : BaseEntity, ISoftDeleteEntity
    {
        public string Name { get; set; } = null!;
        public string Code { get; set; } = null!;
        public bool IsDeleted { get; set; }
    }
}
