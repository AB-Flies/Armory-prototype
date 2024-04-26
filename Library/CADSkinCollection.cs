using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;

namespace Library
{
    class CADSkinCollection
    {
        private static string constring = ConfigurationManager.ConnectionStrings["Database"].ToString();

        public CADSkinCollection() { }

        public static ENSkinCollection Read(string nombre)
        {
            string query = string.Format("select nombre, price, upgrades from dbo.SkinCollections where nombre = '{0}'", nombre);
            ENSkinCollection skinCollection;
            using (SqlConnection conn = new SqlConnection(constring))
            {
                SqlCommand command = new SqlCommand(query, conn);
                conn.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    reader.Read();
                    skinCollection = new ENSkinCollection();
                    skinCollection.Nombre = (string)reader[0];
                    skinCollection.Price = (int)reader[1];
                    skinCollection.Upgrades = (Upgrades)reader[2];
                }
                conn.Close();
            }

            return skinCollection;
        }
    }
}
