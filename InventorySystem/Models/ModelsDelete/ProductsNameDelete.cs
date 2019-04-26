using System;
namespace InventorySystem.Models
{
    public class ProductsNameDelete
    {
        public ProductsNameDelete(int mProductsNameID)
        {
            ProductsNameID = mProductsNameID;
        }

        public int ProductsNameID { get; set; }
    }
}
