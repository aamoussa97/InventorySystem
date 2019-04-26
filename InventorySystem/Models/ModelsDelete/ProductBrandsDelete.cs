using System;
namespace InventorySystem.Models
{
    public class ProductBrandsDelete
    {
        public ProductBrandsDelete(int mBrandID)
        {
            BrandID = mBrandID;
        }

        public int BrandID { get; set; }
    }
}
