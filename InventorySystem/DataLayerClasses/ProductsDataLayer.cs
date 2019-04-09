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
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public int InsertProduct(Product product)
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                String query = "INSERT INTO Products (ProductSKUID, ProductNameID, ProductBrandID, ProductMaterialsOrderID, ProductPriceID, ProductVariableCostID) VALUES (@ProductSKUID, @ProductNameID, @ProductBrandID, @ProductMaterialsOrderID, @ProductPriceID, @ProductVariableCostID)";
                
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductSKUID", product.ProductSKUID);
                    command.Parameters.AddWithValue("@ProductNameID", product.ProductNameID);
                    command.Parameters.AddWithValue("@ProductBrandID", product.ProductBrandID);
                    command.Parameters.AddWithValue("@ProductMaterialsOrderID", product.ProductMaterialsOrderID);
                    command.Parameters.AddWithValue("@ProductPriceID", product.ProductPriceID);
                    command.Parameters.AddWithValue("@ProductVariableCostID", product.ProductVariableCostID);

                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    // Check Error
                    if (result < 0)
                        Console.WriteLine("Error inserting data into Database!");
                    //Throw error status code
                }

                return -1;
            }

        }

        public IEnumerable<String> GetProductByName(string name)
        {
            List<String> products = new List<String>();
            String toSearch = String.Format("SELECT * FROM [ViewProducts] WHERE ProductName LIKE '%{0}%'", name);
            command = new SqlCommand(toSearch, connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    products.Add(reader["ProductID"].ToString());
                    products.Add((String)reader["ProductName"]);
                }
            }

            connection.Close();
            return products;
        }

        public IEnumerable<ProductsGET> GetProduct(int? ProductID)
        {
            List<ProductsGET> productsGET = new List<ProductsGET>();

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
                    ProductsGET productGET = new ProductsGET((int)Convert.ToInt64(reader["ProductID"]),
                         (int)Convert.ToInt64(reader["ProductSKU"]),
                         (String)reader["ProductName"],
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]),
                          (String)reader["BrandName"]);
                          //(int)Convert.ToInt64(reader["MaterialID"]));
                    productsGET.Add(productGET);
                }
            }

            connection.Close();

            return productsGET;
        }

    }
}
