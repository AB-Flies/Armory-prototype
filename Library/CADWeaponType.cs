using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library
{
    class CADWeaponType
    {
        private static string constring = ConfigurationManager.ConnectionStrings["Database"].ToString();

        public CADWeaponType() { }

        public static ENWeaponType Read(string nombre)
        {
            ENWeaponType weaponType;
            string query = string.Format("select nombre, descripcion from dbo.WeaponTypes where nombre = '{0}'", nombre);
            using (SqlConnection conn = new SqlConnection(constring))
            {
                SqlCommand command = new SqlCommand(query, conn);
                conn.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    reader.Read();
                    weaponType = new ENWeaponType();
                    weaponType.Nombre = (string)reader[0];
                    weaponType.Descripcion = (string)reader[1];
                }
                conn.Close();
            }
            return weaponType;
        }
    }
}
