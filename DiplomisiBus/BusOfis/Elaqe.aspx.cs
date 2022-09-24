using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiplomisiBus.BusOfis
{
    public partial class Elaqe : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        Random rdm = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ViewState["FeedbackID"] = 0;
                elaqelendirme();
            }

           
        }

       void elaqelendirme()
        {
            string k1;
            string[] msv1 = { "A", "B", "C", "D", "E", "a", "r", "f", "y" };
            int s1 = rdm.Next(0, msv1.Length);
            k1 = (msv1[s1]);

            string k2;
            string[] msv2 = { "1", "3", "5", "7", "9", "11", "13", "15", "17" };
            int s2 = rdm.Next(0, msv2.Length);
            k2 = (msv2[s2]);

            string k3;
            string[] msv3 = { "a", "r", "m", "u", "d" };
            int s3 = rdm.Next(0, msv3.Length);
            k3 = (msv3[s3]);

            string k4;
            string[] msv4 = { "*", "0", "#", "@", ">", "!", "<", "+", "=" };
            int s4 = rdm.Next(0, msv4.Length);
            k4 = (msv4[s4]);

            string k5;
            string[] msv5 = { "2", "4", "6", "8", "0" };
            int s5 = rdm.Next(0, msv5.Length);
            k5 = (msv5[s5]);


            lblsubmit.Text = k1 + k2 + k3 + k4 + k5;
        }

        protected void btngonder_Click(object sender, EventArgs e)
        {
            if ( txtsubmit.Text == lblsubmit.Text && xtxAd.Text!="" && txtSoyad.Text!="" && txtMail.Text != "" && txtMessage.Text != "")
            {

            
            if (ViewState["FeedbackID"].ToString() == "0")
            {
                SqlCommand cmd = new SqlCommand("Insert Into Tb_Feedback (Ad,Soyad,Mail,Message) values(@Ad,@Soyad,@Mail,@Message)", klas.baglanti);
                cmd.Parameters.AddWithValue("Ad", xtxAd.Text);
                cmd.Parameters.AddWithValue("Soyad", txtSoyad.Text);
                cmd.Parameters.AddWithValue("Mail", txtMail.Text);
                cmd.Parameters.AddWithValue("Message", txtMessage.Text);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                
              
            
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "tesdiqle();", true);
                xtxAd.Text = "";
                txtSoyad.Text = "";
                txtMail.Text = "";
                txtMessage.Text = "";
                klas.baglanti.Close();
                Response.Redirect("UserINFo.aspx");
                    //Response.Write("<script>alert('Hörmətli istifadəçi sizin mesajınız göndərildi. Qısa zaman ərzində sizin qeyd etdiyiniz mail ünvanına cavab göndəriləcək.')</script>");
                    lbl_info.Text = "";

            }
            }
            else
            {
                //Response.Write("<script>alert('Hörmətli istifadəçi xahiş edirik bütün parametrləri daxil edin')</script>");
                lbl_info.Text = "ⓘ Hörmətli istifadəçi təyin olunan bütün parametrləri daxil etməyiniz xahiş olunur.Əks halda sizin mesajınız göndərilməyəcək.";
            }
        }
    }
}