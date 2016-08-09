using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearPlan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFecha.Enabled = false;
        txtFecha.Text = DateTime.Now.ToString("dd/MM/yyyy");
    }
    protected void continuar_Click(object sender, EventArgs e)
    {
        String fecha_act = DateTime.Now.ToString("yyMMdd");
        String hora_act = DateTime.Now.ToString("hhmmss");
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        String nombre = DropDownList3.SelectedItem.ToString();
        consultar_programa cp = new consultar_programa();
        string dato = cp.consultadeprograma(nombre);
        codigoPrograma.Text=dato;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String documento = TextBox3.Text;
        consultarusuario cu = new consultarusuario();
        string datos = cu.consultadeusuario(documento);
    }
}