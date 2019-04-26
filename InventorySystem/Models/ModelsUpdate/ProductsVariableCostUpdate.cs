namespace InventorySystem.Models
{
    public class ProductsVariableCostUpdate
    {
        public ProductsVariableCostUpdate(int mProductsVariableCostID, long mProductsVariableCost)
        {
            ProductsVariableCostID = mProductsVariableCostID;
            ProductsVariableCost = mProductsVariableCost;
        }

        public int ProductsVariableCostID { get; set; }

        public long ProductsVariableCost { get; set; }
    }
}
