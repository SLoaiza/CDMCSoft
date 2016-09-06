using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de desercions
/// </summary>
public class desercions
{
    public int guardar_desercion(String usu_cod, String centro_cod, String deser_dia_ini_forma, String deser_mes_ini_forma, String deser_ano_ini_forma, String deser_dia, String deser_mes, String deser_ano, String deser_observa, String causa_cod, String hora_cod)
    {
        int rdo = 1;
        try
        {
            
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into desercion values('" + usu_cod + "','" + centro_cod + "','" + deser_dia_ini_forma + "', '" + deser_mes_ini_forma + "','" + deser_ano_ini_forma + "', '" + deser_dia + "', '" + deser_mes + "', '" + deser_ano + "', '" + deser_observa + "', '" + causa_cod + "', '" + hora_cod + "')";
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
    public desercions()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}