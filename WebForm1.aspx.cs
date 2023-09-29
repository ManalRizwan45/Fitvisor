using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        private static readonly string connString =
       System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e) //back to top
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void signUp(string Username, string Email, string Password, string Address, string Phone, int Age, string Gender, float Weight, string Goal, string Medical, string Foodallergy)
        {
            SqlConnection con = new SqlConnection(connString);
            try
            {
                
                con.Open();
                SqlCommand cmd;
                cmd = new SqlCommand("signup", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                
                cmd.Parameters.Add("@add", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@age", SqlDbType.Int);
                cmd.Parameters.Add("@goaldes", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@weight", SqlDbType.Float);
                cmd.Parameters.Add("@phone", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@gen", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@med", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@allergy", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 60);
                cmd.Parameters.Add("@pass", SqlDbType.VarChar, 30);

                // set parameter values
                cmd.Parameters["@add"].Value = Address;
                cmd.Parameters["@age"].Value = Age;
                cmd.Parameters["@goaldes"].Value = Goal;
                cmd.Parameters["@weight"].Value = Weight;
                cmd.Parameters["@phone"].Value = Phone;
                cmd.Parameters["@gen"].Value = Gender;
                cmd.Parameters["@med"].Value = Medical;
                cmd.Parameters["@allergy"].Value = Foodallergy;
                cmd.Parameters["@name"].Value = Username;
                cmd.Parameters["@email"].Value = Email;
                cmd.Parameters["@pass"].Value = Password;


              
       
                cmd.ExecuteNonQuery();

                

                
                con.Close();
            }

            catch (SqlException ex)
            {
                Label1.Text = "FKN HELL";
                Console.WriteLine("SQL Error" + ex.Message.ToString());
               

            }

            finally
            {
                con.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string UserName = TextBox1.Text;
            string email = TextBox2.Text;
            string password = txtPassword.Text;
            string address = TextBox6.Text;
            string Phone = TextBox5.Text;


            string a = TextBox3.Text;
            int age = Convert.ToInt32(a);

            string gender = "";

            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            if (RadioButton2.Checked)
            {
                gender = "Female";
            }
            if (RadioButton3.Checked)
            {
                gender = "Other";
            }

            string w = TextBox4.Text;
            float weight = Convert.ToSingle(w);
            string Goal = goalcategory.SelectedValue.ToString();
            string MDC = DropDownList1.SelectedValue.ToString();
            string FoodAllergies = DropDownList2.SelectedValue.ToString();
            signUp(UserName, email, password, address, Phone, age, gender, weight, Goal, MDC, FoodAllergies);
            Label1.Text = "Successful";
            Response.Redirect("WebForm3.aspx");

        }

        protected void goalcategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}