using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Descripción breve de permiso_rol
/// </summary>
public class permiso_rol
{
    public permiso_rol()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }


    public string grabar_permisos_x_rol(int cod_rol, int id_permiso, string seleccionado)
    {
        string mensaje = "Los Permisos x Rol han sido registrados";

        try
        {//Para conectarse a la BD
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ConnectionString);

            //se consulta si existe el usuario
            var consulta = "select * from permiso_x_rol where rol_cod = " + cod_rol + "and perm_cod = " + id_permiso;
            var cmd = new SqlCommand(consulta, conex);
            conex.Open();
            SqlDataReader leerbd = cmd.ExecuteReader();
            if (leerbd.Read() == true)
            {
                mensaje = "Hay Permisos_x_Rol que ya existen, por favor Verifique!";

            }
            else //inserto el registro en la tabla: Permiso_x_Rol
            {
                conex.Close();
                //se prepara la sentencia sql para insertar
                var insertar = "insert into permiso_x_rol values(" + cod_rol + "," + id_permiso + ",'" + seleccionado + "')";
                //se empaqueta la sentencia sql y la conexion a la bd
                var comando = new SqlCommand(insertar, conex);
                //abrir la conexion
                conex.Open();
                //se ejecuta la sentencia sql
                int resultado = comando.ExecuteNonQuery();
                if (resultado == 0)
                {
                    mensaje = "Error al insertar en la tabla: permiso_x_rol";
                }

            }

            conex.Close();

        }//fin del try

        catch (Exception e)
        {
            mensaje = e.Message;//presenta el error que genera la bd
        }
        return mensaje;


    }//fin del metodo: grabar_permisos_x_rol()



    public void UpdatePermisoRol(int consecutivo, int cod_rol, int id_permiso, string seleccionado, int id_modulo)
    {

        DataTable dt = new DataTable();


        string sql = @"UPDATE permiso_x_rol SET cod_rol = @cod_rol, id_permiso = @id_permiso, seleccionado = @seleccionado, id_modulo = @id_modulo WHERE consecutivo = @consecutivo";


        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ToString()))
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@cod_rol", cod_rol);
            cmd.Parameters.AddWithValue("@id_permiso", id_permiso);
            cmd.Parameters.AddWithValue("@seleccionado", seleccionado);
            cmd.Parameters.AddWithValue("@id_modulo", id_modulo);
            cmd.Parameters.AddWithValue("@consecutivo", consecutivo);
            cmd.ExecuteNonQuery();
        }

    }


    public static DataTable ObtenerDatosGrilla(int cod_rol)
    {
        DataTable dt = new DataTable();


        string sql = @"SELECT permiso_x_rol.consecutivo, permiso_x_rol.cod_rol, permiso_x_rol.id_permiso, permiso_x_rol.seleccionado, permiso_x_rol.id_modulo,  rol.nomrol, permiso.nom_permiso, modulo.nom_modulo
                       FROM permiso_x_rol INNER JOIN rol ON permiso_x_rol.cod_rol = rol.codrol INNER JOIN permiso ON permiso_x_rol.id_permiso = permiso.id_permiso INNER JOIN modulo ON permiso_x_rol.id_modulo = modulo.id_modulo
                      WHERE (permiso_x_rol.cod_rol = @cod_rol)";

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_con_clave"].ToString()))
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@cod_rol", cod_rol);
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
        }

        return dt;

    }


    public DataRow ObtenerFila(int consecutivo)
    {
        DataTable dt = new DataTable();


        string sql = @"SELECT * FROM permiso_x_rol WHERE consecutivo = @consecutivo";


        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionasp_conclave"].ToString()))
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@consecutivo", consecutivo);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
        }

        if (dt.Rows.Count > 0)
            return dt.Rows[0];
        else
            return null;

    }


    public DataTable GetAllRoles()
    {
        DataTable dt = new DataTable();


        string sql = @"SELECT * FROM rol";


        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionasp_conclave"].ToString()))
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
        }

        return dt;

    }


    public DataTable GetAllPermisos()
    {
        DataTable dt = new DataTable();


        string sql = @"SELECT * FROM permiso";


        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionasp_conclave"].ToString()))
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
        }

        return dt;

    }

    public DataTable GetAllModulos()
    {
        DataTable dt = new DataTable();


        string sql = @"SELECT * FROM modulo";


        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionasp_conclave"].ToString()))
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
        }

        return dt;

    }



}