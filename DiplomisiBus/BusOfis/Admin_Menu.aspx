<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Menu.aspx.cs" Inherits="DiplomisiBus.BusOfis.Admin_Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1>Menu</h1>
    <div style="width:100%;height:0.2cm;background-color:#273c75"></div>
    <br />
    <div>
        <asp:TextBox placeholder="Menu name" CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
        <br />
         <asp:TextBox placeholder="Menu URL" CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
        <br />
         <asp:TextBox placeholder="Menu sırası"  type="number"  CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <img src="Logolar/icons8_folder_70px.png" /><asp:Button ID="Button1" runat="server" Text="Faylı seç..." />
        <br />
        <br />
        <asp:LinkButton  CssClass="form-control btn btn-success" ID="LinkButton1" runat="server">✅ Təsdiqlə</asp:LinkButton>
    </div>
    <br /> 
     <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Menu name</th>
        <th>Menu URL</th>
        <th>Menu Icon</th>
        <th>Menu Sırası</th>
        <th>Sil</th>
        <th>Düzəlt</th>
        <th>Təsdiqlə</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
        <td>john@example.com</td>
        <td>X</td>
        <td> / </td>
        <td> v </td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
        <td>mary@example.com</td>
          <td>X</td>
        <td> / </td>
        <td> v </td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
        <td>mary@example.com</td>
          <td>X</td>
        <td> / </td>
        <td> v </td>
      </tr>
    </tbody>
  </table>
</asp:Content>
