using System;
namespace InventorySystem.Models
{
    public class BrandsGet
    {
        private String mBrandName;

        public BrandsGet(String mBrandName)
        {
            this.mBrandName = mBrandName;
        }

        public String BrandName { get => mBrandName; set => mBrandName = value; }
    }
}
