using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductMaterialsOrderDataLayer
    {
        SqlConnection connection;
        SqlCommand command;
        String connectionString;

        public ProductMaterialsOrderDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
        }

        public MaterialsOrder InsertMaterialsOrder(MaterialsOrder materialsOrder)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsMaterialsOrder", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductMaterialOrderID", materialsOrder.MaterialID);
                    command.Parameters.AddWithValue("@ProductMaterialOrderID_Output", materialsOrder.MaterialsOrderID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    materialsOrder.MaterialsOrderID = Convert.ToInt32(command.Parameters["@ProductMaterialOrderID_Output"].Value);
                }

                return materialsOrder;
            }

        }

        public ProductMaterialsOrderUpdate UpdateMaterialsOrder(ProductMaterialsOrderUpdate productMaterialsOrderUpdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureUpdateProductsMaterialsOrder", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductMaterialOrderIDUpdate", productMaterialsOrderUpdate.MaterialsOrderID);
                    command.Parameters.AddWithValue("@ProductMaterialIDValueUpdate", productMaterialsOrderUpdate.MaterialID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productMaterialsOrderUpdate;
            }

        }

        public ProductMaterialsOrderDelete DeleteMaterialsOrder(ProductMaterialsOrderDelete productMaterialsOrderDelete)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureDeleteProductsMaterialsOrder", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@MaterialsOrderIDDelete", productMaterialsOrderDelete.MaterialsOrderID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                return productMaterialsOrderDelete;
            }

        }

        /*
        public IEnumerable<Brand> GetBrandsByName(string BrandName)
        {
            List<Brand> brands = new List<Brand>();
            String toSearch = String.Format("SELECT * FROM [ViewBrands] WHERE BrandName LIKE '%{0}%'", BrandName);
            command = new SqlCommand(toSearch, connection);

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Brand brand = new Brand((int)Convert.ToInt64(reader["BrandID"]),
                       (String)reader["BrandName"]);
                    brands.Add(brand);
                }
            }

            connection.Close();
            return brands;
        }*/

        public IEnumerable<MaterialsOrder> GetProductMaterialsOrder(int? MaterialsOrderID)
        {
            List<MaterialsOrder> materialsOrders = new List<MaterialsOrder>();

            if (MaterialsOrderID == null)
            {
                command = new SqlCommand("SELECT * FROM [ViewProductMaterials]", connection);
            }
            else
            {
                command = new SqlCommand("SELECT * FROM [ViewProductMaterials] WHERE ProductID = '" + MaterialsOrderID + "'", connection);
            }

            connection.Open();

            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    MaterialsOrder materialsOrder = new MaterialsOrder((int)Convert.ToInt64(reader["ProductID"]),
                       (int)Convert.ToInt64(reader["MaterialID"]));
                    materialsOrders.Add(materialsOrder);
                }
            }

            connection.Close();

            return materialsOrders;
        }
    }
}
