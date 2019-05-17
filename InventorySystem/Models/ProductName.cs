namespace InventorySystem.Models
{
    public struct ProductName
    {
        public ProductName(int mNameID, string mNameValue)
        {
            NameID = mNameID;
            NameValue = mNameValue;
        }

        public int NameID { get; set; }

        public string NameValue { get; set; }
    }
    
    public class ProductsNameInsert
    {
        public ProductsNameInsert(string mProductsName)
        {
            ProductsName = mProductsName;
        }

        public string ProductsName { get; set; }
    }
    
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
    
    public struct ProductsNameDelete
    {
        public ProductsNameDelete(int mProductsNameID)
        {
            ProductsNameID = mProductsNameID;
        }

        public int ProductsNameID { get; set; }
    }
    
}
