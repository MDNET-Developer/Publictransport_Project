<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="Layihelerimiz.aspx.cs" Inherits="DiplomisiBus.BusOfis.Layihelerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #hisse {
            width: 100%;
            height: 4cm;
        }

        #test {
            width: 7cm;
            height: auto;
            border-radius: 0%;
            z-index: 1;
            transition: 1s;
        }

        #hisse:hover #test {
            transition: 1s;
            border-radius: 0%;
            border-top-right-radius: 100%
        }

        #yazi {
            transition: 1s;
            z-index: 0;
            width: 22cm;
        }

        #hisse:hover #yazi {
            transition: 1s;
            margin-left: -42px;
            width: 22cm;
            height: auto;
            color: #F48200;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Layihələrimiz</h1>
        <hr />
        <asp:Repeater ID="Rpt_Layiheler" runat="server">
            <ItemTemplate>       
            <div id="hisse" style="display:flex; flex-direction:row">
            <img id="test" src="BusFoto/<%#Eval("LayihePhoto")%>" />
            <h5 id="yazi"><%#Eval("LayiheHaqqinda")%></h5>
        </div>
                <hr />
                </ItemTemplate> 
            </asp:Repeater>
        <hr />

    </div>
        
</asp:Content>
