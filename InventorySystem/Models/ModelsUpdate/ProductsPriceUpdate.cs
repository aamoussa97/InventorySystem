using System;
namespace InventorySystem.Models
{
    public class ProductsPriceUpdate
    {
        private int mProductPriceID;
        private long mProductPrice;

        public ProductsPriceUpdate(int mProductPriceID, long mProductPrice)
        {
            this.mProductPriceID = mProductPriceID;
            this.mProductPrice = mProductPrice;
        }

        public int ProductPriceID { get => mProductPriceID; set => mProductPriceID = value; }
        public long ProductPrice { get => mProductPrice; set => mProductPrice = value; }
    }
}
