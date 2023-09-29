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
    public partial class recipes_workouts : System.Web.UI.Page
    {

        public static int UserId;
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            recipes_workouts.UserId = (int)Session["LogID"];
            loadgrid();
            loadgrid2();

        }

        public DataSet get_recipes()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string id = Convert.ToString(UserId);
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand(" Select recipecategory AS Category, recipeDes AS Description, priceRange AS Price_Range" +
                    " from Recipes R join Users U on R.recipeID = U.GoalID where U.Userid =" +id, conn);  //instantiate SQL command 
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
                conn.Close();
            }

            return ds; //return the dataset
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void loadgrid()
        {
            recipes_workouts myobjDAL = new recipes_workouts();
            GridView1.DataSource = myobjDAL.get_recipes();
      
            GridView1.DataBind();

        }

        public DataSet get_workouts()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string id = Convert.ToString(UserId);
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand(" Select workoutcategory AS Category, workoutDes AS Description" +
                    " from Workouts W join Users U on W.workoutID = U.GoalID where U.Userid =" + id, conn);  //instantiate SQL command 
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
                conn.Close();
            }

            return ds; //return the dataset
        }

        public void loadgrid2()
        {
            recipes_workouts myobjDAL = new recipes_workouts();
            GridView2.DataSource = myobjDAL.get_workouts();

            GridView2.DataBind();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("recipes_workouts.aspx");
        }
    }
}