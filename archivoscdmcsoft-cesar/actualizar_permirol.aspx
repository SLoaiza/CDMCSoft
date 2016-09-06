<%@ Page Language="C#" AutoEventWireup="true" CodeFile="actualizar_permirol.aspx.cs" Inherits="actualizar_permirol" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
        }
        </style>
</head>
<body style="width: 493px">
    <form id="form1" runat="server">
    <div style="width: 460px">
    
        <table style="width:30%;">
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
                    <asp:Button ID="Button1" runat="server" Text="Buscar" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="434px" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" DataKeyNames="consecutivo" 
                        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        >
                        <Columns>
                            <asp:CommandField ShowEditButton="True" EditText="Editar" />
                            <asp:TemplateField HeaderText="Rol" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("nomrol") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Permiso">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nom_permiso") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Modulo">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("nom_modulo") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("seleccionado") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:conexionasp_conclave %>" 
                        DeleteCommand="DELETE FROM [permiso_x_rol] WHERE [consecutivo] = @consecutivo" 
                        InsertCommand="INSERT INTO [permiso_x_rol] ([cod_rol], [id_permiso], [seleccionado], [modulo]) VALUES (@cod_rol, @id_permiso, @seleccionado, @modulo)" 
                        SelectCommand="SELECT permiso_x_rol.cod_rol, permiso_x_rol.id_permiso, permiso_x_rol.seleccionado, permiso_x_rol.modulo, permiso_x_rol.consecutivo, rol.nomrol FROM permiso_x_rol INNER JOIN rol ON permiso_x_rol.cod_rol = rol.codrol WHERE (permiso_x_rol.cod_rol = @cod_rol)" 
                        
                        UpdateCommand="UPDATE [permiso_x_rol] SET [cod_rol] = @cod_rol, [id_permiso] = @id_permiso, [seleccionado] = @seleccionado, [modulo] = @modulo WHERE [consecutivo] = @consecutivo">
                        <DeleteParameters>
                            <asp:Parameter Name="consecutivo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="cod_rol" Type="Int32" />
                            <asp:Parameter Name="id_permiso" Type="Int32" />
                            <asp:Parameter Name="seleccionado" Type="String" />
                            <asp:Parameter Name="modulo" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="cod_rol" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cod_rol" Type="Int32" />
                            <asp:Parameter Name="id_permiso" Type="Int32" />
                            <asp:Parameter Name="seleccionado" Type="String" />
                            <asp:Parameter Name="modulo" Type="String" />
                            <asp:Parameter Name="consecutivo" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
