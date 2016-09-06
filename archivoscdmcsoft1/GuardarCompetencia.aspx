<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarCompetencia.aspx.cs" Inherits="GuardarCompetencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 159px;
            width: 423px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 316px">
    
            <asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
    
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
            <br />
            <textarea id="TextArea1" name="S1" runat="server"  required=""></textarea><br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Guardar" Width="131px" OnClick="Button1_Click" /> 
        &nbsp;&nbsp;&nbsp; <a href="Default1.aspx">Atras</a></div>
    </form>
</body>
</html>

