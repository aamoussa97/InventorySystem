namespace InventorySystem.Models
{
    public struct ProductsNameUpdate
    {

        public ProductsNameUpdate(int mProductsNameID, string mProductsName)
        {
            ProductsNameID = mProductsNameID;
            ProductsName = mProductsName;
        }

        public int ProductsNameID { get; set; }
        public string ProductsName { get; set; }
    }
}
