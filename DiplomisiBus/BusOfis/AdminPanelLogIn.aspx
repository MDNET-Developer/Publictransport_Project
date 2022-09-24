<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanelLogIn.aspx.cs" Inherits="DiplomisiBus.BusOfis.AdminPanelLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <style>
                body{
                    background-image:linear-gradient(to top left,                           #3498db,#bdc3c7,#e74c3c);
                    background-attachment: fixed;  
                   
                }
                #log_in{
                    display:flex;
                    justify-content:center;
                    width:100%;
                    height:100%;
                  
                    
                }
                #login_area{
                  border-radius:40px;
                  box-shadow:0 0 10px black;
                    display:flex;
                    justify-content:center;
                    align-items:center;
                    width:11cm;
                    height:11cm;
                    background-color:rgb(237, 237, 237,0.5);
                }
                #basliq{
                    position:absolute;
                 margin-top:-11cm;
                 text-align:center;
                     background-color:#1e3799;
                     border-radius:100%;

                }
                #textboxarea{
                    display:flex;
                    flex-direction: column;
                }
                .logintxt{
                    width:8cm;
                   
                }
                #loginBTN{
                    background-color:#1e3799;
                    color:snow;
                    transition:0.5s;
                }
                #loginBTN:hover{
                    transform:scale(0.9)
                }
                @media (max-width:1000px) {
                    #log_in{
                       margin-top:10cm;
                       margin-left:5cm;
                        transform:scale(2.5);
                        display:flex;
                    justify-content:center;
                    }
                }
   
             #lblnotification {
  position: relative;
  animation-name: example;
  animation-duration: 2s;
  animation-iteration-count:3;
}

@keyframes example {
  0%   {color:#EA2027;}
  25%  {color:snow;}
  50%  {color:#EA2027;}
  75%  {color:snow;}
  100% {color:#EA2027;}
}
    </style>
            <br />
            <br />
            <br />
            <br />
            <div id="log_in">

                <div id="login_area">
                    <div id="basliq">
                        <img src="Logolar/icons8_user_77px.png" />
                    </div>
                    <div id="textboxarea">
                             <strong id="info" style="color:#EA2027; font-size:14px;font-family:'Times New Roman'"><asp:Label ID="lblnotification" runat="server" Text=""></asp:Label></strong>                  
                        <asp:TextBox style="width:9cm" placeholder="👦 İstifadəçi adı" CssClass="form-control logintxt" ID="txtuser" runat="server" class="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox style="width:9cm" placeholder=" 🔒 Şifrə" CssClass="form-control logintxt" ID="txtpass" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button OnClick="loginBTN_Click" class="form-control" ID="loginBTN" runat="server" Text="Daxil ol" />
                    
                    </div>
                </div>
            </div>
           
        </div>
    </form>
</body>
</html>
