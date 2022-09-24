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
    public partial class Admin_FOOTER : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
                getMenu();
                GetFooterMenu();
                ViewState["ID"] = 0;
            }
        }
        protected void GetFooterMenu()
        {
            LtFooterMenu.Text += "<div id='Menu'>";
            DataTable dt = klas.getdatatable("Select * from Tb_Menu order by MenuRow");
            LtFooterMenu.Text += "<ul>";
            foreach (DataRow dr in dt.Rows)
            {
                LtFooterMenu.Text += "  <li class='footer-li'><a href='" + dr["MenuURL"] + "'><span><img src='Logolar/" + dr["MenuIconURL"] + "'/></span><span>" + dr["MenuName"] + "</span><a></li>";
            }

            LtFooterMenu.Text += "</ul>";
            LtFooterMenu.Text += "</div>";
        }
        private void getMenu()
        {
            DataTable dt = klas.getdatatable("SELECT * FROM Tb_Menu");
            rptMenu.DataSource = dt;
            rptMenu.DataBind();
        }
        protected void rptMenu_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            if (e.CommandName == "edit")
            {
                DataRow dr = klas.getdatatable("Select * from Tb_Menu where ID=" + ID).Rows[0];
                txtMenuName.Text = dr["MenuName"].ToString();
                txtMenuURL.Text = dr["MenuURL"].ToString();
                img.ImageUrl = @"Logolar\" + dr["MenuIconURL"].ToString();
                ViewState["Foto"] = dr["MenuIconURL"].ToString();
                txtMenuROW.Text = dr["MenuROW"].ToString();
                ViewState["ID"] = e.CommandArgument.ToString();
            }
            else if (e.CommandName == "Delete")
            {
                SqlCommand cmd = new SqlCommand("Delete from Tb_Menu where ID=" + e.CommandArgument.ToString(), klas.baglanti);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMenu();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ViewState["ID"].ToString() == "0")
            {
                SqlCommand cmd = new SqlCommand(@"Insert into Tb_Menu (MenuName,MenuURL,MenuIconURL,MenuROW) values (@MenuName, @MenuURL,@MenuIconURL,@MenuROW)", klas.baglanti);
                cmd.Parameters.AddWithValue("MenuName", txtMenuName.Text);
                cmd.Parameters.AddWithValue("MenuURL", txtMenuURL.Text);
                cmd.Parameters.AddWithValue("MenuIconURL", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("MenuROW", txtMenuROW.Text);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMenu();
                FileUpload1.SaveAs(Server.MapPath(@"Logolar\" + FileUpload1.FileName));
                
                txtMenuName.Text = "";
                txtMenuURL.Text = "";
                txtMenuROW.Text = "";

            }

            else
            {
                string fotoname;
                fotoname = ViewState["Foto"].ToString();
                if (FileUpload1.HasFile)
                {
                    fotoname = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(@"Logolar\" + FileUpload1.FileName));
                }
                SqlCommand cmd = new SqlCommand(@"Update  Tb_Menu set MenuName=@MenuName, MenuURL=@MenuURL, MenuIconURL=@MenuIconURL,MenuROW=@MenuROW where ID=" + ViewState["ID"].ToString(), klas.baglanti);
                cmd.Parameters.AddWithValue("MenuName", txtMenuName.Text);
                cmd.Parameters.AddWithValue("MenuURL", txtMenuURL.Text);
                cmd.Parameters.AddWithValue("MenuIconURL", fotoname);
                cmd.Parameters.AddWithValue("MenuROW", txtMenuROW.Text);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMenu();
                txtMenuName.Text = "";
                txtMenuURL.Text = "";
                txtMenuROW.Text = "";
                ViewState["ID"] = 0;
            }
        }
    }
}