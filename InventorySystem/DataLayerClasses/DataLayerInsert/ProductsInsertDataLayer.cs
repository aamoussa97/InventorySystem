using System;
using System.Data;
using System.Data.SqlClient;
using InventorySystem.Models;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.DataLayerClasses
{
    public class ProductsInsertDataLayer
    {
        public static int ProductIDFromInsert;
        private readonly IConfiguration _configuration;
        private int BrandID;

        private SqlConnection connection;
        private readonly string connectionString;
        private int GrowthFactorID;
        private int MaterialID;
        private int MaterialsOrderID;
        private int NameID;
        private int PriceID;
        private int QuantityID;

        private int SKUID;
        private int StartFactorID;
        private int VariableCostID;

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

            var productsInsert = new ProductsInsert(SKUID, NameID, BrandID, PriceID, VariableCostID, StartFactorID,
                GrowthFactorID);

            return productsInsert;
        }

        public int InsertName(string name)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsNameProductsV2", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductName", name);
                    command.Parameters.AddWithValue("@ProductName_Output", NameID).Direction =
                        ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    NameID = Convert.ToInt32(command.Parameters["@ProductName_Output"].Value);
                }

                return NameID;
            }
        }

        public int InsertBrand(string brandName)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsBrandProductsV2", connection))
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
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsSKUProducts", connection))
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
            var productsInsert = new ProductsInsert();

            foreach (var productsInsertMaterial in productsInsertComplex.productsInsertMaterials)
            {
                InsertMaterial(productID, productsInsertMaterial.MaterialName);
                Console.WriteLine(productID + productsInsertMaterial.MaterialName);
            }
        }

        public void InsertMaterial(int productID, string materialName)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                {
                    using (var command = new SqlCommand("ProcedureInsertProductsMaterialsV3", connection))
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
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsPriceProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductPrice", priceValue);
                    command.Parameters.AddWithValue("@ProductPrice_Output", PriceID).Direction =
                        ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    PriceID = Convert.ToInt32(command.Parameters["@ProductPrice_Output"].Value);
                }

                return PriceID;
            }
        }

        public int InsertVariableCost(int variableCost)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsVariableCostProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductVariableCost", variableCost);
                    command.Parameters.AddWithValue("@ProductVariableCost_Output", VariableCostID).Direction =
                        ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    VariableCostID = Convert.ToInt32(command.Parameters["@ProductVariableCost_Output"].Value);
                }

                return VariableCostID;
            }
        }

        public int InsertStartFactor(int startFactor)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsStartFactorProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductStartFactor", startFactor);
                    command.Parameters.AddWithValue("@ProductStartFactor_Output", GrowthFactorID).Direction =
                        ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    StartFactorID = Convert.ToInt32(command.Parameters["@ProductStartFactor_Output"].Value);
                }

                return StartFactorID;
            }
        }

        public int InsertGrowthFactor(int growthFactor)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsGrowthFactorProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductGrowthFactor", growthFactor);
                    command.Parameters.AddWithValue("@ProductGrowthFactor_Output", GrowthFactorID).Direction =
                        ParameterDirection.Output;

                    connection.Open();
                    command.ExecuteNonQuery();

                    GrowthFactorID = Convert.ToInt32(command.Parameters["@ProductGrowthFactor_Output"].Value);
                }

                return GrowthFactorID;
            }
        }

        public void InsertProductQuantity(int productID, ProductsInsertComplex productsInsertComplex)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand("ProcedureInsertProductsQuantitiesProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ProductID_Input", productID);
                    command.Parameters.AddWithValue("@ProductQuantity_Input", productsInsertComplex.ProductQuantity);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}