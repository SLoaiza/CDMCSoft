<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarSancion.aspx.cs" Inherits="GuardarSancion" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Guardar Sancion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
    <link rel="stylesheet" href="cdmcsoft.css" />
    <link href="htts://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

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
<body style="height: 340px">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                                BackgroundCssClass ="Background"  
                                PopupControlID ="Panel1" 
                                TargetControlID = "HyperLink1" 
                                CancelControlID ="BtnClose"
                                OkControlID = "BtnClose"></cc1:ModalPopupExtender>
            <asp:Panel ID="Panel1" runat="server" CssClass="Panel z-depth-3">
                <div style="height: 282px"> 
                    <asp:Label ID="Label3" runat="server" Text="Nombre De Sancion"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="211px"></asp:TextBox>
    
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
                    <br />
                    <textarea id="TextArea1" name="S1" runat="server"  required="" class="materialize-textarea">

                    </textarea><br />



                    <asp:Button ID="BtnClose" class="btn grey lighten-1" runat="server" Text="Cancelar" />
                    <asp:Button ID="Button2" class="btn green accent-3" runat="server" Text="Aceptar" OnClick="Button1_Click" />


                </div>
            </asp:Panel>

            <asp:HyperLink ID="HyperLink1" runat="server" class="btn-floating btn-large waves-effect waves-light" Style="margin-left: 90%;"><i class="material-icons">add</i></asp:HyperLink>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="sancion_cod" DataSourceID="mostrarsanciones" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="sancion_nom" HeaderText="sancion_nom" SortExpression="sancion_nom" />
                    <asp:BoundField DataField="sancion_descp" HeaderText="sancion_descp" SortExpression="sancion_descp" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="mostrarsanciones" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [tbl_sancion] WHERE [sancion_cod] = @sancion_cod" InsertCommand="INSERT INTO [tbl_sancion] ([sancion_nom], [sancion_descp]) VALUES (@sancion_nom, @sancion_descp)" SelectCommand="SELECT * FROM [tbl_sancion]" UpdateCommand="UPDATE [tbl_sancion] SET [sancion_nom] = @sancion_nom, [sancion_descp] = @sancion_descp WHERE [sancion_cod] = @sancion_cod">
                <DeleteParameters>
                    <asp:Parameter Name="sancion_cod" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sancion_nom" Type="String" />
                    <asp:Parameter Name="sancion_descp" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sancion_nom" Type="String" />
                    <asp:Parameter Name="sancion_descp" Type="String" />
                    <asp:Parameter Name="sancion_cod" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
            $('#TextArea1').trigger('autoresize');
        });

    </script>
</body>
</html>