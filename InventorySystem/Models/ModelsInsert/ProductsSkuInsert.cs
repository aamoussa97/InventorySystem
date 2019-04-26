namespace InventorySystem.Models
{
    public struct ProductsSkuInsert
    {
        public ProductsSkuInsert(long mProductSku)
        {
            ProductSku = mProductSku;
        }

        public long ProductSku { get; set; }
    }
}
