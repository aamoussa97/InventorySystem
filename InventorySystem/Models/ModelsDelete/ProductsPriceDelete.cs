using System;
namespace InventorySystem.Models
{
    public class ProductsPriceDelete
    {
        public ProductsPriceDelete(int mProductPriceID)
        {
            ProductPriceID = mProductPriceID;
        }

        public int ProductPriceID { get; set; }
    }
}
