using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class PricesDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public PricesDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public Price InsertPrice(Price price)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsPrice", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductPrice", price.PriceValue);
                    command.Parameters.AddWithValue("@ProductPrice_Output", price.PriceID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    price.PriceID = Convert.ToInt32(command.Parameters["@ProductPrice_Output"].Value);

                    /*
                    // Check Error
                    if (result < 0)
                        Console.WriteLine("Error inserting data into Database!");
                        //Throw error status code
                        */
                }

                return price;
            }
        }

        public IEnumerable<Price> GetPrice(int? PriceID)
        {
            List<Price> prices = new List<Price>();

            if (PriceID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductPrices]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductPrices] WHERE ProductID = '" + PriceID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Price price = new Price((int)Convert.ToInt64(reader["ProductID"]),
                         (int)Convert.ToInt64(reader["ProductPrice"]));
                    prices.Add(price);
                }
            }

            connection.Close();

            return prices;
        }

    }
}
