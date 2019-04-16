using System;
namespace InventorySystem.Models
{
    public class ProductsPriceInsert
    {
        private long mProductPrice;

        public ProductsPriceInsert(long mProductPrice)
        {
            this.mProductPrice = mProductPrice;
        }

        public long ProductPrice { get => mProductPrice; set => mProductPrice = value; }
    }
}
