using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class regional : System.Web.UI.Page
{
    regionals clase = new regionals();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String codreg = TextBox1.Text;
        String nomreg = TextBox2.Text;
        String nomdirreg = TextBox3.Text;

        int datos = clase.guardar_regional(codreg, nomreg, nomdirreg);
        if (datos == 1)
        {
            Response.Write("<script>alert('Muy bien')</script>");
        }
        else {
            Response.Write("<script>alert('error')</script>");
        }
    }
}