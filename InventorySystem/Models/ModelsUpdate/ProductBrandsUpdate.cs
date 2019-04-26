namespace InventorySystem.Models
{
    public class ProductBrandsUpdate
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
