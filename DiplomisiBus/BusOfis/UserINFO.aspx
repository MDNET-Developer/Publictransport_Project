<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="UserINFO.aspx.cs" Inherits="DiplomisiBus.BusOfis.UserINFO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="InfoAnimation.js"></script>
    <div style="text-align:center" class="container">
    <h4 style="color:#009432">ⓘ Hörmətli istifadəçi sizin mesajınız göndərildi.✓ Qısa zaman ərzində sizin mail ünvanınıza cavab göndəriləcək.</h4>
    <h6 style="color:#EA2027"><strong>Qeyd etmək istəyirik ki, qeyd etdiyiniz mail ünvanı yanlış yazılarsa şikətimiz buna cavabdeh deyil.</strong> </h6>
       
       <hr />
            <div>
                <a href="AnaSehife.aspx" style="background-color:#3498db;color:snow" class="btn">Ana səhifəyə qayıt</a>
                <a href="Elaqe.aspx" class="btn btn-warning">Yenidən mesaj göndər</a>
            </div>
      
        <br />
    </div>
</asp:Content>
