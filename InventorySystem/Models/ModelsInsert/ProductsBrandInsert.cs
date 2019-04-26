namespace InventorySystem.Models
{
    public class ProductBrandInsert
    {
        public ProductBrandInsert(string mBrandName)
        {
            BrandName = mBrandName;
        }

        public string BrandName { get; set; }
    }
}
