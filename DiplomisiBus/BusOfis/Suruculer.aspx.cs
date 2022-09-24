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
    public partial class Suruculer : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack == true)
            {

             
                DDL_Bus_Number();
              
            }
        }
        void DDL_Bus_Number()
        {
            DDL_BusNumber.DataValueField = "ID";
            DDL_BusNumber.DataTextField = "Marşrutun №-si";
            DDL_BusNumber.DataSource = klas.getdatatable("Select * from TB_Avtobuslar");
            DDL_BusNumber.DataBind();
            DDL_BusNumber.Items.Insert(0, new ListItem("Zəhmət olmasa marşrut nömrəsini seçin...", "0"));
            txtSearch.Text = "";



        }
        void getBusNumber() { 
            //DataTable dt = klas.getdatatable("Select * from Tb_Qarajlar");
            //if (dt != null)
            //{
            //   .DataSource = dt;
            //    Rpt_Bus_Garege.DataBind();
            //}
        }

        protected void DDL_BusNumber_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = klas.getdatatable("Select * from TB_Driver where TbAvtobuslarConnectID=" + DDL_BusNumber.SelectedValue.ToString());
            RPT_Suruculer.DataSource = dt;
            RPT_Suruculer.DataBind();
        }
        void searchDriver()
        {
            if (txtSearch.Text != "")
            {
                
                lblInfo.Text = " ";

                string axtar = "Select * from Tb_Driver where DriverNameSurname like N'%" + txtSearch.Text + "%' ";
            SqlDataAdapter dap = new SqlDataAdapter(axtar, klas.baglanti);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                RPT_Suruculer.DataSource = dt;
                RPT_Suruculer.DataBind();
                txtSearch.Text = "";
                RPT_Suruculer.Visible = true;
            }
            else
            {
                RPT_Suruculer.Visible = false;
                lblInfo.Text = "Hörmətli istifadəçi, daxil etdiyiniz parametrə görə məlumat tapılmadı  😩";
            }
            }
            else
            {
                RPT_Suruculer.Visible = false;
                lblInfo.Text = "Hörmətli istifadəçi, daxil etdiyiniz parametrə görə məlumat tapılmadı  😩";
            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            searchDriver();
        }
    }
}