namespace InventorySystem.Models
{
    public class MaterialsInsert
    {
        public MaterialsInsert(string mMaterialName)
        {
            MaterialName = mMaterialName;
        }

        public string MaterialName { get; set; }
    }
}
