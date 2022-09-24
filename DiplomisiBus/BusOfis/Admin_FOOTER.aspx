<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_FOOTER.aspx.cs" Inherits="DiplomisiBus.BusOfis.Admin_FOOTER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    #FooterMenuTextbox{
        display:flex;
        justify-content:space-around
    }
    #imageArea{
        display:flex;
        justify-content:space-around;
    }
    
    .footer-li{
    list-style:none;
    transition:0.5s;
    cursor:pointer;
  
   
}
    .footer-li:hover {
        margin-left: 15px;
       color:#F48200;
    }
.sosial{
    margin-bottom:15px;
}
#footer{
    width:100%;
 
    background-color:#ededed;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <h1>Admin panel Footer</h1>
        <div style="width:100%;height:0.2cm;background-color:#273c75"></div>
        <br />
        <div id="FooterMenuArea">
            <h3>Footer Menu</h3>
            <hr />
        <div id="FooterMenuTextbox">
            <div>
            <h6>Menu name</h6>
            <asp:TextBox ID="txtMenuName" runat="server"></asp:TextBox>
            </div>
            <div>
            <h6>Menu URL</h6>
            <asp:TextBox ID="txtMenuURL" runat="server"></asp:TextBox>
             </div>
            <div>
            <h6> Menu sırası</h6>
            <asp:TextBox ID="txtMenuROW" runat="server"></asp:TextBox>
            </div>
        </div>
            <br />
            <div id="imageArea">
                <div class="img">
                <asp:Image Width="40"  ID="img" runat="server" />
                    </div>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <br />
            <div>
            <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" class="btn btn-success form-control" runat="server" Text="Təstiq et" />
                </div>
            <br />
             <table class="table  table-hover ">
    <thead>
      <tr style=" background-image: linear-gradient(to top left, #3498db,#273c75);color:snow">
        
        <th>Menu Name</th>
        <th>Menu URL</th>
        <th>Menu Icon</th>
        <th>Menu Row</th>
        <th>İncələ</th>
        <th>Sil</th>
      </tr>
    </thead>
   <asp:Repeater ID="rptMenu" OnItemCommand="rptMenu_ItemCommand" runat="server">
       <ItemTemplate>
    <tbody>
      <tr>
        <td><%#Eval("MenuName") %></td>
        <td><%#Eval("MenuURL") %></td>
        <td><img width="30" src="Logolar/<%#Eval("MenuIconURL")%>" /></td>
        <td><%#Eval("MenuROW") %></td>
        <td><asp:LinkButton CssClass="btn" ID="btnshow" CommandName="edit" CommandArgument='<%#Eval("ID") %>' runat="server"><img src="Logolar/icons8_view_30px.png" /></asp:LinkButton></td>
          <td><asp:LinkButton CssClass="btn" ID="btndelete" CommandName="delete" CommandArgument='<%#Eval("ID") %>'  runat="server"><img src="Logolar/icons8_Remove_30px.png" /></asp:LinkButton></td>
      </tr>
    </tbody>
    </ItemTemplate>
    </asp:Repeater>
  </table>
            
        </div>

        <br />
        <div id="onbaxishArea">
            <h4>Ön baxış</h4>
            <hr />
                    <div id="footer" class="container  col-lg-12">
        
            <div style="width:100%; height:5px; background-color:#B60000;"></div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-lg-4">
                                    <asp:Literal ID="LtFooterMenu" runat="server"></asp:Literal>
                                </div>
                                <div class="col-lg-4 ">
                                    <ul id="footer-ul">
                                        <li class="footer-li sosial">
                                            <img src="Logolar/Face.png" />FaceBook</li>
                                        <li class="footer-li sosial">
                                            <img src="Logolar/Insta.png" />Instagram</li>
                                        <li class="footer-li sosial">
                                            <img src="Logolar/Email.png" />e-mail</li>
                                        <li class="footer-li sosial">
                                            <img src="Logolar/YT.png" />You Tube</li>
                                    </ul>
                                </div>
                                <div class="col-lg-4">

                                    <img style="height: 4cm" src="Logolar/1645993908803.png" />

                                </div>
                            </div>
                        </div>

                    </div>
        </div>
    </div>
</asp:Content>
