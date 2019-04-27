using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;

namespace InventorySystem.DataLayerClasses
{
    public class ProductsInsertDataLayer
    {
        private readonly IConfiguration _configuration;

        SqlConnection connection;
        String connectionString;

        private int SKUID;
        private int NameID;
        private int BrandID;
        private int MaterialsOrderID;
        private int MaterialID;
        private int PriceID;
        private int VariableCostID;
        private int StartFactorID;
        private int GrowthFactorID;

        public ProductsInsertDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
            _configuration = configuration;
        }

        public ProductsInsert InsertProduct(ProductsGet productsGet)
        {
            SKUID = InsertSKU(productsGet.ProductSKU);
            NameID = InsertName(productsGet.ProductName);
            BrandID = InsertBrand(productsGet.ProductBrand);
            MaterialsOrderID = InsertMaterialsOrder(productsGet.ProductMaterialsOrderID);
            //MaterialID = InsertMaterial(productsGet.);
            PriceID = InsertPrice(productsGet.ProductPrice);
            VariableCostID = InsertVariableCost(productsGet.ProductVariableCost);
            StartFactorID = InsertStartFactor(productsGet.ProductStartFactor);
            GrowthFactorID = InsertGrowthFactor(productsGet.ProductGrowthFactor);

            ProductsInsert productsInsert = new ProductsInsert(SKUID, NameID, BrandID, MaterialsOrderID, PriceID, VariableCostID, StartFactorID, GrowthFactorID);

            return productsInsert;
        }

        public int InsertName(string name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsNameProductsV2", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductName", name);
                    command.Parameters.AddWithValue("@ProductName_Output", NameID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    NameID = Convert.ToInt32(command.Parameters["@ProductName_Output"].Value);
                }

                return NameID;
            }

        }

        public int InsertBrand(string brandName)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsBrandProductsV2", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductBrandName", brandName);
                    command.Parameters.AddWithValue("@BrandID_Output", BrandID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    BrandID = Convert.ToInt32(command.Parameters["@BrandID_Output"].Value);
                }

                return BrandID;
            }

        }

        public int InsertSKU(long sKU)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsSKUProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductSKU", sKU);
                    command.Parameters.AddWithValue("@SKUID_Output", SKUID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    SKUID = Convert.ToInt32(command.Parameters["@SKUID_Output"].Value);
                }

                return SKUID;
            }

        }

        public int InsertMaterial(string materialName)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertMaterialProductsV2", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@MaterialName", materialName);
                    command.Parameters.AddWithValue("@MaterialID_Output", MaterialID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    MaterialID = Convert.ToInt32(command.Parameters["@MaterialID_Output"].Value);
                }

                return MaterialID;
            }
        }

        public int InsertMaterialsOrder(int MaterialID)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsMaterialsOrderProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductMaterialOrderID", MaterialID);
                    command.Parameters.AddWithValue("@ProductMaterialOrderID_Output", MaterialsOrderID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    MaterialsOrderID = Convert.ToInt32(command.Parameters["@ProductMaterialOrderID_Output"].Value);
                }

                return MaterialsOrderID;
            }

        }

        public int InsertPrice(int priceValue)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsPriceProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductPrice", priceValue);
                    command.Parameters.AddWithValue("@ProductPrice_Output", PriceID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    PriceID = Convert.ToInt32(command.Parameters["@ProductPrice_Output"].Value);
                }

                return PriceID;
            }
        }

        public int InsertVariableCost(int variableCost)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsVariableCostProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductVariableCost", variableCost);
                    command.Parameters.AddWithValue("@ProductVariableCost_Output", VariableCostID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    VariableCostID = Convert.ToInt32(command.Parameters["@ProductVariableCost_Output"].Value);
                }

                return VariableCostID;
            }
        }

        public int InsertStartFactor(int startFactor)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsStartFactorProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductStartFactor", startFactor);
                    command.Parameters.AddWithValue("@ProductStartFactor_Output", GrowthFactorID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    StartFactorID = Convert.ToInt32(command.Parameters["@ProductStartFactor_Output"].Value);
                }

                return StartFactorID;
            }
        }

        public int InsertGrowthFactor(int growthFactor)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ProcedureInsertProductsGrowthFactorProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductGrowthFactor", growthFactor);
                    command.Parameters.AddWithValue("@ProductGrowthFactor_Output", GrowthFactorID).Direction = ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    GrowthFactorID = Convert.ToInt32(command.Parameters["@ProductGrowthFactor_Output"].Value);
                }

                return GrowthFactorID;
            }
        }

    }
}
