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
        .auto-style1 {
            width: 365px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
</head>
<body>
    <div class="row">
    <form id="form1" runat="server">
        <div class="row">
            <div class="col m2">
                Fecha
                <br />
                <asp:TextBox ID="txtFecha" runat="server" Width="120px" Font-Size="Larger"></asp:TextBox>
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
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="regional_nombre" DataValueField="regional_nombre" Height="30px" Width="175px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [regional_cod], [regional_nombre] FROM [regional]"></asp:SqlDataSource>
            </div>
            <div class="col m3">
                <asp:Label ID="Label2" runat="server" Text="Centro"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="centro_nombbre" DataValueField="centro_nombbre" Height="30px" Width="187px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [centro_nombbre] FROM [centro]"></asp:SqlDataSource>
            </div>
            <div class="col m2">
                <asp:Label ID="Label3" runat="server" Text="Tipo De Plan"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="tipo_nom" DataValueField="tipo_cod"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [tipo_nom], [tipo_cod] FROM [tbl_tipo_plan]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <div class="col m3">
                <h4>Consultar Usuario</h4>
                <asp:Label ID="Label4" runat="server" Text="Numero De Documento"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="row">
            <h3>Informacion General</h3>
            <hr />
            <div class="row">
                <div class="col m2">
                    <h5>Numero de ficha</h5>
                    <br />
                    <asp:Label ID="Nficha" runat="server" Text="" readonly=""></asp:Label>
                </div>
                <div class="col m3">
                    <h5>Nombres y Apellidos</h5>
                    <br />
                    <asp:Label ID="NomyApe" runat="server" Text="" readonly=""></asp:Label>
                </div>
                <div class="col m3">
                    <h5>Fase</h5>
                    <br />
                    <asp:Label ID="Fase" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col m3">
                    <h5>Programa de formacion</h5>
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="prog_nom" DataValueField="prog_nom" Height="30px" Width="230px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_asp_sin_clave %>" SelectCommand="SELECT [prog_nom] FROM [programa]"></asp:SqlDataSource>
                    <span>Codigo: </span><span><asp:Label ID="codigoPrograma" runat="server" Text=""></asp:Label></span>
                </div>
                <div class="col m3">
                    <h5>proyecto asociado</h5>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="279px"></asp:TextBox>
                    <br />
                    <span>Codigo: </span><span><asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="220px"></asp:TextBox></span>
                </div>
                <div class="col m1">
                    <h5>Etapa</h5>
                    <br />
                    <asp:DropDownList ID="DropDownList7" runat="server" Height="27px" Width="89px">
                       <asp:ListItem>Electiva</asp:ListItem>
                       <asp:ListItem>Practica</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col m2">
                    <h5>Juicio de evaluacion</h5>
                    <br />
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="27px" Width="65px">
                        <asp:ListItem>Aprobado</asp:ListItem>
                        <asp:ListItem>Reprobado</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
             
                    <td colspan="2">
                        Actividad del proyecto a desarrollar
                    </td>
                    <td colspan="2">
                        Observaciones
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <textarea id="Actv_des" rows="2" runat="server" maxlength="300" style="max-width:425px;max-height:200;"></textarea>
                    </td>
                    <td colspan="2">
                        <textarea id="Observ" rows="2" runat="server" maxlength="200" style="max-width:300px;max-height:200;"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Instructor</td>
                    <td>Documento</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Instructor" runat="server" Height="27px" Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="DInstructor" runat="server" Height="27px"></asp:TextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <asp:Button ID="continuar" Text="Continuar" runat="server" Height="41px" Width="133px" OnClick="continuar_Click" />
    </form>
    </div>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
</body>
</html>
