using System;
namespace InventorySystem.Models
{
    public class Brand
    {
        private int mBrandID;
        private String mBrandName;

        public Brand(int mBrandID, String mBrandName)
        {
            this.mBrandID = mBrandID;
            this.mBrandName = mBrandName;
        }

        public int BrandID { get => mBrandID; set => mBrandID = value; }
        public String BrandName { get => mBrandName; set => mBrandName = value; }
    }
}
