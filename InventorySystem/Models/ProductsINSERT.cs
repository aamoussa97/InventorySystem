using System;
namespace InventorySystem.Models
{
    public class ProductsInsert
    {
        private int mProductSKUID;
        private int mProductNameID;
        private int mProductBrandID;
        private int mProductMaterialsOrderID;
        private int mProductPriceID;
        private int mProductVariableCostID;

        public ProductsInsert(int mProductSKUID, int mProductNameID, int mProductBrandID, int mProductMaterialsOrderID, int mProductPriceID, int mProductVariableCostID)
        {
            this.mProductSKUID = mProductSKUID;
            this.mProductNameID = mProductNameID;
            this.mProductBrandID = mProductBrandID;
            this.mProductMaterialsOrderID = mProductMaterialsOrderID;
            this.mProductPriceID = mProductPriceID;
            this.mProductVariableCostID = mProductVariableCostID;
        }

        public int ProductSKUID { get => mProductSKUID; set => mProductSKUID = value; }
        public int ProductNameID { get => mProductNameID; set => mProductNameID = value; }
        public int ProductBrandID { get => mProductBrandID; set => mProductBrandID = value; }
        public int ProductMaterialsOrderID { get => mProductMaterialsOrderID; set => mProductMaterialsOrderID = value; }
        public int ProductPriceID { get => mProductPriceID; set => mProductPriceID = value; }
        public int ProductVariableCostID { get => mProductVariableCostID; set => mProductVariableCostID = value; }
    }
}
