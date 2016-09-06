<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gestion_causa.aspx.cs" Inherits="gestion_causa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css"/>
    <link rel="stylesheet" href="main.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="left-side col m2">
                <!--aqui va el menu-->
            </div>
            <div class="right-side col m10">
                <div class="heder">
                    <!--aqui va a ir el bienvenido usuario y el cerrar sesion-->
                </div>

                <div class="section">
                    <!--va a ir el contenido general-->


                    <form id="form1" runat="server">

                        <!-- en este codigo es donde se le permite escribir al usuario cual es la causa, se guarda 
                        y se conecta a la base de datos de causa -->

                        <label>Causa</label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Escribe aqui su causa" type="text" class="validate"></asp:TextBox>

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar"/>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
