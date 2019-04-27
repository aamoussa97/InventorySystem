namespace InventorySystem.Models
{
    public struct ProductsInsert
    {
        public ProductsInsert(int mProductSKUID, int mProductNameID, int mProductBrandID, int mProductMaterialsOrderID, int mProductPriceID, int mProductVariableCostID, int mProductStartFactorID, int mProductGrowthFactorID)
        {
            ProductSKUID = mProductSKUID;
            ProductNameID = mProductNameID;
            ProductBrandID = mProductBrandID;
            ProductMaterialsOrderID = mProductMaterialsOrderID;
            ProductPriceID = mProductPriceID;
            ProductVariableCostID = mProductVariableCostID;
            ProductStartFactorID = mProductStartFactorID;
            ProductGrowthFactorID = mProductGrowthFactorID;

        }

        public int ProductSKUID { get; set; }

        public int ProductNameID { get; set; }

        public int ProductBrandID { get; set; }

        public int ProductMaterialsOrderID { get; set; }

        public int ProductPriceID { get; set; }

        public int ProductVariableCostID { get; set; }

        public int ProductStartFactorID { get; set; }

        public int ProductGrowthFactorID { get; set; }
    }
}
