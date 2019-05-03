using System;
using System.Collections.Generic;

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
    
    public struct ProductsInsert
    {
        public ProductsInsert(int mProductSKUID, int mProductNameID, int mProductBrandID, int mProductPriceID, int mProductVariableCostID, int mProductStartFactorID, int mProductGrowthFactorID)
        {
            ProductSKUID = mProductSKUID;
            ProductNameID = mProductNameID;
            ProductBrandID = mProductBrandID;
            ProductPriceID = mProductPriceID;
            ProductVariableCostID = mProductVariableCostID;
            ProductStartFactorID = mProductStartFactorID;
            ProductGrowthFactorID = mProductGrowthFactorID;

        }

        public int ProductSKUID { get; set; }

        public int ProductNameID { get; set; }

        public int ProductBrandID { get; set; }
        
        public int ProductPriceID { get; set; }

        public int ProductVariableCostID { get; set; }

        public int ProductStartFactorID { get; set; }

        public int ProductGrowthFactorID { get; set; }
    }
    
    public struct ProductsUpdate
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
    
    public struct ProductsDelete
    {
        public ProductsDelete(int mProductID)
        {
            ProductID = mProductID;
        }

        public int ProductID { get; set; }
    }
    
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
    
    public struct ProductsGet
    {
        public int ProductID { get; set; }
        public long ProductSKU { get; set; }
        public string ProductName { get; set; }
        public string ProductBrand { get; set; }
        public int ProductPrice { get; set; }
        public int ProductVariableCost { get; set; }
        public int ProductStartFactor { get; set; }
        public int ProductGrowthFactor { get; set; }
        public ProductsGet(int id,
            long sku,
            string name,
            string brandID,
            int price,
            int variablecost,
            int productStartFactor,
            int productGrowthFactor
        )
        {
            ProductID = id;
            ProductSKU = sku;
            ProductName = name;
            ProductBrand = brandID;
            ProductPrice = price;
            ProductVariableCost = variablecost;
            ProductStartFactor = productStartFactor;
            ProductGrowthFactor = productGrowthFactor;
        }
    }
}