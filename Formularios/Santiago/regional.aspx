<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regional.aspx.cs" Inherits="regional" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <title></title>
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
                    <h1>Guardar regional</h1>
                    <form id="form1" runat="server">
                    <div style="height: 282px">
                           
                        <asp:Label ID="Label1" runat="server" Text="Codigo de regional"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Nombre de regional"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Nombre del director regional"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
    
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear" />
    
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
