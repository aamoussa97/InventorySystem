using System.Collections.Generic;

namespace InventorySystem.Models
{
    public struct ProductsInsertComplex
    {
        public ProductsInsertComplex(long productSKU, string productName, string productBrand, int productPrice, int productVariableCost, int productStartFactor, int productGrowthFactor, List<ProductsInsertMaterial> productsInsertMaterials)
        {
            ProductSKU = productSKU;
            ProductName = productName;
            ProductBrand = productBrand;
            ProductPrice = productPrice;
            ProductVariableCost = productVariableCost;
            ProductStartFactor = productStartFactor;
            ProductGrowthFactor = productGrowthFactor;
            this.productsInsertMaterials = productsInsertMaterials;
        }

        public long ProductSKU { get; set; }
        public string ProductName { get; set; }
        public string ProductBrand { get; set; }
        public int ProductPrice { get; set; }
        public int ProductVariableCost { get; set; }
        public int ProductStartFactor { get; set; }
        public int ProductGrowthFactor { get; set; }
        public List<ProductsInsertMaterial> productsInsertMaterials { get; set; }

        //ProductMaterialInsert
        public class ProductsInsertMaterial
        {
            //public int ProductID { get; set; }
            //public int MaterialID { get; set; }
            public string MaterialName { get; set; }
        }
    }
}