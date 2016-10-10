using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class GuardarTipodePlan : System.Web.UI.Page
{
    GestionarTipodeplan plan = new GestionarTipodeplan();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String nombre = TextBox2.Text;

        string datos = plan.Guardartipoplan(nombre);
        if (datos == "Guardado Correctamente")
        {
            Response.Write("<script>alert('Guardado con Exito');</script>");
            Response.Redirect("GuardarTipodePlan.aspx");
        }
        else
        {
            Response.Write(datos);
            Response.Write("<script>alert('Error Al Guardar');</script>");
        }
    }
}