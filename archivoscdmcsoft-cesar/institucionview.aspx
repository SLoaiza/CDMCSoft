<%@ Page Language="C#" AutoEventWireup="true" CodeFile="institucionview.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
     <link rel="stylesheet" href="cdmcsoft.css" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <style>
    .Background
    {
        padding:10px;
        border: 3px solid #dedede;
        Background: #616161;
        opacity: 0.6;
    } 
       
    .Panel
    {
        padding: 10px;
        Background: #ffffff;
        width: 500px;
        height: 500px;
    }
    .HyperLink1{
        margin-left: 90%;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                                BackgroundCssClass ="Background"  
                                PopupControlID ="Panel1" 
                                TargetControlID = "HyperLink1" 
                                CancelControlID ="BtnClose"
                                OkControlID = "BtnClose">
        </cc1:ModalPopupExtender>
             
        <asp:Panel ID="Panel1" runat="server" CssClass="Panel z-depth-3">
             <div style="height: 282px">
                        <h4>Guardar regional</h4>
              
                        <asp:Label ID="Label2" runat="server" Text="Nombre de la intitución"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
        
    
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Ciudad"></asp:Label>
                &nbsp;
        
    
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ciu_nom" DataValueField="ciu_cod">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [ciu_cod], [ciu_nom] FROM [tbl_ciudad]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cdmcsoftConnectionString %>" SelectCommand="SELECT [ciu_nom], [ciu_cod] FROM [tbl_ciudad]"></asp:SqlDataSource>
        
    
                        <br />
                        <br />
                        <br />
                        
                       
                  <asp:Button ID="BtnClose" class="btn grey lighten-1" runat="server" Text="Cancelar" />
                  <asp:Button ID="Button2" class="btn green accent-3" runat="server" Text="Crear" OnClick="Button1_Click" />
                  
    
                    </div>
            <br />
           
        </asp:Panel>

        <br />
        <!--Este es el boton que va a abrir el modal-->
         <h1 Style="margin-left: 30%;">Instituciones</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" class="btn-floating btn-large waves-effect waves-light" Style="margin-left: 90%;"><i class="material-icons">add</i></asp:HyperLink>

    </div>
    <div style="height: 278px">
    
        <asp:Label ID="Label1" runat="server" Text="Instituciones"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="inst_cod" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="inst_cod" HeaderText="Codigo" SortExpression="inst_cod" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="inst_nombre" HeaderText="Nombre" SortExpression="inst_nombre" />
                <asp:TemplateField HeaderText="Ciudad" SortExpression="ciu_nom">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="ciu_nom" DataValueField="ciu_cod">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [ciu_cod], [ciu_nom] FROM [tbl_ciudad]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ciu_nom") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField SelectText="" ShowEditButton="True" ShowSelectButton="True" AccessibleHeaderText="Operación" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT institucion.inst_cod, institucion.inst_nombre, institucion.ciu_cod, tbl_ciudad.ciu_nom FROM institucion INNER JOIN tbl_ciudad ON institucion.ciu_cod = tbl_ciudad.ciu_cod"  UpdateCommand="UPDATE [institucion] SET [ciu_cod] = @ciu_nom, [inst_nombre] = @inst_nombre WHERE [inst_cod] = @inst_cod"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [institucion] WHERE [inst_cod] = @inst_cod" InsertCommand="INSERT INTO [institucion] ([ciu_cod], [inst_nombre]) VALUES (@ciu_cod, @inst_nombre)" SelectCommand="SELECT [ciu_cod], [inst_cod], [inst_nombre] FROM [institucion]" UpdateCommand="UPDATE [institucion] SET [ciu_cod] = @ciu_cod, [inst_nombre] = @inst_nombre WHERE [inst_cod] = @inst_cod">
            <DeleteParameters>
                <asp:Parameter Name="inst_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ciu_cod" Type="Int32" />
                <asp:Parameter Name="inst_nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ciu_cod" Type="Int32" />
                <asp:Parameter Name="inst_nombre" Type="String" />
                <asp:Parameter Name="inst_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        
    
    </div>
    </form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
</body>
</html>
