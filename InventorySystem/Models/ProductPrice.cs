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
    
    public struct ProductsPriceInsert
    {
        public ProductsPriceInsert(long mProductPrice)
        {
            ProductPrice = mProductPrice;
        }

        public long ProductPrice { get; set; }
    }
    
    public struct ProductsPriceUpdate
    {
        public ProductsPriceUpdate(int mProductPriceID, long mProductPrice)
        {
            ProductPriceID = mProductPriceID;
            ProductPrice = mProductPrice;
        }

        public int ProductPriceID { get; set; }

        public long ProductPrice { get; set; }
    }
    
    public struct ProductsPriceDelete
    {
        public ProductsPriceDelete(int mProductPriceID)
        {
            ProductPriceID = mProductPriceID;
        }

        public int ProductPriceID { get; set; }
    }
}
