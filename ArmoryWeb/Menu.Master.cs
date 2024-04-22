using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace ArmoryWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void Menu_MenuItemClick(object sender, EventArgs e)
        {
            Menu menu= (Menu)sender;
            //Debug.WriteLine(sender.ToString());
            foreach (MenuItem item in Menu.Items)
            {
            }
            Debug.WriteLine("");
        }

        protected void Menu_MenuItemClick1(object sender, MenuEventArgs e)
        {

        }
    }
}