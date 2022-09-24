using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DiplomisiBus.BusOfis
{
    public partial class Qarajlar : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack==true)
            {
               
                GetBusGarege();
            }
            }
        private void GetBusGarege()
        {
            DataTable dt = klas.getdatatable("Select * from Tb_Qarajlar");
            if (dt != null)
            {
                Rpt_Bus_Garege.DataSource = dt;
                Rpt_Bus_Garege.DataBind();
            }
        }

       
    }
}