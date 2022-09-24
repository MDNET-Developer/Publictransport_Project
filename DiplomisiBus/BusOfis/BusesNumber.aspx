<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="BusesNumber.aspx.cs" Inherits="DiplomisiBus.BusOfis.Logolar.BusesNumber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #HeadPhoto {
            transform: scale(0.7);
            width: 100%;
            height: auto;
        }
        #headphotoTxt{
            position:absolute;
            top:0;
            left:0;
            font-size:40px;
        }

        .busSection{
            width:17.7rem;
        }
        #DDL_BUS{
            font-size:18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="col-lg-12" style="position: relative; display:flex">
            <img id="HeadPhoto" src="BusFoto/PublicTransportHeadPhotot.jpg" />
        </div>
   <h3>Marşrut xətti seçin</h3>
        <asp:DropDownList CssClass="form-control" ID="DDL_BUS" OnSelectedIndexChanged="DDL_BUS_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
        <br />
        <div class="row">
            <asp:Repeater ID="RPT_BusCard" runat="server">
                <ItemTemplate>
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-9" id="buslittleinfo">
                                <div class="row">
                                <div class="col-lg-1">
                                    <span>
                                        <img src="Logolar/Marsurut30px.png" /></span><span><h3><%#Eval("Marşrutun №-si") %></h3></span>
                                </div>
                                <div class="col-lg-7">
                                    <img src="Logolar/Menteqe30px.png" /><h3><%#Eval("Başlanğıc məntəqə") %> -  <%#Eval("Son məntəqə") %></h3>
                                </div>
                                <div class="col-lg-1">
                                    <img src="Logolar/Vaxt30px.png" /><h3><%#Eval("Interval") %></h3>
                                    </div>
                                </div>
                                <br />
                                <a href="BusAbout.aspx?ID=<%#Eval("ID") %>"" style="background-color:#3498db" class="form-control btn">Ətraflı məlumat</a>

                            </div>
                            <div class="col-lg-3" id="busfoto">
                                <img style="width: 7cm; height: auto" src="BusFoto/<%#Eval("FotoURL") %>" alt="Card image cap">
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
          </div>
    </div>
    <br />
</asp:Content>

