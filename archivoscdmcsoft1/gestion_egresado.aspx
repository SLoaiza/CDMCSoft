<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gestion_egresado.aspx.cs" Inherits="gestion_egresado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!--<link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css"/>
    <link rel="stylesheet" href="main.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--este es para poder quefuncione el colendario-->
    <script>$(document).ready(function () {
    $('select').material_select();});
    </script>
    <!--hasta aqui-->
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="left-side col m2">
                <!--aqui va el menu-->
            </div>

            <div class="rigth-side col m10">
                <div class="heder">
                    <!--aqui va a ir el bienvenido usuario y el cerrar sesion-->

                    <form id="form1" runat="server">

                        <!-- en este codigo es donde se muestra, se guarda y se conecta a la base de datos el cogido del usuario -->
                        <div class="row">
                            <div class="input-field col s5">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Ingrese codigo de usuario" Height="22px"></asp:TextBox>
                                <label for="usu_cod">Codigo del usuario</label>
                            </div>
                        </div>

                        <!-- en este codigo es donde se le permite escojer al usuario la alternativa de la etapa productiva, se guarda 
                        y se conecta a la base de datos del egresado -->
                        <div class="input-field col s5">
                            <label for="egre_alt_etapa_prod">
                            Alternativa etapa practica</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="egre_alt_etapa_prod" DataValueField="egre_alt_etapa_prod" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>Seleccione...</asp:ListItem>
                                <asp:ListItem>Contrato de aprendizaje</asp:ListItem>
                                <asp:ListItem>Vinculo laboral</asp:ListItem>
                                <asp:ListItem>Proyecto educativo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <!-- en este codigo es donde se le permite escribir al usuario de que forma iso la etapa productiva, se guarda 
                        y se conecta a la base de datos del egresado -->
                        <div class="row">
                            <div class="input-field col s5">
                                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                <label for="egre_otra_etapa_prod">
                                Otra</label>
                            </div>
                        </div>

                        <!--en este codigo es donde se le permite escoger al usuario si o no esta vinculado despues de la etapa practica, se guarda 
                        y se conecta a la base de datos del egresad -->
                        <div class="input-field col s5">
                            <label for="egre_vinc_fin_etapa_prac">
                            ¿Quedo vinculado despues de terminar la etapa practica?</label>
                            <p>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>Seleccione...</asp:ListItem>
                                    <asp:ListItem>Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </div>

                        <!--en este codigo es donde se le permite escoger al usuario si o no esta vinculado despues de la etapa practica, se guarda 
                        y se conecta a la base de datos del egresad -->
                        <div class="input-field col s5">
                            <label for="egre_vinc_act">
                            ¿Esta vinculado actualmente?</label>
                            <p>
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem>Seleccione...</asp:ListItem>
                                    <asp:ListItem>Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </div>

                        <!--en este codigo es donde se le permite escribir al usuario el nit de la empresa, se guarda 
                        y se conecta a la base de datos de empresa -->
                        <div class="input-field col s5">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <label for="emp_nit">
                            Nit de la empresa</label>
                        </div>

                        <!--en este codigo es donde se le permite escribir al usuario el cargo que desempeña en la empresa, se guarda 
                        y se conecta a la base de datos de egresado -->
                        <div class="row">
                            <div class="input-field col s5">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                <label for="egre_cargo">
                                Cargo</label></div>
                        </div>

                        <!--en este codigo es donde se le permite escribir al usuario el cargo que desempeña en la empresa, se guarda 
                        y se conecta a la base de datos de egresado -->
                        <div class="input-field col s5">
                            <label for="egre_fech_vinc">
                            Fecha de vencimiento<br />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Escoja la fucha de vencimiento" />
                            <br />
                            </label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                        </div>

                        <!--en este codigo es donde se le permite escoger al usuario si o no esta desempñando lo que trabajo, se guarda 
                        y se conecta a la base de datos del egresad -->
                        <div class="row">
                            <div class="input-field col s5">
                                <label for="egre_perti_func">
                                Trabaja en lo que estudio</label>
                                <p>
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                        <asp:ListItem>Seleccione...</asp:ListItem>
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Guardar"  />
                    </form>
                </div>
            </div>    
        </div>
    </div>  
<script>
        $('.datepicker').pickadate({
            selectMonths: true,
            selectYears: 15
        });
</script>  
</body>
</html>
