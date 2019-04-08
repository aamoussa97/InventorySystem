using System;
namespace InventorySystem.Models
{
    public class BrandsGET
    {
        private String mBrandName;

        public BrandsGET(String mBrandName)
        {
            this.mBrandName = mBrandName;
        }

        public String BrandName { get => mBrandName; set => mBrandName = value; }
    }
}
