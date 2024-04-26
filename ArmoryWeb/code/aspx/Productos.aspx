<%@ Page Title="" Language="C#" MasterPageFile="~/code/master/Menu.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="ArmoryWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/carousel.css" rel="stylesheet">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

<main data-bs-theme="dark">
    <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" id="item1">
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Nuevas armas</h1>
            <p class="opacity-75">Nueva remesa de armas exclusivas de Armory Titan</p>
            <p><a class="btn btn-lg btn-primary" href="#album">Compra ya</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item" id="item2">
        <div class="container">
          <div class="carousel-caption">
            <h1>Mejora tus habilidades</h1>
            <p>Practica en nuestros campos de tiros y obtén clases personales</p>
            <p><a class="btn btn-lg btn-primary" href="#">Ver más</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item" id="item3">
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>Reparación de Armas</h1>
            <p> Mantén y repara tus armas con profesionales de la más alta calidad</p>
            <p><a class="btn btn-lg btn-primary" href="#">Ver precios</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div class="album py-5 bg-body-tertiary" id="album">
    <div class="container">

      <asp:panel runat="server" OnLoad="ReadProducts" CssClass="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" data-masonry ='{"percentPosition": true }'>
        
        <asp:panel runat="server" CssClass="col" >
          <asp:panel runat="server" CssClass="card shadow-sm">
            <asp:Panel runat="server" CssClass="image-container">
                <asp:ImageButton runat="server" ImageUrl="../../assets/images/Convex_Sheriff.png" OnClick="Unnamed_Click"/>
            </asp:Panel>
            <asp:panel runat="server" CssClass="card-body">
              <h5>Operator</h5>
              <p class="card-text">Holi</p>
              <asp:panel runat="server" CssClass="d-flex justify-content-between align-items-center">
                <asp:panel runat="server" CssClass="btn-group">
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="View"/>
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="Edit"/>
                </asp:panel>
                <small class="text-body-secondary">9 mins</small>
              </asp:panel>
            </asp:panel>
          </asp:panel>
        </asp:panel>
        <asp:panel runat="server" CssClass="col" >
          <asp:panel runat="server" CssClass="card shadow-sm">
            <asp:Panel runat="server" CssClass="image-container">
                <asp:ImageButton runat="server" ImageUrl="../../assets/images/Convex_Sheriff.png" OnClick="Unnamed_Click"/>
            </asp:Panel>
            <asp:panel runat="server" CssClass="card-body">
              <h5>Operator</h5>
              <p class="card-text">Holi</p>
              <asp:panel runat="server" CssClass="d-flex justify-content-between align-items-center">
                <asp:panel runat="server" CssClass="btn-group">
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="View"/>
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="Edit"/>
                </asp:panel>
                <small class="text-body-secondary">9 mins</small>
              </asp:panel>
            </asp:panel>
          </asp:panel>
        </asp:panel>
        <asp:panel runat="server" CssClass="col" >
          <asp:panel runat="server" CssClass="card shadow-sm">
            <asp:Panel runat="server" CssClass="image-container">
                <asp:ImageButton runat="server" ImageUrl="../../assets/images/Convex_Sheriff.png" OnClick="Unnamed_Click"/>
            </asp:Panel>
            <asp:panel runat="server" CssClass="card-body">
              <h5>Operator</h5>
              <p class="card-text">Holi</p>
              <asp:panel runat="server" CssClass="d-flex justify-content-between align-items-center">
                <asp:panel runat="server" CssClass="btn-group">
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="View"/>
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="Edit"/>
                </asp:panel>
                <small class="text-body-secondary">9 mins</small>
              </asp:panel>
            </asp:panel>
          </asp:panel>
        </asp:panel>
        <asp:panel runat="server" CssClass="col" >
          <asp:panel runat="server" CssClass="card shadow-sm">
            <asp:Panel runat="server" CssClass="image-container">
                <asp:ImageButton runat="server" ImageUrl="../../assets/images/Convex_Sheriff.png" OnClick="Unnamed_Click"/>
            </asp:Panel>
            <asp:panel runat="server" CssClass="card-body">
              <h5>Operator</h5>
              <p class="card-text">Holi</p>
              <asp:panel runat="server" CssClass="d-flex justify-content-between align-items-center">
                <asp:panel runat="server" CssClass="btn-group">
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="View"/>
                  <asp:button runat="server" type="button" CssClass="btn btn-sm btn-outline-secondary" Text="Edit"/>
                </asp:panel>
                <small class="text-body-secondary">9 mins</small>
              </asp:panel>
            </asp:panel>
          </asp:panel>
        </asp:panel>
      </asp:panel>
    </div>
  </div>

</main>
<script async src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous"></script></body>

</asp:Content>
