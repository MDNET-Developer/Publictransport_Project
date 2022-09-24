<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="DiplomisiBus.BusOfis.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <h1>Hörmətli istifadəçi sizin mesajınız göndərilmişdir. Əməkdaşlarımız yaxın zamanda sizin mail ünvanınıza cavab yazacaq.</h1>
        <hr />
        <h4 style="color:red">
            Diqqət!!! Yanlış yazılmış mail ünvanı olarsa biz mənsuliyyət daşımırıq. Əvvəlcədən təşəkkürlər.
        </h4>
        <hr />
        <div style="text-align:center">
            <a  style="background-color:#3498db" href="AnaSehife.aspx" class="btn">Ana səhifəyə qayıt</a>
        </div>
        <br />
    </div>
   
</asp:Content>
