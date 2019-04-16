using System;
namespace InventorySystem.Models
{
    public class ProductsDelete
    {
        private int mProductID;

        public ProductsDelete(int mProductID)
        {
            this.mProductID = mProductID;
        }

        public int ProductID { get => mProductID; set => mProductID = value; }
    }
}
