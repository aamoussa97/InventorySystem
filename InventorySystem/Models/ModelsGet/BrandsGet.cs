using System;
namespace InventorySystem.Models
{
    public struct BrandsGet
    {
        public BrandsGet(String mBrandName)
        {
            BrandName = mBrandName;
        }

        public String BrandName { get; set; }
    }
}
