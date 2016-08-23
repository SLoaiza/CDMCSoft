<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearPlan.aspx.cs" Inherits="CrearPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 917px;
        }
        #Actv_des {
            width: 425px;
        }
        #Observ {
            width: 300px;
        }
        </style>
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>--%>

</head>
<body>
    <div class="row">
    <form id="form1" runat="server">
        <div class="row">
            <div class="col m2">
                Fecha
                <br />
                <asp:TextBox ID="txtFechaplan" runat="server" Width="120px" Font-Size="Larger"></asp:TextBox>
            </div>
            <div class="col m1">
                Acta N°
                <br />
                <asp:Label ID="actanum" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col m2">
                <asp:Label ID="Label1" runat="server" Text="Regional"></asp:Label>
                <br />
                <asp:DropDownList ID="dpRegional" runat="server" DataSourceID="SqlDataSource1" DataTextField="regional_nombre" DataValueField="regional_nombre" Height="30px" Width="175px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [regional_cod], [regional_nombre] FROM [regional]"></asp:SqlDataSource>
            </div>
            <div class="col m3">
                <asp:Label ID="Label2" runat="server" Text="Centro"></asp:Label>
                <br />
                <asp:DropDownList ID="dpCentro" runat="server" DataSourceID="SqlDataSource2" DataTextField="centro_nombbre" DataValueField="centro_nombbre" Height="30px" Width="187px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [centro_nombbre] FROM [centro]"></asp:SqlDataSource>
            </div>
            <div class="col m2">
                <asp:Label ID="Label3" runat="server" Text="Tipo De Plan"></asp:Label>
                <br />
                <asp:DropDownList ID="dpTipoplan" runat="server" DataSourceID="SqlDataSource4" DataTextField="tipo_nom" DataValueField="tipo_cod"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [tipo_nom], [tipo_cod] FROM [tbl_tipo_plan]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <h3>Informacion General</h3>
            <hr />
            <div class="row">
                <div class="col m3">
                    <h5>Programa de formacion</h5>
                    <br />
                    <asp:DropDownList ID="dpPrograma" runat="server" DataSourceID="SqlDataSource3" DataTextField="prog_nom" DataValueField="prog_nom" Height="30px" Width="230px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [prog_nom] FROM [programa]"></asp:SqlDataSource>
                    <span>Codigo: </span><span><asp:Label ID="codigoPrograma" runat="server" Text=""></asp:Label></span>
                </div>
                <div class="col m2">
                    <h5>Numero de ficha</h5>
                    <br />
                    <asp:TextBox ID="NfichaPlan" runat="server"></asp:TextBox>
                </div>
                <div class="col m1">
                    <h5>Etapa</h5>
                    <br />
                    <asp:DropDownList ID="dpEtapa" runat="server" Height="27px" Width="89px">
                       <asp:ListItem>Electiva</asp:ListItem>
                       <asp:ListItem>Practica</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col m3">
                    <h5>Nombres y Apellidos</h5>
                    <br />
                    <asp:TextBox ID="txtNombresplan" runat="server"></asp:TextBox>
                    <br />
                    N° Documento: <asp:TextBox ID="txtDocumentoPlanusu" runat="server" Width="220px"></asp:TextBox>
                </div>
                <div class="col m1">
                    <h5>Fase</h5>
                    <br />
                    <asp:TextBox ID="txtFaseplan" runat="server"></asp:TextBox>
                </div>
                <div class="col m3">
                    <h5>proyecto asociado</h5>
                    <br />
                    <asp:TextBox ID="txtproyPlan" runat="server" Height="45px" Width="279px"></asp:TextBox>
                    <br />
                    <span>Codigo: </span><span><asp:TextBox ID="codproyplan" runat="server" Height="27px" Width="220px"></asp:TextBox></span>
                </div>
                <div class="col m3">
                    <h5>Juicio de evaluacion</h5>
                    <br />
                    <asp:DropDownList ID="dpjuicioPlan" runat="server" Height="27px" Width="65px">
                        <asp:ListItem>Aprobado</asp:ListItem>
                        <asp:ListItem>Reprobado</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col m6">
                    <asp:Label ID="Label5" runat="server" Text="Actividad del proyecto a desarrollar"></asp:Label>
                    <br />
                    <textarea id="taActv_des" rows="2" runat="server" maxlength="300" style="max-width:425px;max-height:200px;"></textarea>
                </div>
                <div class="col m6">
                    <asp:Label ID="Label4" runat="server" Text="Observaciones"></asp:Label>
                    <br />
                    <textarea id="taObserv" rows="2" runat="server" maxlength="300" style="max-width:300px;max-height:200px;"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col m3">
                    <asp:Label ID="Label6" runat="server" Text="Instructor"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtInstructorPlan" runat="server" Height="27px" Width="236px"></asp:TextBox>
                </div>
                <div class="col m3">
                    <asp:Label ID="Label7" runat="server" Text="N° Documento"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDInstructorPlan" runat="server" Height="27px"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col m6">
                <asp:Label ID="Label8" runat="server" Text="Resultado"></asp:Label>
                <br />
                <textarea id="taResultadoPlan" cols="20" rows="2" runat="server" maxlength="300" style="width:500px; max-width:500px;max-height:300px;"></textarea>
            </div>
            <div class="col m6">
                <asp:Label ID="Label9" runat="server" Text="Competencias"></asp:Label>
                <br />
                <textarea id="taCompetenciaPlan" cols="20" rows="2" runat="server" maxlength="300" style="width:500px; max-width:500px;max-height:300px;"></textarea>
            </div>
        </div>
        <hr />
        <h2>Actividades a Desarrollar</h2>
        <div class="row">
            <div class="card col m12">
                <div class="row">

                </div>
            </div>
            <asp:GridView ID="GridView1" runat="server" Height="42px" Width="934px" AutoGenerateColumns="False" DataKeyNames="act_cod" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="act_nom" HeaderText="Actividades a desarrollar" SortExpression="act_nom" />
                    <asp:TemplateField HeaderText="inicio" SortExpression="act_inicio">
                        <EditItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("act_inicio") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="fin" SortExpression="act_fin">
                        <EditItemTemplate>
                            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("act_fin") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="centro de formacion" SortExpression="act_centro_de_formacion">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="centro_nombbre" DataValueField="centro_nombbre">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [centro_nombbre] FROM [centro]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("act_centro_de_formacion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="act_empresa" HeaderText="empresa" SortExpression="act_empresa" />
                    <asp:BoundField DataField="act_conocimiento" HeaderText="conocimiento" SortExpression="act_conocimiento" />
                    <asp:BoundField DataField="act_desempeño" HeaderText="desempeño" SortExpression="act_desempeño" />
                    <asp:BoundField DataField="act_producto" HeaderText="producto" SortExpression="act_producto" />
                    <asp:BoundField DataField="act_criterio_eval" HeaderText="Criterios de evaluacion¿Utilizo los ambientes de aprendizaje establecidos en el diseño curricular?.¿Se emplearon los materiales de formacion definidos?" SortExpression="act_criterio_eval" />
                    <asp:TemplateField HeaderText="fecha" SortExpression="act_fecha">
                        <EditItemTemplate>
                            <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("act_fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="act_hora" HeaderText="hora" SortExpression="act_hora" />
                    <asp:TemplateField HeaderText="autenticidad" SortExpression="act_autenticidad">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>si</asp:ListItem>
                                <asp:ListItem>no</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("act_autenticidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="calidad" SortExpression="act_calidad">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>si</asp:ListItem>
                                <asp:ListItem>no</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("act_calidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="logro" SortExpression="act_logro">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem>si</asp:ListItem>
                                <asp:ListItem>no</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("act_logro") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="~/imagenes/iconos/editar.ico" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" DeleteCommand="DELETE FROM [tbl_act_a_desarrollar] WHERE [act_cod] = @act_cod" InsertCommand="INSERT INTO [tbl_act_a_desarrollar] ([act_cod], [plan_cod], [act_inicio], [act_fin], [act_centro_de_formacion], [act_empresa], [act_conocimiento], [act_desempeño], [act_producto], [act_criterio_eval], [act_fecha], [act_hora], [act_autenticidad], [act_calidad], [act_logro]) VALUES (@act_cod, @plan_cod, @act_inicio, @act_fin, @act_centro_de_formacion, @act_empresa, @act_conocimiento, @act_desempeño, @act_producto, @act_criterio_eval, @act_fecha, @act_hora, @act_autenticidad, @act_calidad, @act_logro)" SelectCommand="SELECT * FROM [tbl_act_a_desarrollar]" UpdateCommand="UPDATE [tbl_act_a_desarrollar] SET [plan_cod] = @plan_cod, [act_inicio] = @act_inicio, [act_fin] = @act_fin, [act_centro_de_formacion] = @act_centro_de_formacion, [act_empresa] = @act_empresa, [act_conocimiento] = @act_conocimiento, [act_desempeño] = @act_desempeño, [act_producto] = @act_producto, [act_criterio_eval] = @act_criterio_eval, [act_fecha] = @act_fecha, [act_hora] = @act_hora, [act_autenticidad] = @act_autenticidad, [act_calidad] = @act_calidad, [act_logro] = @act_logro WHERE [act_cod] = @act_cod">
                <DeleteParameters>
                    <asp:Parameter Name="act_cod" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="act_cod" Type="String" />
                    <asp:Parameter Name="plan_cod" Type="Int32" />
                    <asp:Parameter Name="act_inicio" Type="String" />
                    <asp:Parameter Name="act_fin" Type="String" />
                    <asp:Parameter Name="act_centro_de_formacion" Type="String" />
                    <asp:Parameter Name="act_empresa" Type="String" />
                    <asp:Parameter Name="act_conocimiento" Type="String" />
                    <asp:Parameter Name="act_desempeño" Type="String" />
                    <asp:Parameter Name="act_producto" Type="String" />
                    <asp:Parameter Name="act_criterio_eval" Type="String" />
                    <asp:Parameter Name="act_fecha" Type="String" />
                    <asp:Parameter Name="act_hora" Type="String" />
                    <asp:Parameter Name="act_autenticidad" Type="String" />
                    <asp:Parameter Name="act_calidad" Type="String" />
                    <asp:Parameter Name="act_logro" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="plan_cod" Type="Int32" />
                    <asp:Parameter Name="act_inicio" Type="String" />
                    <asp:Parameter Name="act_fin" Type="String" />
                    <asp:Parameter Name="act_centro_de_formacion" Type="String" />
                    <asp:Parameter Name="act_empresa" Type="String" />
                    <asp:Parameter Name="act_conocimiento" Type="String" />
                    <asp:Parameter Name="act_desempeño" Type="String" />
                    <asp:Parameter Name="act_producto" Type="String" />
                    <asp:Parameter Name="act_criterio_eval" Type="String" />
                    <asp:Parameter Name="act_fecha" Type="String" />
                    <asp:Parameter Name="act_hora" Type="String" />
                    <asp:Parameter Name="act_autenticidad" Type="String" />
                    <asp:Parameter Name="act_calidad" Type="String" />
                    <asp:Parameter Name="act_logro" Type="String" />
                    <asp:Parameter Name="act_cod" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

        <asp:Button ID="continuar" Text="Continuar" runat="server" Height="41px" Width="133px" OnClick="continuar_Click" />
        <a href="Default.aspx">Atras</a>
    </form>
    </div>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
</body>
</html>
