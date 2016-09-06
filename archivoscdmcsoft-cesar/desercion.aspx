<%@ Page Language="C#" AutoEventWireup="true" CodeFile="desercion.aspx.cs" Inherits="desercion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>-->
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 563px">
    
        <asp:Label ID="Label1" runat="server" Text="Nombre del usuario"></asp:Label>
&nbsp;&nbsp;&nbsp;
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="usu_nom" DataValueField="usu_cod">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre del centro"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="centro_nombre" DataValueField="centro_cod">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [centro_cod], [centro_nombre] FROM [centro]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Dia del inicio de formacion"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Mes del inicio de formacion"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
 <asp:Label ID="Label6" runat="server" Text="Año del inicio de formacion"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
 <asp:Label ID="Label7" runat="server" Text="Dia de la desercion"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
 <asp:Label ID="Label8" runat="server" Text="Mes de la desercion"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
 <asp:Label ID="Label9" runat="server" Text="Año de la desercion"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
 <asp:Label ID="Label10" runat="server" Text="Observaciones"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
 <asp:Label ID="Label11" runat="server" Text="Causa de la desercion"></asp:Label>
&nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="causa_cual" DataValueField="causa_cod">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT * FROM [causa]"></asp:SqlDataSource>
        <asp:Label ID="Label12" runat="server" Text="Horario del desertor"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="hora_rango_dias" DataValueField="hora_cod">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT * FROM [horario]"></asp:SqlDataSource>

        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />
        <br />    
    </div>
    </form>
</body>
</html>
