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
                String query = "INSERT INTO Brands (BrandName) VALUES (@BrandName)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
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

        internal IEnumerable<BrandsGET> GetBrandsByName(string name)
        {
            List<BrandsGET> brandsGETs = new List<BrandsGET>();

            /*
            String toSearch = String.Format("SELECT * FROM Brands WHERE brandname LIKE '%{0}%'", name);
            command = new SqlCommand(toSearch, connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    brands.Add(new Brand(Convert.ToInt32(reader["BrandID"]), (String)reader["BrandName"]));
                }
            }

            connection.Close();
            return brands;*/

            if (name == "")
            {
                command = new SqlCommand("SELECT * FROM Brands", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM Brands WHERE BrandName LIKE '" + name + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    BrandsGET brandsGET = new BrandsGET((String)reader["BrandName"]);
                    brandsGETs.Add(brandsGET);
                }
            }

            connection.Close();

            return brandsGETs;
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
