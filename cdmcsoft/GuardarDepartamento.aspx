<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarDepartamento.aspx.cs" Inherits="GuardarDepartamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 165px">
            <asp:Label ID="Label2" runat="server" Text="Nombre Del Departamento"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" required="" Width="120px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Guardar" Width="131px" OnClick="Button1_Click" />
        &nbsp; <a href="Default.aspx">Atras</a></div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="dept_cod" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="dept_cod" HeaderText="dept_cod" InsertVisible="False" ReadOnly="True" SortExpression="dept_cod" />
                <asp:BoundField DataField="dept_nom" HeaderText="dept_nom" SortExpression="dept_nom" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_departamento] WHERE [dept_cod] = @dept_cod" InsertCommand="INSERT INTO [tbl_departamento] ([dept_nom]) VALUES (@dept_nom)" SelectCommand="SELECT [dept_cod], [dept_nom] FROM [tbl_departamento]" UpdateCommand="UPDATE [tbl_departamento] SET [dept_nom] = @dept_nom WHERE [dept_cod] = @dept_cod">
            <DeleteParameters>
                <asp:Parameter Name="dept_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="dept_nom" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dept_nom" Type="String" />
                <asp:Parameter Name="dept_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
