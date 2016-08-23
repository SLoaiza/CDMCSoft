using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de empresag
/// </summary>
public class proyectogra
{
    public int consultar_proyectogra(int proyec_cod)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "select * from tbl_proyec_grado where '" + proyec_cod + "'";
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
    public proyectogra()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}
