using System.Text.Json.Serialization;

namespace HardwareStoreApi.Model;

public partial class Product
{
    public string ProductArticleNumber { get; set; } = null!;

    public string ProductName { get; set; } = null!;

    public string ProductDescription { get; set; } = null!;

    [JsonIgnore]
    public int CategoryId { get; set; }

    public byte[]? ProductPhoto { get; set; }

    [JsonIgnore]
    public int ProductManufacturerId { get; set; }

    public decimal ProductCost { get; set; }

    public byte ProductDiscountAmount { get; set; }

    public byte ProductDiscountCurrent { get; set; }

    public int ProductQuantityInStock { get; set; }

    [JsonIgnore]
    public int ProductUnitId { get; set; }

    public virtual Category Category { get; set; } = null!;

    [JsonIgnore]
    public virtual ICollection<OrderHasProduct> OrderHasProducts { get; } = new List<OrderHasProduct>();

    public virtual Manufacturer ProductManufacturer { get; set; } = null!;

    public virtual Unit ProductUnit { get; set; } = null!;
}
