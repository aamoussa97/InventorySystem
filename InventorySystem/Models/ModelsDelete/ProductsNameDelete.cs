using System;
namespace InventorySystem.Models
{
    public class ProductsNameDelete
    {
        private int mProductsNameID;

        public ProductsNameDelete(int mProductsNameID)
        {
            this.mProductsNameID = mProductsNameID;
        }

        public int ProductsNameID { get => mProductsNameID; set => mProductsNameID = value; }
    }
}
