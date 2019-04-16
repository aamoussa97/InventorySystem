using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductVariableCostsDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductVariableCostsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductVariableCost> GetProductVariableCost(int? ProductVariableCostID)
        {
            List<ProductVariableCost> productVariableCosts = new List<ProductVariableCost>();

            if (ProductVariableCostID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductVariableCosts]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductVariableCosts] WHERE ProductID = '" + ProductVariableCostID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    ProductVariableCost productVariableCost = new ProductVariableCost((int)Convert.ToInt64(reader["ProductID"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]));
                    productVariableCosts.Add(productVariableCost);
                }
            }

            connection.Close();

            return productVariableCosts;
        }

        public ProductsVariableCostInsert InsertProductVariableCost(ProductsVariableCostInsert productsVariableCostInsert)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductVariableCost", productsVariableCostInsert.ProductsVariableCost);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostInsert;
            }
        }

        public ProductsVariableCostUpdate UpdateProductVariableCost(ProductsVariableCostUpdate productsVariableCostUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@VariableCostIDUpdate", productsVariableCostUpdate.ProductsVariableCostID);
                    command.Parameters.AddWithValue("@VariableCostValueUpdate", productsVariableCostUpdate.ProductsVariableCost);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostUpdate;
            }
        }

        public ProductsVariableCostDelete DeleteProductVariableCost(ProductsVariableCostDelete productsVariableCostDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@VariableCostIDDelete", productsVariableCostDelete.ProductsVariableCostID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostDelete;
            }
        }
    }
}
