<%@ Page Language="C#" AutoEventWireup="true" CodeFile="institucion.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 223px">
        <asp:Label ID="Label1" runat="server" Text="Nombre de la intitución"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        
    
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Ciudad"></asp:Label>
&nbsp;
        
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ciu_nom" DataValueField="ciu_cod">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [ciu_cod], [ciu_nom] FROM [tbl_ciudad]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cdmcsoftConnectionString %>" SelectCommand="SELECT [ciu_nom], [ciu_cod] FROM [tbl_ciudad]"></asp:SqlDataSource>
        
    
        <br />
        <br />
        <br />
        <asp:Button ID="Button1"  OnClick="Button1_Click" runat="server" Text="Crear" />
    </div>
    </form>
</body>
</html>
