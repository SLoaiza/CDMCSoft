using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class GuardarCiudad : System.Web.UI.Page
{
    GestionarCiudad Ciudad = new GestionarCiudad();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String codigo = TextBox1.Text;
        String descripcion = TextBox2.Text;
        String departamento = DropDownList1.SelectedItem.Value;

        string datos = Ciudad.Guardarciudad(codigo, descripcion, departamento);
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