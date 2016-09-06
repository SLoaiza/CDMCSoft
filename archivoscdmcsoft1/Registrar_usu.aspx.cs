using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registrar_usu : System.Web.UI.Page
{
    RegisUsuario claseUsuario = new RegisUsuario();
    usuario consultar_cod = new usuario();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String tipoDocument = DropDownList1.SelectedItem.ToString();
            int numDocument =Convert.ToInt32(txt_identidad.Text);
            String name = txt_name.Text;
            String apellido = TextBox1.Text;
            String fecha = TextBox6.Text;
            String direccion = TextBox3.Text;
            int departamento = Convert.ToInt32(DropDownList2.SelectedValue.ToString());
            int ciudad = Convert.ToInt32(DropDownList3.SelectedValue.ToString());
            String telefono = TextBox4.Text;
            String estado = TextBox5.Text;
            int regional = Convert.ToInt32(DropDownList4.SelectedValue.ToString());
            int centro = Convert.ToInt32(DropDownList5.SelectedValue.ToString());
            int ficha = Convert.ToInt32(DropDownList6.SelectedValue.ToString());
            int rol=1;//dato quemado
            String codUsu = "2";//dato quemado

        String datos = claseUsuario.guardar_Usuario(codUsu,tipoDocument, numDocument, name, apellido, fecha, direccion, departamento, ciudad, telefono, estado, regional, centro, ficha, rol);

            if (datos == "1")
            {
                Response.Write("<script>alert('Muy bien')</script>");
            }
            else {
                Response.Write("<script>alert('error')</script>");
            }
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

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        string codusu = TextBox7.Text;
        string codigousu= consultar_cod.Consultar_CodUsuario(codusu);

        if (codigousu == "")
        {
            DropDownList1.Enabled = true;
            txt_identidad.Enabled = true;
            txt_name.Enabled = true;
            TextBox1.Enabled = true;
            DropDownList7.Enabled = true;
            TextBox6.Enabled = true;
            TextBox3.Enabled = true;
            DropDownList2.Enabled = true;
            DropDownList3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            DropDownList4.Enabled = true;
            DropDownList5.Enabled = true;
            DropDownList6.Enabled = true;
            TextBox7.Enabled = false;
        }
        else
        {
            Response.Write("<script>alert('si encontro')</script>");
        }
    }
}