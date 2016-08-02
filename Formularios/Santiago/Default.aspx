<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 248px">
    
        <asp:Label ID="Label1" runat="server" Text="Usuarios"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="usu_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="usu_cod" HeaderText="usu_cod" ReadOnly="True" SortExpression="usu_cod" />
                <asp:BoundField DataField="ficha_cod" HeaderText="ficha_cod" SortExpression="ficha_cod" />
                <asp:BoundField DataField="rol_cod" HeaderText="rol_cod" SortExpression="rol_cod" />
                <asp:BoundField DataField="usu_nom" HeaderText="usu_nom" SortExpression="usu_nom" />
                <asp:BoundField DataField="usu_ape" HeaderText="usu_ape" SortExpression="usu_ape" />
                <asp:BoundField DataField="usu_tel" HeaderText="usu_tel" SortExpression="usu_tel" />
                <asp:BoundField DataField="centro_cod" HeaderText="centro_cod" SortExpression="centro_cod" />
                <asp:BoundField DataField="regional_cod" HeaderText="regional_cod" SortExpression="regional_cod" />
                <asp:BoundField DataField="usu_id" HeaderText="usu_id" SortExpression="usu_id" />
                <asp:BoundField DataField="usu_tipo_id" HeaderText="usu_tipo_id" SortExpression="usu_tipo_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [usu_cod], [ficha_cod], [rol_cod], [usu_nom], [usu_ape], [usu_tel], [centro_cod], [regional_cod], [usu_id], [usu_tipo_id] FROM [usuario]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
