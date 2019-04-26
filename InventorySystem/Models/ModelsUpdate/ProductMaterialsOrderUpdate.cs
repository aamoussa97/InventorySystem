namespace InventorySystem.Models
{
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
}
