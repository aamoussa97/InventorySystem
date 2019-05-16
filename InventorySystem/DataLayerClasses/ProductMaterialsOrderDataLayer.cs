using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductMaterialsOrderDataLayer
    {
        private SqlCommand command;
        private readonly SqlConnection connection;
        private readonly string connectionString;

        public ProductMaterialsOrderDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public IEnumerable<ProductMaterialsOrder> GetProductsFromMaterials(int? ProductMaterialsOrderID)
        {
            var products = new List<ProductMaterialsOrder>();

            if (ProductMaterialsOrderID == null)
                command = new SqlCommand("SELECT * FROM [ViewProductMaterials]", connection);
            else
                command = new SqlCommand(
                    "SELECT * FROM [ViewProductMaterials] WHERE MaterialID = '" + ProductMaterialsOrderID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productMaterialsOrder = new ProductMaterialsOrder((int) Convert.ToInt64(reader["ProductID"]),
                        (int) Convert.ToInt64(reader["MaterialID"]));
                    products.Add(productMaterialsOrder);
                }
            }

            connection.Close();

            return products;
        }

        public IEnumerable<ProductMaterialsOrderName> GetMaterialsFromProducts(int? ProductMaterialsOrderID)
        {
            var materials = new List<ProductMaterialsOrderName>();

            if (ProductMaterialsOrderID == null)
                command = new SqlCommand("SELECT * FROM [ViewProductMaterialsV2]", connection);
            else
                command = new SqlCommand(
                    "SELECT * FROM [ViewProductMaterialsV2] WHERE ProductID = '" + ProductMaterialsOrderID + "'",
                    connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var productMaterialsOrderName = new ProductMaterialsOrderName((string) reader["MaterialName"]);
                    materials.Add(productMaterialsOrderName);
                }
            }

            connection.Close();

            return materials;
        }

        public ProductMaterialsOrderInsert InsertMaterialsOrder(ProductMaterialsOrderInsert productMaterialsOrderInsert)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsMaterialsOrder", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductMaterialOrderID", productMaterialsOrderInsert.MaterialID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productMaterialsOrderInsert;
            }
        }

        public ProductMaterialsOrderUpdate UpdateMaterialsOrder(ProductMaterialsOrderUpdate productMaterialsOrderUpdate)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureUpdateProductsMaterialsOrder", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductMaterialOrderIDUpdate",
                        productMaterialsOrderUpdate.MaterialsOrderID);
                    command.Parameters.AddWithValue("@ProductMaterialIDValueUpdate",
                        productMaterialsOrderUpdate.MaterialID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productMaterialsOrderUpdate;
            }
        }

        public ProductMaterialsOrderDelete DeleteMaterialsOrder(ProductMaterialsOrderDelete productMaterialsOrderDelete)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureDeleteProductsMaterialsOrder", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@MaterialsOrderIDDelete",
                        productMaterialsOrderDelete.MaterialsOrderID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productMaterialsOrderDelete;
            }
        }
    }
}