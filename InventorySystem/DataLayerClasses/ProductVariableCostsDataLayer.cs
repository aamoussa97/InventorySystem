using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductVariableCostsDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductVariableCostsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public VariableCost InsertVariableCost(VariableCost variableCost)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductVariableCost", variableCost.VariableCostValue);
                    command.Parameters.AddWithValue("@ProductVariableCost_Output", variableCost.VariableCostID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    variableCost.VariableCostID = Convert.ToInt32(command.Parameters["@ProductVariableCost_Output"].Value);

                    /*
                    // Check Error
                    if (result < 0)
                        Console.WriteLine("Error inserting data into Database!");
                        //Throw error status code
                        */
                }

                return variableCost;
            }
        }

        public ProductsVariableCostUpdate UpdateVariableCost(ProductsVariableCostUpdate productsVariableCostUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@VariableCostIDUpdate", productsVariableCostUpdate.ProductsVariableCostID);
                    command.Parameters.AddWithValue("@VariableCostValueUpdate", productsVariableCostUpdate.ProductsVariableCost);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostUpdate;
            }
        }

        public ProductsVariableCostDelete DeleteVariableCost(ProductsVariableCostDelete productsVariableCostDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProductsVariableCost", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@VariableCostIDDelete", productsVariableCostDelete.ProductsVariableCostID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productsVariableCostDelete;
            }
        }

        public IEnumerable<VariableCost> GetVariableCost(int? VariableCostID)
        {
            List<VariableCost> variableCosts = new List<VariableCost>();

            if (VariableCostID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductVariableCosts]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductVariableCosts] WHERE ProductID = '" + VariableCostID + "'", connection);
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
