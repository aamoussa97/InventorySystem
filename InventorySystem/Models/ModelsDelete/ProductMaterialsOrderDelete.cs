using System;
namespace InventorySystem.Models
{
    public struct ProductMaterialsOrderDelete
    {
        public ProductMaterialsOrderDelete(int mMaterialsOrderID)
        {
            MaterialsOrderID = mMaterialsOrderID;
        }

        public int MaterialsOrderID { get; set; }
    }
}
