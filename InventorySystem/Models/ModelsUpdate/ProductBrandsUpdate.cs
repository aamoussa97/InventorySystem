using System;
namespace InventorySystem.Models
{
    public class ProductBrandsUpdate
    {
        private int mBrandID;
        private string mBrandName;

        public ProductBrandsUpdate(int mBrandID, string mBrandName)
        {
            this.mBrandID = mBrandID;
            this.mBrandName = mBrandName;
        }

        public int BrandID { get => mBrandID; set => mBrandID = value; }
        public string BrandName { get => mBrandName; set => mBrandName = value; }
    }
}
