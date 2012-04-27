﻿"<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="EmpresasIndexCss" ContentPlaceHolderID="CssContent" runat="server">
    <link href="../../Content/Empresas/EmpresasNav.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Empresas/EmpresasNew.css" rel="stylesheet" type="text/css" /> 
</asp:Content>

<asp:Content ID="EmpresasIndexScript" ContentPlaceHolderID="ScriptContent" runat="server">
    <script src="<%: Url.Content("~/Scripts/jsactions/Empresas/EmpresasNav.js") %>" type="text/javascript"></script>
    <script src="<%: Url.Content("~/Scripts/jsactions/Empresas/EmpresasIndex.js") %>" type="text/javascript"></script>
    <script src="<%: Url.Content("~/Scripts/jsactions/Empresas/NuevaEmpresa.js") %>" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="EmpresasIndexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Gestión de Empresas
</asp:Content>

<asp:Content ID="EmpresasIndexMain" ContentPlaceHolderID="MainContent" runat="server">
     <div id="EmpresasNavegador" class="k-widget">
        <ul>
            <li id="EmpresasNav" class="k-state-active">
                Empresas
            </li>
            <li id="AsociacionesNav">
                Asociaciones
            </li>
            <li id="ProveedoresNav">
                Proveedores
            </li>
            <li id="Patrocinadores">
                Patrocinadores
            </li>  
        </ul> 
        <div class="pestana" id="empresas">
            <img src="../../Content/images/empresas.png"  /> <!--Fuente: Calibri, size: 24-->
            <div id="EmpresasGrid">
            
            </div>
            
        </div>
        <div class="pestana" id="asociaciones">
            <img src="../../Content/images/asociaciones.jpg"  /> <!--Fuente: Calibri, size: 24-->
        </div>
        <div class="pestana" id="proveedores"></div> 
        <div class="pestana" id="patrocinadores"></div> 
          
    </div> 
    <br />

    <div id="VentanaEditar">
        <label for="nombreempresa">Nombre: </label><input type="text" id="nombreempresa" class="k-input CuadroTexto" /><br />
        <label for="cif">CIF: </label><input type="text" id="cif" class="k-input CuadroTexto" /><br />
        <label for="localidad">Localidad: </label><input type="text" id="localidad" class="k-input CuadroTexto" /><br />
        <label for="direccionweb">Dirección Web: </label><input type="text" id="direccionweb" class="k-input CuadroTexto" /><br />
        <label for="telefonodecontacto">Teléfono de Contacto: </label><input type="text" id="telefonodecontacto" class="k-input CuadroTexto" /><br />
        <label for="email">E-Mail: </label><input type="text" id="email-c" class="k-input CuadroTexto" /><br />
        <center>
            <input type="button" value="Aceptar" id="BotonAceptarVentanaEditar" class="k-button VisibilidadBotonAceptarEditar" />
            <input type="button" value="Confirmar" id="BotonAceptarVentanaEliminar" class="k-button VisibilidadBotonAceptarEliminar" />
            <input type="button" value="Cancelar" id="BotonCancelarVentanaEditar" class="k-button" />           
        </center>
    </div>
    <div id="EmpresasFilter">Filtro ></div> 
    <div id="EmpresasHerramientasContent">
        <input type="button" value="Nueva Empresa" id="BotonNuevaEmpresa" class="k-button" />
    </div>
    <div id="NuevaEmpresaFormulario" >
    
    </div>
</asp:Content>