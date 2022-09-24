<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="ADMIN_HOME.aspx.cs" Inherits="DiplomisiBus.BusOfis.ADMIN_HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-color:#1e272e;
            color:snow
        }
     #btnedituser{
         font-size:33px
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="col-lg-9">
        <br />
        <div>
    <img style="width:2.5cm; height:2.5cm;border-radius:100%" src="AdminPhoto/" />
            <asp:Repeater ID="RptUserName" runat="server">
                <ItemTemplate>
                    <span style="font-size: 27px;">Salam, <%#Eval("AdminName") %></span>
                </ItemTemplate>
            </asp:Repeater>
            </div>
    <br />
    <div class="row " ID="CommandArea">
        <div class="col-lg-4"> <asp:Button CssClass="btn btn-success" ID="btnedituser" runat="server" Text="Düzəliş et" /></div>
       <div class="col-lg-4"><asp:Button CssClass="btn btn-danger" ID="Button2" runat="server" Text="Çıxış et" /></div>
         <div class="col-lg-4"><asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" Text="Yenilə" /></div>
       
    </div>
        <hr />
        <br />
        <div id="enteringTimeArea">
            <img src="Logolar/icons8_clock_40px.png" /> <span style="font-size:19px;">Sistemə giriş vaxtları</span>
            <table style="font-size:18px" class="table table-borderless table-dark">
  <thead>
    <tr>
      <th >#</th>
      <th >Ayın tarixi / Saat </th>
    </tr>
  </thead>
               
                <tbody>
                    <asp:Repeater ID="rptTime" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%#Eval("ID") %></th>
                                <td><%#Eval("GirisVaxtlari") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                        </tbody>
                    
            </table>
        </div>
         </div>
</asp:Content>
