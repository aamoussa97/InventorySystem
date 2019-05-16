namespace InventorySystem.Models
{
    public struct ProductMaterialsOrder
    {
        public ProductMaterialsOrder(int mMaterialsOrderID, int mMaterialID)
        {
            MaterialsOrderID = mMaterialsOrderID;
            MaterialID = mMaterialID;
        }

        public int MaterialsOrderID { get; set; }

        public int MaterialID { get; set; }
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
        public ProductMaterialsOrderName(string mMaterialName)
        {
            MaterialName = mMaterialName;
        }

        public string MaterialName { get; set; }
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