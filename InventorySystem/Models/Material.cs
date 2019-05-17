using System;
namespace InventorySystem.Models
{
    public struct Material
    {
        public Material(int mMaterialID, string mMaterialName)
        {
            this.MaterialID = mMaterialID;
            this.MaterialName = mMaterialName;
        }

        public int MaterialID { get; set; }
        public string MaterialName { get; set; }
    }

    public struct MaterialsInsert
    {
        public MaterialsInsert(string mMaterialName)
        {
            this.MaterialName = mMaterialName;
        }

        public string MaterialName { get; set; }
    }

    public struct MaterialsUpdate
    {
        public MaterialsUpdate(int mMaterialID, string mMaterialName)
        {
            this.MaterialID = mMaterialID;
            this.MaterialName = mMaterialName;
        }

        public int MaterialID { get; set; }

        public string MaterialName { get; set; }
    }

    public struct MaterialsDelete
    {
        public MaterialsDelete(int mMaterialID)
        {
            this.MaterialID = mMaterialID;
        }

        public int MaterialID { get; set; }
    }
}
