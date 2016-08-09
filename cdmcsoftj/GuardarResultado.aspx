<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarResultado.aspx.cs" Inherits="GuardarResultado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 75px;
            width: 381px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>    
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
            <br />
            <textarea id="TextArea1" name="S1" runat="server"  required=""></textarea><br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Guardar" Width="131px" OnClick="Button1_Click" />
        &nbsp; <a href="Default.aspx">Atras</a><br />
            <a href="MostrarResultado.aspx">Mostrar Resultados</a>
        </div>
    </form>
</body>
</html>
