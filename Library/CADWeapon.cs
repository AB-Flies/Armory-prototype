using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.Threading.Tasks;

namespace Library
{
    class CADWeapon
    {
        private static string constring = ConfigurationManager.ConnectionStrings["Database"].ToString();
        
        public CADWeapon() { }

        public bool Read(ENWeapon eNWeapon, int id)
        {
            return true;
        }

        public static List<ENWeapon> ReadAll()
        {
            string query = "select id, weaponType, skinCollection, stock from dbo.Weapons";
            List<ENWeapon> lst = new List<ENWeapon>();
            using (SqlConnection conn = new SqlConnection(constring))
            {
                SqlCommand command = new SqlCommand(query, conn);
                conn.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        ENWeapon weapon = new ENWeapon();
                        try
                        {
                            weapon.Id = (int)reader[0];
                            weapon.WeaponType = ENWeaponType.Read((string)reader[1]);
                            weapon.SkinCollection = ENSkinCollection.Read((string)reader[2]);
                            weapon.Stock = (int)reader[3];
                            lst.Add(weapon);
                        } 
                        catch (Exception e)
                        {
                            Debug.WriteLine(e.Message);
                        }
                    }
                }
                conn.Close();
            }

            return lst;
        }
    }
}
