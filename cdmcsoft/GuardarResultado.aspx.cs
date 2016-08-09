using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class GuardarResultado : System.Web.UI.Page
{
    GestionarResultado Resultado = new GestionarResultado();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String descripcion = TextArea1.InnerText;

        string datos = Resultado.GuardarResultado(descripcion);
        if (datos == "Guardado Correctamente")
        {
            Response.Write("<script>alert('Guardado con Exito');</script>");
        }
        else
        {
            Response.Write(datos);
            Response.Write("<script>alert('Error Al Guardar');</script>");
        }
    }
}