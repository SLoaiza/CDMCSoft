using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gestion_horario : System.Web.UI.Page
{
    horario hor = new horario();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string hora_rango_dias = TextBox1.Text;

        int dato = hor.guardar_horario(hora_rango_dias);
        if (dato == 1)
        {
            Response.Write("<script>alert('Muy bien')</script>");
            TextBox1.Text = "";
        }
        else
        {
            Response.Write("<script>alert('error')</script>");
        }
    }
}