using System;
using System.Collections.Generic;

namespace HardwareStoreApi.Model;

public partial class OrderStatus
{
    public int OrderStatusId { get; set; }

    public string OrderStatusValue { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; } = new List<Order>();
}
