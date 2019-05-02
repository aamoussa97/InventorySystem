using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using InventorySystem.Models;
using Newtonsoft.Json;

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

        public static int ProductIDFromInsert;

        public ProductsInsertDataLayer(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("localDB");
            connection = new SqlConnection(connectionString);
            _configuration = configuration;
        }

        /*
        public ProductsInsert InsertProduct(ProductsInsertComplex productsInsertComplex)
        {
            ProductsInsert productsInsert = new ProductsInsert();

            productsInsert = InsertProductToID(productsInsertComplex);

          
            return productsInsert;
        }*/

        public ProductsInsert InsertProduct(ProductsInsertComplex productsInsertComplex)
        {
            SKUID = InsertSKU(productsInsertComplex.ProductSKU);
            NameID = InsertName(productsInsertComplex.ProductName);
            BrandID = InsertBrand(productsInsertComplex.ProductBrand);
            PriceID = InsertPrice(productsInsertComplex.ProductPrice);
            VariableCostID = InsertVariableCost(productsInsertComplex.ProductVariableCost);
            StartFactorID = InsertStartFactor(productsInsertComplex.ProductStartFactor);
            GrowthFactorID = InsertGrowthFactor(productsInsertComplex.ProductGrowthFactor);

            ProductsInsert productsInsert = new ProductsInsert(SKUID, NameID, BrandID, PriceID, VariableCostID, StartFactorID, GrowthFactorID);

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

        public void InsertProductMaterial(int productID, ProductsInsertComplex productsInsertComplex)
        {
            ProductsInsert productsInsert = new ProductsInsert();
            
            foreach (ProductsInsertComplex.ProductsInsertMaterial productsInsertMaterial in productsInsertComplex.productsInsertMaterials)
            {
                InsertMaterial(productID, productsInsertMaterial.MaterialName);
                Console.WriteLine(productID + productsInsertMaterial.MaterialName);
            }
        }

        public void InsertMaterial(int productID, string materialName)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                {
                    using (SqlCommand command = new SqlCommand("ProcedureInsertProductsMaterialsV3", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@ProductID_Input", productID);
                        command.Parameters.AddWithValue("@MaterialName_Input", materialName);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
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
