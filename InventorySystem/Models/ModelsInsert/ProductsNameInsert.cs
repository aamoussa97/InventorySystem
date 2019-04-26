using System;
namespace InventorySystem.Models
{
    public class ProductsNameInsert
    {
        public ProductsNameInsert(string mProductsName)
        {
            ProductsName = mProductsName;
        }

        public string ProductsName { get; set; }
    }
}
