<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MostrarResultado.aspx.cs" Inherits="MostrarResultado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="result_cod" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="result_cod" HeaderText="result_cod" InsertVisible="False" ReadOnly="True" SortExpression="result_cod" />
                <asp:BoundField DataField="result_descp" HeaderText="result_descp" SortExpression="result_descp" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_resultado] WHERE [result_cod] = @result_cod" InsertCommand="INSERT INTO [tbl_resultado] ([result_descp]) VALUES (@result_descp)" SelectCommand="SELECT [result_cod], [result_descp] FROM [tbl_resultado]" UpdateCommand="UPDATE [tbl_resultado] SET [result_descp] = @result_descp WHERE [result_cod] = @result_cod">
            <DeleteParameters>
                <asp:Parameter Name="result_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="result_descp" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="result_descp" Type="String" />
                <asp:Parameter Name="result_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <a href="GuardarResultado.aspx">Atras</a>
    </div>
    </form>
</body>
</html>
