using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductSkusDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductSkusDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductSku> GetProductSku(int? ProductSkuID)
        {
            List<ProductSku> productSkus = new List<ProductSku>();

            if (ProductSkuID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductsSKU]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductsSKU] WHERE ProductID = '" + ProductSkuID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    ProductSku productSku = new ProductSku((int)Convert.ToInt64(reader["ProductID"]),
                       (long)reader["ProductSKU"]);
                    productSkus.Add(productSku);
                }
            }

            connection.Close();

            return productSkus;
        }

        public ProductsSkuInsert InsertProductSKU(ProductsSkuInsert productsSkuInsert)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsSKU", connection))
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
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProductsSKU", connection))
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
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProductsSKU", connection))
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
