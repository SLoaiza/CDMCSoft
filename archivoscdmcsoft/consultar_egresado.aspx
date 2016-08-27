<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consultar_egresado.aspx.cs" Inherits="consultar_egresado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 252px">
    
        Egresado<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="egre_cod" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="egre_cod" HeaderText="Codigo egresado" InsertVisible="False" ReadOnly="True" SortExpression="egre_cod" />
                <asp:BoundField DataField="usu_cod" HeaderText="Codigo usuario" SortExpression="usu_cod" />
                <asp:BoundField DataField="egre_alt_etapa_prod" HeaderText="egre_alt_etapa_prod" SortExpression="egre_alt_etapa_prod" />
                <asp:BoundField DataField="egre_otra_cual_etapa_prod" HeaderText="egre_otra_cual_etapa_prod" SortExpression="egre_otra_cual_etapa_prod" />
                <asp:BoundField DataField="egre_vinc_fin_etapa_prac" HeaderText="egre_vinc_fin_etapa_prac" SortExpression="egre_vinc_fin_etapa_prac" />
                <asp:BoundField DataField="egre_vinc_act" HeaderText="egre_vinc_act" SortExpression="egre_vinc_act" />
                <asp:BoundField DataField="emp_nit" HeaderText="emp_nit" SortExpression="emp_nit" />
                <asp:BoundField DataField="egre_cargo" HeaderText="egre_cargo" SortExpression="egre_cargo" />
                <asp:BoundField DataField="egre_fech_vinc" HeaderText="egre_fech_vinc" SortExpression="egre_fech_vinc" />
                <asp:BoundField DataField="egre_perti_func" HeaderText="egre_perti_func" SortExpression="egre_perti_func" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [egresado] WHERE [egre_cod] = @egre_cod" InsertCommand="INSERT INTO [egresado] ([usu_cod], [egre_alt_etapa_prod], [egre_otra_cual_etapa_prod], [egre_vinc_fin_etapa_prac], [egre_vinc_act], [emp_nit], [egre_cargo], [egre_fech_vinc], [egre_perti_func]) VALUES (@usu_cod, @egre_alt_etapa_prod, @egre_otra_cual_etapa_prod, @egre_vinc_fin_etapa_prac, @egre_vinc_act, @emp_nit, @egre_cargo, @egre_fech_vinc, @egre_perti_func)" SelectCommand="SELECT * FROM [egresado]" UpdateCommand="UPDATE [egresado] SET [usu_cod] = @usu_cod, [egre_alt_etapa_prod] = @egre_alt_etapa_prod, [egre_otra_cual_etapa_prod] = @egre_otra_cual_etapa_prod, [egre_vinc_fin_etapa_prac] = @egre_vinc_fin_etapa_prac, [egre_vinc_act] = @egre_vinc_act, [emp_nit] = @emp_nit, [egre_cargo] = @egre_cargo, [egre_fech_vinc] = @egre_fech_vinc, [egre_perti_func] = @egre_perti_func WHERE [egre_cod] = @egre_cod">
            <DeleteParameters>
                <asp:Parameter Name="egre_cod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usu_cod" Type="String" />
                <asp:Parameter Name="egre_alt_etapa_prod" Type="String" />
                <asp:Parameter Name="egre_otra_cual_etapa_prod" Type="String" />
                <asp:Parameter Name="egre_vinc_fin_etapa_prac" Type="String" />
                <asp:Parameter Name="egre_vinc_act" Type="String" />
                <asp:Parameter Name="emp_nit" Type="String" />
                <asp:Parameter Name="egre_cargo" Type="String" />
                <asp:Parameter Name="egre_fech_vinc" Type="String" />
                <asp:Parameter Name="egre_perti_func" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="usu_cod" Type="String" />
                <asp:Parameter Name="egre_alt_etapa_prod" Type="String" />
                <asp:Parameter Name="egre_otra_cual_etapa_prod" Type="String" />
                <asp:Parameter Name="egre_vinc_fin_etapa_prac" Type="String" />
                <asp:Parameter Name="egre_vinc_act" Type="String" />
                <asp:Parameter Name="emp_nit" Type="String" />
                <asp:Parameter Name="egre_cargo" Type="String" />
                <asp:Parameter Name="egre_fech_vinc" Type="String" />
                <asp:Parameter Name="egre_perti_func" Type="String" />
                <asp:Parameter Name="egre_cod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
