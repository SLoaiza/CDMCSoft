<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css"/>
    <link rel="stylesheet" href="css/main.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

</head>
<body style="background:url(../images/fondo.jpg)">
    <form id="form1" runat="server">


<div class="container-fluid">
    <div class="row">
		<div class="col m3 ">
         <h1>CMDCSOFT</h1>
            <asp:Label ID="lb_password" runat="server" Text="Numero de documento"></asp:Label>
&nbsp;<asp:TextBox ID="txt_identidad"  runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Label ID="lb_contrasena" runat="server" Text="Contraseña"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txt_contrasena" runat="server" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:Button class="waves-effect waves-light btn" ID="btn_session" runat="server" Text="Iniciar session" OnClick="btn_session_Click" />
		</div>
	</div>
	
</div>
<div class="row footer">
	
</div>


    </form>


</body>
</html>