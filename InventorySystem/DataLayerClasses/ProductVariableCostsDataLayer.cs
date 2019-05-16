using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductVariableCostsDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public ProductVariableCostsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductVariableCost> GetProductVariableCost(int? ProductVariableCostID)
        {
            var productVariableCosts = new List<ProductVariableCost>();

            if (ProductVariableCostID == null)
                command = new SqlCommand("SELECT * FROM [ViewProductVariableCosts]", connection);
            else
                command = new SqlCommand(
                    "SELECT * FROM [ViewProductVariableCosts] WHERE ProductID = '" + ProductVariableCostID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productVariableCost = new ProductVariableCost((int) Convert.ToInt64(reader["ProductID"]),
                        (int) Convert.ToInt64(reader["ProductVariableCost"]));
                    productVariableCosts.Add(productVariableCost);
                }
            }

            connection.Close();

            return productVariableCosts;
        }

        public ProductsVariableCostInsert InsertProductVariableCost(
            ProductsVariableCostInsert productsVariableCostInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductVariableCost",
                        productsVariableCostInsert.ProductsVariableCost);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostInsert;
            }
        }

        public ProductsVariableCostUpdate UpdateProductVariableCost(
            ProductsVariableCostUpdate productsVariableCostUpdate)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@VariableCostIDUpdate",
                        productsVariableCostUpdate.ProductsVariableCostID);
                    command.Parameters.AddWithValue("@VariableCostValueUpdate",
                        productsVariableCostUpdate.ProductsVariableCost);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostUpdate;
            }
        }

        public ProductsVariableCostDelete DeleteProductVariableCost(
            ProductsVariableCostDelete productsVariableCostDelete)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureDeleteProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@VariableCostIDDelete",
                        productsVariableCostDelete.ProductsVariableCostID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostDelete;
            }
        }
    }
}