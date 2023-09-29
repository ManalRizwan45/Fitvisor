using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AboutUS : System.Web.UI.Page
    {
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

    }
}