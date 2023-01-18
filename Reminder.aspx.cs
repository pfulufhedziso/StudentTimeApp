using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentTimeApp
{
    public partial class Reminder : System.Web.UI.Page
    {
        // this method will be use to store data into the Reminder table
        private void FillData()

        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();
            string query = "INSERT INTO Reminder(ModuleName,Date,UserID) values(@ModuleName,@Date,@UserID)";
            SqlCommand command = new SqlCommand(query, connection);
            
            command.Parameters.AddWithValue("@ModuleName", ModuleName_txtbox.Text);
           
            command.Parameters.AddWithValue("@Date", datepicker.Text);
           
            command.Parameters.AddWithValue("@UserID", UserID_txtbox.Text);
            command.ExecuteNonQuery();
            connection.Close();
           
            ModuleName_txtbox.Text = "";
            datepicker.Text = "";
            UserID_txtbox.Text = "";



        }
        // used to delete records
        private void Delete()
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();
            string query = "DELETE Reminder WHERE UserID = '" + this.UserID_txtbox.Text + "'";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@UserID", this.UserID_txtbox.Text);

            command.ExecuteNonQuery();
            connection.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }

       
        protected void SetReminder_btn_Click1(object sender, EventArgs e)
        {
            FillData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Delete();
        }
    }
}