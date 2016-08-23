using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de certificacions
/// </summary>
public class certificacions
{
    public int guardar_certificacion(String usu_cod, String inst_cod, String no_se, String certi_lugar, String certi_fech_entreg)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into certificacion values('" + usu_cod + "','" + inst_cod + "','" + no_se + "', '" + certi_lugar + "','" + certi_fech_entreg + "')";
            var comando = new SqlCommand(insertar, conex);
            conex.Open();
            int resultado = comando.ExecuteNonQuery();
            if (resultado == 0)
            {
                rdo = 0;
                conex.Close();
            }
        }
        catch (Exception e)
        {

        }
        return rdo;
    }
	public certificacions()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}