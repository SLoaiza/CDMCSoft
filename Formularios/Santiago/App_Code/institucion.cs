using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de institucion
/// </summary>
public class institucion
{
    public string guardar_institucion(String inst_nombre, String cui_cod)
    {
        string rdo = "1";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into institucion values('" + inst_nombre + "','" + cui_cod + "')";
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
    public institucion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}