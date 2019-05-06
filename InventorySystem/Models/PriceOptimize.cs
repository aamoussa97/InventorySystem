using InventorySystem.Controllers;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNet.OData;
using System.Data.SqlClient;

namespace InventorySystem.Models
{
    public class PriceOptimize
    {
        /*private readonly IConfiguration _configuration;
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public PriceOptimize(IConfiguration configuration)
        {
            connectionString = _configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
            _configuration = configuration;
        }*/
         
        

        public int OptimizePrice(int vCost, int startFactor, int growthFactor)
        {
            /*List<ProductsGet> productsGets = new List<ProductsGet>();
            IEnumerable<ProductsGet> enumProducts = new ProductsDataLayer(_configuration).GetProduct(id);
            productsGets = enumProducts.ToList();
            foreach (ProductsGet product in productsGets)*/
            
                double marginalRevenue = startFactor - (growthFactor * 2);
                double optimalAmount = (startFactor / (growthFactor*2)) - (vCost / (growthFactor*2));
                double optimalPrice = startFactor - (growthFactor * optimalAmount);
                return (int)optimalPrice;
            
            
        }
    }
}
