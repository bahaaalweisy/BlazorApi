using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Blazor.Core.Models.Common;
using Blazor.Core.Models.Contact;
using Blazor.Core.Models.Pagination;
using System.Threading.Tasks;

namespace Blazor.Services.Interfaces
{
    public interface IContactService
    {
        Task<ContactAddModel> CreateAsync(ContactAddModel contactAddModel);
        Task<GetAllContactModel> GetByIdAsync(Guid id);
        Task<ContactUpdateModal> UpdateAsync(ContactUpdateModal contactUpdateModal);
        Task<bool> DeleteAsync(Guid id);
        Task<PagedList<GetAllContactModel>> GetPaginatedListAsync(PagedRequestListModel pagedRequest);
    }
}
