using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class certificacion : System.Web.UI.Page
{
    certificacions clase = new certificacions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String codusu = DropDownList1.SelectedValue.ToString();
        String codinst = DropDownList2.SelectedValue.ToString();
        String nose = TextBox1.Text;
        String lugarcert = TextBox2.Text;
        String fechaentre = TextBox3.Text;

        int datos = clase.guardar_certificacion(codusu, codinst, nose, lugarcert, fechaentre);
        if (datos == 1)
        {
            Response.Write("<script>alert('Muy bien')</script>");
        }
        else
        {
            Response.Write("<script>alert('error')</script>");
        }

    }
}