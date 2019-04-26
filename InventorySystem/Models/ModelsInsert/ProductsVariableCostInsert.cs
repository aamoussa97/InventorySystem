using System;
namespace InventorySystem.Models
{
    public struct ProductsVariableCostInsert
    {
        public ProductsVariableCostInsert(long mProductsVariableCost)
        {
            ProductsVariableCost = mProductsVariableCost;
        }

        public long ProductsVariableCost { get; set; }
    }
}
