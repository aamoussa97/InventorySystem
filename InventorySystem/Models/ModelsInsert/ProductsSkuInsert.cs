using System;
namespace InventorySystem.Models
{
    public class ProductsSkuInsert
    {
        private long mProductSku;

        public ProductsSkuInsert(long mProductSku)
        {
            this.mProductSku = mProductSku;
        }

        public long ProductSku { get => mProductSku; set => mProductSku = value; }
    }
}
