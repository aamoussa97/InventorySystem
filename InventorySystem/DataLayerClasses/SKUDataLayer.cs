using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class SKUDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public SKUDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public SKU InsertSKU(SKU sKU)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsSKU", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKU", sKU.SKUValue);
                    command.Parameters.AddWithValue("@SKUID_Output", sKU.SKUID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    sKU.SKUID = Convert.ToInt32(command.Parameters["@BrandID_Output"].Value);
                }

                return sKU;
            }

        }

        public SKU UpdateSKU(SKU sKU)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsSKU", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKU", sKU.SKUValue);
                    command.Parameters.AddWithValue("@SKUID_Output", sKU.SKUID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    sKU.SKUID = Convert.ToInt32(command.Parameters["@BrandID_Output"].Value);
                }

                return sKU;
            }

        }

        public SKU DeleteSKU(SKU sKU)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsSKU", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKU", sKU.SKUValue);
                    command.Parameters.AddWithValue("@SKUID_Output", sKU.SKUID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    sKU.SKUID = Convert.ToInt32(command.Parameters["@BrandID_Output"].Value);
                }

                return sKU;
            }

        }

        /*
        public IEnumerable<Brand> GetBrandsByName(string BrandName)
        {
            List<Brand> brands = new List<Brand>();
            String toSearch = String.Format("SELECT * FROM [ViewBrands] WHERE BrandName LIKE '%{0}%'", BrandName);
            command = new SqlCommand(toSearch, connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Brand brand = new Brand((int)Convert.ToInt64(reader["BrandID"]),
                       (String)reader["BrandName"]);
                    brands.Add(brand);
                }
            }

            connection.Close();
            return brands;
        }*/

        public IEnumerable<SKU> GetProductSKU(int? SKUID)
        {
            List<SKU> sKUs = new List<SKU>();

            if (SKUID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductsSKU]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductsSKU] WHERE ProductID = '" + SKUID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    SKU sKU = new SKU((int)Convert.ToInt64(reader["ProductID"]),
                       (long)reader["ProductSKU"]);
                    sKUs.Add(sKU);
                }
            }

            connection.Close();

            return sKUs;
        }
    }
}
