<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MostrarCiudades.aspx.cs" Inherits="MostrarCiudades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ciu_cod" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" EditImageUrl="~/imagenes/iconos/editar.png" />
            <asp:BoundField DataField="ciu_cod" HeaderText="Codigo" ReadOnly="True" SortExpression="ciu_cod" />
            <asp:BoundField DataField="ciu_nom" HeaderText="Nombre" SortExpression="ciu_nom" />
            <asp:BoundField DataField="dept_nom" HeaderText="Departamento" SortExpression="dept_nom" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_ciudad] WHERE [ciu_cod] = @ciu_cod" InsertCommand="INSERT INTO [tbl_ciudad] ([ciu_cod], [ciu_nom], [dept_cod]) VALUES (@ciu_cod, @ciu_nom, @dept_cod)" SelectCommand="SELECT tbl_ciudad.ciu_cod,  tbl_ciudad.ciu_nom,  tbl_ciudad.dept_cod,  tbl_departamento.dept_nom from tbl_ciudad inner join tbl_departamento on tbl_ciudad.dept_cod=tbl_departamento.dept_cod" UpdateCommand="UPDATE [tbl_ciudad] SET [ciu_nom] = @ciu_nom, [dept_cod] = @dept_cod WHERE [ciu_cod] = @ciu_cod">
            <DeleteParameters>
                <asp:Parameter Name="ciu_cod" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ciu_cod" Type="String" />
                <asp:Parameter Name="ciu_nom" Type="String" />
                <asp:Parameter Name="dept_cod" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ciu_nom" Type="String" />
                <asp:Parameter Name="dept_cod" Type="Int32" />
                <asp:Parameter Name="ciu_cod" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    &nbsp; <a href="GuardarCiudad.aspx">Atras</a></div>
</body>
</html>
