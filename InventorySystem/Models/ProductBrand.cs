namespace InventorySystem.Models
{
    public struct ProductBrand
    {
        public ProductBrand(int mBrandID, string mBrandName)
        {
            BrandID = mBrandID;
            BrandName = mBrandName;
        }

        public int BrandID { get; set; }
        public string BrandName { get; set; }
    }

    public struct ProductBrandInsert
    {
        public ProductBrandInsert(string mBrandName)
        {
            BrandName = mBrandName;
        }

        public string BrandName { get; set; }
    }

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

    public struct ProductBrandsDelete
    {
        public ProductBrandsDelete(int mBrandID)
        {
            BrandID = mBrandID;
        }

        public int BrandID { get; set; }
    }

    public struct BrandsGet
    {
        public BrandsGet(string mBrandName)
        {
            BrandName = mBrandName;
        }

        public string BrandName { get; set; }
    }
}