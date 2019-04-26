using System;
namespace InventorySystem.Models
{
    public struct ProductsVariableCostDelete
    {
        public ProductsVariableCostDelete(int mProductsVariableCostID)
        {
            ProductsVariableCostID = mProductsVariableCostID;
        }

        public int ProductsVariableCostID { get; set; }
    }
}
