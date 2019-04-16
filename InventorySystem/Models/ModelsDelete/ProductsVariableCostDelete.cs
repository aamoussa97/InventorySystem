using System;
namespace InventorySystem.Models
{
    public class ProductsVariableCostDelete
    {
        private int mProductsVariableCostID;

        public ProductsVariableCostDelete(int mProductsVariableCostID)
        {
            this.mProductsVariableCostID = mProductsVariableCostID;
        }

        public int ProductsVariableCostID { get => mProductsVariableCostID; set => mProductsVariableCostID = value; }
    }
}
