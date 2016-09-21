<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuardarCiudad.aspx.cs" Inherits="GuardarCiudad" %>

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
                    <asp:Label ID="Label1" runat="server" Text="Nombre De La Ciudad"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" required="" Width="120px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="listadoDepartamentos" DataTextField="dept_nom" DataValueField="dept_cod">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="listadoDepartamentos" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT [dept_cod], [dept_nom] FROM [tbl_departamento]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="BtnClose" class="btn grey lighten-1" runat="server" Text="Cancelar" />
                    <asp:Button ID="Button2" class="btn green accent-3" runat="server" Text="Aceptar" OnClick="Button1_Click" />


                </div>
            </asp:Panel>

            <asp:HyperLink ID="HyperLink1" runat="server" class="btn-floating btn-large waves-effect waves-light" Style="margin-left: 90%;"><i class="material-icons">add</i></asp:HyperLink>

        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ciu_cod" DataSourceID="conexion_asp_con_clave" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="ciu_cod" HeaderText="ciu_cod" InsertVisible="False" ReadOnly="True" SortExpression="ciu_cod" />
                <asp:BoundField DataField="ciu_nom" HeaderText="ciu_nom" SortExpression="ciu_nom" />
                <asp:BoundField DataField="dept_nom" HeaderText="dept_nom" SortExpression="dept_nom" />
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
          <asp:SqlDataSource ID="conexion_asp_con_clave" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" SelectCommand="SELECT tbl_ciudad.ciu_cod,  tbl_ciudad.ciu_nom,  tbl_ciudad.dept_cod,  tbl_departamento.dept_nom from tbl_ciudad inner join tbl_departamento on tbl_ciudad.dept_cod=tbl_departamento.dept_cod"></asp:SqlDataSource>
    
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
