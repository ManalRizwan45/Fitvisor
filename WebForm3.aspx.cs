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
    public partial class WebForm3 : System.Web.UI.Page
    {

        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;


        public int loginAuth(string UserName, string Password, int flag)
        {

            int op = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("login", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@pass", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@flag", SqlDbType.Int);
                cmd.Parameters.Add("@op", SqlDbType.Int).Direction = ParameterDirection.Output;

                
                // set parameter values
                cmd.Parameters["@name"].Value = UserName;
                cmd.Parameters["@pass"].Value = Password;
                cmd.Parameters["@flag"].Value = flag;

               

                cmd.ExecuteNonQuery();

              

                // read output value 
                op = Convert.ToInt32(cmd.Parameters["@op"].Value); //convert to output parameter to interger format
                
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

            Session["LogID"] = op;
            return op;

        }



        //protected void Search_Button_Click(object sender, EventArgs e)
        //{

        //    String username = TextBox1.Text;
        //    DataTable DT = new DataTable();

        //    WebForm3 objMyDal = new WebForm3();

        //    int found;

        //    found = objMyDal.SearchItem(Name, ref DT);

        //    if (found > 0)
        //    {
        //        ItemGrid.DataSource = DT;
        //        ItemGrid.DataBind();
        //        message.InnerHtml = Convert.ToString("Following Items Found");
        //    }
        //    else
        //    {
        //        message.InnerHtml = Convert.ToString("Item Not Found");
        //        ItemGrid.DataSource = null;
        //        ItemGrid.DataBind();
        //    }

        //}
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e) // back to top btn
        {
            Response.Redirect("WebForm3.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e) // signupBtn
        {

            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) //loginBTn
        {
            string UsrNm = UsernameTextBox.Text;
            string pass = txtPassword.Text;
            int flag = -1;
            if (rdUser.Checked==true)
            {
                flag = 1;
                if(loginAuth(UsrNm, pass, flag)==0)
                {
                    ErrorLabel.Visible = true;
                }
                else
                {
                    //Server.Transfer("UserProfile.aspx");
                     Response.Redirect("UserProfile.aspx");

                }


            }

            if (rdNutritionist.Checked==true)
            {
                flag =0;
                if (loginAuth(UsrNm, pass, flag) == 0)
                {
                    ErrorLabel.Visible = true;
                }
                else
                {
                    Response.Redirect("NutritionistProfile.aspx");
                }
            }

            

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rdUser_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rdNutritionist_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void UsernameTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}