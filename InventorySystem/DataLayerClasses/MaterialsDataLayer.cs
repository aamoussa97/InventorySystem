using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class MaterialsDataLayer
    {
        SqlConnection connection;
        SqlCommand command;

        public MaterialsDataLayer(IConfiguration configuration)
        {
            String connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public int InsertMaterial(Material material)
        {

            try
            {
                command.CommandText = "INSERT INTO Materials VALUES(@MaterialID, @MaterialSKU)";
                command.Parameters.AddWithValue("MaterialID", material.MaterialID);
                command.Parameters.AddWithValue("MaterialSKU", material.MaterialSKU);

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

        public IEnumerable<Material> GetMaterial(int MaterialID)
        {
            List<Material> materials = new List<Material>();

            if (MaterialID == 0)
            {
                command = new SqlCommand("SELECT * FROM Materials", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM Materials WHERE MaterialID = " + MaterialID, connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Material material = new Material((int)Convert.ToInt64(reader["MaterialID"]),
                         (String)reader["MaterialSKU"],
                         (String)reader["MaterialName"]);
                    materials.Add(material);
                }
            }

            connection.Close();

            return materials;
        }
    }
}
