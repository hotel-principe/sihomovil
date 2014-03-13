<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SihoMovil._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="wrapper">
        <div >
            <img src="Images/hotel.jpg" />
        </div>
    </div>
    <div class="pad">
        <div class="line1">
            <div class="wrapper line2">
                <div class="col1">
                    <h2>
                        <img src="images/title_marker1.jpg" alt="">Reserva en Línea</h2>
                    <p class="pad_bot1">
                        <asp:ImageButton ID="ImgReservas" runat="server" ImageUrl="~/Images/reserva-online.png" PostBackUrl="~/Pages/Movimientos/ReservaEnLinea.aspx" /></p>
                    <a href="#" class="color1">Ver Más</a>
                </div>
                <div class="col1 pad_left1">
                    <h2>    
                        <img src="images/title_marker2.jpg" alt="">APK SihoMovil</h2>
                    <p class="pad_bot1">
                        <asp:ImageButton ID="ImgApp" runat="server" ImageUrl="~/Images/appstore.png" PostBackUrl="~/" />
                    </p>
                    <a href="#" class="color1">Ver Más</a>
                </div>
                <div class="col1 pad_left1">
                    <h2>
                        <img src="images/title_marker3.jpg" alt="">Aplicación SihoMovil</h2>
                    <p class="pad_bot1">
                          <asp:ImageButton ID="ImgBtnAplicacionMovil" runat="server" ImageUrl="Images/sihomovil.png" PostBackUrl="~/Account/Login.aspx" />
                    </p>
                    <a href="#" class="color1">Ver Más</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
