using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de regional
/// </summary>
public class regionals
{
    public int guardar_regional(String regional_cod, String regional_nombre, String regional_nom_direct)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into regional values('" + regional_cod + "','" + regional_nombre + "', '" + regional_nom_direct + "')";
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
    public regionals()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}