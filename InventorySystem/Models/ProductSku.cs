using System;
namespace InventorySystem.Models
{
    public struct ProductSku
    {
        public ProductSku(int mSkuid, long mSkuValue)
        {
            SKUID = mSkuid;
            SKUValue = mSkuValue;
        }

        public int SKUID { get; set; }

        public long SKUValue { get; set; }
    }
    
    public struct ProductsSkuInsert
    {
        public ProductsSkuInsert(long mProductSku)
        {
            ProductSku = mProductSku;
        }

        public long ProductSku { get; set; }
    }
    
    public struct ProductsSkuUpdate
    {
        public ProductsSkuUpdate(int mProductSkuID, long mProductSku)
        {
            ProductSkuID = mProductSkuID;
            ProductSku = mProductSku;
        }

        public int ProductSkuID { get; set; }

        public long ProductSku { get; set; }
    }
    
    public struct ProductsSkuDelete
    {
        public ProductsSkuDelete(int mProductSkuID)
        {
            ProductSkuID = mProductSkuID;
        }

        public int ProductSkuID { get; set; }
    }
}