using System;
namespace InventorySystem.Models
{
    public struct ProductsPriceDelete
    {
        public ProductsPriceDelete(int mProductPriceID)
        {
            ProductPriceID = mProductPriceID;
        }

        public int ProductPriceID { get; set; }
    }
}
