using System;
using System.Data.SqlClient;

namespace InventorySystem.Controllers.Connection
{
    public class SqlConnector
    {
        public void doAction()
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();

            builder.DataSource = "lagerservice.database.windows.net";
            builder.UserID = "MrBoss";
            builder.Password = "C[CWquJM2P$2jR,9~AF+";
            builder.InitialCatalog = "lagersystem";

            using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
            {
                Console.WriteLine("\nQuery data example:");
                Console.WriteLine("=====================");
                
                connection.Open();
                //https://docs.microsoft.com/en-us/azure/sql-database/sql-database-connect-query-dotnet-core
            
                
            }
        }
        }
}