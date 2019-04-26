namespace InventorySystem.Models
{
    public struct ProductsGet
    {
        public int ProductID { get; set; }
        public long ProductSKU { get; set; }
        public string ProductName { get; set; }
        public string ProductBrand { get; set; }
        public int ProductMaterialsOrderID { get; set; }
        public int ProductPrice { get; set; }
        public int ProductVariableCost { get; set; }
        public ProductsGet(int id,
                       long sku,
                       string name,
                       string brandID,
                       int materialsID,
                       int price,
                       int variablecost
                       )
        {
            ProductID = id;
            ProductSKU = sku;
            ProductName = name;
            ProductBrand = brandID;
            ProductMaterialsOrderID = materialsID;
            ProductPrice = price;
            ProductVariableCost = variablecost;
        }
    }
}