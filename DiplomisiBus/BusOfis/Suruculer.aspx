<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="Suruculer.aspx.cs" Inherits="DiplomisiBus.BusOfis.Suruculer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .driver{
            transform:scale(0.9);
            transition:ease-in-out 0.2s
        }
        .driver:hover{
           transform:scale(0.95);
           transition:ease-in-out 0.2s;
           box-shadow:0 0 5px black

        }
        .txtSearch{
            width:20%;
            border:none;
            outline:none;
            border-bottom:1px solid silver;
                transition:0.5s;
        }
        /*.txtSearch:focus{
            width:80%;
            transition:0.5s;

        }*/
        .card{
            
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-12">
        <div class="container">
            <div id="test">

            </div>
            <h1>Sürücülər</h1>
            <div id="yoxla" style="width:2cm;height:auto;background-color:red">

            </div>
            <div class="row">
                <div class="col-lg-12">
                    <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="DDL_BusNumber_SelectedIndexChanged" class="form-control" ID="DDL_BusNumber" runat="server"></asp:DropDownList>
                    <br />
                    <div class="col-lg-12">
                      <span>  <asp:TextBox class="txtSearch"  placeholder="Sürücü axtar..."  ID="txtSearch" runat="server"></asp:TextBox></span>
                      <span> <asp:LinkButton CssClass="btn" ID="btnSearch" OnClick="btnSearch_Click" runat="server"><img style="width:1cm;height:auto" src="Logolar/icons8_search_50px_2.png" /></asp:LinkButton></span> 
                    </div>
                    <br />
                    <div>
                       <strong><asp:Label style="width:100%;color:#2f3542;font-size:20px"  ID="lblInfo" runat="server" Text=""></asp:Label></strong> 
                        </div>
                    <br />
                </div>
                <br />
             
                <div class="row">
                    <asp:Repeater ID="RPT_Suruculer" runat="server">
                        <ItemTemplate>
                           <div class="col-lg-3">
                                <a href="DriverInfo.aspx?ID=<%#Eval("ID") %>">
                                <div id="salam" style="background-color: #ededed;" class="card driver">
                                    <img style="transform: scale(0.99);height:7cm; width:6.7cm" class="card-img" src="PhotoSuruculer/<%#Eval("DriverPhoto") %>" />
                                    <div class="card-body">
                                        <i><%#Eval("DriverNameSurname") %></i>
                                    </div>
                                </div>
                                </a>
                           </div>

                        </ItemTemplate>
                    </asp:Repeater>

                </div>

                               
                            
                    </div>
                </div>
            </div>
             <br />
       
        
</asp:Content>
