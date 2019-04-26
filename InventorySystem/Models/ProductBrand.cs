using System;
namespace InventorySystem.Models
{
    public struct ProductBrand
    {
        public ProductBrand(int mBrandID, String mBrandName)
        {
            this.BrandID = mBrandID;
            this.BrandName = mBrandName;
        }

        public int BrandID { get; set; }
        public String BrandName { get; set; }
    }
}
