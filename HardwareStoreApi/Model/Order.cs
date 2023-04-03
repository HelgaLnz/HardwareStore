using System;
using System.Collections.Generic;

namespace HardwareStoreApi.Model;

public partial class Order
{
    public int OrderId { get; set; }

    public int OrderStatus { get; set; }

    public DateTime OrderDeliveryDate { get; set; }

    public DateTime OrderDate { get; set; }

    public int OrderPickupPoint { get; set; }

    public int? UserId { get; set; }

    public string OrderCode { get; set; } = null!;

    public virtual PickupPoint OrderPickupPointNavigation { get; set; } = null!;

    public virtual OrderStatus OrderStatusNavigation { get; set; } = null!;

    public virtual User? User { get; set; }

    public virtual ICollection<Product> ProductArticleNumbers { get; } = new List<Product>();
}
