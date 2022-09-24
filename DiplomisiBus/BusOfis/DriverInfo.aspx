<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="DriverInfo.aspx.cs" Inherits="DiplomisiBus.BusOfis.DriverInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .txtbox{
            margin-right:22px;border:none; outline:none;border-bottom:1px solid silver;width:45%;
            transition:linear 0.3s;
        }
        .txtbox:focus{
               transition:linear 0.3s;
            border-bottom-color:#1B9CFC;
           
        }
        .driver-info-li{
            margin-bottom:10px
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <a style="text-decoration:none" href="Suruculer.aspx">
            <img src="Logolar/Back.png" /></a>
        <asp:Repeater ID="Rpt_DriverName" runat="server">
            <ItemTemplate>
               <h1><%#Eval("DriverNameSurname") %></h1>
                 
            </ItemTemplate>
        </asp:Repeater>
       
        <hr />
        <div style="display:flex;flex-direction:row ">
            <asp:Repeater ID="Rpt_BusInfo" runat="server">
                <ItemTemplate>
                     <img style="width:7cm;height:auto;margin-right:22px" src="PhotoSuruculer/<%#Eval("DriverPhoto")%>" />
            <div style="font-size:20px;font-family:'Times New Roman';">
                <ul style="list-style:none">
                    <li class="driver-info-li"> <img src="Logolar/DriverSkill.png" /><span><%#Eval("DriverSkill") %> il iş təcrübəsi var</span></li>
                    <li class="driver-info-li">      <img src="Logolar/CompanyDriver.png" /><span><%#Eval("DriverWorkStation") %> kimi şirkətlətdə işləyib</span></li>
                    <li class="driver-info-li">
                         <img src="Logolar/BusDriver.png" /><span>Hal hazırda <%#Eval("DriverBusNumber") %>  nömrəli marşurutda işləyir.</span>
                    </li>
                    <li class="driver-info-li">
                        <div>
                    <strong style="position: absolute; font-family: Arial; font-size: 25px; z-index: 1; margin-left: 22px; margin-top: 1.7px"><%#Eval("DriverCarGovNumber") %></strong>
                    <img style="width: 4cm; height: 1cm; position: absolute; z-index: -1" src="BusFoto/avto-nomer-azerbaijan.png" />
                </div>
                    </li>
                </ul>
               
          
               
                
                </div>
                </ItemTemplate>
            </asp:Repeater>
           
        </div>
        <br />
        <br />
        <div class="row">
        <div class="col-lg-4" >
            <br />
            <h5>Rəy yaz </h5>
             <hr />
            <div style="display:flex; flex-direction:row;margin-bottom:25px">
                
              <h6>Ad</h6>
            <asp:TextBox class="txtbox"   ID="txtname" runat="server" ></asp:TextBox>
                <h6>Soyad</h6>
            <asp:TextBox class="txtbox"  ID="txtsurname" runat="server" ></asp:TextBox>
                </div>

            <h6>Rəy yaz...</h6>
            <asp:TextBox style="border:none; outline:none;border-bottom:1px solid silver"  ID="txtcomment" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:LinkButton  class="btn  form-control " style="background-color:#dfe6e9" ID="btnSendComment" OnClick="btnSendComment_Click" runat="server">Təsdiqlə</asp:LinkButton>
        </div>
        <div style="height:7cm;" class="col-lg-8 overflow-auto">
            <br />
            <asp:Repeater ID="RPT_Comment" runat="server">
            <ItemTemplate>
                <br />
                <div style="display: flex; flex-direction: row">
                    <div style="margin-left: 55px; background-color: #dfe6e9; border-radius: 10px; padding: 7px;width:100%">
                        <p>
                            <strong><%#Eval("Name") %><%#Eval("Surname") %>

                            </strong> / <i style="font-size:12px"><%#Eval("CommentTime") %></i>
                        </p>
                        <p><%#Eval("Comment") %></p>
                    </div>
                       
                </div>
        <br />
                
            </ItemTemplate>
        </asp:Repeater>
        </div>
        </div>

        
        <br />
    </div>
</asp:Content>
