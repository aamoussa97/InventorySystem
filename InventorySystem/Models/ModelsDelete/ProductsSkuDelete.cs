using System;
namespace InventorySystem.Models
{
    public class ProdcutsSkuDelete
    {
        private int mProductSkuID;

        public ProdcutsSkuDelete(int mProductSkuID)
        {
            this.mProductSkuID = mProductSkuID;
        }

        public int ProductSkuID { get => mProductSkuID; set => mProductSkuID = value; }
    }
}
