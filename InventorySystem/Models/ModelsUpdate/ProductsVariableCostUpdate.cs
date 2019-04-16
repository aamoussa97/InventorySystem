using System;
namespace InventorySystem.Models
{
    public class ProductsVariableCostUpdate
    {
        private int mProductsVariableCostID;
        private long mProductsVariableCost;

        public ProductsVariableCostUpdate(int mProductsVariableCostID, long mProductsVariableCost)
        {
            this.mProductsVariableCostID = mProductsVariableCostID;
            this.mProductsVariableCost = mProductsVariableCost;
        }

        public int ProductsVariableCostID { get => mProductsVariableCostID; set => mProductsVariableCostID = value; }
        public long ProductsVariableCost { get => mProductsVariableCost; set => mProductsVariableCost = value; }
    }
}
