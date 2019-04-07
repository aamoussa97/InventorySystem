using System;
namespace InventorySystem.Models
{
    public struct Product
    {
        public int ProductID { get; set; }
        public string ProductSKU { get; set; }
        public string ProductName { get; set; }
        public int ProductPrice { get; set; }
        public int ProductVariableCost { get; set; }
        public string ProductBrand { get; set; }
        public int ProductMaterialsOrderID { get; set; }
        public Product(int id,
                       string sku,
                       string name,
                       int price,
                       int variablecost,
                       string brand,
                       int materialsid)
        {
            this.ProductID = id;
            this.ProductSKU = sku;
            this.ProductName = name;
            this.ProductPrice = price;
            this.ProductVariableCost = variablecost;
            this.ProductBrand = brand;
            this.ProductMaterialsOrderID = materialsid;
        }
    }
}