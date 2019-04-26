using System;
namespace InventorySystem.Models
{
    public class BrandsGet
    {
        public BrandsGet(String mBrandName)
        {
            BrandName = mBrandName;
        }

        public String BrandName { get; set; }
    }
}
