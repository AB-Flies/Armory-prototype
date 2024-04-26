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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        private Dictionary<string, int> SubItems = new Dictionary<string, int>
        {
            {"Productos", 0 },
            {"Mantenimiento", 1}
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            string item = Request.Path.Remove(0, 11);
            item = item.Substring(0, item.LastIndexOf('.'));
            if (item == "Cart")
                return;
            Menu menu = (Menu)FindControl("Menu");
            if (item == "Productos" || item == "Mantenimiento")
                menu.FindItem("Store").ChildItems[SubItems[item]].Selected = true;
            else
                menu.FindItem(item).Selected = true;
        }

        protected void Menu_MenuItemClick(object sender, MenuEventArgs e)
        {
            MenuItem item = e.Item;
            if (item.Value == "Button")
                ShowLogIn();
            else if (item.Value == "Cover" || item.Value == "Productos" || item.Value == "Mantenimiento")
                Response.Redirect("~/code/aspx/" + item.Value + ".aspx");
        }

        protected void ShowLogIn(object sender, EventArgs e)
        {
            ShowLogIn();
        }

        protected void ShowLogIn()
        {
            Panel panel = (Panel)FindControl("modalSignin");
            panel.Style["display"] = "block !important";
        }

        protected void HideLogIn(object sender, EventArgs e)
        {
            Panel panel = (Panel)FindControl("modalSignin");
            panel.Style["display"] = "none !important";
        }

        protected void GoToCart(object sender, EventArgs e)
        {
            Response.Redirect("../aspx/Cart.aspx");
        }
    }
}