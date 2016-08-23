<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarTipodePlan.aspx.cs" Inherits="GuardarTipodePlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div style="height: 216px">
    
        <asp:Label ID="Label1" runat="server" Text="Codigo Plan"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre de Tipo del Plan"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Height="39px" Text="Guardar" Width="98px" OnClick="Button1_Click1" />

    &nbsp; <a href="Default.aspx">Atras</a><br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="tipo_cod" DataSourceID="SqlDataSource1" ForeColor="Black" Width="227px">
            <Columns>
                <asp:CommandField ShowEditButton="True" HeaderText="Acciones" AccessibleHeaderText="Acciones" />
                <asp:BoundField DataField="tipo_cod" HeaderText="Codigo" ReadOnly="True" SortExpression="tipo_cod" />
                <asp:BoundField DataField="tipo_nom" HeaderText="Nombre" SortExpression="tipo_nom" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_tipo_plan] WHERE [tipo_cod] = @tipo_cod" InsertCommand="INSERT INTO [tbl_tipo_plan] ([tipo_cod], [tipo_nom]) VALUES (@tipo_cod, @tipo_nom)" SelectCommand="SELECT [tipo_cod], [tipo_nom] FROM [tbl_tipo_plan]" UpdateCommand="UPDATE [tbl_tipo_plan] SET [tipo_nom] = @tipo_nom WHERE [tipo_cod] = @tipo_cod">
            <DeleteParameters>
                <asp:Parameter Name="tipo_cod" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tipo_cod" Type="String" />
                <asp:Parameter Name="tipo_nom" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tipo_nom" Type="String" />
                <asp:Parameter Name="tipo_cod" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>

    </div>
    </form>
</body>
</html>
