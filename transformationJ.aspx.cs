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
    public partial class transformationJ : System.Web.UI.Page
    {
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }

        public DataSet get_transJourneys()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand(" Select TransformationJourney.feedback AS Transformation_Journeys" +
                    " from TransformationJourney", conn);  //instantiate SQL command 
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


        public void loadgrid()
        {
            transformationJ myobjDAL = new transformationJ();
            GridView1.DataSource = myobjDAL.get_transJourneys();
            GridView1.DataBind();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("transformationJ.aspx");
        }
    }
}