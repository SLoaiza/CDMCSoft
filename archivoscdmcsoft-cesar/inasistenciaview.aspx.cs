using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    inasistencias clase = new inasistencias();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["usuario"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}
    }
   
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        String usu_cod = Textbox2.Value;
        String inasis_num_horas = Textbox3.Value;
        String inasis_fecha = Textbox3.Value;
        String inasis_descrip = Textbox5.Value;
        String ficha_cod = DropDownList2.SelectedValue;
        String usu_cod_aux = DropDownList1.SelectedValue;


        string datos = clase.guardar_inasistencia(usu_cod, inasis_num_horas, inasis_fecha, inasis_descrip, ficha_cod, usu_cod_aux);
        if (datos == "1")
        {
            Response.Redirect("inasistenciaview.aspx");
        }
        else {
            Response.Write("<script>alert('No guardó')</script>");
        }
        Server.Transfer("inasistenciaview.aspx", true);
    }
}