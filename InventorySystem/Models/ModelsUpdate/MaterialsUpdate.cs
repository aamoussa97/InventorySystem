namespace InventorySystem.Models
{
    public struct MaterialsUpdate
    {
        public MaterialsUpdate(int mMaterialID, string mMaterialName)
        {
            MaterialID = mMaterialID;
            MaterialName = mMaterialName;
        }

        public int MaterialID { get; set; }

        public string MaterialName { get; set; }
    }
}
