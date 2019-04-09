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
        SqlConnection connection;
        SqlCommand command;

        public VariableCostsDataLayer(IConfiguration configuration)
        {
            String connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public int InsertVariableCost(VariableCost variableCost)
        {

            try
            {
                command.CommandText = "INSERT INTO VariableCosts VALUES(@VariableCostID, @VariableCostValue)";
                command.Parameters.AddWithValue("VariableCostID", variableCost.VariableCostID);
                command.Parameters.AddWithValue("VariableCostValue", variableCost.VariableCostValue);

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

        public IEnumerable<VariableCost> GetVariableCost(int VariableCostID)
        {
            List<VariableCost> variableCosts = new List<VariableCost>();

            if (VariableCostID == 0)
            {
                command = new SqlCommand("SELECT * FROM ProductVariableCosts", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM ProductVariableCosts WHERE ProductID = " + VariableCostID, connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    VariableCost variableCost = new VariableCost((int)Convert.ToInt64(reader["ProductID"]),
                         (int)Convert.ToInt64(reader["ProductVariableCost"]));
                    variableCosts.Add(variableCost);
                }
            }

            connection.Close();

            return variableCosts;
        }
    }
}
