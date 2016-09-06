using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gestion_egresado : System.Web.UI.Page
{
    egresado egr = new egresado();
    string etapa;
    protected void Button1_Click(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox6.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            Response.Write("<script>alert('Por favor ingrese codigo de usuario')</script>");
            return;
        }

        string usu_cod = TextBox2.Text;
        string egre_alt_etapa_prod = DropDownList1.SelectedItem.ToString();

        string egre_otra_cual_etapa_prod = TextBox3.Text;
        //capturar los datos de las listas desplegable"quedo vinculado".
        string egre_vinc_fin_etapa_prac = DropDownList2.SelectedValue.ToString();
        if (egre_vinc_fin_etapa_prac == "Seleccione...")
        {
            Response.Write("<script>alert¿'Por favor escoja una opción.'?</script>");
            return;
        }
        //capturar los datos de las listas desplegable"esta vinculado".
        string egre_vinc_act = DropDownList3.SelectedValue.ToString();
        if (egre_vinc_act == "Seleccione...")
        {
            Response.Write("<script>alert¿'Por favor escoja una opción.'?</script>");
            return;
        }
        string emp_nit = TextBox4.Text;
        string egre_cargo = TextBox5.Text;
        string egre_fech_vinc = TextBox6.Text;
        //capturar los datos de las listas desplegable"trabajaestudio".
        string egre_perti_func = DropDownList4.SelectedValue.ToString();
        if (egre_perti_func == "Seleccione...")
        {   Response.Write("<script>alert('Por favor escoja una opción.'?</script>");
            return;
        }

      

        string dato = egr.guardar_egresado(usu_cod, egre_alt_etapa_prod, egre_otra_cual_etapa_prod, egre_vinc_fin_etapa_prac, egre_vinc_act, emp_nit, egre_cargo, egre_fech_vinc, egre_perti_func);
        if (dato == "1")
        {
            Response.Write("<script>alert('Muy bien')</script>");

            TextBox2.Text = "";            
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;

        }
        else
        {
            Response.Write("<script>alert('error')</script>");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        etapa = DropDownList1.SelectedItem.ToString();

        if (etapa == "Contrato de aprendizaje")
        {
            TextBox3.Enabled = false;
            TextBox3.Text="";
        }

        if (etapa == "Vinculo laboral")
        {
            TextBox3.Enabled = false;
            TextBox3.Text = "";
        }

        if (etapa == "Proyecto educativo")
        {
            TextBox3.Enabled = false;
            TextBox3.Text = "";
        }

        if (etapa == "Seleccione...")
        {
            TextBox3.Enabled = true;
            if (TextBox3.Text== "")
            {
                Response.Write("<script>alert('Por favor escriba los datos.')</script>");
                return;
            }
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}