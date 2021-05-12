using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MySpace
{
    public partial class Home : System.Web.UI.Page
    {
        Ado d = new Ado();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
        public int Recherche()
        {
            int B = 0;
            d.connection();
            d.com.CommandText = "Select count(Usernam) from Client where Usernam ='" + TextBox1.Text + "' ";
            d.com.Connection = d.con;
            B = (int)d.com.ExecuteScalar();
            return B;
        }
        public int Recherche1()
        {
            int B = 0;
            d.connection();
            d.com.CommandText = "Select count(Password) from Client where Password ='" + TextBox2.Text + "' ";
            d.com.Connection = d.con;
            B = (int)d.com.ExecuteScalar();
            return B;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Recherche() == 0 || Recherche1() == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "altreme()", true);
             }
            else
            {
             Session["Nom"] = TextBox1.Text;
             Response.Redirect("Dashboard.aspx");
            } 
           
        }
    }
}