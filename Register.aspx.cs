using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using StudentTimeApp.MYLibrary;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentTimeApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_btn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();

            SqlCommand command = new SqlCommand("insert into UserInfo (Username,Password) values ('" + Username_txtbox.Text + "','" + (hashPassword.hashUserPasswors(Password_txtbox.Text)) + "')", connection);
            command.ExecuteNonQuery();
            Response.Write("SUCCESSFULLY REGISTERED");

            string CmdString = string.Empty;

            CmdString = "SELECT max(UserID) FROM UserInfo ";

            SqlCommand cmd = new SqlCommand(CmdString, connection);

            string userId = cmd.ExecuteScalar().ToString();
           Response.Write("PLEASE WRITE DOWN YOUR USER ID ITS VERY IMPORTANT" +
                             "\nYOUR USERID IS: " + userId);
            connection.Close();
            Response.Redirect("~/SignIn.aspx");

        }
    }
}