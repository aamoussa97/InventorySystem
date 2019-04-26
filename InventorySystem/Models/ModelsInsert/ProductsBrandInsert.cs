namespace InventorySystem.Models
{
    public struct ProductBrandInsert
    {
        public ProductBrandInsert(string mBrandName)
        {
            BrandName = mBrandName;
        }

        public string BrandName { get; set; }
    }
}
