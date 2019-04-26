namespace InventorySystem.Models
{
    public struct MaterialsInsert
    {
        public MaterialsInsert(string mMaterialName)
        {
            MaterialName = mMaterialName;
        }

        public string MaterialName { get; set; }
    }
}
