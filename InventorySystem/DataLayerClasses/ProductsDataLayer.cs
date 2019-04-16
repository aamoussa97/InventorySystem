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
                         (String)reader["BrandName"],
                         (int)Convert.ToInt64(reader["MaterialID"]),
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]));
                    productsGet.Add(productGet);
                }
            }

            connection.Close();

            return productsGet;
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
                }

                return productsInsert;
            }
        }

        public ProductsUpdate UpdateProduct(ProductsUpdate productsUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductIDUpdate", productsUpdate.ProductID);
                    command.Parameters.AddWithValue("@ProductSKUIDUpdate", productsUpdate.ProductSKUID);
                    command.Parameters.AddWithValue("@ProductNameIDUpdate", productsUpdate.ProductNameID);
                    command.Parameters.AddWithValue("@ProductBrandIDUpdate", productsUpdate.ProductBrandID);
                    command.Parameters.AddWithValue("@ProductMaterialsOrderIDUpdate", productsUpdate.ProductMaterialsOrderID);
                    command.Parameters.AddWithValue("@ProductPriceIDUpdate", productsUpdate.ProductPriceID);
                    command.Parameters.AddWithValue("@ProductVariableCostIDUpdate", productsUpdate.ProductVariableCostID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsUpdate;
            }
        }

        public ProductsDelete DeleteProduct(ProductsDelete productsDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductIDDelete", productsDelete.ProductID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsDelete;
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
                         (String)reader["BrandName"],
                         (int)Convert.ToInt64(reader["MaterialID"]),
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]));
                    productsGET.Add(productGET);
                }
            }

            connection.Close();
            return productsGET;
        }
    }
}
