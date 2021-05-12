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
    public partial class Files : System.Web.UI.Page
    {
        Ado d = new Ado();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Fill()
        {
            d.connection();
            d.com.CommandText = "Select img from Files where idFile = '" + Session["Nom"].ToString() + "' ";
            d.com.Connection = d.con;
            d.dr = d.com.ExecuteReader();
            DataList1.DataSource = d.dr;
            DataList1.DataBind();
            d.Deconnecter();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string nam = Session["Nom"].ToString();

            try
            {
                string path;
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Files/" + FileUpload1.FileName);
                    path = FileUpload1.FileName;
                    d.connection();
                    d.com.CommandText = "insert into Files values('" + path + "','" + nam + "')";
                    d.com.Connection = d.con;
                    d.com.ExecuteNonQuery();
                    d.Deconnecter();
                    Fill();
                }
                else
                {
                    Response.Write("<script language = javascript> alert('Please choose an File to upload');</script>");
                }
            }
            catch
            {
                Response.Write("<script language = javascript> alert('Please choose an File to upload');</script>");
            }
        }
    }
}