using System;
namespace InventorySystem.Models
{
    public class ProductsSkuDelete
    {
        public ProductsSkuDelete(int mProductSkuID)
        {
            ProductSkuID = mProductSkuID;
        }

        public int ProductSkuID { get; set; }
    }
}
