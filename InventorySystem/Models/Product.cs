using System;
namespace InventorySystem.Models
{
    public class Product
    {
        private int mProductID;
        private String mProductSKU;
        private String mProductName;
        private int mProductPrice;
        private int mProductVariableCost;
        private String mProductBrand;
        private int mProductMaterialsOrderID;

        public Product(int mProductID, string mProductSKU, string mProductName, int mProductPrice, int mProductVariableCost, string mProductBrand, int mProductMaterialsOrderID)
        {
            this.mProductID = mProductID;
            this.mProductSKU = mProductSKU;
            this.mProductName = mProductName;
            this.mProductPrice = mProductPrice;
            this.mProductVariableCost = mProductVariableCost;
            this.mProductBrand = mProductBrand;
            this.mProductMaterialsOrderID = mProductMaterialsOrderID;
        }

        public int ProductID { get => mProductID; set => mProductID = value; }
        public string ProductSKU { get => mProductSKU; set => mProductSKU = value; }
        public string ProductName { get => mProductName; set => mProductName = value; }
        public int ProductPrice { get => mProductPrice; set => mProductPrice = value; }
        public int ProductVariableCost { get => mProductVariableCost; set => mProductVariableCost = value; }
        public string ProductBrand { get => mProductBrand; set => mProductBrand = value; }
        public int ProductMaterialsOrderID { get => mProductMaterialsOrderID; set => mProductMaterialsOrderID = value; }
    }
}