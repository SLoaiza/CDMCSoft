<%@ Page Language="C#" AutoEventWireup="true" CodeFile="convencion.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label2" runat="server" Text="Nombre de convención"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
    
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear" />
    </div>
    </form>
</body>
</html>
