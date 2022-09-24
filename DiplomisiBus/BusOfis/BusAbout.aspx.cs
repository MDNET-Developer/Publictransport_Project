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
    public partial class BusAbout : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               string ID;
                ID = Request.QueryString["ID"].ToString();
                GetBusInfo(ID);
                GetBusPhoto(ID);
                GetBusMaP(ID);
                GetH1(ID);
            }

            void GetH1(string ID)
            {
                DataTable dt = klas.getdatatable("Select * from TB_Avtobuslar where ID=" + ID);
                if (dt != null)
                {
                    Rp_XettAdi.DataSource = dt;
                    Rp_XettAdi.DataBind();
                }
            }

            


             void GetBusInfo(string ID)
            {
                DataTable dt = klas.getdatatable(" Select * from TB_Avtobuslar where ID=" + ID);

                if (dt != null)
                {
                    RPT_BusInfo_Table.DataSource = dt;
                    RPT_BusInfo_Table.DataBind();


                }
            }

            void GetBusPhoto(string ID)
            {
                DataTable dt = klas.getdatatable(" Select  * from TB_Avtobuslar where ID= "+ ID);

                if (dt != null)
                {
                   RPT_Bus_Foto.DataSource = dt;
                    RPT_Bus_Foto.DataBind();

                }
            }

            void GetBusMaP(string ID)
            {
                DataTable dt = klas.getdatatable(" Select * from Tb_BusRoute where AvtobusConnectID=" + ID);

                if (dt != null)
                {
                    RPT_Map.DataSource = dt;
                    RPT_Map.DataBind();


                }
            }
        }
    }
}