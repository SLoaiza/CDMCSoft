using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class desercion : System.Web.UI.Page
{
    desercions clase = new desercions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String codusu = DropDownList1.SelectedValue.ToString();
        String codcent = DropDownList2.SelectedValue.ToString();
        String diainifor = TextBox1.Text;
        String mesinifor = TextBox2.Text;
        String anoinifor = TextBox3.Text;
        String diades = TextBox4.Text;
        String mesdes = TextBox5.Text;
        String anodes = TextBox6.Text;
        String obserdes = TextBox3.Text;
        String codcausa = DropDownList3.SelectedValue.ToString();
        String codhora = DropDownList4.SelectedValue.ToString();
        int datos = clase.guardar_desercion(codusu, codcent, diainifor, mesinifor, anoinifor, diades, mesdes, anodes, obserdes, codcausa, codhora);
        if (datos == 1)
        {
            Response.Write("<script>alert('Muy bien')</script>");
        }
        else {
            Response.Write("<script>alert('error')</script>");
        }
    }
}