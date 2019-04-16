using System;
namespace InventorySystem.Models
{
    public class ProductsNameInsert
    {
        private string mProductsName;

        public ProductsNameInsert(string mProductsName)
        {
            this.mProductsName = mProductsName;
        }

        public string ProductsName { get => mProductsName; set => mProductsName = value; }
    }
}
