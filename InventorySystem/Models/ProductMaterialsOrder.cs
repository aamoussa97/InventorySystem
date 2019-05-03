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

        public int MaterialsOrderID
        {
            get => mMaterialsOrderID;
            set => mMaterialsOrderID = value;
        }

        public int MaterialID
        {
            get => mMaterialID;
            set => mMaterialID = value;
        }
    }

    public struct ProductMaterialsOrderInsert
    {
        public ProductMaterialsOrderInsert(int mMaterialID)
        {
            MaterialID = mMaterialID;
        }

        public int MaterialID { get; set; }
    }

    public struct ProductMaterialsOrderName
    {
        private string mMaterialName;

        public ProductMaterialsOrderName(string mMaterialName)
        {
            this.mMaterialName = mMaterialName;
        }

        public string MaterialName
        {
            get => mMaterialName;
            set => mMaterialName = value;
        }
    }

    public struct ProductMaterialsOrderUpdate
    {
        public ProductMaterialsOrderUpdate(int mMaterialsOrderID, int mMaterialID)
        {
            MaterialsOrderID = mMaterialsOrderID;
            MaterialID = mMaterialID;
        }

        public int MaterialsOrderID { get; set; }

        public int MaterialID { get; set; }
    }

    public struct ProductMaterialsOrderDelete
    {
        public ProductMaterialsOrderDelete(int mMaterialsOrderID)
        {
            MaterialsOrderID = mMaterialsOrderID;
        }

        public int MaterialsOrderID { get; set; }
    }
}