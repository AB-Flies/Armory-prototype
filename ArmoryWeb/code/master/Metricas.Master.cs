using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArmoryWeb.code.master
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MenuItemClick(object sender, MenuEventArgs e)
        {
            MenuItem item = e.Item;
            if (item.Value == "Signin")
            {
                Panel panel = (Panel)FindControl("modalSignin");
                panel.Style["display"] = "block !important";
            }
        }
        
        protected void HideLogIn(object sender, EventArgs e)
        {
            Panel panel = (Panel)FindControl("modalSignin");
            panel.Style["display"] = "none !important";
        }
    }
}