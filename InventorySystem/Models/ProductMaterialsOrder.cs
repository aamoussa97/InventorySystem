using System;
namespace InventorySystem.Models
{
    public class ProductMaterialsOrder
    {
        private int mMaterialsOrderID;
        private int mMaterialID;

        public ProductMaterialsOrder(int mMaterialsOrderID, int mMaterialID)
        {
            this.mMaterialsOrderID = mMaterialsOrderID;
            this.mMaterialID = mMaterialID;
        }

        public int MaterialsOrderID { get => mMaterialsOrderID; set => mMaterialsOrderID = value; }
        public int MaterialID { get => mMaterialID; set => mMaterialID = value; }
    }
}
