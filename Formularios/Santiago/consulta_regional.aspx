<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consulta_regional.aspx.cs" Inherits="consulta_regional" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 298px">
    
        <asp:Label ID="Label1" runat="server" Text="Regionales"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="regional_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="regional_cod" HeaderText="Codigo de regional" ReadOnly="True" SortExpression="regional_cod" />
                <asp:BoundField DataField="regional_nombre" HeaderText="Nombre de regional" SortExpression="regional_nombre" />
                <asp:BoundField DataField="regional_nom_direct" HeaderText="Nombre del director regional" SortExpression="regional_nom_direct" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT * FROM [regional]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
