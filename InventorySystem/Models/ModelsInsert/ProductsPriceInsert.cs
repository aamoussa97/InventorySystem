using System;
namespace InventorySystem.Models
{
    public struct ProductsPriceInsert
    {
        public ProductsPriceInsert(long mProductPrice)
        {
            ProductPrice = mProductPrice;
        }

        public long ProductPrice { get; set; }
    }
}
