using AutoMapper;
using Blazor.Core.Domain.Activities;
using Blazor.Core.Domain.Common;
using Blazor.Core.Domain.Users;
using Blazor.Core.Models.Account;
using Blazor.Core.Models.Common;
using Blazor.Core.Models.Contact;
using System.ComponentModel;


namespace BlazorApis.Infrastructure
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {

            CreateMap<ContactUpdateModal, Contact>().ReverseMap();
            CreateMap<ContactAddModel, Contact>().ReverseMap();
            CreateMap<GetAllContactModel, Contact>().ReverseMap();



        }
    }
}