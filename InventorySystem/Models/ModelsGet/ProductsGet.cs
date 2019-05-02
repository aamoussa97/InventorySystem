namespace InventorySystem.Models
{
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