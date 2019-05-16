using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductBrandsDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public ProductBrandsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductBrand> GetBrand(int? BrandID)
        {
            var productBrands = new List<ProductBrand>();

            if (BrandID == null)
                command = new SqlCommand("SELECT * FROM [ViewBrands]", connection);
            else
                command = new SqlCommand("SELECT * FROM [ViewBrands] WHERE BrandID = '" + BrandID + "'", connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productBrand = new ProductBrand((int) Convert.ToInt64(reader["BrandID"]),
                        (string) reader["BrandName"]);
                    productBrands.Add(productBrand);
                }
            }

            connection.Close();

            return productBrands;
        }

        public ProductBrandInsert InsertProductBrand(ProductBrandInsert productBrandInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsBrand", connection))
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
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateProductsBrand", connection))
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
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureDeleteProductsBrand", connection))
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