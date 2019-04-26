namespace InventorySystem.Models
{
    public class ProductName
    {
        public ProductName(int mNameID, string mNameValue)
        {
            NameID = mNameID;
            NameValue = mNameValue;
        }

        public int NameID { get; set; }

        public string NameValue { get; set; }
    }
}
