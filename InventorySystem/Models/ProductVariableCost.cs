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
}
