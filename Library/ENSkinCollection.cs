using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library
{
    enum Upgrades
    {
        None,
        Knife,
        All
    }

    public class ENSkinCollection
    {
        private string _nombre;
        private int _price;
        private Upgrades _upgrades;

        public string Nombre { get => _nombre; set => _nombre = value; }
        public int Price { get => _price; set => _price = value; }
        internal Upgrades Upgrades { get => _upgrades; set => _upgrades = value; }

        public ENSkinCollection() { }

        public static ENSkinCollection Read(string nombre)
        {
            return CADSkinCollection.Read(nombre);
        }
    }
}
