using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de RegisUsuario
/// </summary>
public class RegisUsuario
{
    public String guardar_Usuario(String codUsu,String tipoDocument,int numDocument, String nombre, String apellido, String fecha, String direccion, int departamento,int ciudad,String telefono, String estado,int regional,int centro,int ficha, int rol)
    {
        String rdo = "1";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            var insertar = "insert into usuario values('" + codUsu + "'," + ficha + "," + ciudad + "," + departamento + "," + rol + ",'" + nombre + "','" + apellido + "','" + direccion + "','" + telefono + "','" + estado + "'," + regional + "," + centro + ",'" + tipoDocument + "','" + fecha + "'," + numDocument + ",'" + numDocument + "','" + numDocument + "')";
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
    public RegisUsuario()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}