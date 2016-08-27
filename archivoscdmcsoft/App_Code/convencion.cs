using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Descripción breve de convencion
/// </summary>
public class convencion
{

    public string guardar_convencion(String conven_nombre)
    {
        string rdo = "1";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into convencion values('" + conven_nombre + "')";
            var comando = new SqlCommand(insertar, conex);
            conex.Open();
            int resultado = comando.ExecuteNonQuery();
            if (resultado == 0)
            {
                rdo = "0";
                conex.Close();
            }
        }
        catch (Exception e)
        {
            rdo = e.Message;
        }
        return rdo;
    }
    public convencion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}