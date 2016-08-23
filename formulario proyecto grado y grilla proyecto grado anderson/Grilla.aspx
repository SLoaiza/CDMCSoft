<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grilla.aspx.cs" Inherits="Grilla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 509px;
        }
    </style>
</head>
<body style="height: 481px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Codigo del proyecto"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="proyec_cod" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-bottom: 0px" Width="461px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="proyec_cod" HeaderText="proyec_cod" InsertVisible="False" ReadOnly="True" SortExpression="proyec_cod" />
                <asp:BoundField DataField="proyec_nom" HeaderText="proyec_nom" SortExpression="proyec_nom" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cdmcsoftConnectionString4 %>" DeleteCommand="DELETE FROM [tbl_proyec_grado] WHERE [proyec_cod] = @original_proyec_cod" InsertCommand="INSERT INTO [tbl_proyec_grado] ([proyec_nom]) VALUES (@proyec_nom)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_proyec_grado] WHERE ([proyec_cod] = @proyec_cod) ORDER BY [proyec_nom]" UpdateCommand="UPDATE [tbl_proyec_grado] SET [proyec_nom] = @proyec_nom WHERE [proyec_cod] = @original_proyec_cod">
            <DeleteParameters>
                <asp:Parameter Name="original_proyec_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="proyec_nom" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="proyec_cod" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="proyec_nom" Type="String" />
                <asp:Parameter Name="original_proyec_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
