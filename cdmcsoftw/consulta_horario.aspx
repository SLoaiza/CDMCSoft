<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consulta_horario.aspx.cs" Inherits="consulta_horario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 276px">
    
        <asp:Label ID="Label1" runat="server" Text="horarios"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="hora_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="hora_cod" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="hora_cod" />
                <asp:BoundField DataField="hora_rango_dias" HeaderText="Rango Horario" SortExpression="hora_rango_dias" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSOFTConnectionString %>" DeleteCommand="DELETE FROM [horario] WHERE [hora_cod] = @hora_cod" InsertCommand="INSERT INTO [horario] ([hora_rango_dias]) VALUES (@hora_rango_dias)" SelectCommand="SELECT * FROM [horario]" UpdateCommand="UPDATE [horario] SET [hora_rango_dias] = @hora_rango_dias WHERE [hora_cod] = @hora_cod">
            <DeleteParameters>
                <asp:Parameter Name="hora_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="hora_rango_dias" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="hora_rango_dias" Type="String" />
                <asp:Parameter Name="hora_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
