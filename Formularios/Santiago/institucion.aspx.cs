using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    institucion clase = new institucion();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String instnom = TextBox2.Text;
        String ciucod = DropDownList1.SelectedValue.ToString();


        string datos = clase.guardar_institucion(instnom, ciucod);
        if (datos == "1")
        {
            Response.Write("<script>alert('Guardó con exito')</script>");
        }
        else {
            Response.Write("<script>alert('No guardó')</script>");
        }
        Server.Transfer("institucionview.aspx", true);
    }
}