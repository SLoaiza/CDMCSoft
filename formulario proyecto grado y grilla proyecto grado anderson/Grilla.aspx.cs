using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Grilla : System.Web.UI.Page
{
    proyectogra claseproyectogra = new proyectogra();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //int proyec_cod =Convert.ToInt32(TextBox1.Text);

        //int datos = claseproyectogra.consultar_proyectogra(proyec_cod);

        //if (datos == 1) 
        //{
        //    Response.Write("<script>alert('exito')</script>");
        //}
        //else {
        //    Response.Write("<script>alert('error')</script>");
        //}
    }
}