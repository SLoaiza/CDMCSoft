using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for horario
/// </summary>
public class horario
{
    public int guardar_horario(string hora_rango_dias)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into horario values('" + hora_rango_dias + "')";
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
    public horario()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}