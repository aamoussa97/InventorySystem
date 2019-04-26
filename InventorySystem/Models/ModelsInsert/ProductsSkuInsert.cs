namespace InventorySystem.Models
{
    public class ProductsSkuInsert
    {
        public ProductsSkuInsert(long mProductSku)
        {
            ProductSku = mProductSku;
        }

        public long ProductSku { get; set; }
    }
}
