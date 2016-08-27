using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de centros
/// </summary>
public class centros
{
    public int guardar_centro(String centro_cod, String regional_cod, String centro_nombre, String centro_subdire, String centro_complejo)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into centro values('" + centro_cod + "','" + regional_cod + "','" + centro_nombre + "', '" + centro_subdire + "','" + centro_complejo + "')";
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
    public centros()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}