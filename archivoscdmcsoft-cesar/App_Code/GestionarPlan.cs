using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de GestionarPlan
/// </summary>
public class GestionarPlan
{
	public GestionarPlan()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public String GuardarPlan(double cplan,String fecha,String acta,String regional,
        String centro,int tipoplan,String programa,String codigoprograma,String codigoficha, 
        String etapa,String nombreusu,String cedusu,int fase, String proyusu, int codproyusu, 
        String aprobacion,String actividad,String observaciones,String instructor,String documentoinstr)
    {
        string mensaje = "Guardado Correctamente";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into tbl_plan_de_mejoramiento values("+cplan+",'"+cedusu+"',"+tipoplan+",'"+acta+"','"+fecha+"','"+regional+"','"+centro+"','"+programa+"','"+codigoprograma+"','"+codigoficha+"','"+etapa+"','"+nombreusu+"',"+fase+",'"+proyusu+"',"+codproyusu+",'"+aprobacion+"','"+actividad+"','"+observaciones+"','"+instructor+"','"+documentoinstr+"')";
            var comando = new SqlCommand(insertar, conex);
            conex.Open();
            int rstl = comando.ExecuteNonQuery();
            if (rstl == 0)
            {
                mensaje = "No Guardado";
                conex.Close();
            }

        }
        catch (Exception e)
        {
            mensaje = e.Message + "UPSSSS! Algo fallo al guardar Competencia";
        }
        return mensaje;
    }
}