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
public class proyectog
{
    public int guardar_proyectog(String proyec_cod, String proyec_nom)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into tbl_proyec_grado values('" + proyec_cod + "','" + proyec_nom + "',)";
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
    public proyectog()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}

    /// <summary>
    /// Descripción breve de empresag
    /// </summary>
    public class proyecto
    {
        public int guardar_proyectog(String proyec_cod, String proyec_nom)
        {
            int rdo = 1;
            try
            {
                var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
                var insertar = "insert into tbl_proyec_grado values('" + proyec_cod + "','" + proyec_nom + "',)";
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
        public proyecto()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }
    }

