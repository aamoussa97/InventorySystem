using System;
namespace InventorySystem.Models
{
    public class MaterialsInsert
    {
        private string mMaterialName;

        public MaterialsInsert(string mMaterialName)
        {
            this.mMaterialName = mMaterialName;
        }

        public string MaterialName { get => mMaterialName; set => mMaterialName = value; }
    }
}
