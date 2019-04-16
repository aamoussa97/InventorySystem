using System;
namespace InventorySystem.Models
{
    public class ProductsSkuUpdate
    {
        private int mProductSkuID;
        private long mProductSku;

        public ProductsSkuUpdate(int mProductSkuID, long mProductSku)
        {
            this.mProductSkuID = mProductSkuID;
            this.mProductSku = mProductSku;
        }

        public int ProductSkuID { get => mProductSkuID; set => mProductSkuID = value; }
        public long ProductSku { get => mProductSku; set => mProductSku = value; }
    }
}
