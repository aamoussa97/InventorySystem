using System;
namespace InventorySystem.Models
{
    public struct ProductsNameDelete
    {
        public ProductsNameDelete(int mProductsNameID)
        {
            ProductsNameID = mProductsNameID;
        }

        public int ProductsNameID { get; set; }
    }
}
