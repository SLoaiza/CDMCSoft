<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarCiudad.aspx.cs" Inherits="GuardarCiudad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 200px">
            <asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
    
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre De La Ciudad"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" required="" Width="120px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dept_nom" DataValueField="dept_cod">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [dept_nom], [dept_cod] FROM [tbl_departamento]" DeleteCommand="DELETE FROM [tbl_departamento] WHERE [dept_cod] = @dept_cod" InsertCommand="INSERT INTO [tbl_departamento] ([dept_nom]) VALUES (@dept_nom)" UpdateCommand="UPDATE [tbl_departamento] SET [dept_nom] = @dept_nom WHERE [dept_cod] = @dept_cod">
                <DeleteParameters>
                    <asp:Parameter Name="dept_cod" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="dept_nom" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dept_nom" Type="String" />
                    <asp:Parameter Name="dept_cod" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <a href="Default1.aspx">Atras</a>
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Guardar" Width="131px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="MostrarCiudades.aspx">Mostrar Ciudades</a>
        </div>
    </form>
</body>
</html>
