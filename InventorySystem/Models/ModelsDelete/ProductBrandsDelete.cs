using System;
namespace InventorySystem.Models
{
    public class ProductBrandsDelete
    {
        private int mBrandID;

        public ProductBrandsDelete(int mBrandID)
        {
            this.mBrandID = mBrandID;
        }

        public int BrandID { get => mBrandID; set => mBrandID = value; }
    }
}
