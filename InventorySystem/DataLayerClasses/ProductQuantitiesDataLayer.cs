using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductQuantitiesDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public ProductQuantitiesDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductQuantityModel> GetQuantities(int? ProductID)
        {
            var productQuantites = new List<ProductQuantityModel>();

            if (ProductID == null)
                command = new SqlCommand("SELECT * FROM [ViewProductQuantities]", connection);
            else
                command = new SqlCommand("SELECT * FROM [ViewProductQuantities] WHERE ProductID = '" + ProductID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productQuantityModel = new ProductQuantityModel((int) Convert.ToInt64(reader["ProductID"]),
                        (int) Convert.ToInt64(reader["ProductQuantity"]));
                    productQuantites.Add(productQuantityModel);
                }
            }

            connection.Close();

            return productQuantites;
        }

        public ProductQuantitiesInsert InsertProductQuantitiy(ProductQuantitiesInsert productQuantitiesInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsQuantities", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductID_Input", productQuantitiesInsert.ProductID);
                    command.Parameters.AddWithValue("@ProductQuantity_Input", productQuantitiesInsert.ProductQuantity);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productQuantitiesInsert;
            }
        }

        public ProductQuantitiesUpdate UpdateProductQuantitiy(ProductQuantitiesUpdate productQuantitiesUpdate)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateProductsQuantity", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductIDUpdate", productQuantitiesUpdate.ProductID);
                    command.Parameters.AddWithValue("@QuantityUpdate", productQuantitiesUpdate.ProductQuantity);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productQuantitiesUpdate;
            }
        }

        public ProductQuantitiesDelete DeleteProductQuantitiy(ProductQuantitiesDelete productQuantitiesDelete)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureDeleteProductsQuantity", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductIDDelete", productQuantitiesDelete.ProductID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productQuantitiesDelete;
            }
        }
    }
}