using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de consultar_programa
/// </summary>
public class consultar_programa
{
	public consultar_programa()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public String consultadeprograma(String nombre)
    {
        string dato="";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var buscar = "select prog_cod from programa where prog_nom='"+nombre+"'";
            var comando = new SqlCommand(buscar, conex);
            conex.Open();
            SqlDataReader rstl = comando.ExecuteReader();
            if (rstl.Read())
            {
                dato=rstl.GetString(0);
            }

        }
        catch (Exception e)
        {
            dato = e.Message + "UPSSSS! Algo fallo al guardar la ciudad";
        }
        return dato;
    }
}