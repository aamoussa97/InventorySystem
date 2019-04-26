namespace InventorySystem.Models
{
    public struct ProductMaterialsOrderInsert
    {
        public ProductMaterialsOrderInsert(int mMaterialID)
        {
            MaterialID = mMaterialID;
        }

        public int MaterialID { get; set; }
    }
}
