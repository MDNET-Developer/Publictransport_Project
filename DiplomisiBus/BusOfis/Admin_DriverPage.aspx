<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_DriverPage.aspx.cs" Inherits="DiplomisiBus.BusOfis.Admin_DriverPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body{
            background-color:#1e272e;
            color:snow
        }
        #txtDriverCarGovNumber:focus{
            border:1px solid blue;
        }
         #info {
  position: relative;
  animation-name: example;
  animation-duration: 2s;
  animation-iteration-count:3;
  background-color:#F79F1F;
  font-size:18px;
  padding:7px;
  height:1cm;
}

@keyframes example {
  0%   {background-color:#F79F1F;}
  25%  {background-color:#1e272e;}
  50%  {background-color:#F79F1F;}
  75%  {background-color:#1e272e;}
  100% {background-color:#F79F1F;}
}
#Warnign{
      background-color:#EA2027;
  font-size:18px;
  padding:7px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <script>
var openFile = function(file) {
    var input = file.target;

    var reader = new FileReader();
    reader.onload = function(){
      var dataURL = reader.result;
      var output = document.getElementById('ContentPlaceHolder1_Img_Driver');
      output.src = dataURL;
    };
    reader.readAsDataURL(input.files[0]);
  };
    </script>
    <div>
        <div style="display:flex; flex-direction:row">
            <asp:Image style="width:4.4cm; height:auto" ID="Img_Driver" runat="server" />
            <asp:FileUpload ID="FileUpload1" runat="server" onchange='openFile(event)'  />
           <div style="display:flex; flex-direction:column">
            <p id="info"><asp:Label ID="lblInfo" style="" runat="server" Text="ⓘ"></asp:Label></p>
            
            <p id="Warnign">Hörmətli admin nəzərnizə çatdırmaq istəyirik ki, sürücüyə aid olan rəyləri
                sildikdən sonra sürücü haqqında məlumatları silə bilərsiz.
            
            </p>
               </div>
                </div>
        </div>
        <hr />
        <div class ="row">
           
            <div class="col-lg-3">
                <h6>Sürücünün ad və soyadı</h6>
                <asp:TextBox ID="txtDriverNameSurname" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-2">
                <h6>Avtomobilin DQN</h6>
                 
                    <img style="width: 4cm; height: 0.9cm;border-radius:3.3px; position: absolute; z-index: -1" src="BusFoto/avto-nomer-azerbaijan.png" />
                <asp:TextBox ID="txtDriverCarGovNumber" style="position: absolute;width: 3cm;height: 0.7cm; font-family: Arial; z-index: 1;font-size:18.5PX; margin-left: 27px; margin-top: 3.5px;border:none; border-bottom:1px solid silver" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-1">
                <h6>Marşrut</h6>
                <asp:DropDownList ID="Ddl_RouteNumber" class="form-control" runat="server"></asp:DropDownList>
            </div>
             <div class="col-lg-2">
                 <h6>İş təcrübəsi</h6>
                 <asp:TextBox ID="txtDriverSkill"  class="form-control" type="number" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-4">
                <h6>İş yerləri</h6>
                <asp:TextBox ID="txtDriverWorkStation" class="form-control" runat="server"></asp:TextBox>
                </div>
        </div>
        <hr />
        <asp:Button style="background-color:#6ab04c;" ID="btnSubmit" OnClick="btnSubmit_Click" class="btn  form-control" runat="server" Text="Təsdiqlə" />
        <hr />
        <div style="width:29cm">
            <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Ad və soyadı</th>
        <th scope="col">Foto</th>
      <th scope="col">Avtomobilin DQN</th>
        <th scope="col">Marşrut</th>
      <th scope="col">İş təcrübəsi</th>
      <th scope="col">İş yerləri</th>
        <th scope="col">Show</th>
        <th scope="col">Delete Driver</th>
        <th scope="col">Delete Comment</th>
    </tr>
  </thead>
  <tbody >
      <asp:Repeater ID="Rpt_Driver" OnItemCommand="Rpt_Driver_ItemCommand" runat="server">
          <ItemTemplate>
    <tr>
      <th scope="row"><%#Eval("DriverNameSurname") %></th>
      <td><img style="width:2cm; height:auto" src="PhotoSuruculer/<%#Eval("DriverPhoto") %>" /></td>
      <td> <strong style="position: absolute; font-family: Arial; font-size: 23px; color:black; z-index: 1; margin-left: 22px; margin-top: 1.7px"><%#Eval("DriverCarGovNumber") %></strong>
                   <img style="width: 3.7cm; height: 0.9cm;border-radius:3.3px; position: absolute; z-index: 0" src="BusFoto/avto-nomer-azerbaijan.png" /></td>
      <td style="text-align:center"><%#Eval("DriverBusNumber") %></td>
        <td style="text-align:center"><%#Eval("DriverSkill") %></td>
        <td><%#Eval("DriverWorkStation") %></td>
        <td  style="text-align:center"><asp:LinkButton ID="btnshow" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="Show" CssClass="btn"><img src="Logolar/icons8_edit_property_40px_4.png" /></asp:LinkButton></td>
        <td  style="text-align:center"><asp:LinkButton ID="btnDeleteDrivver" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="Delete_Driver"><img src="Logolar/icons8_Remove_40px.png" /></asp:LinkButton></td>
        <td  style="text-align:center"><asp:LinkButton ID="btnDeleteComment" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="Delete_Comment"><img src="Logolar/icons8_delete_chat_48px.png" /></asp:LinkButton></td>
    </tr>
              </ItemTemplate>
      </asp:Repeater>
  </tbody>
</table>
        </div>
   
</asp:Content>
