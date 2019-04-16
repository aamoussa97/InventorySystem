using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductNamesDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductNamesDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductName> GetProductName(int? NameID)
        {
            List<ProductName> productNames = new List<ProductName>();

            if (NameID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductNames]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductNames] WHERE ProductID = '" + NameID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    ProductName productName = new ProductName((int)Convert.ToInt64(reader["ProductID"]),
                       (String)reader["ProductName"]);
                    productNames.Add(productName);
                }
            }

            connection.Close();

            return productNames;
        }

        public ProductsNameInsert InsertProductName(ProductsNameInsert productsNameInsert)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsName", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductName", productsNameInsert.ProductsName);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsNameInsert;
            }

        }


        public ProductsNameUpdate UpdateProductName(ProductsNameUpdate productsNameUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProductsName", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@NameIDUpdate", productsNameUpdate.ProductsNameID);
                    command.Parameters.AddWithValue("@NameValueUpdate", productsNameUpdate.ProductsName);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsNameUpdate;
            }

        }

        public ProductsNameDelete DeleteProductName(ProductsNameDelete productsNameDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProductsName", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@NameIDDelete", productsNameDelete.ProductsNameID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsNameDelete;
            }

        }
    }
}
