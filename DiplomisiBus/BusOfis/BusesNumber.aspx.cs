using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DiplomisiBus.BusOfis.Logolar
{
    public partial class BusesNumber : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
             
                DDL_Bus_Number();;

            }
        }


         void DDL_Bus_Number()
        {
            DDL_BUS.DataValueField = "ID";
            DDL_BUS.DataTextField = "Marşrutun №-si";
            DDL_BUS.DataSource = klas.getdatatable("Select * from TB_Avtobuslar");
            DDL_BUS.DataBind();
            DDL_BUS.Items.Insert(0, new ListItem("Zəhmət olmasa marşrut nömrəsini seçin...","0"));
           


        }
         void getBusCard()
        {
            RPT_BusCard.DataSource = klas.getdatatable("Select * from TB_Avtobuslar");
            RPT_BusCard.DataBind();

        }
        protected void DDL_BUS_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = klas.getdatatable("Select * from TB_Avtobuslar where ID=" + DDL_BUS.SelectedValue.ToString());
            RPT_BusCard.DataSource = dt;
            RPT_BusCard.DataBind();
            
        }
    }
}