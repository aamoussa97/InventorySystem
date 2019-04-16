using System;
namespace InventorySystem.Models
{
    public class BrandsDelete
    {
        private int mBrandID;

        public BrandsDelete(int mBrandID)
        {
            this.mBrandID = mBrandID;
        }

        public int BrandID { get => mBrandID; set => mBrandID = value; }
    }
}
