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
                command = new SqlCommand("SELECT * FROM [ViewProductsV3]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductsV3] WHERE ProductID = '" + ProductID + "'", connection);
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
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]),
                         (int)Convert.ToInt64(reader["ProductStartFactor"]),
                         (int)Convert.ToInt64(reader["ProductGrowthFactor"]),
                         (int)Convert.ToInt64(reader["ProductQuantity"]));
                    productsGet.Add(productGet);
                }
            }

            connection.Close();

            return productsGet;
        }

        public int InsertProduct(ProductsInsert productsInsert)
        {
            int ProductIDFromInsert = 0;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsV3", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKUID", productsInsert.ProductSKUID);
                    command.Parameters.AddWithValue("@ProductNameID", productsInsert.ProductNameID);
                    command.Parameters.AddWithValue("@ProductBrandID", productsInsert.ProductBrandID);
                    command.Parameters.AddWithValue("@ProductPriceID", productsInsert.ProductPriceID);
                    command.Parameters.AddWithValue("@ProductVariableCostID", productsInsert.ProductVariableCostID);
                    command.Parameters.AddWithValue("@ProductStartFactorID", productsInsert.ProductStartFactorID);
                    command.Parameters.AddWithValue("@ProductGrowthFactorID", productsInsert.ProductGrowthFactorID);
                    command.Parameters.AddWithValue("@ProductQuantityID", productsInsert.ProductQuantityID);
                    command.Parameters.AddWithValue("@ProductID_Output", ProductIDFromInsert).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    ProductIDFromInsert = Convert.ToInt32(command.Parameters["@ProductID_Output"].Value);
                }

                return ProductIDFromInsert;
            }
        }

        public ProductsUpdate UpdateProduct(ProductsUpdate productsUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProducts", connection))
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

        public int DeleteProduct(int productsDeleteID)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductIDDelete", productsDeleteID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsDeleteID;
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
                         (int)Convert.ToInt64(reader["ProductPrice"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]),
                         (int)Convert.ToInt64(reader["ProductStartFactor"]),
                         (int)Convert.ToInt64(reader["ProductGrowthFactor"]),
                         (int)Convert.ToInt64(reader["ProductQuantity"]));
                    productsGET.Add(productGET);
                }
            }

            connection.Close();
            return productsGET;
        }
    }
}
