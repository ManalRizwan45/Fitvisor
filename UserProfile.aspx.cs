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
    public partial class UserProfile : System.Web.UI.Page
    {

        public static int UserId;
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            UserProfile.UserId = (int)Session["LogID"];
            GetProfileInfo();
            loadgrid();
        }
        
        public void GetProfileInfo()
        {
            SqlConnection conn= new SqlConnection(connString);
            conn.Open();
            string id = Convert.ToString(UserId);
            SqlCommand cmd = new SqlCommand("Select * from Users U JOIN Goals G ON U.GoalID=G.GoalID WHERE Userid="+id,conn);
            SqlDataReader da = cmd.ExecuteReader();

      
            while (da.Read())
            {
                TextBox12.Text = da.GetValue(0).ToString();
                IDTextBox.Text = da.GetValue(1).ToString();
                AddressTextBox.Text = da.GetValue(2).ToString();
                AgeTextBox.Text = da.GetValue(3).ToString();
                GenderTextBox.Text = da.GetValue(7).ToString();
                PhoneTextBox.Text = da.GetValue(6).ToString();
                MDCTextBox.Text = da.GetValue(8).ToString();
                AllergyTextBox.Text = da.GetValue(9).ToString();
                GoalTextBox.Text = da.GetValue(11).ToString();

            }

            conn.Close();


        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        public void addIntake(string FoodName, float quantity)
        {
            SqlConnection con = new SqlConnection(connString);
            try
            {

                con.Open();
                SqlCommand cmd;
                cmd = new SqlCommand("dailyintake", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add("@id", SqlDbType.Int);
                cmd.Parameters.Add("@intake", SqlDbType.VarChar,50);
                cmd.Parameters.Add("@quantity", SqlDbType.Float);


                // set parameter values
                cmd.Parameters["@id"].Value = UserId;
                cmd.Parameters["@intake"].Value = FoodName;
                cmd.Parameters["@quantity"].Value = quantity;

                cmd.ExecuteNonQuery();

                con.Close();
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }

            finally
            {
                con.Close();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string FoodName = TextBox13.Text;
            float quantity = Convert.ToInt32(TextBox14.Text.ToString());

            addIntake(FoodName, quantity);
            Response.Redirect("UserProfile.aspx");
        }

        public DataSet viewIntake() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
     
            try
            {
                cmd = new SqlCommand(" Select I.IntakeName AS Name, I.IntakeQuantity AS Quantity, I.Date AS Date" +
                    " from Intake AS I where I.UserID = " +UserProfile.UserId, con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }

        public void loadgrid()
        {
            UserProfile myobjDAL = new UserProfile();
            GridView1.DataSource = myobjDAL.viewIntake();
            GridView1.DataBind();

        }

        public int AddStepCount(int stepCount)
        {
            SqlConnection con = new SqlConnection(connString);
            int cals = 0;
            try
            {
                
                con.Open();
                SqlCommand cmd;
                cmd = new SqlCommand("cal", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add("@uid", SqlDbType.Int);
                cmd.Parameters.Add("@num", SqlDbType.Int);
                cmd.Parameters.Add("@cals", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@uid"].Value = UserId;
                cmd.Parameters["@num"].Value = stepCount;

                cmd.ExecuteNonQuery();

                cals = Convert.ToInt32(cmd.Parameters["@cals"].Value);
                
                con.Close();
                return cals;
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return cals;
            }

            finally
            {
                con.Close();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            int SC = Convert.ToInt32(TextBox9.Text.ToString());
            int cal = AddStepCount(SC);

            TextBox10.Text = Convert.ToString(cal);

        }
    }
}