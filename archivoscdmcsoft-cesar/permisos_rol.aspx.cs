using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data; //libreria necesaria para trabajar con bd
using System.Data.SqlClient;
using System.Configuration;

public partial class permisos_rol : System.Web.UI.Page
{

    permiso_rol objeto = new permiso_rol();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
              
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string seleccion;
        //se captura el dato que esta en la lista desplegable
        int cod_rol;
        cod_rol = Convert.ToInt32(DropDownList1.SelectedValue.ToString());

        DataSet dataset = new DataSet();//localizar la bd  
      
        //SE RECORREN LAS FILAS DE LA GRILLA
        foreach (GridViewRow GVRow in GridView1.Rows)
        {
                      
            int id_permiso = Convert.ToInt32(GVRow.Cells[1].Text);

            //DropDownList dd = GVRow.FindControl("DropDownList2") as DropDownList;
            //int id_modulo = Convert.ToInt32(dd.SelectedValue);

            CheckBox cb = GVRow.FindControl("CheckBox1") as CheckBox; 
            if (cb != null && cb.Checked)
            {
                if (cb.Checked){
                    seleccion = "Activo";
                }else{ 
                    seleccion = "Inactivo";
                }              
                
                //se van grabando los registros en la tabla: permisos_x_rol
                Label1.Text = objeto.grabar_permisos_x_rol(cod_rol, id_permiso, seleccion);
                Label1.Visible = true;
                Response.Redirect("permisos_rol.aspx");
            }
        }

    }






    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}