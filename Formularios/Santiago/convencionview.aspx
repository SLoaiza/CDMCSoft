<%@ Page Language="C#" AutoEventWireup="true" CodeFile="convencionview.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 300px">
    
       
        <asp:Label ID="Label1" runat="server" Text="Convenciones"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="conven_cod" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="conven_cod" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="conven_cod" />
                <asp:BoundField DataField="conven_nombre" HeaderText="Nombre" SortExpression="conven_nombre" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [convencion] WHERE [conven_cod] = @conven_cod" InsertCommand="INSERT INTO [convencion] ([conven_nombre]) VALUES (@conven_nombre)" SelectCommand="SELECT [conven_cod], [conven_nombre] FROM [convencion]" UpdateCommand="UPDATE [convencion] SET [conven_nombre] = @conven_nombre WHERE [conven_cod] = @conven_cod">
            <DeleteParameters>
                <asp:Parameter Name="conven_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="conven_nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="conven_nombre" Type="String" />
                <asp:Parameter Name="conven_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nuevo" />
    
    </div>
    </form>
</body>
</html>
