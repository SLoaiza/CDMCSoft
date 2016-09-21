using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearPlan : System.Web.UI.Page
// hora String hora_act = DateTime.Now.ToString("hhmmss");
{
    agregar_tabla ag = new agregar_tabla();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFechaplan.Enabled = false;
        txtCodigoplan.Enabled = false;
        txtFechaplan.Text = DateTime.Now.ToString("dd/MM/yyyy");
        txtCodigoplan.Text = DateTime.Now.ToString("yyMdHmsf");
        //se insertan tres filas por defecto en la tabla: tbl_act_a_desarrollar  

    }
    protected void continuar_Click(object sender, EventArgs e)
    {
        double cplan = Convert.ToDouble(txtCodigoplan.Text);
        String fecha = txtFechaplan.Text;
        String acta = actanum.Text;
        String regional = dpRegional.SelectedItem.ToString();
        String centro = dpCentro.SelectedItem.ToString();
        int tipoplan = Convert.ToInt32(dpTipoplan.SelectedValue.ToString());
        String programa = dpPrograma.SelectedItem.ToString();
        String codigoprograma = codigoPrograma.Text;
        String codigoficha = NfichaPlan.Text;
        String etapa = dpEtapa.SelectedItem.ToString();
        String nombreusu = txtNombresplan.Text;
        String cedusu = txtDocumentoPlanusu.Text;
        int fase = Convert.ToInt32(txtFaseplan.Text);
        String proyusu = txtproyPlan.Text;
        int codproyusu = Convert.ToInt32(codproyplan.Text);
        String aprobacion = dpjuicioPlan.SelectedItem.ToString();
        String actividad = taActv_des.InnerText;
        String observaciones = taObserv.InnerText;
        String instructor = txtInstructorPlan.Text;
        String documentoinstr = txtDInstructorPlan.Text;
        
        GestionarPlan Gp = new GestionarPlan();
        string guardado1 = Gp.GuardarPlan(cplan, fecha, acta, regional, centro, tipoplan, programa, codigoprograma,codigoficha, etapa, nombreusu, cedusu, fase, proyusu, codproyusu, aprobacion,actividad,observaciones,instructor,documentoinstr);
        if (guardado1 == "Guardado Correctamente")
        {
            Response.Write("<script>alert('Guardado con Exito');</script>");
        }
        else
        {
            Response.Write(guardado1);
            Response.Write("<script>alert('No se pudo guardar Guardado');</script>");
        }

        String resultado = taResultadoPlan.InnerHtml;
        GestionarResultado Gr = new GestionarResultado();
        Gr.GuardarResultado(resultado, cplan);

        String competencia = taCompetenciaPlan.InnerHtml;
        GestionarCompetencia Gc = new GestionarCompetencia();
        Gc.GuardarCompetencia(competencia, cplan);

        ag.agregartabla(cplan);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        String nombre = dpPrograma.SelectedItem.ToString();
        consultar_programa cp = new consultar_programa();
        string dato = cp.consultadeprograma(nombre);
        codigoPrograma.Text=dato;
    }
    
}