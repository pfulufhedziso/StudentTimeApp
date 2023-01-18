using System;
using System.Data.SqlClient;
using StudentTimeApp.MYLibrary;
using System.Data;

namespace StudentTimeApp
{
    public partial class AddModules : System.Web.UI.Page
    {
        // used to store data so that i can calculate what needs to be calculated
        private void storage()
        {
            Calculations.ModuleCredit = Convert.ToInt32(ModuleCredit_txtbox.Text);
            Calculations.ModuleTime = Convert.ToDouble(Hours_txtbox.Text);
            Calculations.HaveStudied = Convert.ToDouble(Studied_txtbox.Text);
            Calculations.NumberOfWeeks = Convert.ToInt32(SemesterWeeks_txtbox.Text);
            Calculations.StartDate = Convert.ToDateTime(datepicker.Text);
            Calculations.EndDate = Calculations.StartDate.AddDays(Calculations.NumberOfWeeks * 7);
        }

        // this method will be use to store data into the ModuleInfo table
        private void FillData()

        {
            storage();
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();
            string query = "INSERT INTO ModuleInfo(ModuleCode,ModuleName,ModuleCredit,WeeklyHours,SemesterWeeks,StudiedTime,StartDate,EndDate,UserID,SelfStudyHours,RemainingStudyHours) values(@ModuleCode,@ModuleName,@ModuleCredit,@WeeklyHours,@SemesterWeeks,@StudiedTime,@StartDate,@EndDate,@UserID,@SelfStudyHours,@RemainingStudyHours)";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ModuleCode", ModuleCode_txtbox.Text);
            command.Parameters.AddWithValue("@ModuleName", ModuleName_txtbox.Text);
            command.Parameters.AddWithValue("@ModuleCredit", ModuleCredit_txtbox.Text);
            command.Parameters.AddWithValue("@WeeklyHours", Hours_txtbox.Text);
            command.Parameters.AddWithValue("@SemesterWeeks", SemesterWeeks_txtbox.Text);
            command.Parameters.AddWithValue("@StudiedTime", Studied_txtbox.Text);
            command.Parameters.AddWithValue("@StartDate", datepicker.Text);
            command.Parameters.AddWithValue("@EndDate", Calculations.EndDate.ToString("MM/dd/yyyy"));
            command.Parameters.AddWithValue("@UserID", UserID_txtbox.Text);
            command.Parameters.AddWithValue("@SelfStudyHours",Calculations.SelfStudyHours());
            command.Parameters.AddWithValue("@RemainingStudyHours", Calculations.RemainingStudyHours());
            command.ExecuteNonQuery();
            connection.Close();
           
            ModuleCode_txtbox.Text = "";
            ModuleName_txtbox.Text="";
            ModuleCredit_txtbox.Text = "";
            Hours_txtbox.Text = "";
            SemesterWeeks_txtbox.Text = "";
            Studied_txtbox.Text = "";
            datepicker.Text = "";
            UserID_txtbox.Text = "";
           
            

        }
        // this method is used to display data which has just been add onthe gridview
        private void Display()
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();

            string CmdString = string.Empty;

            CmdString = "SELECT * FROM ModuleInfo WHERE UserID = '" + Calculations.getLoggedIn() + "'";
            SqlCommand cmd = new SqlCommand(CmdString, connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            connection.Close();
        }
        private void UPdate()
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();
            string query = "UPDATE  ModuleInfo SET ModuleName=@ModuleName,ModuleCredit=@ModuleCredit,WeeklyHours=@WeeklyHours,SemesterWeeks=@SemesterWeeks,StudiedTime=@StudiedTime,StartDate=@StartDate,EndDate=@EndDate,UserID=@UserID,SelfStudyHours=@SelfStudyHours,RemainingStudyHours=@RemainingStudyHours WHERE ModuleCode = '" + this.ModuleCode_txtbox.Text+ "'";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ModuleCode", ModuleCode_txtbox.Text);
            command.Parameters.AddWithValue("@ModuleName", ModuleName_txtbox.Text);
            command.Parameters.AddWithValue("@ModuleCredit", ModuleCredit_txtbox.Text);
            command.Parameters.AddWithValue("@WeeklyHours", Hours_txtbox.Text);
            command.Parameters.AddWithValue("@SemesterWeeks", SemesterWeeks_txtbox.Text);
            command.Parameters.AddWithValue("@StudiedTime", Studied_txtbox.Text);
            command.Parameters.AddWithValue("@StartDate", datepicker.Text);
            command.Parameters.AddWithValue("@EndDate", Calculations.EndDate.ToString("MM/dd/yyyy"));
            command.Parameters.AddWithValue("@UserID", UserID_txtbox.Text);
            command.Parameters.AddWithValue("@SelfStudyHours", Calculations.SelfStudyHours());
            command.Parameters.AddWithValue("@RemainingStudyHours", Calculations.RemainingStudyHours());
            command.ExecuteNonQuery();
            connection.Close();

            ModuleCode_txtbox.Text = "";
            ModuleName_txtbox.Text = "";
            ModuleCredit_txtbox.Text = "";
            Hours_txtbox.Text = "";
            SemesterWeeks_txtbox.Text = "";
            Studied_txtbox.Text = "";
            datepicker.Text = "";
            UserID_txtbox.Text = "";

        }
        // used to delete records
        private void Delete()
        {
            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();
            string query = "DELETE ModuleInfo WHERE ModuleCode = '" + this.ModuleCode_txtbox.Text + "'";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ModuleCode", this.ModuleCode_txtbox.Text);

            command.ExecuteNonQuery();
            connection.Close();
        }
        protected void Page_Load(object sender, EventArgs e)     
        {

            SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-07GSTEC8\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            connection.Open();
            Response.Write("YOUR USER ID IS : " + Calculations.getLoggedIn()+"<br>");

            string query = "SELECT * FROM Reminder WHERE USERID= '" + Calculations.getLoggedIn() + "'";
            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Response.Write("\nREMINDER ON THIS DAY: " + reader.GetValue(2).ToString() + " YOU HAVE " + reader.GetValue(1).ToString());
            }
            connection.Close();

        }

        protected void Display_btn_Click(object sender, EventArgs e)
        {

            Display();
          
        }

        protected void AddMore_btn_Click(object sender, EventArgs e)
        {
            FillData();
            
        }

        protected void Back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }

        protected void Update_btn_Click(object sender, EventArgs e)
        {
            UPdate();
        }

        protected void Delete_btn_Click(object sender, EventArgs e)
        {
            Delete();
        }
    }
}