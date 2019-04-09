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
        readonly SqlConnection _connection;
        private SqlCommand _command;

        public PricesDataLayer(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("localDB");
            _connection = new SqlConnection(connectionString);
        }

        public int InsertPrice(Price price)
        {

            try
            {
                _command.CommandText = "INSERT INTO Prices VALUES(@PriceID, @PriceValue)";
                _command.Parameters.AddWithValue("PriceID", price.PriceID);
                _command.Parameters.AddWithValue("PriceValue", price.PriceValue);

                _command.CommandType = CommandType.Text;
                _connection.Open();
                return _command.ExecuteNonQuery();
            }
            finally
            {
                _connection?.Close();
            }
        }

        public IEnumerable<Price> GetPrice(int? priceId)
        {
            var prices = new List<Price>();

            _command = priceId == null ? new SqlCommand("SELECT * FROM ProductPrices", _connection) : new SqlCommand("SELECT * FROM ProductPrices WHERE ProductID = " + priceId, _connection);

            _connection.Open();

            using (var reader = _command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Price price = new Price((int)Convert.ToInt64(reader["ProductID"]),
                         (int)Convert.ToInt64(reader["ProductPrice"]));
                    prices.Add(price);
                }
            }

            _connection.Close();

            return prices;
        }

    }
}
