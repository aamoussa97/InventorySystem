using System;
namespace InventorySystem.Models
{
    public class ProductsPriceInsert
    {
        public ProductsPriceInsert(long mProductPrice)
        {
            ProductPrice = mProductPrice;
        }

        public long ProductPrice { get; set; }
    }
}
