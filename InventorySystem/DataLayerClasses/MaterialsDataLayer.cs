using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class MaterialsDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public MaterialsDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<Material> GetMaterial(int? MaterialID)
        {
            var materials = new List<Material>();

            if (MaterialID == null)
                command = new SqlCommand("SELECT * FROM [ViewMaterials]", connection);
            else
                command = new SqlCommand("SELECT * FROM [ViewMaterials] WHERE MaterialID = '" + MaterialID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var material = new Material((int) Convert.ToInt64(reader["MaterialID"]),
                        //(String)reader["MaterialSKU"],
                        (string) reader["MaterialName"]);
                    materials.Add(material);
                }
            }

            connection.Close();

            return materials;
        }

        public MaterialsInsert InsertMaterial(MaterialsInsert materialsInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertMaterial", connection))
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
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateMaterial", connection))
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
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureDeleteMaterial", connection))
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