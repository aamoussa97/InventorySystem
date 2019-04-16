using System;
namespace InventorySystem.Models
{
    public class ProductsNameUpdate
    {
        private int mProductsNameID;
        private string mProductsName;

        public ProductsNameUpdate(int mProductsNameID, string mProductsName)
        {
            this.mProductsNameID = mProductsNameID;
            this.mProductsName = mProductsName;
        }

        public int ProductsNameID { get => mProductsNameID; set => mProductsNameID = value; }
        public int ProductsName { get => mProductsNameID; set => mProductsNameID = value; }
    }
}
