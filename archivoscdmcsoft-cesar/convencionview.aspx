<%@ Page Language="C#" AutoEventWireup="true" CodeFile="convencionview.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
    <link rel="stylesheet" href="cdmcsoft.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server" class="col s10">
        <div class="row">
            <div class="input-field col s5">
                <h4>Nueva convención</h4>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Nombre de convención"></asp:Label>
        &nbsp;&nbsp;&nbsp;
                <div class="row">
                <asp:TextBox class="col s6" ID="TextBox2" runat="server"></asp:TextBox>
               
                
                <asp:Button class="col s5" ID="Button2" CssClass="btn green darken-1" style="margin-left:5%;" runat="server" OnClick="Button1_Click" Text="Crear" /> 
                       
                </div>
            </div>
        </div>
    <div style="height: 300px">
    
       
        <asp:Label ID="Label1" runat="server" Text="Convenciones"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="conven_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="conven_cod" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="conven_cod" />
                <asp:BoundField DataField="conven_nombre" HeaderText="Nombre" SortExpression="conven_nombre" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_con_clave %>" DeleteCommand="DELETE FROM [convencion] WHERE [conven_cod] = @conven_cod" InsertCommand="INSERT INTO [convencion] ([conven_nombre]) VALUES (@conven_nombre)" SelectCommand="SELECT [conven_cod], [conven_nombre] FROM [convencion]" UpdateCommand="UPDATE [convencion] SET [conven_nombre] = @conven_nombre WHERE [conven_cod] = @conven_cod">
            <DeleteParameters>
                <asp:Parameter Name="conven_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="conven_nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="conven_nombre" Type="String" />
                <asp:Parameter Name="conven_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
