using System;
namespace InventorySystem.Models
{
    public class ProductsPriceDelete
    {
        private int mProductPriceID;

        public ProductsPriceDelete(int mProductPriceID)
        {
            this.mProductPriceID = mProductPriceID;
        }

        public int ProductPriceID { get => mProductPriceID; set => mProductPriceID = value; }
    }
}
