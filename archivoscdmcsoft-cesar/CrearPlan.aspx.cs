using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearPlan : System.Web.UI.Page
// hora String hora_act = DateTime.Now.ToString("hhmmss");
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFechaplan.Enabled = false;
        txtFechaplan.Text = DateTime.Now.ToString("dd/MM/yyyy");


        //se insertan tres filas por defecto en la tabla: tbl_act_a_desarrpollar


    }
    protected void continuar_Click(object sender, EventArgs e)
    {
        String fecha = txtFechaplan.Text;
        String acta = actanum.Text;
        String regional = dpRegional.SelectedItem.ToString();
        String centro = dpCentro.SelectedItem.ToString();
        String tipoplan = dpTipoplan.SelectedItem.ToString();
        String programa = dpPrograma.SelectedItem.ToString();
        String codigoprograma = NfichaPlan.Text;
        String etapa = dpEtapa.SelectedItem.ToString();
        String nombreusu = txtNombresplan.Text;
        String cedusu = txtDocumentoPlanusu.Text;
        String fase = txtFaseplan.Text;
        String proyusu = txtproyPlan.Text;
        String codproyusu = codproyplan.Text;
        String aprobacion = dpjuicioPlan.SelectedItem.ToString();

        //OJO: VERIFICAR
        //GestionarPlan Gp = new GestionarPlan();

        String resultado = taResultadoPlan.InnerHtml;
        GestionarResultado Gr = new GestionarResultado();

        String competencia = taCompetenciaPlan.InnerHtml;
        GestionarCompetencia Gc = new GestionarCompetencia();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        String nombre = dpPrograma.SelectedItem.ToString();
        consultar_programa cp = new consultar_programa();
        string dato = cp.consultadeprograma(nombre);
        codigoPrograma.Text=dato;
    }
    
}