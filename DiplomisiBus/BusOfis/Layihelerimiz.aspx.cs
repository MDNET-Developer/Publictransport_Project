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
    public partial class Layihelerimiz : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {


                GetLayihe();
            }
            void GetLayihe()
            {
                DataTable dt = klas.getdatatable("Select * from Tb_Layiheler");
                Rpt_Layiheler.DataSource = dt;
                Rpt_Layiheler.DataBind();



            }

        }
    }
}