using System.Text.Json.Serialization;

namespace HardwareStoreApi.Model;

public partial class Category
{
    public int CategoryId { get; set; }

    public string CategoryValue { get; set; } = null!;

    [JsonIgnore]
    public virtual ICollection<Product> Products { get; } = new List<Product>();
}
