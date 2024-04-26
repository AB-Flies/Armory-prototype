using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library
{
    public class ENWeaponType
    {
        string _nombre, _descripcion;

        public string Descripcion { get => _descripcion; set => _descripcion = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }

        public ENWeaponType() { }

        public static ENWeaponType Read(string nombre)
        {
            return CADWeaponType.Read(nombre);
        }
    }
}
