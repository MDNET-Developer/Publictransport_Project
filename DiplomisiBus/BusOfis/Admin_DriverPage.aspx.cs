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
    public partial class Admin_DriverPage : System.Web.UI.Page
    {
        ClassSql klas=new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetDriver();
                Route_Number();
                if (ViewState["ID"] == null)
                {
                    ViewState["ID"] = 0;
                }

            }
        }
        private void Route_Number()
        {
            Ddl_RouteNumber.DataValueField = "ID";
            Ddl_RouteNumber.DataTextField = "Marşrutun №-si";
            Ddl_RouteNumber.DataSource = klas.getdatatable("Select * from TB_Avtobuslar");
            Ddl_RouteNumber.DataBind();
            Ddl_RouteNumber.Items.Insert(0, new ListItem("Seç", "0"));
        }
        private void GetDriver()
        {
            Rpt_Driver.DataSource = klas.getdatatable("Select * from Tb_Driver");
            Rpt_Driver.DataBind();
        }
        protected void Rpt_Driver_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            if (e.CommandName == "Show")
            {
                DataRow dr = klas.getdatatable("Select * from Tb_Driver Where ID=" + ID).Rows[0];
                txtDriverNameSurname.Text = dr["DriverNameSurname"].ToString();
                Img_Driver.ImageUrl = @"PhotoSuruculer\" + dr["DriverPhoto"].ToString();
                ViewState["Foto"] = dr["DriverPhoto"].ToString();
                txtDriverSkill.Text = dr["DriverSkill"].ToString();
                txtDriverWorkStation.Text = dr["DriverWorkStation"].ToString();
                txtDriverCarGovNumber.Text = dr["DriverCarGovNumber"].ToString();
                Ddl_RouteNumber.SelectedValue = dr["TbAvtobuslarConnectID"].ToString();
                ViewState["ID"] = e.CommandArgument.ToString();

                //DataRow dr = klas.getdatatable("Select * from Tb_CarsCard where CarsCardID=" + CarsCardID).Rows[0];
                //txtCarsName.Text = dr["CardHead"].ToString();
                //imgnews.ImageUrl = @"..\MercImage\" + dr["CardPhoto"].ToString();
                //ViewState["Foto"] = dr["CardPhoto"].ToString();
                //DDLCardType.SelectedValue = dr["MenuID"].ToString();
                //ViewState["CarsCardID"] = e.CommandArgument.ToString();
                lblInfo.Text = "ⓘ Məlumatlar təqdim olundu";
            }
            else if (e.CommandName == "Delete_Driver")
            {
                SqlCommand cmd = new SqlCommand("Delete from Tb_Driver where ID=" + e.CommandArgument.ToString(), klas.baglanti);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                lblInfo.Text = "ⓘ Sürücü haqqında məlumatlar silindi";
                GetDriver();
            }
            else if (e.CommandName == "Delete_Comment")
            {
                SqlCommand cmd = new SqlCommand("Delete from Tb_CommentDriver where DriverConID=" + e.CommandArgument.ToString(), klas.baglanti);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                lblInfo.Text = "ⓘ Sürücüyə aid olan rəylər silindi";
                GetDriver();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ViewState["ID"].ToString() == "0")
            {
                SqlCommand cmd = new SqlCommand(@"Insert into Tb_Driver (DriverNameSurname, DriverPhoto,DriverSkill,DriverWorkStation,DriverCarGovNumber,DriverBusNumber, TbAvtobuslarConnectID) values(@DriverNameSurname,@DriverPhoto,@DriverSkill, @DriverWorkStation,@DriverCarGovNumber,@DriverBusNumber,@TbAvtobuslarConnectID)", klas.baglanti);
                cmd.Parameters.AddWithValue("DriverNameSurname", txtDriverNameSurname.Text);
                cmd.Parameters.AddWithValue("DriverSkill", txtDriverSkill.Text);
                cmd.Parameters.AddWithValue("DriverWorkStation", txtDriverWorkStation.Text);
                cmd.Parameters.AddWithValue("DriverCarGovNumber", txtDriverCarGovNumber.Text);
                cmd.Parameters.AddWithValue("DriverPhoto", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("TbAvtobuslarConnectID", Ddl_RouteNumber.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("DriverBusNumber", Ddl_RouteNumber.SelectedItem.ToString());
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                GetDriver();
                FileUpload1.SaveAs(Server.MapPath(@"PhotoSuruculer\" + FileUpload1.FileName));
                txtDriverNameSurname.Text = "";
                txtDriverSkill.Text = "";
                txtDriverWorkStation.Text = "";
                txtDriverCarGovNumber.Text = "";
                lblInfo.Text = "ⓘ Məlumat uğurla əlavə olundu.";
                ViewState["ID"] = 0;
            }

            else
            {
                string fotoname;
                fotoname = ViewState["Foto"].ToString();
                if (FileUpload1.HasFile)
                {
                    fotoname = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(@"PhotoSuruculer\" + FileUpload1.FileName));
                }

                SqlCommand cmd = new SqlCommand(@"Update  Tb_Driver set DriverNameSurname=@DriverNameSurname, DriverPhoto=@DriverPhoto,DriverSkill=@DriverSkill,DriverWorkStation=@DriverWorkStation,DriverCarGovNumber=@DriverCarGovNumber,DriverBusNumber=@DriverBusNumber,TbAvtobuslarConnectID=@TbAvtobuslarConnectID where ID=" + ViewState["ID"].ToString(), klas.baglanti);

                cmd.Parameters.AddWithValue("DriverNameSurname", txtDriverNameSurname.Text);
                cmd.Parameters.AddWithValue("DriverSkill", txtDriverSkill.Text);
                cmd.Parameters.AddWithValue("DriverWorkStation", txtDriverWorkStation.Text);
                cmd.Parameters.AddWithValue("DriverCarGovNumber", txtDriverCarGovNumber.Text);
                cmd.Parameters.AddWithValue("DriverPhoto", fotoname);
                cmd.Parameters.AddWithValue("TbAvtobuslarConnectID", Ddl_RouteNumber.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("DriverBusNumber", Ddl_RouteNumber.SelectedItem.ToString());
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                GetDriver();
                FileUpload1.SaveAs(Server.MapPath(@"PhotoSuruculer\" + FileUpload1.FileName));
                txtDriverNameSurname.Text = "";
                txtDriverSkill.Text = "";
                txtDriverWorkStation.Text = "";
                txtDriverCarGovNumber.Text = "";
                ViewState["ID"] = 0;
            }
        }
    }
}