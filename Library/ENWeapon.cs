using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library
{
    public class ENWeapon
    {
        private int _id, _stock;
        private ENSkinCollection _skinCollection;
        private ENWeaponType _weaponType;

        public int Id { get => _id; set => _id = value; }
        public int Stock { get => _stock; set => _stock = value; }
        public ENSkinCollection SkinCollection { get => _skinCollection; set => _skinCollection = value; }
        public ENWeaponType WeaponType { get => _weaponType; set => _weaponType = value; }
        public int Price
        {
            get
            {
                if (WeaponType.Nombre == "Knife")
                    return SkinCollection.Price * 2;
                return SkinCollection.Price;
            }
        }

        public ENWeapon()
        {
            Id = 0;
            Stock = 0;
            SkinCollection = null;
            WeaponType = null;
        }

        public bool Read(int id)
        {
            CADWeapon cad = new CADWeapon();
            return cad.Read(this, id);
        }

        public static List<ENWeapon> ReadAll()
        {
            return CADWeapon.ReadAll();
        }
    }
}
