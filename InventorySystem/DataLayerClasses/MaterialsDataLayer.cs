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
        private readonly SqlConnection _connection;
        private SqlCommand _command;

        public MaterialsDataLayer(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("localDB");
            _connection = new SqlConnection(connectionString);
        }

        public int InsertMaterial(Material material)
        {

            try
            {
                _command.CommandText = "INSERT INTO Materials VALUES(@MaterialID, @MaterialSKU)";
                _command.Parameters.AddWithValue("MaterialID", material.MaterialID);
                _command.Parameters.AddWithValue("MaterialSKU", material.MaterialSKU);

                _command.CommandType = CommandType.Text;
                _connection.Open();
                return _command.ExecuteNonQuery();
            }
            finally
            {
                _connection?.Close();
            }
        }

        public IEnumerable<Material> GetMaterial(int? materialId)
        {
            var materials = new List<Material>();

            _command = materialId == null ? new SqlCommand("SELECT * FROM Materials", _connection) : new SqlCommand("SELECT * FROM Materials WHERE MaterialID = " + materialId, _connection);

            _connection.Open();

            using (var reader = _command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var material = new Material((int)Convert.ToInt64(reader["MaterialID"]),
                         (string)reader["MaterialSKU"],
                         (string)reader["MaterialName"]);
                    materials.Add(material);
                }
            }

            _connection.Close();

            return materials;
        }
    }
}
