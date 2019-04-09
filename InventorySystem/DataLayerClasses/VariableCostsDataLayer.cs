using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class VariableCostsDataLayer
    {
        readonly SqlConnection _connection;
        private SqlCommand _command;

        public VariableCostsDataLayer(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("localDB");
            _connection = new SqlConnection(connectionString);
        }

        public int InsertVariableCost(VariableCost variableCost)
        {

            try
            {
                _command.CommandText = "INSERT INTO VariableCosts VALUES(@VariableCostID, @VariableCostValue)";
                _command.Parameters.AddWithValue("VariableCostID", variableCost.VariableCostID);
                _command.Parameters.AddWithValue("VariableCostValue", variableCost.VariableCostValue);

                _command.CommandType = CommandType.Text;
                _connection.Open();
                return _command.ExecuteNonQuery();
            }
            finally
            {
                _connection?.Close();
            }
        }

        public IEnumerable<VariableCost> GetVariableCost(int? variableCostId)
        {
            var variableCosts = new List<VariableCost>();

            _command = variableCostId == null ? new SqlCommand("SELECT * FROM ProductVariableCosts", _connection) : new SqlCommand("SELECT * FROM ProductVariableCosts WHERE ProductID = " + variableCostId, _connection);

            _connection.Open();

            using (var reader = _command.ExecuteReader())
            {
                while (reader.Read())
                {
                    VariableCost variableCost = new VariableCost((int)Convert.ToInt64(reader["ProductID"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]));
                    variableCosts.Add(variableCost);
                }
            }

            _connection.Close();

            return variableCosts;
        }
    }
}
