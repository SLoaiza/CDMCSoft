<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearPlan.aspx.cs" Inherits="CrearPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 917px;
        }
        #Actv_des {
            width: 425px;
        }
        #Observ {
            width: 300px;
        }
        </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
    <link href="https://cdn.jsdelivr.net/sweetalert2/5.0.7/sweetalert2.min.css" rel="stylesheet" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
    <script src="https://cdn.jsdelivr.net/sweetalert2/5.0.7/sweetalert2.min.js"></script>

</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="row" id="Parte1">
            <div class="row">
                <div class="col m2">
                    Fecha
                    <br />
                    <asp:TextBox ID="txtFechaplan" runat="server" Width="120px" Font-Size="Larger"></asp:TextBox>
                </div>
                <div class="col m2">
                    <asp:Label ID="Label10" runat="server" Text="Codigo del plan"></asp:Label>
                    <br />
                     <asp:TextBox ID="txtCodigoplan" runat="server" Width="94px"></asp:TextBox>
                </div>
                <div class="col m1">
                    Acta N°
                    <br />
                    <asp:Label ID="actanum" runat="server" Text="" value="1">1</asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col m4">
                    <asp:Label ID="Label1" runat="server" Text="Regional"></asp:Label>
                    <br />
                    <asp:DropDownList ID="dpRegional" runat="server" DataSourceID="SqlDataSource1" DataTextField="regional_nombre" DataValueField="regional_nombre" Height="30px" Width="175px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [regional_cod], [regional_nombre] FROM [regional]"></asp:SqlDataSource>
                </div>
                <div class="col m4">
                    <asp:Label ID="Label2" runat="server" Text="Centro"></asp:Label>
                    <br />
                    <asp:DropDownList ID="dpCentro" runat="server" DataSourceID="SqlDataSource2" DataTextField="centro_nombbre" DataValueField="centro_nombbre" Height="30px" Width="187px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [centro_nombbre] FROM [centro]"></asp:SqlDataSource>
                </div>
                <div class="col m3">
                    <asp:Label ID="Label3" runat="server" Text="Tipo De Plan"></asp:Label>
                    <br />
                    <asp:DropDownList ID="dpTipoplan" runat="server" DataSourceID="SqlDataSource4" DataTextField="tipo_nom" DataValueField="tipo_cod"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [tipo_nom], [tipo_cod] FROM [tbl_tipo_plan]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="row">
                <div class="col m5">
                    <h5>Programa de formacion</h5>
                    <br />
                    <asp:DropDownList ID="dpPrograma" runat="server" DataSourceID="SqlDataSource3" DataTextField="prog_nom" DataValueField="prog_nom" Height="30px" Width="230px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [prog_nom] FROM [programa]"></asp:SqlDataSource>
                    <span>Codigo: </span><span><asp:Label ID="codigoPrograma" runat="server" Text=""></asp:Label></span>
                </div>
                <div class="col 6">
                    <h5>Numero de ficha</h5>
                    <br />
                    <asp:TextBox ID="NfichaPlan" runat="server"></asp:TextBox>
                </div>
                <div class="col m2">
                    <h5>Etapa</h5>
                    <br />
                    <asp:DropDownList ID="dpEtapa" runat="server" Height="27px" Width="89px">
                       <asp:ListItem>Electiva</asp:ListItem>
                       <asp:ListItem>Practica</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <input id="Button1" type="button" value="button" onclick="seguir1()"/>
            </div>
        </div>


        <div class="row" id="Parte2" style="display:none;">
            <div class="row">
                <div class="col m4">
                    <asp:Label ID="Label12" runat="server" Text="Nombres y Apellidos"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNombresplan" runat="server"></asp:TextBox>                   
                </div>
                <div class="col m4">
                    <asp:Label ID="Label11" runat="server" Text="N° Documento: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDocumentoPlanusu" runat="server" Width="220px"></asp:TextBox>
                </div>
                <div class="col m2">
                    <asp:Label ID="Label13" runat="server" Text="Fase"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtFaseplan" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col m4">
                    <h5>proyecto asociado</h5>
                    <br />
                    <asp:TextBox ID="txtproyPlan" runat="server" Height="45px" Width="279px"></asp:TextBox>
                    <br />
                    <span>Codigo: </span><span><asp:TextBox ID="codproyplan" runat="server" Height="27px" Width="220px"></asp:TextBox></span>
                </div>
                <div class="col m3">
                    <h5>Juicio de evaluacion</h5>
                    <br />
                    <asp:DropDownList ID="dpjuicioPlan" runat="server" Height="27px" Width="65px">
                        <asp:ListItem>Aprobado</asp:ListItem>
                        <asp:ListItem>Reprobado</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col m6">
                    <asp:Label ID="Label5" runat="server" Text="Actividad del proyecto a desarrollar"></asp:Label>
                    <br />
                    <textarea id="taActv_des" rows="2" runat="server" maxlength="300" style="max-width:425px;max-height:200px;"></textarea>
                </div>
                <div class="col m6">
                    <asp:Label ID="Label4" runat="server" Text="Observaciones"></asp:Label>
                    <br />
                    <textarea id="taObserv" rows="2" runat="server" maxlength="300" style="max-width:300px;max-height:200px;"></textarea>
                </div>
            </div>
            <div class="row">
                <input id="Button2" type="button" value="button" onclick="seguir2()"/>
            </div>
        </div>


        <div class="row" id="Parte3" style="display:none;">
            <div class="row">
                <div class="col m3">
                    <asp:Label ID="Label6" runat="server" Text="Instructor"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtInstructorPlan" runat="server" Height="27px" Width="236px"></asp:TextBox>
                </div>
                <div class="col m3">
                    <asp:Label ID="Label7" runat="server" Text="N° Documento"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDInstructorPlan" runat="server" Height="27px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                 <div class="col m6">
                    <asp:Label ID="Label8" runat="server" Text="Resultado"></asp:Label>
                    <br />
                    <textarea id="taResultadoPlan" cols="20" rows="2" runat="server" maxlength="300" style="width:500px; max-width:500px;max-height:300px;"></textarea>
                </div>
                <div class="col m6">
                    <asp:Label ID="Label9" runat="server" Text="Competencias"></asp:Label>
                    <br />
                    <textarea id="taCompetenciaPlan" cols="20" rows="2" runat="server" maxlength="300" style="width:500px; max-width:500px;max-height:300px;"></textarea>
                </div>
            </div>
        </div>
        <div class="row" style="display:none;">
            <asp:Button ID="continuar" Text="Continuar" runat="server" Height="41px" Width="133px" OnClick="continuar_Click" />
            <a href="Default.aspx">Atras</a>
        </div>
    </form>
    </div>

    <script>
        $(document).ready(function () {
            $('select').material_select();
            
        });
        function seguir1() {
            var regional = document.getElementById('dpRegional').value;
            var centro = document.getElementById('dpCentro').value;
            var tipoplan = document.getElementById('dpTipoplan').value;
            var programa = document.getElementById('dpPrograma').value;
            var ficha = document.getElementById('NfichaPlan').value;
            var etapa = document.getElementById('dpEtapa').value;

            if (regional == null || regional == "" || centro == null || centro == "" || tipoplan == null || tipoplan == "" || programa == null || programa == "" || ficha == null || ficha == "" || etapa == null || etapa == "") {
                swal("Atencion", "faltan algunos campos por llenar", "info");
            } else {
                swal("Listo", "Seccion 2 del formulario", "info");
                document.getElementById('Parte1').style.display = "none";
                document.getElementById('Parte2').style.display = "block";
            }

        }
        function seguir2() {
            var regional = document.getElementById('dpRegional').value;
            var centro = document.getElementById('dpCentro').value;
            var tipoplan = document.getElementById('dpTipoplan').value;
            var programa = document.getElementById('dpPrograma').value;
            var ficha = document.getElementById('NfichaPlan').value;
            var etapa = document.getElementById('dpEtapa').value;

            if (regional == null || regional == "" || centro == null || centro == "" || tipoplan == null || tipoplan == "" || programa == null || programa == "" || ficha == null || ficha == "" || etapa == null || etapa == "") {
                swal("Atencion", "faltan algunos campos por llenar", "info");
            } else {
                swal("Listo", "Seccion 2 del formulario", "info");
                document.getElementById('Parte1').style.display = "none";
                document.getElementById('Parte2').style.display = "block";
            }

        }

    </script>
</body>
</html>
