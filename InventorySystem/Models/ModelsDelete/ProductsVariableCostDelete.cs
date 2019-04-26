using System;
namespace InventorySystem.Models
{
    public class ProductsVariableCostDelete
    {
        public ProductsVariableCostDelete(int mProductsVariableCostID)
        {
            ProductsVariableCostID = mProductsVariableCostID;
        }

        public int ProductsVariableCostID { get; set; }
    }
}
