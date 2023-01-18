using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using StudentTimeApp.MYLibrary;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentTimeApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_btn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            string  query=("Select  * from UserInfo WHERE Username = '" + Username_txtbox.Text +"' ");
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            bool check = false;

            while (reader.Read())
            {
                if (reader.GetValue(1).ToString().Equals(Username_txtbox.Text))
                {
                    check = true;
                    Calculations.setLoggedIn(Convert.ToInt32(reader.GetValue(0)));
                }
            }
            if (check == true)
            {
                Response.Write("SUCCESSFULLY REGISTERED");
                Response.Redirect("~/Menu.aspx");
            }
            else
            {
                Response.Write("PASSWORD OR USERNAME IS INCORRECT");
            }
            connection.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }
    }
}