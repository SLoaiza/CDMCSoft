using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class actualizar_permirol : System.Web.UI.Page
{
    permiso_rol objeto = new permiso_rol();
    string seleccionado;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private void BindData()
    {
        int cod_rol;
        cod_rol = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
        GridView1.DataSource = permiso_rol.ObtenerDatosGrilla(cod_rol);
        GridView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        int consecutivo = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);
        DataRow row = objeto.ObtenerFila(consecutivo);

        BindData();

        DropDownList combo = GridView1.Rows[e.NewEditIndex].FindControl("DropDownList2") as DropDownList;

        if (combo != null)
        {
            combo.DataSource = objeto.GetAllRoles();
            combo.DataTextField = "nomrol";
            combo.DataValueField = "codrol";
            combo.DataBind();
        }
        combo.SelectedValue = Convert.ToString(row["cod_rol"]);


        DropDownList combo1 = GridView1.Rows[e.NewEditIndex].FindControl("DropDownList3") as DropDownList;
        if (combo1 != null)
        {
            combo1.DataSource = objeto.GetAllPermisos();
            combo1.DataTextField = "nom_permiso";
            combo1.DataValueField = "id_permiso";
            combo1.DataBind();
        }
        combo.SelectedValue = Convert.ToString(row["id_permiso"]);


        DropDownList combo2 = GridView1.Rows[e.NewEditIndex].FindControl("DropDownList4") as DropDownList;
        if (combo2 != null)
        {
            combo2.DataSource = objeto.GetAllModulos();
            combo2.DataTextField = "nom_modulo";
            combo2.DataValueField = "id_modulo";
            combo2.DataBind();
        }
        combo.SelectedValue = Convert.ToString(row["id_modulo"]);

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        

        int consecutivo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        //COMENTADO POR ELCESAR PPOR QUE ESTA INVISIBLE
        //DropDownList combo = GridView1.Rows[e.RowIndex].FindControl("DropDownList2") as DropDownList;
        //int cod_rol = Convert.ToInt32(combo.SelectedValue);

        //SE CAPTURA EL DATO SELECCIONADO EN LA LISTA QUE ESTA ARRIBA DE LA GRILLA. 
        int cod_rol;
        cod_rol = Convert.ToInt32(DropDownList1.SelectedValue.ToString());

        DropDownList combo1 = GridView1.Rows[e.RowIndex].FindControl("DropDownList3") as DropDownList;
        int id_permiso = Convert.ToInt32(combo1.SelectedValue);

        DropDownList combo2 = GridView1.Rows[e.RowIndex].FindControl("DropDownList4") as DropDownList;
        int id_modulo = Convert.ToInt32(combo2.SelectedValue);
        
        CheckBox cb = GridView1.Rows[e.RowIndex].FindControl("CheckBox1") as CheckBox;
        if (cb != null)
        {
            if (cb.Checked)
            {
                seleccionado = "Si";
            }
            else
            {
                seleccionado = "No";
            }              
        }

        //TextBox text2 = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
        //string seleccionado = text2.Text;

        objeto.UpdatePermisoRol(consecutivo, cod_rol, id_permiso, seleccionado, id_modulo);
        
        GridView1.EditIndex = -1;

        BindData();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            BindData();
        //}

    }
}