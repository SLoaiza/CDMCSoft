﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de GestionarSancion
/// </summary>
public class GestionarSancion
{
	public GestionarSancion()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public String GuardarSancion(String nombre, String descripcion)
    {
        string mensaje = "Guardado Correctamente";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into tbl_sancion values('" + nombre + "','" + descripcion + "')";
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
            mensaje = e.Message + "UPSSSS! Algo fallo al guardar Sancion";
        }
        return mensaje;
    }
}