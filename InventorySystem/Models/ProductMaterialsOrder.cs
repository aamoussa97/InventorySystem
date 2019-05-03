using System;
namespace InventorySystem.Models
{
    public struct ProductMaterialsOrder
    {
        private int mMaterialsOrderID;
        private int mMaterialID;

        public ProductMaterialsOrder(int mMaterialsOrderID, int mMaterialID)
        {
            this.mMaterialsOrderID = mMaterialsOrderID;
            this.mMaterialID = mMaterialID;
        }

        public int MaterialsOrderID { get => mMaterialsOrderID; set => mMaterialsOrderID = value; }
        public int MaterialID { get => mMaterialID; set => mMaterialID = value; }
    }

    public struct ProductMaterialsOrderName
    {
        private string mMaterialName;

        public ProductMaterialsOrderName(string mMaterialName)
        {
            this.mMaterialName = mMaterialName;
        }

        public string MaterialName { get => mMaterialName; set => mMaterialName = value; }
    }
}
