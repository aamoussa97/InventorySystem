namespace InventorySystem.Models
{
    public abstract class IProduct
    {
        string ProductName { get; set; }
        string Category { get; set; }
        
        double Price { get; set; }
         
    }
}