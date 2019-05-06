using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductQuantitiesDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductQuantitiesDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductQuantity> GetQuantities(int? ProductID)
        {
            List<ProductQuantity> productQuantites = new List<ProductQuantity>();

            if (ProductID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductQuantities]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductQuantities] WHERE ProductID = '" + ProductID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    ProductQuantity productQuantity = new ProductQuantity((int)Convert.ToInt64(reader["ProductID"]),
                        (int)Convert.ToInt64(reader["ProductQuantity"]));
                    productQuantites.Add(productQuantity);
                }
            }

            connection.Close();

            return productQuantites;
        }

        public ProductBrandInsert InsertProductBrand(ProductBrandInsert productBrandInsert)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsBrand", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductBrandName", productBrandInsert.BrandName);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productBrandInsert;
            }

        }

        public ProductBrandsUpdate UpdateProductBrand(ProductBrandsUpdate productBrandsUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProductsBrand", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@BrandIDUpdate", productBrandsUpdate.BrandID);
                    command.Parameters.AddWithValue("@BrandNameUpdate", productBrandsUpdate.BrandName);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productBrandsUpdate;
            }

        }

        public ProductBrandsDelete DeleteProductBrand(ProductBrandsDelete productBrandsDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProductsBrand", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@BrandIDDelete", productBrandsDelete.BrandID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productBrandsDelete;
            }

        }
    }
}
