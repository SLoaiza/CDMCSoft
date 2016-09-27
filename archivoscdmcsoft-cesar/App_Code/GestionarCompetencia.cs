using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de GestionarCompetencia
/// </summary>
public class GestionarCompetencia
{
	public GestionarCompetencia()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public String GuardarCompetencia(String descripcion, double cplan)
    {
        string mensaje = "Guardado Correctamente";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into tbl_competencia values(" + cplan + ",'" + descripcion + "')";
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