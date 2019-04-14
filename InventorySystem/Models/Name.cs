using System;
namespace InventorySystem.Models
{
    public class Name
    {
        private int mNameID;
        private string mNameValue;

        public Name(int mNameID, string mNameValue)
        {
            this.mNameID = mNameID;
            this.mNameValue = mNameValue;
        }

        public int NameID { get => mNameID; set => mNameID = value; }
        public string NameValue { get => mNameValue; set => mNameValue = value; }
    }
}
