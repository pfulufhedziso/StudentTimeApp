using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentTimeApp
{
    public partial class ViewModules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Display_btn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();

            string CmdString = string.Empty;

            CmdString = "SELECT * FROM ModuleInfo WHERE UserID = '" + this.USERID_TXTBOX.Text + "'";
            SqlCommand cmd = new SqlCommand(CmdString, connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource= dt;
            GridView1.DataBind();
            connection.Close();
        }

        protected void Back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }

        protected void USERID_TXTBOX_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}