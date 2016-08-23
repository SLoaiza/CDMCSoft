<%@ Page Language="C#" AutoEventWireup="true" CodeFile="formulario proyecto.aspx.cs" Inherits="formulario_proyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 265px">
    
        <asp:Label ID="Label1" runat="server" Text="Codigo del proyecto"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre del proyecto"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="GUARDAR" runat="server" OnClick="GUARDAR_Click" Text="Guardar" />
    
    </div>
    </form>
</body>
</html>
