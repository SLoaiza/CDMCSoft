using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de inasistencia
/// </summary>
public class inasistencias
{
    public string guardar_inasistencia(String usu_cod, String inasis_num_horas, String inasis_fecha, String inasis_descrip, String ficha_cod, String usu_cod_aux)
    {
        string rdo = "1";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into inasistencia values('" + usu_cod + "','" + inasis_num_horas + "','" + inasis_fecha + "','" + inasis_descrip + "','" + ficha_cod + "','" + usu_cod_aux + "')";
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
    public inasistencias()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}