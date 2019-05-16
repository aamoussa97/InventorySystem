namespace InventorySystem.Models
{
    public struct ProductVariableCost
    {
        public ProductVariableCost(int mVariableCostID, int mVariableCostValue)
        {
            VariableCostID = mVariableCostID;
            VariableCostValue = mVariableCostValue;
        }

        public int VariableCostID { get; set; }

        public int VariableCostValue { get; set; }
    }

    public struct ProductsVariableCostInsert
    {
        public ProductsVariableCostInsert(long mProductsVariableCost)
        {
            ProductsVariableCost = mProductsVariableCost;
        }

        public long ProductsVariableCost { get; set; }
    }

    public struct ProductsVariableCostUpdate
    {
        public ProductsVariableCostUpdate(int mProductsVariableCostID, long mProductsVariableCost)
        {
            ProductsVariableCostID = mProductsVariableCostID;
            ProductsVariableCost = mProductsVariableCost;
        }

        public int ProductsVariableCostID { get; set; }

        public long ProductsVariableCost { get; set; }
    }

    public struct ProductsVariableCostDelete
    {
        public ProductsVariableCostDelete(int mProductsVariableCostID)
        {
            ProductsVariableCostID = mProductsVariableCostID;
        }

        public int ProductsVariableCostID { get; set; }
    }
}