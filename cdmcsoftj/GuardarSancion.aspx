<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarSancion.aspx.cs" Inherits="GuardarSancion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Guardar Sancion</title>
    <style type="text/css">
        #TextArea1 {
            height: 177px;
            width: 507px;
        }
    </style>
</head>
<body style="height: 340px">
    <form id="form1" runat="server">
        <div style="height: 316px">
    
            <br />
            <asp:Label ID="Label3" runat="server" Text="Nombre De Sancion"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="211px"></asp:TextBox>
    
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
            <br />
            <textarea id="TextArea1" name="S1" runat="server"  required=""></textarea><br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Guardar" Width="131px" OnClick="Button1_Click" />
        &nbsp; <a href="Default1.aspx">Atras</a><br />
            <br />
            <a href="MostrarSanciones.aspx">Mostrar Sanciones</a>
        </div>
    </form>
</body>
</html>