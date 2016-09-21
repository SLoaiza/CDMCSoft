<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inasistenciaview.aspx.cs" Inherits="_Default" %>

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
        border-radius:6px;
    }
    .HyperLink1{
        margin-left: 90%;
    }
    </style>
</head>
<body>
    <form id="form1" class="col s12" runat="server">
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
             <div class="row" style="height: 282px">
                        <h4>Guardar inasistencia</h4>
              <div class="input-field col s6">
                        
                        <input id="Textbox2" runat="server" required="" />
                        <label for="Textbox2">Codigo del usuario</label>
               </div>
                 <div class="input-field col s6">         
                        
                        <input id="Textbox3" runat="server" required=""/>
                         <label for="Textbox3">Numero de horas</label>
               </div>
                 <div class="input-field col s6">
                        
                        <input id="Textbox1" type="date" class="datepicker" runat="server" required=""/>
                        <label for="Textbox1">Fecha</label>
                        <br />
                    </div>
                 <div class="input-field col s6">  
                        <textarea class="materialize-textarea" id="Textbox5" cols="20" rows="2" runat="server" ></textarea>
                        <label for="Textbox5">Descripción</label>
                   </div>
                 <div class="input-field col s6">
                        
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ficha_cod" DataValueField="Ficha_cod"></asp:DropDownList>
                        <label>Ficha</label>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [Ficha_cod], [Prog_cod] FROM [ficha]"></asp:SqlDataSource>
                        <br />
                   </div>
                 <div class="input-field col s6">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Expr1" DataValueField="rol_cod"></asp:DropDownList>
                        <label>Instructor</label>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT usuario.usu_cod, usuario.rol_cod, usuario.usu_nom + ' ' + usuario.usu_ape AS Expr1 FROM usuario INNER JOIN rol ON usuario.rol_cod = rol.rol_cod WHERE (rol.rol_cod = 1)"></asp:SqlDataSource>
                      </div>

                     <div class="input-field col s12">
                        <asp:Button ID="Button3" runat="server" CssClass="btn green darken-1" OnClick="Button2_Click" Text="Crear" />
                        <asp:Button ID="BtnClose" class="btn grey lighten-1" runat="server" Text="Cancelar" />
                  </div>
                  
    
                    </div>
            
            <br />
           
        </asp:Panel>

        <br />
        <!--Este es el boton que va a abrir el modal-->
         <h1 Style="margin-left: 30%;">Inasistencia</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" class="btn-floating btn-large waves-effect waves-light" Style="margin-left: 90%;"><i class="material-icons">add</i></asp:HyperLink>

    </div>
    <div style="height: 288px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="inasis_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="inasis_cod" HeaderText="inasis_cod" InsertVisible="False" ReadOnly="True" SortExpression="inasis_cod" />
                <asp:BoundField DataField="usu_cod" HeaderText="usu_cod" SortExpression="usu_cod" />
                <asp:BoundField DataField="inasis_num_horas" HeaderText="inasis_num_horas" SortExpression="inasis_num_horas" />
                <asp:BoundField DataField="inasis_fecha" HeaderText="inasis_fecha" SortExpression="inasis_fecha" />
                <asp:BoundField DataField="inasis_descrip" HeaderText="inasis_descrip" SortExpression="inasis_descrip" />
                <asp:TemplateField HeaderText="ficha_cod" SortExpression="ficha_cod">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ficha_cod" DataValueField="Ficha_cod" SelectedValue='<%# Bind("ficha_cod") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [Ficha_cod] FROM [ficha]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ficha_cod") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [inasistencia] WHERE [inasis_cod] = @inasis_cod" InsertCommand="INSERT INTO [inasistencia] ([usu_cod], [inasis_num_horas], [inasis_fecha], [inasis_descrip], [ficha_cod]) VALUES (@usu_cod, @inasis_num_horas, @inasis_fecha, @inasis_descrip, @ficha_cod)" SelectCommand="SELECT [inasis_cod], [usu_cod], [inasis_num_horas], [inasis_fecha], [inasis_descrip], [ficha_cod] FROM [inasistencia]" UpdateCommand="UPDATE [inasistencia] SET [usu_cod] = @usu_cod, [inasis_num_horas] = @inasis_num_horas, [inasis_fecha] = @inasis_fecha, [inasis_descrip] = @inasis_descrip, [ficha_cod] = @ficha_cod WHERE [inasis_cod] = @inasis_cod">
            <DeleteParameters>
                <asp:Parameter Name="inasis_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usu_cod" Type="String" />
                <asp:Parameter Name="inasis_num_horas" Type="Int32" />
                <asp:Parameter Name="inasis_fecha" Type="String" />
                <asp:Parameter Name="inasis_descrip" Type="String" />
                <asp:Parameter Name="ficha_cod" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="usu_cod" Type="String" />
                <asp:Parameter Name="inasis_num_horas" Type="Int32" />
                <asp:Parameter Name="inasis_fecha" Type="String" />
                <asp:Parameter Name="inasis_descrip" Type="String" />
                <asp:Parameter Name="ficha_cod" Type="String" />
                <asp:Parameter Name="inasis_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });

    </script>
</body>
</html>
