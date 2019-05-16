using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductSkusDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public ProductSkusDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductSku> GetProductSku(int? ProductSkuID)
        {
            var productSkus = new List<ProductSku>();

            if (ProductSkuID == null)
                command = new SqlCommand("SELECT * FROM [ViewProductsSKU]", connection);
            else
                command = new SqlCommand("SELECT * FROM [ViewProductsSKU] WHERE ProductID = '" + ProductSkuID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productSku = new ProductSku((int) Convert.ToInt64(reader["ProductID"]),
                        (long) reader["ProductSKU"]);
                    productSkus.Add(productSku);
                }
            }

            connection.Close();

            return productSkus;
        }

        public ProductsSkuInsert InsertProductSKU(ProductsSkuInsert productsSkuInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsSKU", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKU", productsSkuInsert.ProductSku);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsSkuInsert;
            }
        }

        public ProductsSkuUpdate UpdateProductSku(ProductsSkuUpdate productsSkuUpdate)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateProductsSKU", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@SKUIDUpdate", productsSkuUpdate.ProductSkuID);
                    command.Parameters.AddWithValue("@SKUValueUpdate", productsSkuUpdate.ProductSku);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsSkuUpdate;
            }
        }

        public ProductsSkuDelete DeleteProductSku(ProductsSkuDelete productsSkuDelete)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureDeleteProductsSKU", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@SKUIDDelete", productsSkuDelete.ProductSkuID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsSkuDelete;
            }
        }
    }
}