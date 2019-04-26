namespace InventorySystem.Models
{
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
}
