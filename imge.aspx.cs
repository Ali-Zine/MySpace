﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MySpace
{
    public partial class imge : System.Web.UI.Page
    {
        
        Ado d = new Ado();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                if(Session["Nom"] == null)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label2.Text = Session["Nom"].ToString();
                    Fill();
                }
                
            }
           
        }
        private void Fill()
        {
            d.connection();
            d.com.CommandText = "Select img from photo where Usernam = '" + Session["Nom"].ToString() + "' ";
            d.com.Connection = d.con;
            d.dr = d.com.ExecuteReader();
            DataList1.DataSource = d.dr;
            DataList1.DataBind();
            d.Deconnecter();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string nam = Session["Nom"].ToString();

            try
            {
                string path;
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
                    path = FileUpload1.FileName;
                    d.connection();
                    d.com.CommandText = "insert into photo values('" + path + "','" + nam + "')";
                    d.com.Connection = d.con;
                    d.com.ExecuteNonQuery();
                    d.Deconnecter();
                    Fill();
                }
                else
                {
                    Response.Write("<script language = javascript> alert('Please choose an image to upload');</script>");
                }
            }
            catch
            {
                Response.Write("<script language = javascript> alert('Please choose an image to upload');</script>");
            }
           
                
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {

            Session.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}