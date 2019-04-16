using System;
namespace InventorySystem.Models
{
    public class ProductsVariableCostInsert
    {
        private long mProductsVariableCost;

        public ProductsVariableCostInsert(long mProductsVariableCost)
        {
            this.mProductsVariableCost = mProductsVariableCost;
        }

        public long ProductsVariableCost { get => mProductsVariableCost; set => mProductsVariableCost = value; }
    }
}
