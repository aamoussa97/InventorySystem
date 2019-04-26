using System;
namespace InventorySystem.Models
{
    public struct ProductsDelete
    {
        public ProductsDelete(int mProductID)
        {
            ProductID = mProductID;
        }

        public int ProductID { get; set; }
    }
}
