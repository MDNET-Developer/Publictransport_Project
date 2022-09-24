using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DiplomisiBus.BusOfis
{
    public partial class BusMaster : System.Web.UI.MasterPage
    {
        ClassSql clas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetMenu();
            }
        }

        protected void GetMenu()
        {
            LtMenu.Text+= "<div id='Menu'>";
            DataTable dt = clas.getdatatable("Select * from Tb_Menu order by MenuRow");
            LtMenu.Text += "<ul class='Menu-ul'>";
            foreach(DataRow dr in dt.Rows)
            {
                LtMenu.Text += "  <li class='menu-li'><a href='"+dr["MenuURL"]+"'><span><img src='Logolar/"+dr["MenuIconURL"]+"'/></span><span>"+dr["MenuName"]+"</span><a></li>";
            }

            LtMenu.Text += "</ul>";
            LtMenu.Text += "</div>";
        }
    }
}