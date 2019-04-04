using System;
namespace InventorySystem.Models
{
    public class Price
    {
        private int mPriceID;
        private int mPriceValue;

        public Price(int mPriceID, int mPriceValue)
        {
            this.mPriceID = mPriceID;
            this.mPriceValue = mPriceValue;
        }

        public int PriceID { get => mPriceID; set => mPriceID = value; }
        public int PriceValue { get => mPriceValue; set => mPriceValue = value; }
    }
}
