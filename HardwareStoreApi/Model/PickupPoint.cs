using System;
using System.Collections.Generic;

namespace HardwareStoreApi.Model;

public partial class PickupPoint
{
    public int PickupPointId { get; set; }

    public int PickupPointIndex { get; set; }

    public string PickupPointCity { get; set; } = null!;

    public string PickupPointStreet { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; } = new List<Order>();
}
