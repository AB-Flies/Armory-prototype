using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using Library;
using System.Threading.Tasks;

namespace ArmoryWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private int f = 0; 

        private int Next()
        {
            f++;
            return f; 
        }
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
                if (Session[weapon.Id.ToString()] == null)
                    Session[weapon.Id.ToString()] = 0;
                container.Controls.Add(ProductPanel(weapon, weapon.Id));
            }
        }

        private Panel ProductPanel(ENWeapon weapon, int id) 
        {
            List<string> nombres = new List<string>
            {
                "col", "card", "image-container", "body", "lower-body", "button-group"
            };
            Dictionary<string, Panel> panels = new Dictionary<string, Panel>();
            Button view = new Button(), addToCart = new Button(), plus = new Button(), minus = new Button(), quantity = new Button();
            LiteralControl header = new LiteralControl(string.Format("<h5>{0} <i class=\"fa-brands fa-gg-circle\"></i></h5>", weapon.Price));
            LiteralControl p = new LiteralControl(string.Format("<p class=\"card-text\">{0} skin from the collection {1}</p>", weapon.WeaponType.Nombre, weapon.SkinCollection.Nombre));
            LiteralControl small = (weapon.Stock == 0 ?
                new LiteralControl(string.Format("<small class=\"text-body-secondary no-stock\" > {0} in stock </small>", weapon.Stock)) :
                new LiteralControl(string.Format("<small class=\"text-body-secondary\"> {0} in stock </small>", weapon.Stock)));
            ImageButton image = new ImageButton();
            UpdatePanel updatePanel = new UpdatePanel();

            foreach (string nombre in nombres)
                panels.Add(nombre, new Panel());


            panels["col"].CssClass = "col";
            panels["card"].CssClass = "card shadow-sm";
            panels["image-container"].CssClass = "image-container";
            panels["body"].CssClass = "card-body";
            panels["lower-body"].CssClass = "d-flex justify-content-between align-items-center";
            panels["button-group"].CssClass = "btn-group";
            view.CssClass = "btn btn-sm btn-outline-secondary";
            addToCart.CssClass = "btn btn-sm btn-outline-primary";
            plus.CssClass = "btn btn-sm btn-outline-success";
            minus.CssClass = "btn btn-sm btn-outline-danger";
            quantity.CssClass = "btn btn-sm btn-outline-secondary";
            panels["button-group"].Style["flex-direction"] = "column";

            view.Text = "View";
            addToCart.Text = "Añadir al carrito";
            plus.Text = "+";
            minus.Text = "-";
            quantity.Text = Session[id.ToString()].ToString();

            updatePanel.ID = id.ToString();

            view.Style["border-radius"] = "10px 10px 0 0";
            plus.Style["border-radius"] = minus.Style["border-radius"] = quantity.Style["border-radius"] = "0";
            plus.Style["width"] = minus.Style["width"] = "25%";
            plus.Style["border-width"] = "0 1px 0 1px";
            plus.Style["border-bottom-color"] = "#0d6efd";
            plus.Style["border-top-color"] = "#6c757d";
            quantity.Style["width"] = "50%";
            quantity.Style["pointer-events"] = "none";
            quantity.Style["border-width"] = "0";
            minus.Style["border-bottom-color"] = "#0d6efd";
            minus.Style["border-top-color"] = "#6c757d";
            minus.Style["border-width"] = "0 1px 0 1px";
            addToCart.Style["border-radius"] = "0 0 10px 10px";
            panels["lower-body"].Style["flex-direction"] = "column";
            panels["lower-body"].Style["gap"] = "20px";
            panels["button-group"].Style["width"] = "80%";

            plus.Click += Plus_Click;
            image.Click += Unnamed_Click;
            minus.Click += Minus_Click;

            image.ImageUrl = string.Format("../../assets/images/{0}/{1}.png", weapon.SkinCollection.Nombre, weapon.WeaponType.Nombre);

            panels["image-container"].Controls.Add(image);
            panels["card"].Controls.Add(panels["image-container"]);
            panels["body"].Controls.Add(header);
            panels["body"].Controls.Add(p);
            updatePanel.ContentTemplateContainer.Controls.Add(minus);
            updatePanel.ContentTemplateContainer.Controls.Add(quantity);
            updatePanel.ContentTemplateContainer.Controls.Add(plus);
            panels["button-group"].Controls.Add(view);
            panels["button-group"].Controls.Add(updatePanel);
            panels["button-group"].Controls.Add(addToCart);
            panels["lower-body"].Controls.Add(panels["button-group"]);
            panels["lower-body"].Controls.Add(small);
            panels["body"].Controls.Add(panels["lower-body"]);
            panels["card"].Controls.Add(panels["body"]);
            panels["col"].Controls.Add(panels["card"]);

            return panels["col"];
        }

        private async void Minus_Click(object sender, EventArgs e)
        {
            Control control = (Control)((Button)sender).Parent;
            string id = control.Parent.ID;
            Button button = (Button)control.Controls[1];

            if ((int)Session[id] == 0)
            {
                // Aquí añades una clase CSS al botón objetivo para activar la animación
                button.CssClass += " trembling";

                button.CssClass += " trembling";

                // Esperar 0.5 segundos
                await Task.Delay(500); // 500 milisegundos = 0.5 segundos

                // Quitar la clase del botón
                button.CssClass = button.CssClass.Replace("trembling", "").Trim();

                // Llamada a una función JavaScript después de 0.5 segundos para eliminar la clase trembling
                //ScriptManager.RegisterStartupScript(this, GetType(), "removeTremblingClass", "setTimeout(function(){ document.getElementById('" + button.ClientID + "').classList.remove('trembling'); }, 500);", true);
            } else
            {
                Session[id] = (int)Session[id] - 1;
                button.Text = ((int)Session[id]).ToString();
            }
        }

        private void Plus_Click(object sender, EventArgs e)
        {
            Control control = (Control)((Button)sender).Parent;
            string id = control.Parent.ID;
            Button button = (Button)control.Controls[1];
            ENWeapon weapon = new ENWeapon();
            weapon.Id = int.Parse(id);
            weapon.Read();

            if ((int)Session[id] == weapon.Stock)
            {
                // Aquí añades una clase CSS al botón objetivo para activar la animación
                button.CssClass += " trembling";

                // Llamada a una función JavaScript después de 0.5 segundos para eliminar la clase trembling
                ScriptManager.RegisterStartupScript(this, GetType(), "removeTremblingClass", "setTimeout(function(){ document.getElementById('" + button.ClientID + "').classList.remove('trembling'); }, 500);", true);
            }
            else
            {
                Session[id] = (int)Session[id] + 1;
                button.Text = ((int)Session[id]).ToString();
            }
        }
    }
}