<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consultar_causa.aspx.cs" Inherits="consultar_causa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 264px">
    
        <asp:Label ID="Label1" runat="server" Text="causa"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="causa_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="causa_cod" HeaderText="Codigos" InsertVisible="False" ReadOnly="True" SortExpression="causa_cod" />
                <asp:BoundField DataField="causa_cual" HeaderText="Causass" SortExpression="causa_cual" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSOFTConnectionString2 %>" DeleteCommand="DELETE FROM [causa] WHERE [causa_cod] = @causa_cod" InsertCommand="INSERT INTO [causa] ([causa_cual]) VALUES (@causa_cual)" SelectCommand="SELECT * FROM [causa]" UpdateCommand="UPDATE [causa] SET [causa_cual] = @causa_cual WHERE [causa_cod] = @causa_cod">
            <DeleteParameters>
                <asp:Parameter Name="causa_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="causa_cual" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="causa_cual" Type="String" />
                <asp:Parameter Name="causa_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
