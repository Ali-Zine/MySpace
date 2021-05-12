using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MySpace
{
    public partial class Register : System.Web.UI.Page
    {
        Ado d = new Ado();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Recherche() != 0)
            {
                Response.Write("<script language = javascript> alert('This username already exists');</script>");
            }
            else
            {
                d.connection();
                d.com.CommandText = "insert into Client values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                d.com.Connection = d.con;
                d.com.ExecuteNonQuery();
                d.Deconnecter();
                Response.Write("<script language = javascript> alert('You are already registered');</script>");

            }
           
        }
    }
}