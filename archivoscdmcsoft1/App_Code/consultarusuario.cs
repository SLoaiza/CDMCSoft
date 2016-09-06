using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de consultarusuario
/// </summary>
public class consultarusuario
{
	public consultarusuario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public String consultadeusuario(String ced)
    {
        string dato = "";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var buscar = "select * from usuario where usu_cod='" + ced + "'";
            var comando = new SqlCommand(buscar, conex);
            conex.Open();
            SqlDataReader rstl = comando.ExecuteReader();
            if (rstl.Read())
            {
                dato = rstl.GetString(0);
            }

        }
        catch (Exception e)
        {
            dato = e.Message + "UPSSSS! Algo fallo al guardar la ciudad";
        }
        return dato;
    }
}