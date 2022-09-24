<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="AnaSehife.aspx.cs" Inherits="DiplomisiBus.BusOfis.AnaSehife" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
       #Area1{
           display:flex;
           justify-content:space-between
       }
       .Area3card{
           transition:ease-in-out 0.2s;
       }
       .Area3card:hover{
           background-color:#ededed;
           cursor:pointer
       }
       .busfirma{
           width:3cm;
           height:auto
       }
       .nothercontact{
           margin-bottom:5px
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<div class="container">
    <div id="Area1">
    <div>
        <h1>Safavi Transport</h1>
    <i>Ölkənin tək geniş miqyaslı daşıyıcı şirkəti</i>
    </div>

    </div>
    <br />
    <br />
    <div id="Area2">
        <div class="col-lg-12">
            <div class="row"  >
            <div  class="col-lg-8" >
                <img style="border-radius:20px; width:19.5cm; height:auto" src="Logolar/MotherPageFoto.jpg" />
            </div>
                <br>
            <div class="col-lg-4" >
                <div>
                    <img style="border-radius:20px; width:6.3cm;height:auto"  src="Logolar/MotherPageFoto2.jpg" /></div>
                <br />
                <div>
                    <img style="border-radius:20px; width:6.3cm;height:auto"  src="Logolar/MotherPageFoto3.jpg" /></div>
                
            </div>
        </div>
        </div>
        </div>
    
    <br />
     <br />
    <div id="Area3">
        <h1>Safavi Transport</h1>
    <i>Təklif etdiyimiz xidmətlər / təkliflər / və.s</i>
        <br />
        <br />
        <br />

        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-3 ">
                    <div class="card text-center Area3card" style="max-width: 18rem; ">
  <div style="background-color:white;border:none" class="card-header"><img width="40" style="background-color:#F48200;border-radius:100%" src="Logolar/icons8_information_50px.png" /></div>
  <div class="card-body">
    <h4 class="card-title">Şirkət haqqında</h4>
    <p class="card-text"> <i>Qısaca desək Azerbaycanın tək iri miqyaslı</i></p>
  </div>
                </div>
                    </div>
                <div class="col-lg-3">
                    <div class="card text-center Area3card" style="max-width: 18rem;">
                        <div style="background-color: white; border: none" class="card-header">
                            <img width="40" style="background-color: #F48200; border-radius: 100%" src="Logolar/BizimleElaqe.png" /></div>
                        <div class="card-body">
                            <h4 class="card-title">Bizimlə əlaqə</h4>
                            <p class="card-text"><i>Telegram,mail,telefon nömrələrimiz bizimlə təklif və iradlarınızı bölüşə bilərsiz.</i></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">

                     <div class="card text-center Area3card" style="max-width: 18rem;">
                        <div style="background-color: white; border: none" class="card-header">
                            <img width="40" style="background-color: #F48200; border-radius: 100%" src="Logolar/icons8_cv_50px_2.png" /></div>
                        <div class="card-body">
                            <h4 class="card-title">Bizimlə əməkdaşlıq</h4>
                            <p class="card-text"><i>CV anketi dolduraraq bizimlə əməkdaşlığa müraciət eliyə bilərsiz.</i></p>
                        </div>
                    </div>
                    </div>
                <div class="col-lg-3">
                     <div class="card text-center Area3card" style="max-width: 18rem;">
                        <div style="background-color: white; border: none" class="card-header">
                            <img width="40" style="background-color: #F48200; border-radius: 100%" src="Logolar/icons8_project_50px.png" /></div>
                        <div class="card-body">
                            <h4 class="card-title">Layihələrimiz</h4>
                            <p class="card-text"> <i>Son zamanlar şirkətin təqdim etdiyi yeni layihələr ilə tanış ola bilərsiz.</i></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </div>
    <br />
    <br />
    <div id="Area4">
       <div class="col-lg-12">
           <div class="row">
               <div class="col-lg-6">
           <img style="width:15cm;height:auto;border-radius:20px;" src="Logolar/BakuBusWallpaper.jpg" />
                   </div>
               <div class="col-lg-6">
                   <h1>Aktiv xəttə olan avtobuslar</h1>
                   <hr />
                   <i>Qeyd etmək lazımdır ki , şirkətimiz daima yeni nəqliyyat sistemlərinin təmin olunması üzrə çalışır. Hal hazırda xəttə istismarı baça çarmış daewoo modelləri olsada bir qismi yenilənərək xəttə bərpa olunmuşdur. Əsas oalraq isuzu və BMC avtobuslarına üstünlük verərək sərnişinləri daha təhlükəsiz istifadəsini təmin etməyə çalışırıq.
                   </i>
               </div>
           </div>
       </div>
        <br />
        <br />
        <Div class="col-lg-12">
            <div class="row">

                <div  class="col-lg-2 ">
                    <img class="busfirma" src="Logolar/ISUZULogo.png" />
                </div>
                <div  class="col-lg-2 ">
                    <img style="margin-top:33px" class="busfirma" src="Logolar/KARSANLogo.png" />
                </div>
                <div  class="col-lg-2 ">
                    <img class="busfirma" src="Logolar/Daewoo_logo.png" />
                </div>
                <div  class="col-lg-2 ">
                    <img style="margin-top:20px" class="busfirma" src="Logolar/BMC_logo.svg.png" />
                </div>
                <div class="col-lg-2 ">
                    <img style="margin-top:13px" class="busfirma" src="Logolar/Otokar-Logo.wine.png" />
                </div>
                 <div class="col-lg-2 ">
                    <img style="margin-top:37px" class="busfirma" src="Logolar/IVECO_Logo.png" />
                </div>
            </div>
        </Div>
    </div>
    <br />
    <br />
    <div id="Area5">
        <div style="background-color:#dbedfe;height:10cm; width:100%;border-radius:20px" class="col-lg-12">
            <div class="row">
            <div class="col-lg-8">
          
                <div style="transform: scale(0.9);margin-top:5px">
                    <h3>Bizimlə əlaqə</h3>
                    <i>Şirkətimiz tərfindən sizin cavabınız sizin mail ünvanınıza göndəriləcək. Xahiş edirik mail ünvanınızı qeyd edərkən diqqətli olun. Əks halda biz mənsuliyyət daşımırıq bu barədə.</i>
                </div>
                <div style="transform: scale(0.8)">
                    <asp:TextBox placeholder ="Ad" CssClass="form-control nothercontact" ID="TextBox1" runat="server"></asp:TextBox>
                     <asp:TextBox placeholder ="Soyad" CssClass="form-control nothercontact" ID="TextBox2" runat="server"></asp:TextBox>
                     <asp:TextBox placeholder ="mail" CssClass="form-control nothercontact" ID="TextBox3" runat="server"></asp:TextBox>
                     <asp:TextBox placeholder ="Zəhmət olmasa təklif və irdadınızı bura qeyd edin." TextMode="MultiLine" Rows="5" CssClass="form-control nothercontact" ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:Button style="background-color:#3498db" CssClass="form-control btn nothercontact" ID="Göndər" runat="server" Text="Button" />
                </div>
            </div>
            <div class="col-lg-4">
                <img style="height:10cm;width:100%;border-radius:20px" src="Logolar/customer-service.png" />
            </div>
                </div>
        </div>
    </div>
        <br />
    <br />
</div>
   
</asp:Content>
