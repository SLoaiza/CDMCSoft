<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MostrarSanciones.aspx.cs" Inherits="MostrarSanciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="sancion_cod" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="sancion_cod" HeaderText="sancion_cod" InsertVisible="False" ReadOnly="True" SortExpression="sancion_cod" />
            <asp:BoundField DataField="sancion_nom" HeaderText="sancion_nom" SortExpression="sancion_nom" />
            <asp:BoundField DataField="sancion_descp" HeaderText="sancion_descp" SortExpression="sancion_descp" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_sancion] WHERE [sancion_cod] = @sancion_cod" InsertCommand="INSERT INTO [tbl_sancion] ([sancion_nom], [sancion_descp]) VALUES (@sancion_nom, @sancion_descp)" SelectCommand="SELECT [sancion_cod], [sancion_nom], [sancion_descp] FROM [tbl_sancion]" UpdateCommand="UPDATE [tbl_sancion] SET [sancion_nom] = @sancion_nom, [sancion_descp] = @sancion_descp WHERE [sancion_cod] = @sancion_cod">
            <DeleteParameters>
                <asp:Parameter Name="sancion_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sancion_nom" Type="String" />
                <asp:Parameter Name="sancion_descp" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sancion_nom" Type="String" />
                <asp:Parameter Name="sancion_descp" Type="String" />
                <asp:Parameter Name="sancion_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    <a href="GuardarSancion.aspx">Atras</a>
</body>
</html>
