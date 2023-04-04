using System.Text.Json.Serialization;
using System;
using System.Collections.Generic;

namespace HardwareStoreApi.Model;

public partial class Manufacturer
{
    public int ManufacturerId { get; set; }

    public string ManufacturerName { get; set; } = null!;

    [JsonIgnore]
    public virtual ICollection<Product> Products { get; } = new List<Product>();
}
