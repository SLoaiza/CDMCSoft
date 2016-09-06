<%@ Page Language="C#" AutoEventWireup="true" CodeFile="permisos_rol.aspx.cs" Inherits="permisos_rol" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 41px;
        }
        .style2
        {
            height: 239px;
        }
    </style>
</head>
<body style="height: 395px">
    <form id="form1" runat="server">
    <div style="height: 325px">
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Rol</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="nomrol" DataValueField="codrol">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:conexionasp_conclave %>" 
                        SelectCommand="SELECT * FROM [rol]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 170px;">
            <tr>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="perm_cod" DataSourceID="SqlDataSource2" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="perm_cod" HeaderText="perm_cod" InsertVisible="False" 
                                ReadOnly="True" SortExpression="perm_cod" />
                            <asp:BoundField DataField="perm_nom" HeaderText="perm_nom" 
                                SortExpression="perm_nom" />
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" 
                        SelectCommand="SELECT * FROM [permiso]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" Text="Guardar" 
                        onclick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Enabled="False" Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource3" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged" Width="381px">
                        <Columns>
                            <asp:CommandField DeleteImageUrl="~/images/find.png" EditImageUrl="~/images/logosena.jpg" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="nomrol" HeaderText="nomrol" 
                                SortExpression="nomrol" />
                            <asp:BoundField DataField="id_modulo" HeaderText="id_modulo" 
                                SortExpression="id_modulo" />
                            <asp:BoundField DataField="nom_modulo" HeaderText="nom_modulo" 
                                SortExpression="nom_modulo" />
                            <asp:BoundField DataField="nom_permiso" HeaderText="nom_permiso" 
                                SortExpression="nom_permiso" />
                            <asp:BoundField DataField="seleccionado" HeaderText="Concedido" 
                                SortExpression="seleccionado" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:conexionasp_conclave %>" 
                        DeleteCommand="DELETE FROM [permiso_x_rol] WHERE [cod_rol] = @cod_rol AND [id_permiso] = @id_permiso" 
                        InsertCommand="INSERT INTO [permiso_x_rol] ([cod_rol], [id_permiso], [seleccionado]) VALUES (@cod_rol, @id_permiso, @seleccionado)" 
                        SelectCommand="SELECT permiso_x_rol.seleccionado, rol.nomrol, permiso.nom_permiso, permiso_x_rol.id_modulo, modulo.nom_modulo FROM permiso_x_rol INNER JOIN permiso ON permiso_x_rol.id_permiso = permiso.id_permiso INNER JOIN rol ON permiso_x_rol.cod_rol = rol.codrol INNER JOIN modulo ON permiso_x_rol.id_modulo = modulo.id_modulo
order by rol.nomrol" 
                        
                        
                        
                        
                        UpdateCommand="UPDATE [permiso_x_rol] SET [seleccionado] = @seleccionado WHERE [cod_rol] = @cod_rol AND [id_permiso] = @id_permiso">
                        <DeleteParameters>
                            <asp:Parameter Name="cod_rol" Type="Int32" />
                            <asp:Parameter Name="id_permiso" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="cod_rol" Type="Int32" />
                            <asp:Parameter Name="id_permiso" Type="Int32" />
                            <asp:Parameter Name="seleccionado" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="seleccionado" Type="String" />
                            <asp:Parameter Name="cod_rol" Type="Int32" />
                            <asp:Parameter Name="id_permiso" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
