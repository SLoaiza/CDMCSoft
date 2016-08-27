using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class centro : System.Web.UI.Page
{
    centros clase = new centros();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String codcent = TextBox1.Text;
        String codreg = DropDownList1.SelectedValue.ToString();
        String centnom = TextBox2.Text;
        String subdircen = TextBox3.Text;
        String compcen = TextBox4.Text;
        
        int datos = clase.guardar_centro(codcent, codreg, centnom, subdircen, compcen);
        if (datos == 1)
        {
            Response.Write("<script>alert('Muy bien')</script>");
        }
        else {
            Response.Write("<script>alert('error')</script>");
        }
    }
}