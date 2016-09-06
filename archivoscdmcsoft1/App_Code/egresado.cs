using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for egresado
/// </summary>
public class egresado
{
    public string guardar_egresado(string usu_cod, string egre_alt_etapa_prod, string egre_otra_cual_etapa_prod, string egre_vinc_fin_etapa_prac, string egre_vinc_act, string emp_nit, string egre_cargo, string egre_fech_vinc, string egre_perti_func)
    {
        string rdo = "1";
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_asp_sin_clave"].ConnectionString);
            var insertar = "insert into egresado values('" + usu_cod + "','" + egre_alt_etapa_prod + "','" + egre_otra_cual_etapa_prod + "','" + egre_vinc_fin_etapa_prac + "','" + egre_vinc_act + "','" + emp_nit + "','" + egre_cargo + "','" + egre_fech_vinc + "','" + egre_perti_func + "')";
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
    public egresado()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}