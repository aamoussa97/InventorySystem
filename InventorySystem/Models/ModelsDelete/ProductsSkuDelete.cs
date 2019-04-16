using System;
namespace InventorySystem.Models
{
    public class ProductsSkuDelete
    {
        private int mProductSkuID;

        public ProductsSkuDelete(int mProductSkuID)
        {
            this.mProductSkuID = mProductSkuID;
        }

        public int ProductSkuID { get => mProductSkuID; set => mProductSkuID = value; }
    }
}
