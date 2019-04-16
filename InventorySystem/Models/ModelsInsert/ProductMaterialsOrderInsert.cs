using System;
namespace InventorySystem.Models
{
    public class ProductMaterialsOrderInsert
    {
        private int mMaterialID;

        public ProductMaterialsOrderInsert(int mMaterialID)
        {
            this.mMaterialID = mMaterialID;
        }

        public int MaterialID { get => mMaterialID; set => mMaterialID = value; }
    }
}
