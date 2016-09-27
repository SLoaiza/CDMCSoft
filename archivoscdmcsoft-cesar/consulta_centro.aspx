<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consulta_centro.aspx.cs" Inherits="consulta_centro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
    <title>content</title>
</head>
<body style="height: 313px">
   
    <form id="form1" runat="server">
        
    <div style="height: 280px">
    
        <asp:Label ID="Label1" runat="server" Text="Centros"></asp:Label>
        
        <asp:GridView ID="GridView1" class="striped" runat="server" AutoGenerateColumns="False" DataKeyNames="centro_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="centro_cod" HeaderText="centro_cod" ReadOnly="True" SortExpression="centro_cod" />
                <asp:BoundField DataField="regional_cod" HeaderText="regional_cod" SortExpression="regional_cod" />
                <asp:BoundField DataField="centro_nombbre" HeaderText="centro_nombbre" SortExpression="centro_nombbre" />
                <asp:BoundField DataField="centro_subdire" HeaderText="centro_subdire" SortExpression="centro_subdire" />
                <asp:BoundField DataField="centro_complejo" HeaderText="centro_complejo" SortExpression="centro_complejo" />
                <asp:BoundField DataField="regional_nombre" HeaderText="regional_nombre" SortExpression="regional_nombre" />
                <asp:CommandField ShowEditButton="True" ButtonType="Image" EditImageUrl="~/imagenes/iconos/editar.png" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT centro.centro_cod, centro.regional_cod, centro.centro_nombbre, centro.centro_subdire, centro.centro_complejo, regional.regional_nombre FROM centro INNER JOIN regional ON centro.regional_cod = regional.regional_cod" DeleteCommand="DELETE FROM [centro] WHERE [centro_cod] = @centro_cod" InsertCommand="INSERT INTO [centro] ([centro_cod], [regional_cod], [centro_nombbre], [centro_subdire], [centro_complejo]) VALUES (@centro_cod, @regional_cod, @centro_nombbre, @centro_subdire, @centro_complejo)" UpdateCommand="UPDATE [centro] SET [regional_cod] = @regional_cod, [centro_nombbre] = @centro_nombbre, [centro_subdire] = @centro_subdire, [centro_complejo] = @centro_complejo WHERE [centro_cod] = @centro_cod">
            <DeleteParameters>
                <asp:Parameter Name="centro_cod" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="centro_cod" Type="String" />
                <asp:Parameter Name="regional_cod" Type="String" />
                <asp:Parameter Name="centro_nombbre" Type="String" />
                <asp:Parameter Name="centro_subdire" Type="String" />
                <asp:Parameter Name="centro_complejo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="regional_cod" Type="String" />
                <asp:Parameter Name="centro_nombbre" Type="String" />
                <asp:Parameter Name="centro_subdire" Type="String" />
                <asp:Parameter Name="centro_complejo" Type="String" />
                <asp:Parameter Name="centro_cod" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        </form>
           
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
</body>
</html>
