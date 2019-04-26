namespace InventorySystem.Models
{
    public struct ProductBrandsUpdate
    {
        public ProductBrandsUpdate(int mBrandID, string mBrandName)
        {
            BrandID = mBrandID;
            BrandName = mBrandName;
        }

        public int BrandID { get; set; }

        public string BrandName { get; set; }
    }
}
