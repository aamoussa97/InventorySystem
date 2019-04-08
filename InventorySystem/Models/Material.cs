using System;
namespace InventorySystem.Models
{
    public class Material
    {

        private int mMaterialID;
        private String mMaterialSKU;
        private String mMaterialName;

        public Material()
        {
        }

        public Material(int mMaterialID, string mMaterialSKU, string mMaterialName)
        {
            this.mMaterialID = mMaterialID;
            this.mMaterialSKU = mMaterialSKU;
            this.mMaterialName = mMaterialName;
        }

        public int MaterialID { get => mMaterialID; set => mMaterialID = value; }
        public string MaterialSKU { get => mMaterialSKU; set => mMaterialSKU = value; }
        public string MaterialName { get => mMaterialName; set => mMaterialName = value; }
    }
}
