<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="BusAbout.aspx.cs" Inherits="DiplomisiBus.BusOfis.BusAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .busFoto{
           width:7.7cm;
           height:auto;
        }
        #fotoMap{
               display: flex;
 
  justify-content:space-around;
        }
        #BusMap{
            width:14cm;
            height:auto
        }
        .table{
            border:1px solid silver;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
    <div class="container">
        <div class="col-lg-12">
            <asp:Repeater ID="Rp_XettAdi" runat="server">
                <ItemTemplate>
                    <h1>Marşrut №<%#Eval("Marşrutun №-si") %></h1>
                </ItemTemplate>
            </asp:Repeater>
            
            <hr />
        </div>
        <div id="fotoMap">
            <asp:Repeater ID="RPT_Bus_Foto" runat="server">
                <ItemTemplate>
                    <img class="busFoto" src="BusFoto/<%#Eval("FotoURL") %>" />
                </ItemTemplate>
            </asp:Repeater>

            <asp:Repeater ID="RPT_Map" runat="server">
                <ItemTemplate>
                    <iframe id="BusMap" src="<%#Eval("URL") %>"></iframe>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <div id="BusTable">
            <table class="table table-hover table-bordered">
    <thead>
      <tr>
        <th>Marşrutun №-si</th>
        <th>Başlanğıc məntəqə</th>
        <th>Son məntəqə</th>
          <th>İnterval (dəq#)</th>
          <th>Gediş haqqı</th>
          <th>Vaxt qrafiki</th>
          <th>Avtobus modeli</th>
      </tr>
    </thead>
   <asp:Repeater ID="RPT_BusInfo_Table" runat="server">
       <ItemTemplate>
           <tbody>
               <tr>
                   <td><%#Eval("Marşrutun №-si") %></td>
                   <td><%#Eval("Başlanğıc məntəqə") %></td>
                   <td><%#Eval("Son məntəqə") %></td>
                   <td><%#Eval("Interval") %></td>
                   <td><%#Eval("Gediş haqqı") %></td>
                   <td><%#Eval("Vaxt qrafiki") %></td>
                   <td><%#Eval("Avtobus modeli") %></td>
               </tr>


           </tbody>
       </ItemTemplate>
   </asp:Repeater>
  </table>
        </div>

    </div>
</asp:Content>
