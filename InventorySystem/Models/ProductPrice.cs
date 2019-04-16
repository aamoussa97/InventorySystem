using System;
namespace InventorySystem.Models
{
    public class ProductPrice
    {
        private int mPriceID;
        private int mPriceValue;

        public ProductPrice(int mPriceID, int mPriceValue)
        {
            this.mPriceID = mPriceID;
            this.mPriceValue = mPriceValue;
        }

        public int PriceID { get => mPriceID; set => mPriceID = value; }
        public int PriceValue { get => mPriceValue; set => mPriceValue = value; }
    }
}
