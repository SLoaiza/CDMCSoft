<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consulta_centro.aspx.cs" Inherits="consulta_centro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 313px">
    <form id="form1" runat="server">
    <div style="height: 280px">
    
        <asp:Label ID="Label1" runat="server" Text="Centros"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="centro_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="centro_cod" HeaderText="centro_cod" ReadOnly="True" SortExpression="centro_cod" />
                <asp:BoundField DataField="regional_cod" HeaderText="regional_cod" SortExpression="regional_cod" />
                <asp:BoundField DataField="centro_nombre" HeaderText="centro_nombre" SortExpression="centro_nombre" />
                <asp:BoundField DataField="centro_subdire" HeaderText="centro_subdire" SortExpression="centro_subdire" />
                <asp:BoundField DataField="centro_complejo" HeaderText="centro_complejo" SortExpression="centro_complejo" />
                <asp:BoundField DataField="regional_nombre" HeaderText="regional_nombre" SortExpression="regional_nombre" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT centro.centro_cod, centro.regional_cod, centro.centro_nombre, centro.centro_subdire, centro.centro_complejo, regional.regional_nombre FROM centro INNER JOIN regional ON centro.regional_cod = regional.regional_cod"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
