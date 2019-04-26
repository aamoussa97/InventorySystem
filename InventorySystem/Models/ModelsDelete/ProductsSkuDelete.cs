using System;
namespace InventorySystem.Models
{
    public struct ProductsSkuDelete
    {
        public ProductsSkuDelete(int mProductSkuID)
        {
            ProductSkuID = mProductSkuID;
        }

        public int ProductSkuID { get; set; }
    }
}
