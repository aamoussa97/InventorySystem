using System;
namespace InventorySystem.Models
{
    public class MaterialsDelete
    {
        private int mMaterialID;

        public MaterialsDelete(int mMaterialID)
        {
            this.mMaterialID = mMaterialID;
        }

        public int MaterialID { get => mMaterialID; set => mMaterialID = value; }
    }
}
