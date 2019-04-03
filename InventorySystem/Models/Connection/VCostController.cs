using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventorySystem.Models.Connection
{
    public class VCostController
    {
        SqlConnection conn;
        SqlCommand comm;
        Model vare;

        public int InsertVCost(VCostModel model)
        {
            try
            {
                comm.CommandText = "INSERT INTO XXXXXX VALUES(@Id, @Navn, @Price)";
                comm.Parameters.AddWithValue("Id", model.getId());
                comm.Parameters.AddWithValue("Navn", model.getNavn());
                comm.Parameters.AddWithValue("Price", model.getPrice());

                comm.CommandType = CommandType.Text;
                conn.Open();
                return comm.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public string GetVCost(int id)
        {
            string querystring = "SELECT ID, Price FROM VCost WHERE id=" + id;
            comm = new SqlCommand(querystring, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            try
            {
                while (reader.Read())
                {
                    Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
                    return String.Format("{0}, {1}", reader[0], reader[1]);
                }
                return "id not found";
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                reader.Close();
            }
        }

        public int DeleteVCost(int id)
        {
            try
            {
                comm.CommandText = "DELETE FROM LagerSystemVcost WHERE ID =" + id;
                comm.CommandType = CommandType.Text;
                conn.Open();
                return comm.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public int UpdateVCost(VCostModel model)
        {
            try
            {
                comm.CommandText = "UPDATE XXXXXX SET Navn = @navn, Price = @price WHERE ID = @id";
                comm.Parameters.AddWithValue("@id", model.getId());
                comm.Parameters.AddWithValue("@navn", model.getNavn());
                comm.Parameters.AddWithValue("@price", model.getPrice());

                comm.CommandType = CommandType.Text;
                conn.Open();
                return comm.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}
