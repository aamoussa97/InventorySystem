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

        public PricesDataLayer(IConfiguration configuration)
        {
            String connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public int InsertPrice(Price price)
        {

            try
            {
                command.CommandText = "INSERT INTO Prices VALUES(@PriceID, @PriceValue)";
                command.Parameters.AddWithValue("PriceID", price.PriceID);
                command.Parameters.AddWithValue("PriceValue", price.PriceValue);

                command.CommandType = CommandType.Text;
                connection.Open();
                return command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection != null)
                {
                    connection.Close();
                }
            }
        }

        public IEnumerable<Price> GetPrice(int PriceID)
        {
            List<Price> prices = new List<Price>();

            if (PriceID == 0)
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
