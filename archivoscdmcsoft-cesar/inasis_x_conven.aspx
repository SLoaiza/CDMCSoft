<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inasis_x_conven.aspx.cs" Inherits="inasis_x_conven" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
     <link rel="stylesheet" href="cdmcsoft.css" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <style type="text/css">
        .s12 {
            height: 232px;
        }
    </style>
</head>
<body style="height: 530px">

    <form id="form1" runat="server">
    <h4>Inasistencia por convención</h4>
    <div class="row">
        <div class="input-field col s4">
            <br />
            <label>Inasistencia</label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="usu_id" DataValueField="inasis_cod"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT inasistencia.inasis_cod, inasistencia.usu_cod, usuario.usu_id FROM usuario INNER JOIN inasistencia ON usuario.usu_cod = inasistencia.usu_cod"></asp:SqlDataSource>       
        </div>
        <div class="input-field col s4">
             <br />
            <label>Convención</label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="conven_nombre" DataValueField="conven_cod"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [conven_cod], [conven_nombre] FROM [convencion]"></asp:SqlDataSource>
       </div> 
        <div class="input-field col s4">
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn green darken-1" Text="Guardar" OnClick="Button1_Click" />
       </div> 
    </div>
    <div style="height: 278px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="conven_cod,inasis_cod" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="conven_cod" HeaderText="Convencion" ReadOnly="True" SortExpression="conven_cod" />
                <asp:BoundField DataField="inasis_cod" HeaderText="Inasistencia" ReadOnly="True" SortExpression="inasis_cod" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [inasis_x_convencion] WHERE [conven_cod] = @conven_cod AND [inasis_cod] = @inasis_cod" InsertCommand="INSERT INTO [inasis_x_convencion] ([conven_cod], [inasis_cod]) VALUES (@conven_cod, @inasis_cod)" SelectCommand="SELECT * FROM [inasis_x_convencion]">
            <DeleteParameters>
                <asp:Parameter Name="conven_cod" Type="Int32" />
                <asp:Parameter Name="inasis_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="conven_cod" Type="Int32" />
                <asp:Parameter Name="inasis_cod" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </form>
     <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script>$(document).ready(function () {
    $('select').material_select();
});</script>
    
       
</body>
</html>
