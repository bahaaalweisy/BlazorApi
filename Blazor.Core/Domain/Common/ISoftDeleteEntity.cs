namespace Blazor.Core.Domain.Common
{
    public interface ISoftDeleteEntity
    {
        public bool IsDeleted { get; set; }
    }
}
