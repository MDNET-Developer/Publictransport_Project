using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

namespace DiplomisiBus.BusOfis
{
    public partial class Admin_Muraciet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                getMessages();
                GetAxtar();
                ViewState["ID"] = 0;


            }
        }
        ClassSql klas = new ClassSql();

        protected void getMessages()
        {
            DataTable dt = klas.getdatatable("SELECT * FROM Tb_Feedback");
            RepeatMail.DataSource = dt;
            RepeatMail.DataBind();
        }

        void GetAxtar()
        {
            string axtar = "Select * from TB_Feedback where Ad like N'%" + txtAxtar.Text + "%' or Soyad like N'%" + txtAxtar.Text + "%' or mail like N'%" + txtAxtar.Text + "%'or message like N'%"+txtAxtar.Text+"%'";
            SqlDataAdapter dap = new SqlDataAdapter(axtar, klas.baglanti);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                RepeatMail.DataSource = dt;
                RepeatMail.DataBind();
                txtAxtar.Text = "";
                RepeatMail.Visible = true;
            }
            else
            {
                RepeatMail.Visible = false;
                LBLINFO.Text = "Hörmətli admin, daxil etdiyiniz parametrə görə məlumat tapılmadı  😩";
            }

        }

        protected void RepeatMail_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Bax")
            {
                DataTable dt = klas.getdatatable("Select * from Tb_Feedback WHERE ID=" + e.CommandArgument.ToString());

                lblAd.Text = dt.Rows[0]["Ad"].ToString();
                lblSoyad.Text = dt.Rows[0]["Soyad"].ToString();
                lblMail.Text = dt.Rows[0]["mail"].ToString();
                lblmesaj.Text = dt.Rows[0]["message"].ToString();
                ViewState["ID"] = e.CommandArgument.ToString();

            }

            //Sil duymesi
            else if (e.CommandName.ToString() == "sil")
            {
                SqlCommand cmd = new SqlCommand("Delete from Tb_Feedback WHERE  ID= " + e.CommandArgument.ToString(), klas.baglanti);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMessages();
                lblAd.Text = "";
                lblSoyad.Text = "";
                lblMail.Text = "";
                lblmesaj.Text = "";
                
            }

        }



        MailMessage epoct = new MailMessage();
        void MailGonder()
        {
            epoct.From = new MailAddress("safavi.tranasport@gmail.com");
            epoct.To.Add(txtKime.Text.ToString());
            epoct.Subject = txtBasliq.Text.ToString();
            epoct.Body =txtMesaj.Text.ToString();

            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new System.Net.NetworkCredential("safavi.tranasport@gmail.com", "SahIsmayilXetai");
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            smtp.Port = 587;

            smtp.Send(epoct);
            txtKime.Text = "";
            txtBasliq.Text = "";
            txtMesaj.Text = "";
            Response.Redirect("Admin_Muraciet.aspx");

        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            MailGonder();
        }

        protected void lnkAxtar_Click(object sender, EventArgs e)
        {
            GetAxtar();
        }
    }
}