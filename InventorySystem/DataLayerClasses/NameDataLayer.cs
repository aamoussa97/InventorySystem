using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class NameDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public NameDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public Name InsertName(Name name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsName", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductName", name.NameValue);
                    command.Parameters.AddWithValue("@ProductName_Output", null).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    name.NameID = Convert.ToInt32(command.Parameters["@ProductName_Output"].Value);
                }

                return name;
            }

        }


        public Name UpdateName(Name name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsName", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductName", name.NameValue);
                    command.Parameters.AddWithValue("@ProductName_Output", null).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    name.NameID = Convert.ToInt32(command.Parameters["@ProductName_Output"].Value);
                }

                return name;
            }

        }

        public Name DeleteName(Name name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsName", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductName", name.NameValue);
                    command.Parameters.AddWithValue("@ProductName_Output", null).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    name.NameID = Convert.ToInt32(command.Parameters["@ProductName_Output"].Value);
                }

                return name;
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

        public IEnumerable<Name> GetProductName(int? NameID)
        {
            List<Name> names = new List<Name>();

            if (NameID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductNames]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductNames] WHERE ProductID = '" + NameID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Name name = new Name((int)Convert.ToInt64(reader["ProductID"]),
                       (String)reader["ProductName"]);
                    names.Add(name);
                }
            }

            connection.Close();

            return names;
        }
    }
}
