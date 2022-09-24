<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="Elaqe.aspx.cs" Inherits="DiplomisiBus.BusOfis.Elaqe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #feedbacktxt{
            display:flex;
            flex-direction:column;
            
        }
      #TextBox4{
          position:relative;
          height:7234cm;
      }
    #elaqe_sol{
       display:flex;
      flex-direction:column;
          align-content:center;
          align-items:center;
          
    }
    #supportlogo{
        border-radius:100%;
        background-color:#F48200
    }
    #btngonder{
        color:snow;
        font-size:45322px
    }

            #info {
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-lg-12">
          
          
            <div style="box-shadow: 0 0 10px black;transform:scale(0.8);background-color:#ededed;margin-top:-40px;margin-bottom:-30px" class="col-lg-12 container-fluid">
                <br />
                <div class="row">
                    <div class="col-lg-6">
                        <div id="elaqe_sol">
                            <div>
                                <img style="margin-left:30px" id="supportlogo" src="Logolar/icons8_online_support_90px.png" /></div>
                            <h4>Bizimlə əlaqə</h4>
                            <div>
                                <img src="Logolar/icons8_phone_20px.png" /></<span>+994123333333</span></div>
                              <div>
                                <img src="Logolar/icons8_whatsapp_20px.png" /><span>+994552721664</span></div>
                            <div>
                                
                                <img src="Logolar/icons8_Location_20px.png" /><span>Ahmedli,Baku</span></div>
                               <div>
                                <img src="Logolar/icons8_telegram_app_20px.png" /><a href="https://t.me/safavitransportbaku">+9552721664</a></div>
                        </div>
                        <div >
                            <iframe style="transform:scale(0.8);border:1px solid silver" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1519.5318092200357!2d49.9531605!3d40.3852826!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40306369c64b05cd%3A0x1ac8b600df645eb0!2sAkhmedli%20st.!5e0!3m2!1sen!2s!4v1647039394150!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                    <div class="col-lg-6">
                          <strong id="info" style="color:#EA2027; font-size:22px;font-family:'Times New Roman'"><asp:Label  ID="lbl_info" runat="server" Text=""></asp:Label></strong>
                        <div id="feedbacktxt">
                <asp:TextBox CssClass="form-control" placeholder ="Ad" ID="xtxAd" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox placeholder="Soyad" CssClass="form-control" ID="txtSoyad" runat="server"></asp:TextBox>
                <br />
                       
                <asp:TextBox type="mail" placeholder="mail" CssClass="form-control" ID="txtMail" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox placeholder="Zəhmət olmasa təklif və irdadınızı bura qeyd edin." Rows="10" CssClass="form-control" TextMode="MultiLine" ID="txtMessage" runat="server"></asp:TextBox>
                <br />
                            <br />
                            <div style="transform: skewY(11deg);">
                            <asp:Label style="font-family:'Comic Sans MS';font-size:50px;background-color:silver;background-image:url(https://www.codeproject.com/KB/scripting/CreateCaptcha/1.JPG);color:#95afc0;text-decoration:line-through;user-select: none;" ID="lblsubmit" runat="server" ></asp:Label>
                                </div>
                            <asp:TextBox CssClass="form-control" ID="txtsubmit" runat="server"></asp:TextBox>
               <br />
                 <asp:Button  style="color:snow; font-size:18px;background-color:#3498db" CssClass="form-control btn "  ID="btngonder" runat="server"  OnClick="btngonder_Click" Text="Göndər" />
                            <br />
                          
                            

                <br />
            </div>
                    </div>
                </div>
            </div>
           
        </div>
    </div>
      <script>
function btngonder_Click(){
   {  
   document.getElementById('txtMessage').value = "";
   }

}
    </script>
</asp:Content>
