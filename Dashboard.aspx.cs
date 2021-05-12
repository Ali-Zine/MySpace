using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MySpace
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Nom"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
         
                Label1.Text = Session["Nom"].ToString();
                Label2.Text = Session["Nom"].ToString();
            }
           
        }

        protected void HyperLink2_DataBinding(object sender, EventArgs e)
        {
            Session["Nom"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }

        protected void HyperLink3_DataBinding(object sender, EventArgs e)
        {

        }
    }
}