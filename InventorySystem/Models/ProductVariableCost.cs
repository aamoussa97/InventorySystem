using System;
namespace InventorySystem.Models
{
    public class ProductVariableCost
    {
        private int mVariableCostID;
        private int mVariableCostValue;

        public ProductVariableCost(int mVariableCostID, int mVariableCostValue)
        {
            this.mVariableCostID = mVariableCostID;
            this.mVariableCostValue = mVariableCostValue;
        }

        public int VariableCostID { get => mVariableCostID; set => mVariableCostID = value; }
        public int VariableCostValue { get => mVariableCostValue; set => mVariableCostValue = value; }
    }
}
