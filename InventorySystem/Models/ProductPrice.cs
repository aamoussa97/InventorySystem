namespace InventorySystem.Models
{
    public struct ProductPrice
    {
        public ProductPrice(int mPriceID, int mPriceValue)
        {
            PriceID = mPriceID;
            PriceValue = mPriceValue;
        }

        public int PriceID { get; set; }

        public int PriceValue { get; set; }
    }
}
