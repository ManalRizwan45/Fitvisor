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

    public partial class DiscussionRoom : System.Web.UI.Page
    {
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DiscussionRoom.aspx");
        }
        public static int UserId;
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;

        public DataSet SelectDiscussions() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand(" Select U.UserName, D.ttime, D.ddate, D.comments" +
                    " from Users U JOIN DiscussionRoom D ON U.Userid=D.Userid ", con);  //instantiate SQL command 
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

        protected void Page_Load(object sender,EventArgs e)
        {
            DiscussionRoom.UserId = (int)Session["LogID"];
            loadgrid();

        }

        public void loadgrid()
        {
            DiscussionRoom myobjDAL = new DiscussionRoom();
            GridView1.DataSource = myobjDAL.SelectDiscussions();
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtComment_TextChanged(object sender, EventArgs e)
        {

        }

        public void postComment(string Comment)
        {
            SqlConnection con = new SqlConnection(connString);
            try
            {

                con.Open();
                SqlCommand cmd;
                cmd = new SqlCommand("discussion_room", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add("@uid", SqlDbType.Int);
                cmd.Parameters.Add("@txt", SqlDbType.Text);


                // set parameter values
                cmd.Parameters["@uid"].Value = UserId;
                cmd.Parameters["@txt"].Value = Comment;
      
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
                string comment = textbox1.Text;

            postComment(comment);
            Response.Redirect("DiscussionRoom.aspx");
            }

        protected void textbox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }