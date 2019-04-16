using System;
namespace InventorySystem.Models
{
    public class ProdcutsSkuUpdate
    {
        private int mProductSkuID;
        private long mProductSku;

        public ProdcutsSkuUpdate(int mProductSkuID, long mProductSku)
        {
            this.mProductSkuID = mProductSkuID;
            this.mProductSku = mProductSku;
        }

        public int ProductSkuID { get => mProductSkuID; set => mProductSkuID = value; }
        public long ProductSku { get => mProductSku; set => mProductSku = value; }
    }
}
