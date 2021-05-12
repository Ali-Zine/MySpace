using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace MySpace
{
    public class Ado
    {
        public SqlConnection con = new SqlConnection();
        public  SqlCommand com = new SqlCommand();
        public  SqlDataReader dr;

        public void connection()
        {
            if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            {
                con.ConnectionString = "Data Source=ZABOZA;Initial Catalog=MySpace;Integrated Security=True";
                con.Open();
            }
        }

        public void Deconnecter()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}