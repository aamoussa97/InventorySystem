using System;
namespace InventorySystem.Models
{
    public struct ProductQuantityModel
    {
        public ProductQuantityModel(int mProductID, int mProductQuantity)
        {
            this.ProductID = mProductID;
            this.ProductQuantity = mProductQuantity;
        }

        public int ProductID { get; set; }
        public int ProductQuantity { get; set; }
    }
    
    public struct ProductQuantitiesInsert
    {
        public ProductQuantitiesInsert(int mProductID, int mProductQuantity)
        {
            ProductID = mProductID;
            ProductQuantity = mProductQuantity;
        }
    
        public int ProductID { get; set; }
        public int ProductQuantity { get; set; }
    }
    
    public struct ProductQuantitiesUpdate
    {
        public ProductQuantitiesUpdate(int mProductID, int mProductQuantity)
        {
            ProductID = mProductID;
            ProductQuantity = mProductQuantity;
        }
    
        public int ProductID { get; set; }
        public int ProductQuantity { get; set; }
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