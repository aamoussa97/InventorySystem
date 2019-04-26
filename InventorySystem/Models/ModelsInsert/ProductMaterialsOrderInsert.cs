namespace InventorySystem.Models
{
    public class ProductMaterialsOrderInsert
    {
        public ProductMaterialsOrderInsert(int mMaterialID)
        {
            MaterialID = mMaterialID;
        }

        public int MaterialID { get; set; }
    }
}
