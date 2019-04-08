using System;
namespace InventorySystem.Models
{
    public struct Product
    {
        public int ProductID { get; set; }
        public int ProductSKUID { get; set; }
        public int ProductNameID { get; set; }
        public int ProductPriceID { get; set; }
        public int ProductVariableCostID { get; set; }
        public int ProductBrandID { get; set; }
        public int ProductMaterialsOrderID { get; set; }
        public Product(int id,
                       int skuID,
                       int nameID,
                       int priceID,
                       int variablecostID,
                       int brandID,
                       int materialsID)
        {
            this.ProductID = id;
            this.ProductSKUID = skuID;
            this.ProductNameID = nameID;
            this.ProductPriceID = priceID;
            this.ProductVariableCostID = variablecostID;
            this.ProductBrandID = brandID;
            this.ProductMaterialsOrderID = materialsID;
        }
    }
}