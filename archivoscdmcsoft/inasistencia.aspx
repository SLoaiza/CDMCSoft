<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inasistencia.aspx.cs" Inherits="inasistencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 549px">
        <label>Codigo del usuario</label>
        <input id="Textbox2" runat="server" />
        <br />
        <label>Numero de horas</label>
        <input id="Textbox3" runat="server" />
        <br />
        <label>Fecha</label>
        
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="mostrar" OnClick="Button1_Click" />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>
        <br />
        <label>Descripción</label>
        <textarea id="Textbox5" cols="20" rows="2" runat="server"></textarea>
        <br />
        <label>Ficha</label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ficha_cod" DataValueField="Ficha_cod"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [Ficha_cod], [Prog_cod] FROM [ficha]"></asp:SqlDataSource>
        <br />
        <label>Instructor</label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Expr1" DataValueField="rol_cod"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT usuario.usu_nom + usuario.usu_ape AS Expr1, rol.rol_cod, rol.rol_nom FROM rol INNER JOIN usuario ON rol.rol_cod = usuario.rol_cod WHERE (rol.rol_nom = '[Instructor]')"></asp:SqlDataSource>
        <br />

        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Crear" />

    </div>
    </form>
</body>
</html>
