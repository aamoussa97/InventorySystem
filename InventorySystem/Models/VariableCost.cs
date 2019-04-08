using System;
namespace InventorySystem.Models
{
    public class VariableCost
    {
        private int mVariableCostID;
        private int mVariableCostValue;

        public VariableCost(int mVariableCostID, int mVariableCostValue)
        {
            this.mVariableCostID = mVariableCostID;
            this.mVariableCostValue = mVariableCostValue;
        }

        public int VariableCostID { get => mVariableCostID; set => mVariableCostID = value; }
        public int VariableCostValue { get => mVariableCostValue; set => mVariableCostValue = value; }
    }
}
