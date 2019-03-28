using System;
using InventorySystem.Models.Categories.Vehicles;

namespace InventorySystem.Models.Categories.Vehicles
{
    public class Bike : IVehicle
    {
        public string ProductName { get; set; }
        public string Category { get; set; }
        
        public double Price { get; set; }

        public string Color { get; set; }
    }
}