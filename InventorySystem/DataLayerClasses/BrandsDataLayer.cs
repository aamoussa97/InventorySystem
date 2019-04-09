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
        readonly SqlConnection _connection;
        private SqlCommand _command;
        private readonly string _connectionString;

        public BrandsDataLayer(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("localDB");
            _connection = new SqlConnection(_connectionString);
        }

        public int InsertBrand(Brand brand)
        {

            using (var connection = new SqlConnection(_connectionString))
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

        public IEnumerable<string> GetBrandsByName(string name)
        {
            var brands = new List<string>();
            var toSearch = $"SELECT * FROM [ShowBrands] WHERE BrandName LIKE '%{name}%'";
            _command = new SqlCommand(toSearch, _connection);

            _connection.Open();

            using (var reader = _command.ExecuteReader())
            {
                while (reader.Read())
                {
                    brands.Add(reader["BrandID"].ToString());
                    brands.Add((String)reader["BrandName"]);
                }
            }

            _connection.Close();
            return brands;
        }

        public IEnumerable<Brand> GetBrand(int? brandId)
        {
            var brands = new List<Brand>();

            _command = brandId == null ? new SqlCommand("SELECT * FROM Brands", _connection) : new SqlCommand("SELECT * FROM Brands WHERE BrandID = " + brandId, _connection);

            _connection.Open();

            using (var reader = _command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var brand = new Brand((int)Convert.ToInt64(reader["BrandID"]),
                       (string)reader["BrandName"]);
                    brands.Add(brand);
                }
            }

            _connection.Close();

            return brands;
        }
    }
}
