using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class BrandsDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public BrandsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public int InsertBrand(Brand brand)
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                String query = "INSERT INTO Brands (BrandID, BrandName) VALUES (@BrandID, @BrandName)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@BrandID", brand.BrandID);
                    command.Parameters.AddWithValue("@BrandName", brand.BrandName);

                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    // Check Error
                    if (result < 0)
                        Console.WriteLine("Error inserting data into Database!");
                        //Throw error status code
                }

                return -1;
            }

        }

        public IEnumerable<Brand> GetBrand(int BrandID)
        {
            List<Brand> brands = new List<Brand>();

            if (BrandID == 0)
            {
                command = new SqlCommand("SELECT * FROM Brands", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM Brands WHERE BrandID = " + BrandID, connection);
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
        }
    }
}
