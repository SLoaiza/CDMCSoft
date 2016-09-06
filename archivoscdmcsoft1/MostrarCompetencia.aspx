<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MostrarCompetencia.aspx.cs" Inherits="MostrarCompetencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="comp_cod" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="comp_cod" HeaderText="comp_cod" InsertVisible="False" ReadOnly="True" SortExpression="comp_cod" />
                <asp:BoundField DataField="comp_descp" HeaderText="comp_descp" SortExpression="comp_descp" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_competencia] WHERE [comp_cod] = @comp_cod" InsertCommand="INSERT INTO [tbl_competencia] ([comp_descp]) VALUES (@comp_descp)" SelectCommand="SELECT [comp_cod], [comp_descp] FROM [tbl_competencia]" UpdateCommand="UPDATE [tbl_competencia] SET [comp_descp] = @comp_descp WHERE [comp_cod] = @comp_cod">
            <DeleteParameters>
                <asp:Parameter Name="comp_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="comp_descp" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="comp_descp" Type="String" />
                <asp:Parameter Name="comp_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
