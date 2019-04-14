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
        }

        public IEnumerable<Brand> GetBrand(int? BrandID)
        {
            List<Brand> brands = new List<Brand>();

            if (BrandID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewBrands]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewBrands] WHERE BrandID = '" + BrandID + "'", connection);
            }

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
    }
}
