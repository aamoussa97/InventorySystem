namespace InventorySystem.Models
{
    public class ProductsUpdate
    {
        public ProductsUpdate(int mProductID, int mProductSKUID, int mProductNameID, int mProductBrandID, int mProductMaterialsOrderID, int mProductPriceID, int mProductVariableCostID)
        {
            ProductID = mProductID;
            ProductSKUID = mProductSKUID;
            ProductNameID = mProductNameID;
            ProductBrandID = mProductBrandID;
            ProductMaterialsOrderID = mProductMaterialsOrderID;
            ProductPriceID = mProductPriceID;
            ProductVariableCostID = mProductVariableCostID;
        }

        public int ProductID { get; set; }

        public int ProductSKUID { get; set; }

        public int ProductNameID { get; set; }

        public int ProductBrandID { get; set; }

        public int ProductMaterialsOrderID { get; set; }

        public int ProductPriceID { get; set; }

        public int ProductVariableCostID { get; set; }
    }
}
