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
    public partial class AdminPanelLogIn : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ID"] = 0;
        }

        protected void loginBTN_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Tb_AdminLogin where Username=@p1 and Password=@p2", klas.baglanti);
            cmd.Parameters.AddWithValue("p1", txtuser.Text);
            cmd.Parameters.AddWithValue("p2", txtpass.Text);
            klas.baglanti.Open();
            SqlDataAdapter dap = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            SqlCommand C_md = new SqlCommand("INSERT INTO Tb_GirisVaxti(GirisVaxtlari)VALUES(GETDATE())", klas.baglanti);
            C_md.ExecuteNonQuery();
            //SqlCommand C_M_d = new SqlCommand("INSERT INTO Tb_GirisVaxti(GirisSaat)VALUES(CONVERT(time, GETDATE()))", klas.baglanti);
            //C_M_d.ExecuteNonQuery();



            dap.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["ID"] = 1;
                if (dt.Rows.Count == 1)
                {
                    Response.Redirect("ADMIN_HOME.aspx");
                    //Response.Write("BusAbout.aspx ? ID =<%#Eval("ID") %>");
                    //Response.Redirect("ADMIN_HOME.aspx");
                }
                txtuser.Text = "";
                txtpass.Text = "";

            }
            else
            {
                Session["ID"] = 0;
                lblnotification.Text = "⚠ Hörmətli user daxil etdiyiniz parametrlər uyğun gəlmir.";

                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "mesaj();", true);


            }
            klas.baglanti.Close();
        }
    }
}