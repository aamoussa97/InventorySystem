using System;
namespace InventorySystem.Models
{
    public struct ProductBrandsDelete
    {
        public ProductBrandsDelete(int mBrandID)
        {
            BrandID = mBrandID;
        }

        public int BrandID { get; set; }
    }
}
