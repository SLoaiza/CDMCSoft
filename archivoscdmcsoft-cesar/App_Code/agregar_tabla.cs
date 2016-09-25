using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de agregar_tabla
/// </summary>
public class agregar_tabla
{
	public agregar_tabla()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public String agregartabla(double cplan){
        string mensaje = "Guardado Correctamente";
        string act0 = "sustentacion de conocimiento";
        string act1 = "sustentacion de desempeño";
        string act2 = "presentacion del producto";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into tbl_act_a_desarrollar (act_nombre,plan_cod) values('" + act0 + "'," + cplan + "),('" + act1 + "'," + cplan + "),('" + act2 + "'," + cplan + ")";
            var comando = new SqlCommand(insertar, conex);
            conex.Open();
            int rstl = comando.ExecuteNonQuery();
            if (rstl == 0)
            {
                mensaje = "No Guardado";
                conex.Close();
            }
           
        }
        catch (Exception e)
        {
            mensaje = e.Message + "UPSSSS! Algo fallo al guardar Competencia";
        }
        return mensaje;
    }
}