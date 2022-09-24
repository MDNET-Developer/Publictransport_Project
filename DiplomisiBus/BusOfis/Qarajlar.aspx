<%@ Page Title="" Language="C#" MasterPageFile="~/BusOfis/BusMaster.Master" AutoEventWireup="true" CodeBehind="Qarajlar.aspx.cs" Inherits="DiplomisiBus.BusOfis.Qarajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
       
       .zad {
  position: relative;
  width: 33%;
  margin:0;
  padding:0;
}

.image {
  width: 100%;
  height: 7cm;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: rgb(0,0,0,0.5);
  overflow: hidden;
  width: 100%;
  height: 20%;
  transition: .5s ease;
}

.zad:hover .overlay {
  height: 33%;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;

}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
    </script>
    <div class="container">
        <h1>Qarajlar</h1>
        <hr />
        <div style="display:flex; flex-direction:row; flex-wrap:wrap">
            <asp:Repeater ID="Rpt_Bus_Garege" runat="server">
                <ItemTemplate>
            <div class="zad">
                <!-- Button trigger modal -->
                <a data-toggle="modal" data-target="#exampleModalCenter">
             
                            <img src="BusFoto/<%#Eval("GaragePhoto_URL") %>" class="image">
                        
                    <div class="overlay">
                        <div class="text">
                      
                                    <p><%#Eval("BusNumber") %>nömrəli avtobus qarajı</p>
                             

                                    <i><%#Eval("GarageLocationName") %></i>
                                
                        </div>
                    </div>
                </a>
            </div>
            <!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Qarajın xəritə üzrə unvanı</h5>
        <a  class="close" data-dismiss="modal" aria-label="Close">
          <img aria-hidden="true" src="Logolar/icons8_Close_50px.png"></img>
        </a>
      </div>
      <div class="modal-body">

        <iframe src="<%#Eval("GarageMAP_URL")%>" width="470" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
 
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
                    </ItemTemplate>
                </asp:Repeater>

        </Div>
        <br />
    </div>

</asp:Content>
