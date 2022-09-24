using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace DiplomisiBus.BusOfis
{
    public class ClassSql
    {
        public SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-LV07HAI;Database=DB_BusProject;Trusted_Connection=True;");
        public DataTable getdatatable(string sqltext)
        {
            baglanti.Open();
            SqlDataAdapter dap = new SqlDataAdapter(sqltext, baglanti);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            baglanti.Close();
            return dt;
        }
    }
}