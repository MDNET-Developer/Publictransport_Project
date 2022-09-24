<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Muraciet.aspx.cs" Inherits="DiplomisiBus.BusOfis.Admin_Muraciet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body{
           background-color:#1e272e;
        }
        #melumatmerkezi{
            display:flex;
            justify-content:space-around;
        }
        #sendmail{background-color:#3498db}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <div class="col-lg-12">
        <h1>Müraciətlər</h1>
        <div style="width:100%;height:0.2cm;background-color:#273c75"></div>
        <br />

        <div id="melumatmerkezi">
            <div><strong>Ad: </strong><span> <asp:Label ID="lblAd" runat="server" Text="-----"></asp:Label></span></div>
            <div><strong>Soyad: </strong><span> <asp:Label ID="lblSoyad" runat="server" Text="-----"></asp:Label></span></div>
            <div><strong>Mail: </strong><span> <asp:Label ID="lblMail" runat="server" Text="-----"></asp:Label></span></div>
        </div>
        <br />
        <div>
            <h5>Məktub:</h5>
            <div style="background-color: #E0D3AF;width:auto;height:auto "><i>
                <asp:Label ID="lblmesaj" runat="server" Text="Mesaj bölməsi"></asp:Label></i></div>
        </div>
          <br />
        <div>
            <asp:LinkButton class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" style="background-color:#2980b9;color:#ffa801;font-family:Tahoma;font-size:18px" CssClass="btn" ID="sendmail" runat="server">✉ Mail göndər</asp:LinkButton>
        </div>
          <br />
          <div>
              <div class="col-lg-6" style="display:flex; flex-direction:row">
                  <asp:TextBox ID="txtAxtar" runat="server" CssClass="form-control" placeholder="Axtar..."></asp:TextBox>
                  <asp:LinkButton ID="lnkAxtar" runat="server" style="font-size:33px;margin-top:-10px" OnClick="lnkAxtar_Click" CssClass="btn ">🔍</asp:LinkButton>
              </div>
             <div class="col-lg-6" style="display:flex; justify-content:space-between">
                 <asp:LinkButton class="btn btn-success" ID="btnnew" runat="server">⌛ Əvvəlcə yeni</asp:LinkButton>
                 <asp:LinkButton ID="btnold" class="btn btn-warning btn-outline-warning" runat="server">⌛ Əvvəlcə köhnə</asp:LinkButton>
             </div>
          </div>
          <br />
          <i><asp:Label style="color:red; font-size:22px;" ID="LBLINFO" runat="server" Text=""></asp:Label></i>
          <br />
       <div>
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
     
            <div style="background-color:#2980b9;border-radius:100%;margin-top:-40px;"> <img style="transform:scale(0.8)" src="Logolar/icons8_mail_70px_1.png" /></div>
           
      </div>
      <div class="modal-body">
          <br />
          <h5>Alıcı: </h5>
          <asp:TextBox class="form-control" ID="txtKime" runat="server"></asp:TextBox>
          <br />
          <h5>Başlıq: </h5>
          <asp:TextBox class="form-control" ID="txtBasliq" runat="server"></asp:TextBox>
          <br />
          <h5>Mesaj: </h5>
          <asp:TextBox class="form-control" TextMode="MultiLine" Rows="7" ID="txtMesaj" runat="server"></asp:TextBox>
      </div>
      <div class="modal-footer">
          <asp:LinkButton data-dismiss="modal" ID="LinkButton6" runat="server"><img src="Logolar/icons8_Close_50px.png" /></asp:LinkButton>
          <asp:LinkButton OnClick="LinkButton7_Click" ID="LinkButton7" runat="server"><img src="Logolar/icons8_send_50px.png" /></asp:LinkButton>
         
      </div>
    </div>
  </div>
</div>
       </div>
        <br />

        <table  class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Ad</th>
        <th>Soyad</th>
        <th>Mail</th>
        <th>Mesaj</th>
        <th>Bax</th>
        <th>Sil</th>
      </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="RepeatMail" runat="server" OnItemCommand="RepeatMail_ItemCommand">

            <ItemTemplate>
                <tr>
                    <td><%#Eval("Ad") %></td>
                    <td><%#Eval("Soyad") %></td>
                    <td><%#Eval("mail") %></td>
                    <td><%#Eval("message") %></td>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Bax" CommandArgument='<%#Eval("ID") %>'><img src="Logolar/icons8_view_30px.png" /></asp:LinkButton></td>
                    <td>
                        <asp:LinkButton ID="btnsil" runat="server" CommandName="sil" CommandArgument='<%#Eval("ID") %>'><img src="Logolar/icons8_Remove_30px.png" /></asp:LinkButton></td>


      </tr>
          </ItemTemplate>
            </asp:Repeater>
    </tbody>
  </table>
    </div>
</asp:Content>
