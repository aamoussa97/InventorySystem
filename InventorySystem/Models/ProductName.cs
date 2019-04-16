using System;
namespace InventorySystem.Models
{
    public class ProductName
    {
        private int mNameID;
        private string mNameValue;

        public ProductName(int mNameID, string mNameValue)
        {
            this.mNameID = mNameID;
            this.mNameValue = mNameValue;
        }

        public int NameID { get => mNameID; set => mNameID = value; }
        public string NameValue { get => mNameValue; set => mNameValue = value; }
    }
}
