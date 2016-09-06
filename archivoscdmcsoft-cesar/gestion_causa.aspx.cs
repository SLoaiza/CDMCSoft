using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gestion_causa : System.Web.UI.Page
{
    causa cau = new causa();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string causa_cual= TextBox1.Text;

        int dato = cau.guardar_causa(causa_cual);
        if (dato == 1)
        {
            Response.Write("<script>alert('Muy bien')</script>");
            TextBox1.Text = "";
        }
        else
        {
            Response.Write("<script>alert('error')</script>");
        }
    }
}