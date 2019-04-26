namespace InventorySystem.Models
{
    public struct MaterialsDelete
    {
        public MaterialsDelete(int mMaterialID)
        {
            MaterialID = mMaterialID;
        }

        public int MaterialID { get; set; }
    }
}
