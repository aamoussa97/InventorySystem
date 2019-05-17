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
        String connectionString;

        public MaterialsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<Material> GetMaterial(int? MaterialID)
        {
            List<Material> materials = new List<Material>();

            if (MaterialID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewMaterials]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewMaterials] WHERE MaterialID = '" + MaterialID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Material material = new Material((int)Convert.ToInt64(reader["MaterialID"]),
                         //(String)reader["MaterialSKU"],
                         (String)reader["MaterialName"]);
                    materials.Add(material);
                }
            }

            connection.Close();

            return materials;
        }

        public MaterialsInsert InsertMaterial(MaterialsInsert materialsInsert)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertMaterial", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@MaterialName", materialsInsert.MaterialName);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return materialsInsert;
            }
        }

        public MaterialsUpdate UpdateMaterial(MaterialsUpdate materialsUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateMaterial", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@MaterialIDUpdate", materialsUpdate.MaterialName);
                    command.Parameters.AddWithValue("@MaterialNameUpdate", materialsUpdate.MaterialID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return materialsUpdate;
            }
        }

        public MaterialsDelete DeleteMaterial(MaterialsDelete materialsDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteMaterial", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@MaterialIDDelete", materialsDelete.MaterialID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return materialsDelete;
            }
        }

    }
}
