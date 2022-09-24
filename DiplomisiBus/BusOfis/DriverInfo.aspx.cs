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
    public partial class DriverInfo : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        string ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];

            if (!Page.IsPostBack)
            {

                getComment(ID);
                GetDriverInfo(ID);
                GetDriverName(ID);
             
            }

          
       


            void GetDriverInfo(string ID)
            {
                DataTable dt = klas.getdatatable("Select * from Tb_Driver where ID=" + ID);
                if (dt != null)
                {
                    ViewState["commentID"] = 0;
                    Rpt_BusInfo.DataSource = dt;
                    Rpt_BusInfo.DataBind();
                }
            }
            void GetDriverName(string ID)
            {
                DataTable dt = klas.getdatatable("Select * from Tb_Driver where ID=" + ID);
                if (dt != null)
                {
                    Rpt_DriverName.DataSource = dt;
                    Rpt_DriverName.DataBind();
                }
            }
        }

        protected void btnSendComment_Click(object sender, EventArgs e)
        {
           
            if (ViewState["commentID"].ToString() == "0")
            {
                klas.baglanti.Open();
                SqlCommand cmd = new SqlCommand("Insert Into Tb_CommentDriver (Name,Surname,Comment,CommentTime,DriverConID) values(@Name,@Surname,@Comment,GETDATE(),@DriverConID)", klas.baglanti);
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Surname",txtsurname.Text);
                cmd.Parameters.AddWithValue("@Comment", txtcomment.Text);
                cmd.Parameters.AddWithValue("@DriverConID",ID);
                //cmd.Parameters.AddWithValue("Comment", txtcomment.Text);
                
                cmd.ExecuteNonQuery();



                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "tesdiqle();", true);
                txtname.Text = "";
                txtsurname.Text = "";
                txtcomment.Text = "";
                klas.baglanti.Close();
                
                //Response.Write("<script>alert('Hörmətli istifadəçi sizin mesajınız göndərildi. Qısa zaman ərzində sizin qeyd etdiyiniz mail ünvanına cavab göndəriləcək.')</script>");
            }

           
        }
        void getComment(string ID)
        {
            DataTable dt = klas.getdatatable("Select * from Tb_CommentDriver  where DriverConID=" + ID);
            if (dt != null)
            {
                RPT_Comment.DataSource = dt;
                RPT_Comment.DataBind();
            }
        }
    }
}