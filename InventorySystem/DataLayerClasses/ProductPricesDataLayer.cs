using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductPricesDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public ProductPricesDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductPrice> GetPrice(int? ProductPriceID)
        {
            var productPrices = new List<ProductPrice>();

            if (ProductPriceID == null)
                command = new SqlCommand("SELECT * FROM [ViewProductPrices]", connection);
            else
                command = new SqlCommand("SELECT * FROM [ViewProductPrices] WHERE ProductID = '" + ProductPriceID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productPrice = new ProductPrice((int) Convert.ToInt64(reader["ProductID"]),
                        (int) Convert.ToInt64(reader["ProductPrice"]));
                    productPrices.Add(productPrice);
                }
            }

            connection.Close();

            return productPrices;
        }

        public ProductsPriceInsert InsertProductPrice(ProductsPriceInsert productsPriceInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsPrice", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductPrice", productsPriceInsert.ProductPrice);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsPriceInsert;
            }
        }

        public ProductsPriceUpdate UpdateProductPrice(ProductsPriceUpdate productsPriceUpdate)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateProductsPrice", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@PriceIDUpdate", productsPriceUpdate.ProductPriceID);
                    command.Parameters.AddWithValue("@PriceValueUpdate", productsPriceUpdate.ProductPrice);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsPriceUpdate;
            }
        }

        public ProductsPriceDelete DeleteProductPrice(ProductsPriceDelete productsPriceDelete)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsPrice", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductPrice", productsPriceDelete.ProductPriceID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsPriceDelete;
            }
        }
    }
}