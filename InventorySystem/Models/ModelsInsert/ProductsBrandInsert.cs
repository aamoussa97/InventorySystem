using System;
namespace InventorySystem.Models
{
    public class ProductBrandInsert
    {
        private string mBrandName;

        public ProductBrandInsert(string mBrandName)
        {
            this.mBrandName = mBrandName;
        }

        public string BrandName { get => mBrandName; set => mBrandName = value; }
    }
}
