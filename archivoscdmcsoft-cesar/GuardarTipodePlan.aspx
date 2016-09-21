<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarTipodePlan.aspx.cs" Inherits="GuardarTipodePlan" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
        <div>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                                BackgroundCssClass ="Background"  
                                PopupControlID ="Panel1" 
                                TargetControlID = "HyperLink1" 
                                CancelControlID ="BtnClose"
                                OkControlID = "BtnClose"></cc1:ModalPopupExtender>
            <asp:Panel ID="Panel1" runat="server" CssClass="Panel z-depth-3">
                <div style="height: 282px"> 
                    <asp:Label ID="Label2" runat="server" Text="Nombre de Tipo del Plan"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>

                    <br />

                    <asp:Button ID="BtnClose" class="btn grey lighten-1" runat="server" Text="Cancelar" />
                    <asp:Button ID="Button2" class="btn green accent-3" runat="server" Text="Aceptar" OnClick="Button1_Click" />


                </div>
            </asp:Panel>

            <asp:HyperLink ID="HyperLink1" runat="server" class="btn-floating btn-large waves-effect waves-light" Style="margin-left: 90%;"><i class="material-icons">add</i></asp:HyperLink>

        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="tipo_cod" DataSourceID="SqlDataSource1" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowEditButton="True" HeaderText="Acciones" AccessibleHeaderText="Acciones" />
                    <asp:BoundField DataField="tipo_cod" HeaderText="Codigo" ReadOnly="True" SortExpression="tipo_cod" />
                    <asp:BoundField DataField="tipo_nom" HeaderText="Nombre" SortExpression="tipo_nom" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_tipo_plan] WHERE [tipo_cod] = @tipo_cod" InsertCommand="INSERT INTO [tbl_tipo_plan] ([tipo_cod], [tipo_nom]) VALUES (@tipo_cod, @tipo_nom)" SelectCommand="SELECT [tipo_cod], [tipo_nom] FROM [tbl_tipo_plan]" UpdateCommand="UPDATE [tbl_tipo_plan] SET [tipo_nom] = @tipo_nom WHERE [tipo_cod] = @tipo_cod">
                <DeleteParameters>
                    <asp:Parameter Name="tipo_cod" Type="String" />

                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tipo_cod" Type="String" />
                    <asp:Parameter Name="tipo_nom" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tipo_nom" Type="String" />
                    <asp:Parameter Name="tipo_cod" Type="String" />
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
    </script>

</body>
</html>
