using System;
namespace InventorySystem.Models
{
    public class ProductsVariableCostInsert
    {
        public ProductsVariableCostInsert(long mProductsVariableCost)
        {
            ProductsVariableCost = mProductsVariableCost;
        }

        public long ProductsVariableCost { get; set; }
    }
}
