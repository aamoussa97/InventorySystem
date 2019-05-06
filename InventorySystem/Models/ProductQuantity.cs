using System;
namespace InventorySystem.Models
{
    public struct ProductQuantity
    {
        public ProductQuantity(int mProductID, int mQuantityValue)
        {
            this.ProductID = mProductID;
            this.QuantityValue = mQuantityValue;
        }

        public int ProductID { get; set; }
        public int QuantityValue { get; set; }
    }
    
    public struct ProductQuantitiesInsert
    {
        public ProductQuantitiesInsert(int mProductID, int mQuantityValue)
        {
            ProductID = mProductID;
            QuantityValue = mQuantityValue;
        }
    
        public int ProductID { get; set; }
        public int QuantityValue { get; set; }
    }
    
    public struct ProductQuantitiesUpdate
    {
        public ProductQuantitiesUpdate(int mProductID, int mQuantityValue)
        {
            ProductID = mProductID;
            QuantityValue = mQuantityValue;
        }
    
        public int ProductID { get; set; }
        public int QuantityValue { get; set; }
    }
    
    public struct ProductQuantitiesDelete
    {
        public ProductQuantitiesDelete(int mProductID)
        {
            ProductID = mProductID;
        }

        public int ProductID { get; set; }
    }
    
    public struct ProductQuantitiesGet
    {
        public ProductQuantitiesGet(int mProductID)
        {
            ProductID = mProductID;
        }

        public int ProductID { get; set; }
    }
}