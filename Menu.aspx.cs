using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentTimeApp
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewModules_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewModules.aspx");
        }

        protected void AddReminder_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reminder.aspx");
        }

        protected void AddModules_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddModules");
        }
    }
}