using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de inasisconven
/// </summary>
public class inasisconven
{
    public int guardarinacon(int conven_cod, int inasis_cod)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into inasis_x_convencion values('" + conven_cod + "','" + inasis_cod +"')";
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
    public inasisconven()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}