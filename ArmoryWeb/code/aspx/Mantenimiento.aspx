<%@ Page Title="" Language="C#" MasterPageFile="~/code/master/Menu.Master" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="ArmoryWeb.Mantenimiento_y_reparación" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/pricing/">
        <link href="~/code/css/mantenimiento.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>
</svg>

<div class="container py-3" style="position: sticky; margin-top: 100px;">
  <header>
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
      <h1 class="display-4 fw-normal text-body-emphasis">Mantenimiento y reparación</h1>
      <p class="fs-5 text-body-secondary">Cuida de tus armas con profesionales de alta calidad y asesoramiento técnico personal. Tenemos diferentes planes para que puedas encontrar el que mejor se ajusta a tus necesidades.</p>
    </div>
  </header>

  <main>
    <div class="row row-cols-1 row-cols-md-2 mb-2 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Basic</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$20<small class="text-body-secondary fw-light">/mo</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>Mantenimiento regular</li>
              <li>Inspección y limpieza mensual</li>
              <li>Descuento del 10% en reparaciones adicionales</li>
              <li>Asesoramiento técnico por correo electrónico</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary">Get started</button>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Suscripción Premium</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$40<small class="text-body-secondary fw-light">/mo</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>Más armas</li>
              <li>Prioridad en el servicio</li>
              <li>Asesoramiento técnico por línea telefónica</li>
              <li>Envío gratuito de piezas de repuesto menores</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary">Get started</button>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">Suscripción VIP</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$60<small class="text-body-secondary fw-light">/mo</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>Más armas</li>
              <li>Servicio de recogida y entrega de armas</li>
              <li>Inspección detallada y lubricación de partes críticas</li>
              <li>Descuento del 15% en accesorios de mantenimiento</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary">Get started</button>
          </div>
        </div>
      </div>
      
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm border-primary">
          <div class="card-header py-3 text-bg-primary border-primary">
            <h4 class="my-0 fw-normal">Suscripción de élite</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$500<small class="text-body-secondary fw-light">/year</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>Más armas</li>
              <li>Limpieza y revisión profunda trimestral</li>
              <li>Reemplazo gratuito de piezas gastadas</li>
              <li>Acceso anticipado a nuevos productos de mantenimiento</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">Contact us</button>
          </div>
        </div>
      </div>
    </div>

    <h2 class="display-6 text-center mb-4">Compare plans</h2>

    <div class="table-responsive">
      <table class="table text-center">
        <thead>
          <tr>
            <th style="width: 28%;"></th>
            <th style="width: 18%;">Básica</th>
            <th style="width: 18%;">Premium</th>
            <th style="width: 18%;">VIP</th>
            <th style="width: 18%;">Élite</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row" class="text-start">Armas</th>
            <td>2</td>
            <td>5</td>
            <td>10</td>
            <td>20</td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Inspección y limpieza</th>
            <td>Rutinaria (mensual)</td>
            <td>Rutinaria (mensual)</td>
            <td>Detallada (mensual)</td>
            <td>Profunda (trimestral)</td>
          </tr>
        </tbody>

        <tbody>
          <tr>
            <th scope="row" class="text-start">Descuento en reparaciones adicionales</th>
            <td>10%</td>
            <td>15%</td>
            <td>15%</td>
            <td>20%</td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Descuento en accesorios de mantenimiento</th>
            <td>-</td>
            <td>15%</td>
            <td>15%</td>
            <td>20%</td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Asesoramiento técnico</th>
            <td>Correo</td>
            <td>Línea telefónica</td>
            <td>Línea telefónica</td>
            <td>Línea telefónica</td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Prioridad en el servicio</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Envío gratuito de piezas de repuesto menores</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Recogido y envío de armas</th>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Reemplazo de piezas gastadas</th>
            <td></td>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">Acceso anticipado a nuevos productos de mantenimiento</th>
            <td></td>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
        </tbody>
      </table>
    </div>
  </main>
</div>
</asp:Content>
