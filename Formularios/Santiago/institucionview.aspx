<%@ Page Language="C#" AutoEventWireup="true" CodeFile="institucionview.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 278px">
    
        <asp:Label ID="Label1" runat="server" Text="Instituciones"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="inst_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="inst_cod" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="inst_cod" />
                <asp:BoundField DataField="inst_nombre" HeaderText="Nombre" SortExpression="inst_nombre" />
                <asp:BoundField DataField="ciu_cod" HeaderText="ciu_cod" SortExpression="ciu_cod" Visible="False" />
                <asp:TemplateField HeaderText="Ciudad" SortExpression="ciu_nom">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ciu_nom" DataValueField="ciu_cod" SelectedValue='<%# Bind("ciu_cod") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [ciu_cod], [ciu_nom] FROM [tbl_ciudad]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ciu_nom") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [institucion] WHERE [inst_cod] = @inst_cod" InsertCommand="INSERT INTO [institucion] ([inst_nombre], [ciu_cod]) VALUES (@inst_nombre, @ciu_cod)" SelectCommand="SELECT institucion.inst_cod, institucion.inst_nombre, institucion.ciu_cod, tbl_ciudad.ciu_nom FROM institucion INNER JOIN tbl_ciudad ON institucion.ciu_cod = tbl_ciudad.ciu_cod" UpdateCommand="UPDATE [institucion] SET [inst_nombre] = @inst_nombre, [ciu_cod] = @ciu_cod WHERE [inst_cod] = @inst_cod">
            <DeleteParameters>
                <asp:Parameter Name="inst_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="inst_nombre" Type="String" />
                <asp:Parameter Name="ciu_cod" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="inst_nombre" Type="String" />
                <asp:Parameter Name="ciu_cod" Type="String" />
                <asp:Parameter Name="inst_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nuevo" />
    
    </div>
    </form>
</body>
</html>
