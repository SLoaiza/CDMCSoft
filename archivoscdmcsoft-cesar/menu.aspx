<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="cdmcsoft.css"/>
    <title>Cdmcsoft</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <script type="text/javascript">
            function Mostrareniframe(frameNombre) {
                var formulario = document.getElementById('form1');
                formulario.target = frameNombre;
            } 
     </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
         <header>
        <ul class="side-nav fixed grey lighten-3" id="mobile-demo">
          <ul class="collapsible" data-collapsible="accordion" >
            <li>
              <div class="collapsible-header"><i class="material-icons">account_balance</i>Gestionar Centros</div>
              <div class="collapsible-body purple " >
                 <asp:LinkButton ID="gest_centro" runat="server" Class="white-text" OnClientClick="Mostrareniframe('iframemenu')" PostBackUrl="~/consulta_centro.aspx"><div><span>Centros</span></div></asp:LinkButton>
              </div>
            </li>
            <li>
              <div class="collapsible-header">Gestionar Desercion</div>
               <div class="collapsible-body indigo" style="background-color: #673AB7">
                  <asp:LinkButton ID="gest_desercion" runat="server" OnClientClick="Mostrareniframe('iframemenu')" PostBackUrl="~/desercion.aspx"><div id="ircarta"><span>Desercion</span></div></asp:LinkButton>
              </div>
            </li>
               <li>
              <div class="collapsible-header">Gestionar Maestros</div>
               <div class="collapsible-body red" style="background-color: #673AB7">
                  <asp:LinkButton id="gest_regional" runat="server" OnClientClick="Mostrareniframe('iframemenu')" PostBackUrl="~/consulta_regional.aspx"><div id="irempresa"><span>Regionales</span></div></asp:LinkButton>
              </div>
            </li>
               <li>
              <div class="collapsible-header">Gestionar Inventario</div>
               <div class="collapsible-body green" style="background-color: #673AB7">
                 <asp:LinkButton ID="gest_tipoinve" runat="server" OnClientClick="Mostrareniframe('iframemenu')" PostBackUrl="~/tipo_inve.aspx"><div id="iraprendiz"><span>Tipo de inventario</span></div></asp:LinkButton>
              </div>
            </li>
        </ul>
            </ul>

       
        
        
	    
                          
			              
          
       </header> 
    </div>
    <div id="iframe">
		<iframe id="iframemenu" name="iframemenu" src="" style="width:100%; height:600px; border:none;" runat="server"></iframe>
	</div>
    </form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script>
    $(document).ready(function(){
    $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
    });
    </script>
</body>
</html>
