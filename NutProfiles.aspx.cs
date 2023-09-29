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
    public partial class NutProfiles : System.Web.UI.Page
    {
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;

        public static int UserId = 0;
        public static string NutEmail = "ABC@GM.COM";

        protected void Page_Load(object sender, EventArgs e)
        {
            UserId = (int)Session["LogID"];
            //UserId = "3";
            if (UserId != 0)
            {
                Label1.Visible = true;
                ChooseNut.Visible = true;
                Button1.Visible = true;
            }
        }


        public void consult(string NutName, int uid)
        {
            SqlConnection con = new SqlConnection(connString);
            try
            {

                con.Open();
                SqlCommand cmd;
                cmd = new SqlCommand("consult", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@uid", SqlDbType.Int);

                // set parameter values
                cmd.Parameters["@name"].Value = NutName;
                cmd.Parameters["@uid"].Value = uid;
               


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

        //public void getEmail(string NutName)
        //{
        //    SqlConnection con = new SqlConnection(connString);
        //    string email;
        //    try
        //    {
               
        //        con.Open();
        //        SqlCommand cmd;
        //        cmd = new SqlCommand("getEmail", con); //name of your procedure
        //        cmd.CommandType = CommandType.StoredProcedure;


        //        cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);
        //        cmd.Parameters.Add("@email", SqlDbType.VarChar,60).Direction = ParameterDirection.Output;

        //        // set parameter values
        //        cmd.Parameters["@name"].Value = NutName;



        //        cmd.ExecuteNonQuery();

        //        email = Convert.ToString(cmd.Parameters["@email"].Value);
        //        TextBox1.Text = email;


        //        con.Close();
        //    }

        //    catch (SqlException ex)
        //    {
        //        Console.WriteLine("SQL Error" + ex.Message.ToString());
        //    }

        //    finally
        //    {
        //        con.Close();
        //    }
        //}


        protected void Button1_Click(object sender, EventArgs e) //consult 
        {
            string NutName = ChooseNut.SelectedValue.ToString();
            consult(NutName,NutProfiles.UserId);
            Label1.Visible = false;
            ChooseNut.Visible = false;
            Button1.Visible = false;
            
            getemail(NutName, NutProfiles.UserId);
            Label2.Visible = true;
            TextBox1.Text = NutProfiles.NutEmail;
            TextBox1.Visible = true;


        }

        public void getemail(string NutName, int uid)
        {
            SqlConnection con = new SqlConnection(connString);
            try
            {

                con.Open();
                SqlCommand cmd;
                cmd = new SqlCommand("getmail", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@email", SqlDbType.VarChar,60).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@name"].Value = NutName;




                cmd.ExecuteNonQuery();
                NutProfiles.NutEmail= Convert.ToString(cmd.Parameters["@email"].Value);



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
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("NutProfiles.aspx");
        }

        protected void ChooseNut_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}