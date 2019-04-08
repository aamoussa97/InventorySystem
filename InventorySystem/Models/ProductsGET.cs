using System;
namespace InventorySystem.Models
{
    public struct ProductsGET
    {
        public int ProductID { get; set; }
        public int ProductSKU { get; set; }
        public string ProductName { get; set; }
        public int ProductPrice { get; set; }
        public int ProductVariableCost { get; set; }
        public string ProductBrand { get; set; }
        //public int ProductMaterialsOrderID { get; set; }
        public ProductsGET(int id,
                       int sku,
                       string name,
                       int price,
                       int variablecost,
                       string brandID)
                       //int materialsID)
        {
            this.ProductID = id;
            this.ProductSKU = sku;
            this.ProductName = name;
            this.ProductPrice = price;
            this.ProductVariableCost = variablecost;
            this.ProductBrand = brandID;
            //this.ProductMaterialsOrderID = materialsID;
        }
    }
}