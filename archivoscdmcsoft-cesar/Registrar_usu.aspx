<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrar_usu.aspx.cs" Inherits="Registrar_usu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title></title> 



     <meta name="description" content="Website Tour with jQuery" />
        <meta name="keywords" content="tour, walkthrough, jquery, plugin, steps, explain, describe, take a tour"/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/jquerytour.css" />
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
           Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('.footer');
		</script>


</head>
<body>

     <h1>Registro Usuario</h1>

    <form id="form1" runat="server">
   
    
                <asp:Label ID="Label12" runat="server" Text="Codigo"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox7" class="tour_prueba1" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                <br />
   
    
                <asp:Label ID="Label8" runat="server" Text="Tipo de documento"></asp:Label>
&nbsp;&nbsp;&nbsp;
               
             <asp:DropDownList ID="DropDownList1"  class="tour_prueba2" runat="server" Enabled="False">
                    <asp:ListItem>Seleccionar</asp:ListItem>
                    <asp:ListItem>Cedula de Ciudadania</asp:ListItem>
                    <asp:ListItem>Tarjeta de Identidad</asp:ListItem>
                    <asp:ListItem>Cedula de extranjeria</asp:ListItem>
                </asp:DropDownList>
                </br>

            <asp:Label ID="lb_password" runat="server" Text="Numero de documento"></asp:Label>
