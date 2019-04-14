using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductsDataLayer
    {
        private readonly IConfiguration _configuration;

        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
            _configuration = configuration;
        }

        public ProductsInsert InsertProduct(ProductsInsert productsInsert)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKUID", productsInsert.ProductSKUID);
                    command.Parameters.AddWithValue("@ProductNameID", productsInsert.ProductNameID);
                    command.Parameters.AddWithValue("@ProductBrandID", productsInsert.ProductBrandID);
                    command.Parameters.AddWithValue("@ProductMaterialsOrderID", productsInsert.ProductMaterialsOrderID);
                    command.Parameters.AddWithValue("@ProductPriceID", productsInsert.ProductPriceID);
                    command.Parameters.AddWithValue("@ProductVariableCostID", productsInsert.ProductVariableCostID);

                    connection.Open();
                    command.ExecuteNonQuery();

                    /*
                    // Check Error
                    if (result < 0)
                        Console.WriteLine("Error inserting data into Database!");
                        //Throw error status code
                        */
                }

                return productsInsert;
            }
        }

        public IEnumerable<ProductsGet> GetProductByName(string ProductName)
        {
            List<ProductsGet> productsGET = new List<ProductsGet>();
            String toSearch = String.Format("SELECT * FROM [ViewProducts] WHERE ProductName LIKE '%{0}%'", ProductName);
            command = new SqlCommand(toSearch, connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    ProductsGet productGET = new ProductsGet((int)Convert.ToInt64(reader["ProductID"]),
                         (long)reader["ProductSKU"],
                         (String)reader["ProductName"],
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]),
                          (String)reader["BrandName"],
                    (int)Convert.ToInt64(reader["MaterialID"]));
                    productsGET.Add(productGET);
                }
            }

            connection.Close();
            return productsGET;
        }

        public IEnumerable<ProductsGet> GetProduct(int? ProductID)
        {
            List<ProductsGet> productsGet = new List<ProductsGet>();

            if (ProductID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProducts]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProducts] WHERE ProductID = '" + ProductID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    ProductsGet productGet = new ProductsGet((int)Convert.ToInt64(reader["ProductID"]),
                         (long)reader["ProductSKU"],
                         (String)reader["ProductName"],
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]),
                          (String)reader["BrandName"],
                          (int)Convert.ToInt64(reader["MaterialID"]));
                    productsGet.Add(productGet);
                }
            }

            connection.Close();

            return productsGet;
        }

    }
}
