using System;
namespace InventorySystem.Models
{
    public class ProductMaterialsOrderDelete
    {
        public ProductMaterialsOrderDelete(int mMaterialsOrderID)
        {
            MaterialsOrderID = mMaterialsOrderID;
        }

        public int MaterialsOrderID { get; set; }
    }
}
