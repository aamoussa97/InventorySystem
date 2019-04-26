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
}
