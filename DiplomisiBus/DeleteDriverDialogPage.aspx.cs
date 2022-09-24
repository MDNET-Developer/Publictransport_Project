using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DiplomisiBus.BusOfis;

namespace DiplomisiBus
{
    public partial class DeleteDriverDialogPage : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //string ID = e.CommandArgument.ToString();
            //SqlCommand cmd = new SqlCommand("Delete from Tb_Driver where Driver_ID=" + e.CommandArgument.ToString(), klas.baglanti);
            //cmd.ExecuteNonQuery();
        }
    }
}