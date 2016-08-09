using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    usuario usu = new usuario();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_session_Click(object sender, EventArgs e)
    {
        //capturar datos
        String documentodeidentidad = txt_identidad.Text;
        String contrasena = txt_contrasena.Text;

        //validar campos
        if (documentodeidentidad == "" && contrasena == "")
        {
            Response.Write("<script>alert('Ingrese datos')</script>");
        }
        else if (documentodeidentidad == "" || contrasena == "")
        {
            Response.Write("<script>alert('Ingrese usuario o Contraseña')</script>");
        }
        else {
            DataSet dataset = new DataSet();
            string mensaje = usu.validar_acceso_inyeccion(documentodeidentidad, contrasena);
            if (mensaje != "Exito")
            {
                Response.Write("<script>alert('no se pudo entrar')</script>");
            }
            if (mensaje == "Exito")
            {
                // Response.Write("<script>alert('login exitoso')</script>");
                Response.Redirect("Registrar_usu.aspx");
            }

        }
    }
    }
