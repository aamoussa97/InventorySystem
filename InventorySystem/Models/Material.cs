using System;
namespace InventorySystem.Models
{
    public struct Material
    {
        public Material(int mMaterialID, string mMaterialName)//, string mMaterialSKU)
        {
            this.MaterialID = mMaterialID;
            this.MaterialName = mMaterialName;
        }

        public int MaterialID { get; set; }
        public string MaterialName { get; set; }
    }
}
