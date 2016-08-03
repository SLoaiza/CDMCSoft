using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de usuario
/// </summary>
public class usuario
{
    public string mensaje;

    public static string nom_usu,tipo_usu;

    public usuario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

        public string validar_acceso(String usuario, String contrasena)
        {

            DataSet dataset = new DataSet();
            try
            {
                var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);

                using (SqlDataAdapter adaptador = new SqlDataAdapter("select * from usuario where usu_id='" + usuario + "' and usu_pass='" + contrasena + "'", conex))
                {
                    adaptador.Fill(dataset, "usuario");
                    dataset.Tables[0].TableName = "usuario";
                }
                conex.Open();
                string user = dataset.Tables[0].Rows[0][0].ToString();
                string pwd = dataset.Tables[0].Rows[0][1].ToString();
                if (user == "" || pwd == "")
                {
                    mensaje = "Error";
                }
                else
                {
                    mensaje = "Exito";
                }
                conex.Close();
            }
            catch (Exception e)
            {
                mensaje = e.Message;
            }
            return (mensaje);
        }

    public string validar_acceso_inyeccion(String usuario, String contrasena)
    {
        string mensaje = "Exito";

        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            conex.Open();
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM usuario WHERE usu_id=@user and usu_pass=@pass", conex))
            {
                /* Convertimos también en literales los parámetros */
                cmd.Parameters.AddWithValue("@user", usuario);
                cmd.Parameters.AddWithValue("@pass", contrasena);
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    if (rdr.Read())
                    {
                        nom_usu = rdr.GetString(5) + " " + rdr.GetString(6);
                    }
                }
            }
            conex.Close();
        }
        catch (Exception e)
        {
            mensaje = e.Message;
        }

        return (mensaje);

     }


    public string validar_acceso_inyeccion_nueva(String usuario, String contrasena)
    {
        string mensaje_new = "Exito";

        string estado = "Activo";

        DataSet dataset = new DataSet();

        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
            conex.Open();
            using (SqlDataAdapter adaptador = new SqlDataAdapter("select * from usuario where usu_id='" + usuario + "' and usu_pass='" + contrasena + "' and usu_Estado ='" + estado + "'", conex))
            {

                adaptador.Fill(dataset, "usuario");
                dataset.Tables[0].TableName = "usuario";

            }

            string user = dataset.Tables["usuario"].Rows[0]["usu_id"].ToString();
            string pwd  = dataset.Tables["usuario"].Rows[0]["usu_pass"].ToString();

            if (user != "" && pwd != "")
            {
                mensaje = "Exito";
            }
        }
        catch (Exception e)
        {
            mensaje_new = e.Message;
        }

        return (mensaje_new);

    }
    public string validar_acceso_inyeccion_sp(String usuario, String contrasena)
    {
        string estado = "Activo";

        SqlConnection conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);
        SqlCommand testCMD = new SqlCommand("loginusuario", conex);
        testCMD.CommandType = CommandType.StoredProcedure;

        SqlParameter IdIn = testCMD.Parameters.Add("@usu_id", SqlDbType.VarChar, 50);
        IdIn.Direction = ParameterDirection.Input;
        IdIn.Value = usuario;

        SqlParameter IdIn1 = testCMD.Parameters.Add("@usu_pass", SqlDbType.VarChar, 50);
        IdIn1.Direction = ParameterDirection.Input;
        IdIn1.Value = contrasena;

        SqlParameter IdIn2 = testCMD.Parameters.Add("@usu_estado", SqlDbType.VarChar, 10);
        IdIn2.Direction = ParameterDirection.Input;
        IdIn2.Value = estado;

        conex.Open();

        SqlDataReader myReader = testCMD.ExecuteReader();
        if (myReader.Read() == true)
        {
            mensaje = "Exito";
        }
        else
        {
            mensaje = "Inyección Fallida";
        }

        conex.Close();


        return (mensaje);
    
}
}