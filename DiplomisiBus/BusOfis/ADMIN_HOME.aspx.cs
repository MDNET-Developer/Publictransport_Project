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
    public partial class ADMIN_HOME : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getTime();
                //string ID;
                //ID = Request.QueryString["ID"].ToString();
                //getAdminName(/*ID*/);
            }
        }
       protected void getTime()
        {
            
                DataTable dt = klas.getdatatable("SELECT * FROM Tb_GirisVaxti");
                rptTime.DataSource = dt;
                rptTime.DataBind();
           
        }
        //void getAdminName( /*string ID*/)
        //{
        //    DataTable dt = klas.getdatatable("Select * from Tb_AdminLogin where ID=" + ID);
        //    if (dt != null)
        //    {
        //        RptUserName.DataSource = dt;
        //        RptUserName.DataBind();
        //    }
        //}
    }
}