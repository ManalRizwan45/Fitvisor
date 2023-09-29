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
    public partial class NutritionistProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NutritionistProfile.UserId = (int)Session["LogID"];
            GetProfileInfo();
        }

        public static int UserId;
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;


        public void GetProfileInfo()
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string id = Convert.ToString(UserId);
            SqlCommand cmd = new SqlCommand("Select * from Nutritionist N JOIN NuCredentials NU ON N.NID=NU.NID WHERE N.NID="+id, conn);
            SqlDataReader da = cmd.ExecuteReader();


            while (da.Read())
            {
                TextBox1.Text = da.GetValue(0).ToString();
                TextBox7.Text = da.GetValue(1).ToString();
                TextBox6.Text = da.GetValue(2).ToString();
                TextBox3.Text = da.GetValue(3).ToString();
                TextBox5.Text = da.GetValue(4).ToString();
                TextBox10.Text = da.GetValue(5).ToString();
                TextBox2.Text = da.GetValue(8).ToString();
            }

            conn.Close();


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("NutritionistProfile.aspx");
        }
    }
}