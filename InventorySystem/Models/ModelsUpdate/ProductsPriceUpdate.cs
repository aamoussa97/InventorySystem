namespace InventorySystem.Models
{
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
}
