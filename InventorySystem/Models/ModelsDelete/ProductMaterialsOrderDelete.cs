using System;
namespace InventorySystem.Models
{
    public class ProductMaterialsOrderDelete
    {
        private int mMaterialsOrderID;

        public ProductMaterialsOrderDelete(int mMaterialsOrderID)
        {
            this.mMaterialsOrderID = mMaterialsOrderID;
        }

        public int MaterialsOrderID { get => mMaterialsOrderID; set => mMaterialsOrderID = value; }
    }
}
