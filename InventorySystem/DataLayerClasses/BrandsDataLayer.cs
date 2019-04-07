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

        public BrandsDataLayer(IConfiguration configuration)
        {
            String connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public int InsertBrand(Brand brand)
        {
            String toSearch = String.Format("INSERT INTO Brands(BrandID, BrandName) VALUES({0}, {1})",
                brand.BrandID,
                brand.BrandName);

            command = new SqlCommand(toSearch, connection);

                connection.Open();
                return command.ExecuteNonQuery();
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
