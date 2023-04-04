using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace HardwareStoreApi.Model;

public partial class Unit
{
    public int UnitId { get; set; }

    public string UnitValue { get; set; } = null!;

    [JsonIgnore]
    public virtual ICollection<Product> Products { get; } = new List<Product>();
}
