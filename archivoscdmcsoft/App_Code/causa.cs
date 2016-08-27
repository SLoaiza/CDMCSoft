using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de causa
/// </summary>
public class causa
{
    public int guardar_causa(string causa_cual)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into causa values('" + causa_cual + "')";
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
    public causa()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}