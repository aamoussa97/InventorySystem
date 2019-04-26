namespace InventorySystem.Models
{
    public class MaterialsDelete
    {
        public MaterialsDelete(int mMaterialID)
        {
            MaterialID = mMaterialID;
        }

        public int MaterialID { get; set; }
    }
}
