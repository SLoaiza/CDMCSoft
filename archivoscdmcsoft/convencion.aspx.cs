using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    convencion clase = new convencion();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String nomconv = TextBox2.Text;
        

        string datos = clase.guardar_convencion(nomconv);
        if (datos == "1")
        {
            Response.Write("<script>alert('Guardó con exito')</script>");
        }
        else {
            Response.Write("<script>alert('No guardó')</script>");
        }
        Server.Transfer("convencionview.aspx", true);
    }
}