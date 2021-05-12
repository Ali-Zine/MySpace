using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MySpace
{
    public partial class Statistics : System.Web.UI.Page
    {
        Ado d = new Ado();

        public void Label()
        {
            d.connection();
            d.com.CommandText = "Select count(Usernam) from photo where Usernam = '"+Session["Nom"]+"' ";
            d.com.Connection = d.con;
            int cpt = (int)d.com.ExecuteScalar();
            Label3.Text = cpt.ToString();
           
        }
        public void LabelA()
        {
            
            d.connection();
            d.com.CommandText = "Select count(Usenam) from Files where Usenam = '" + Session["Nom"] + "' ";
            d.com.Connection = d.con;
            int cpt = (int)d.com.ExecuteScalar();
            Label1.Text = cpt.ToString();

        }
        public void LabelB()
        {
            d.connection();
            d.com.CommandText = "Select count(Usernam) from video where Usernam = '" + Session["Nom"] + "' ";
            d.com.Connection = d.con;
            int cpt = (int)d.com.ExecuteScalar();
            Label4.Text = cpt.ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nom"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {

                Label2.Text = Session["Nom"].ToString();
            }
            Label();
            LabelA();
            LabelB();
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}