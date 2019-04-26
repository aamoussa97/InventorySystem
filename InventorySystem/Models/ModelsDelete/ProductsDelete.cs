using System;
namespace InventorySystem.Models
{
    public class ProductsDelete
    {
        public ProductsDelete(int mProductID)
        {
            ProductID = mProductID;
        }

        public int ProductID { get; set; }
    }
}
