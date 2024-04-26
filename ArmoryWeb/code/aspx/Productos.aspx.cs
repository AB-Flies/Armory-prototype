using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using Library;

namespace ArmoryWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cover.aspx");
            Debug.WriteLine("Hola");
        }

        protected void ReadProducts(object sender, EventArgs e)
        {
            Panel container = (Panel)sender;
            container.Controls.Clear();
            List<ENWeapon> weapons = ENWeapon.ReadAll();
            foreach (ENWeapon weapon in weapons)
            {
                Debug.WriteLine(string.Format("{0}, {1}", weapon.WeaponType.Nombre, weapon.SkinCollection.Nombre));
                container.Controls.Add(ProductPanel(weapon));
            }
        }

        private Panel ProductPanel(ENWeapon weapon)
        {
            List<string> nombres = new List<string>
            {
                "col", "card", "image-container", "body", "lower-body", "button-group"
            };
            Dictionary<string, Panel> panels = new Dictionary<string, Panel>();
            Button view = new Button(), edit = new Button();
            LiteralControl header = new LiteralControl(string.Format("<h5>{0} <i class=\"fa-brands fa-gg-circle\"></i></h5>", weapon.Price));
            LiteralControl p = new LiteralControl(string.Format("<p class=\"card-text\">{0} skin from the collection {1}</p>", weapon.WeaponType.Nombre, weapon.SkinCollection.Nombre));
            LiteralControl small = new LiteralControl(string.Format("<small class=\"text-body-secondary\"> {0} in stock </small>", weapon.Stock));
            ImageButton image = new ImageButton();

            for (int i = 0; i < 6; i++)
                panels.Add(nombres[i], new Panel());


            panels["col"].CssClass = "col";
            panels["card"].CssClass = "card shadow-sm";
            panels["image-container"].CssClass = "image-container";
            panels["body"].CssClass = "card-body";
            view.CssClass = "btn btn-sm btn-outline-secondary";
            edit.CssClass = "btn btn-sm btn-outline-secondary";
            panels["lower-body"].CssClass = "d-flex justify-content-between align-items-center";
            panels["button-group"].CssClass = "btn-group";

            view.Text = "View";
            edit.Text = "Edit";

            image.Click += Unnamed_Click;

            image.ImageUrl = string.Format("../../assets/images/{0}/{1}.png", weapon.SkinCollection.Nombre, weapon.WeaponType.Nombre);

            panels["image-container"].Controls.Add(image);
            panels["card"].Controls.Add(panels["image-container"]);
            panels["body"].Controls.Add(header);
            panels["body"].Controls.Add(p);
            panels["button-group"].Controls.Add(view);
            panels["button-group"].Controls.Add(edit);
            panels["lower-body"].Controls.Add(panels["button-group"]);
            panels["lower-body"].Controls.Add(small);
            panels["body"].Controls.Add(panels["lower-body"]);
            panels["card"].Controls.Add(panels["body"]);
            panels["col"].Controls.Add(panels["card"]);
            return panels["col"];
        }
    }
}