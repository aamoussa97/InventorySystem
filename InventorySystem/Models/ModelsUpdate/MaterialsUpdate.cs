using System;
namespace InventorySystem.Models
{
    public class MaterialsUpdate
    {
        private int mMaterialID;
        private string mMaterialName;

        public MaterialsUpdate(int mMaterialID, string mMaterialName)
        {
            this.mMaterialID = mMaterialID;
            this.mMaterialName = mMaterialName;
        }

        public int MaterialID { get => mMaterialID; set => mMaterialID = value; }
        public string MaterialName { get => mMaterialName; set => mMaterialName = value; }
    }
}
