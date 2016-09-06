<%@ Page Language="C#" AutoEventWireup="true" CodeFile="centro.aspx.cs" Inherits="centro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

     <h1>Guardar centro</h1>
    <form id="form1" runat="server">
    <div style="height: 282px">
    
        <asp:Label ID="Label1" runat="server" Text="Codigo del centro"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Regional"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="regional_nombre" DataValueField="regional_cod">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cdmcsoftConnectionString2 %>" SelectCommand="SELECT [regional_cod], [regional_nombre] FROM [regional]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nombre del centro"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Subdirector del centro"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Complejo del centro"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear" />
    
    </div>
    </form>
</body>
</html>
