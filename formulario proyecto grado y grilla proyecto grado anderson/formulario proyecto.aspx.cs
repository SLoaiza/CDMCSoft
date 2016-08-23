using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class formulario_proyecto : System.Web.UI.Page
{
    proyectog clase = new proyectog();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GUARDAR_Click(object sender, EventArgs e)
    {
            String proyec_cod = TextBox1.Text;
            String proyec_nom = TextBox2.Text;



            int datos = clase.guardar_proyectog(proyec_cod, proyec_nom);
            if (datos == 1)
            {
                Response.Write("<script>alert('Guardo con exito')</script>");
            }
            else {
                Response.Write("<script>alert('error')</script>");
            }
        }
}