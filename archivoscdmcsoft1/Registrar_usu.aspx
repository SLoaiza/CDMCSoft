<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrar_usu.aspx.cs" Inherits="Registrar_usu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title></title>
    <style type="text/css">
        .m3 {
            height: 435px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
   
    
                <asp:Label ID="Label12" runat="server" Text="Codigo"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                <br />
   
    
                <asp:Label ID="Label8" runat="server" Text="Tipo de documento"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
                    <asp:ListItem>Seleccionar</asp:ListItem>
                    <asp:ListItem>Cedula de Ciudadania</asp:ListItem>
                    <asp:ListItem>Tarjeta de Identidad</asp:ListItem>
                    <asp:ListItem>Cedula de extranjeria</asp:ListItem>
                </asp:DropDownList>
                </br>
            <asp:Label ID="lb_password" runat="server" Text="Numero de documento"></asp:Label>
&nbsp;<asp:TextBox ID="txt_identidad"  runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="lb_contrasena" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_name" runat="server" Enabled="False" ></asp:TextBox>
            <br />
           
		    <asp:Label ID="Label1" runat="server" Text="Apellido"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Rol"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList7" runat="server" Enabled="False">
                </asp:DropDownList>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Fecha nacimiento"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Calendario" Width="70px" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Departamento"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="dept_nom" DataValueField="dept_cod" Enabled="False">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDCDMLConnectionString4 %>" DeleteCommand="DELETE FROM [tbl_departamento] WHERE [dept_cod] = @dept_cod" InsertCommand="INSERT INTO [tbl_departamento] ([dept_cod], [dept_nom]) VALUES (@dept_cod, @dept_nom)" SelectCommand="SELECT * FROM [tbl_departamento]" UpdateCommand="UPDATE [tbl_departamento] SET [dept_nom] = @dept_nom WHERE [dept_cod] = @dept_cod">
                    <DeleteParameters>
                        <asp:Parameter Name="dept_cod" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="dept_cod" Type="String" />
                        <asp:Parameter Name="dept_nom" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="dept_nom" Type="String" />
                        <asp:Parameter Name="dept_cod" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Ciudad"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="ciu_nom" DataValueField="ciu_cod" Enabled="False">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BDCDMLConnectionString5 %>" SelectCommand="SELECT * FROM [tbl_ciudad]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Estado"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Regional"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="regional_nombre" DataValueField="regional_cod" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BDCDMLConnectionString6 %>" SelectCommand="SELECT * FROM [regional]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Centro"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="centro_nombbre" DataValueField="centro_cod" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BDCDMLConnectionString7 %>" SelectCommand="SELECT * FROM [centro]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Ficha"></asp:Label>
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource5" DataTextField="Ficha_cod" DataValueField="Ficha_cod" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BDCDMLConnectionString8 %>" SelectCommand="SELECT * FROM [ficha]"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" Enabled="False" />
            <br />
         </form>

  
</body>
</html>