&nbsp;      <asp:TextBox ID="txt_identidad"  class="tour_prueba3" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
            <br />
           
         <asp:Label ID="lb_contrasena"  class="tour_prueba4" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_name" runat="server" Enabled="False" ></asp:TextBox>
            <br />
           
		    <asp:Label ID="Label1" runat="server" Text="Apellido"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1"  class="tour_prueba5" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Rol"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList7"  class="tour_prueba6" runat="server" Enabled="False">
                </asp:DropDownList>
            <br />
            <asp:Label ID="Label7" class="tour_prueba7" runat="server" Text="Fecha nacimiento"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Calendario" Width="70px" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
            <br />
            
            <asp:Label ID="Label2" class="tour_prueba8" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            <br />
            
            <asp:Label ID="Label10" class="tour_prueba9" runat="server" Text="Departamento"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="dept_nom" DataValueField="dept_cod" Enabled="False">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSoftConnectionString %>" DeleteCommand="DELETE FROM [tbl_departamento] WHERE [dept_cod] = @dept_cod" InsertCommand="INSERT INTO [tbl_departamento] ([dept_cod], [dept_nom]) VALUES (@dept_cod, @dept_nom)" SelectCommand="SELECT * FROM [tbl_departamento]" UpdateCommand="UPDATE [tbl_departamento] SET [dept_nom] = @dept_nom WHERE [dept_cod] = @dept_cod">
                    <DeleteParameters>
                        <asp:Parameter Name="dept_cod" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="dept_cod" Type="String" />
                        <asp:Parameter Name="dept_nom" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="dept_nom" Type="String" />
                        <asp:Parameter Name="dept_cod" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label9" class="tour_prueba10" runat="server" Text="Ciudad"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="ciu_nom" DataValueField="ciu_cod" Enabled="False">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSoftConnectionString %>" SelectCommand="SELECT * FROM [tbl_ciudad]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" class="tour_prueba11" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" class="tour_prueba12" runat="server" Text="Estado"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" class="tour_prueba13" runat="server" Text="Regional"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="regional_nombre" DataValueField="regional_cod" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSoftConnectionString %>" SelectCommand="SELECT * FROM [regional]"></asp:SqlDataSource>
            <br />
            
        <asp:Label ID="Label6" class="tour_prueba14" runat="server" Text="Centro"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="centro_nombbre" DataValueField="centro_cod" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSoftConnectionString %>" SelectCommand="SELECT * FROM [centro]"></asp:SqlDataSource>
            <br />
           
         <asp:Label ID="Label11" class="tour_prueba15" runat="server" Text="Ficha"></asp:Label>
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource5" DataTextField="Ficha_cod" DataValueField="Ficha_cod" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CDMCSoftConnectionString %>" SelectCommand="SELECT * FROM [ficha]"></asp:SqlDataSource>
                <asp:Label ID="Label14" runat="server" Text="ingresar foto"></asp:Label>
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
                <asp:Button ID="Button1" class="tour_prueba16" runat="server" OnClick="Button1_Click" Text="Guardar" Enabled="False" />
            <br />
         </form>
     <!-- The JavaScript -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
			$(function() {
				/*
				the json config obj.
				name: the class given to the element where you want the tooltip to appear
				bgcolor: the background color of the tooltip
				color: the color of the tooltip text
				text: the text inside the tooltip
				time: if automatic tour, then this is the time in ms for this step
				position: the position of the tip. Possible values are
					TL	top left
					TR  top right
					BL  bottom left
					BR  bottom right
					LT  left top
					LB  left bottom
					RT  right top
					RB  right bottom
					T   top
					R   right
					B   bottom
					L   left
				 */
				var config = [
					
					{
					    "name": "tour_prueba1",
						"bgcolor"	: "black",
						"color"		: "white",
						"text"		: "Finaliza el tour e ingresa el codigo del usuario,presiona ENTER para continuar con Demo Tour",
						"position"	: "TL",
						"time" 		: 5000
					},
					{
					    "name": "tour_prueba2",
						"bgcolor"	: "black",
						"color"		: "white",
						"text": "Seleccionar el tipo de documento.",
						"position"	: "BL",
						"time" 		: 5000
					},
					{
					    "name": "tour_prueba3",
						"bgcolor"	: "black",
						"color"		: "white",
						"text": "Ingresar el documento de identificación.",
						"position"	: "TL",
						"time" 		: 5000
					},
					{
					    "name": "tour_prueba4",
						"bgcolor"	: "black",
						"color"		: "white",
						"text": "Ingresar el nombre completo.",
						"position"	: "TL",
						"time" 		: 5000
					},
					{
					    "name": "tour_prueba5",
					    "bgcolor": "black",
						"color"		: "white",
						"text": "Ingresar los apellidos.",
						"position"	: "TL",
						"time" 		: 5000
					},
					{
					    "name": "tour_prueba6",
						"bgcolor"	: "black",
						"color"		: "white",
						"text": "Seleccionar el rol que desempeña.",
						"position"	: "TL",
						"time" 		: 5000
					},
				    {
				        "name": "tour_prueba7",
				       "bgcolor"	: "black",
                       "color"		: "white",
                       "text": "Seleccionar o escribir la fecha de nacimiento.",
                       "position"	: "TL",
                       "time" 		: 5000
			    	},
                  {
                      "name": "tour_prueba8",
                        "bgcolor": "black",
                        "color": "white",
                        "text": "Ingresar tu dirección donde vives actualmente.",
                        "position": "TL",
                        "time": 5000
                    },
                    {
                        "name": "tour_prueba9",
                        "bgcolor": "black",
                        "color": "white",
                        "text": "Seleccionar el departamento donde vives.",
                        "position": "TL",
                        "time": 5000
                    },
                     {
                         "name": "tour_prueba10",
                         "bgcolor": "black",
                         "color": "white",
                         "text": "Seleccionar la ciudad donde vives.",
                         "position": "TL",
                         "time": 5000
                     },
                     {
                         "name": "tour_prueba11",
                         "bgcolor": "black",
                         "color": "white",
                         "text": "Ingresa tu número telefónico.",
                         "position": "TL",
                         "time": 5000
                     },
                      {
                          "name": "tour_prueba12",
                          "bgcolor": "black",
                          "color": "white",
                          "text": "Seleccionar el estado en el que se encuentra actualmente (Activo, Inactivo).",
                          "position": "TL",
                          "time": 5000
                      },
                       {
                           "name": "tour_prueba13",
                           "bgcolor": "black",
                           "color": "white",
                           "text": "Seleccionar el departamento en cual se encuentra estudiando.",
                           "position": "TL",
                           "time": 5000
                       },
                    {
                        "name": "tour_prueba14",
                        "bgcolor": "black",
                        "color": "white",
                        "text": "Seleccionar en el centro donde se encuentra estudiando.",
                        "position": "TL",
                        "time": 5000
                    },
                    
                     {
                         "name": "tour_prueba15",
                         "bgcolor": "black",
                         "color": "white",
                         "text": "Ingresar el número de la ficha en el curso que se encuentra.",
                         "position": "TL",
                         "time": 5000
                     },
                       {
                           "name": "tour_prueba16",
                           "bgcolor": "black",
                           "color": "white",
                           "text": "Al terminar de ingresar los datos del formulario se presiona este botón si desea guarda este usuario.",
                           "position": "TL",
                           "time": 5000
                       }




				],
				//define if steps should change automatically
				autoplay	= false,
				//timeout for the step
				showtime,
				//current step of the tour
				step		= 0,
				//total number of steps
				total_steps	= config.length;
					
				//show the tour controls
				showControls();
				
				/*
				we can restart or stop the tour,
				and also navigate through the steps
				 */
				$('#activatetour').live('click',startTour);
				$('#canceltour').live('click',endTour);
				$('#endtour').live('click',endTour);
				$('#restarttour').live('click',restartTour);
				$('#nextstep').live('click',nextStep);
				$('#prevstep').live('click',prevStep);
				
				function startTour(){
					$('#activatetour').remove();
					$('#endtour,#restarttour').show();
					if(!autoplay && total_steps > 1)
						$('#nextstep').show();
					showOverlay();
					nextStep();
				}
				
				function nextStep(){
					if(!autoplay){
						if(step > 0)
							$('#prevstep').show();
						else
							$('#prevstep').hide();
						if(step == total_steps-1)
							$('#nextstep').hide();
						else
							$('#nextstep').show();	
					}	
					if(step >= total_steps){
						//if last step then end tour
						endTour();
						return false;
					}
					++step;
					showTooltip();
				}
				
				function prevStep(){
					if(!autoplay){
						if(step > 2)
							$('#prevstep').show();
						else
							$('#prevstep').hide();
						if(step == total_steps)
							$('#nextstep').show();
					}		
					if(step <= 1)
						return false;
					--step;
					showTooltip();
				}
				
				function endTour(){
					step = 0;
					if(autoplay) clearTimeout(showtime);
					removeTooltip();
					hideControls();
					hideOverlay();
				}
				
				function restartTour(){
					step = 0;
					if(autoplay) clearTimeout(showtime);
					nextStep();
				}
				
				function showTooltip(){
					//remove current tooltip
					removeTooltip();
					
					var step_config		= config[step-1];
					var $elem			= $('.' + step_config.name);
					
					if(autoplay)
						showtime	= setTimeout(nextStep,step_config.time);
					
					var bgcolor 		= step_config.bgcolor;
					var color	 		= step_config.color;
					
					var $tooltip		= $('<div>',{
						id			: 'tour_tooltip',
						className 	: 'tooltip',
						html		: '<p>'+step_config.text+'</p><span class="tooltip_arrow"></span>'
					}).css({
						'display'			: 'none',
						'background-color'	: bgcolor,
						'color'				: color
					});
					
					//position the tooltip correctly:
					
					//the css properties the tooltip should have
					var properties		= {};
					
					var tip_position 	= step_config.position;
					
					//append the tooltip but hide it
					$('BODY').prepend($tooltip);
					
					//get some info of the element
					var e_w				= $elem.outerWidth();
					var e_h				= $elem.outerHeight();
					var e_l				= $elem.offset().left;
					var e_t				= $elem.offset().top;
					
					
					switch(tip_position){
						case 'TL'	:
							properties = {
								'left'	: e_l,
								'top'	: e_t + e_h + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_TL');
							break;
						case 'TR'	:
							properties = {
								'left'	: e_l + e_w - $tooltip.width() + 'px',
								'top'	: e_t + e_h + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_TR');
							break;
						case 'BL'	:
							properties = {
								'left'	: e_l + 'px',
								'top'	: e_t - $tooltip.height() + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_BL');
							break;
						case 'BR'	:
							properties = {
								'left'	: e_l + e_w - $tooltip.width() + 'px',
								'top'	: e_t - $tooltip.height() + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_BR');
							break;
						case 'LT'	:
							properties = {
								'left'	: e_l + e_w + 'px',
								'top'	: e_t + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_LT');
							break;
						case 'LB'	:
							properties = {
								'left'	: e_l + e_w + 'px',
								'top'	: e_t + e_h - $tooltip.height() + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_LB');
							break;
						case 'RT'	:
							properties = {
								'left'	: e_l - $tooltip.width() + 'px',
								'top'	: e_t + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_RT');
							break;
						case 'RB'	:
							properties = {
								'left'	: e_l - $tooltip.width() + 'px',
								'top'	: e_t + e_h - $tooltip.height() + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_RB');
							break;
						case 'T'	:
							properties = {
								'left'	: e_l + e_w/2 - $tooltip.width()/2 + 'px',
								'top'	: e_t + e_h + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_T');
							break;
						case 'R'	:
							properties = {
								'left'	: e_l - $tooltip.width() + 'px',
								'top'	: e_t + e_h/2 - $tooltip.height()/2 + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_R');
							break;
						case 'B'	:
							properties = {
								'left'	: e_l + e_w/2 - $tooltip.width()/2 + 'px',
								'top'	: e_t - $tooltip.height() + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_B');
							break;
						case 'L'	:
							properties = {
								'left'	: e_l + e_w  + 'px',
								'top'	: e_t + e_h/2 - $tooltip.height()/2 + 'px'
							};
							$tooltip.find('span.tooltip_arrow').addClass('tooltip_arrow_L');
							break;
					}
					
					
					/*
					if the element is not in the viewport
					we scroll to it before displaying the tooltip
					 */
					var w_t	= $(window).scrollTop();
					var w_b = $(window).scrollTop() + $(window).height();
					//get the boundaries of the element + tooltip
					var b_t = parseFloat(properties.top,10);
					
					if(e_t < b_t)
						b_t = e_t;
					
					var b_b = parseFloat(properties.top,10) + $tooltip.height();
					if((e_t + e_h) > b_b)
						b_b = e_t + e_h;
						
					
					if((b_t < w_t || b_t > w_b) || (b_b < w_t || b_b > w_b)){
						$('html, body').stop()
						.animate({scrollTop: b_t}, 500, 'easeInOutExpo', function(){
							//need to reset the timeout because of the animation delay
							if(autoplay){
								clearTimeout(showtime);
								showtime = setTimeout(nextStep,step_config.time);
							}
							//show the new tooltip
							$tooltip.css(properties).show();
						});
					}
					else
					//show the new tooltip
						$tooltip.css(properties).show();
				}
				
				function removeTooltip(){
					$('#tour_tooltip').remove();
				}
				
				function showControls(){
					/*
					we can restart or stop the tour,
					and also navigate through the steps
					 */
					var $tourcontrols  = '<div id="tourcontrols" class="tourcontrols">';
					$tourcontrols += '<p>DEMO TOUR</p>';
					$tourcontrols += '<span class="button" id="activatetour">Iniciar el Tour</span>';
						if(!autoplay){
							$tourcontrols += '<div class="nav"><span class="button" id="prevstep" style="display:none;">< Atras</span>';
							$tourcontrols += '<span class="button" id="nextstep" style="display:none;">Siguiente ></span></div>';
						}
						$tourcontrols += '<a id="restarttour" style="display:none;">Reiniciar el Tour</span>';
						$tourcontrols += '<a id="endtour" style="display:none;">Finalizar el Tour</a>';
						$tourcontrols += '<span class="close" id="canceltour"></span>';
					$tourcontrols += '</div>';
					
					$('BODY').prepend($tourcontrols);
					$('#tourcontrols').animate({'right':'30px'},500);
				}
				
				function hideControls(){
					$('#tourcontrols').remove();
				}
				
				function showOverlay(){
					var $overlay	= '<div id="tour_overlay" class="overlay"></div>';
					$('BODY').prepend($overlay);
				}
				
				function hideOverlay(){
					$('#tour_overlay').remove();
				}
				
			});
        </script>

  
</body>
</html>
