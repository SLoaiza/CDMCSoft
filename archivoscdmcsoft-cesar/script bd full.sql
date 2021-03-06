USE [master]
GO
/****** Object:  Database [cdmcsoft]    Script Date: 20/09/2016 05:14:05 p.m. ******/
CREATE DATABASE [cdmcsoft]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cdmcsoft', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\cdmcsoft.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cdmcsoft_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\cdmcsoft_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cdmcsoft] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cdmcsoft].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cdmcsoft] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cdmcsoft] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cdmcsoft] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cdmcsoft] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cdmcsoft] SET ARITHABORT OFF 
GO
ALTER DATABASE [cdmcsoft] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cdmcsoft] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [cdmcsoft] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cdmcsoft] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cdmcsoft] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cdmcsoft] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cdmcsoft] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cdmcsoft] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cdmcsoft] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cdmcsoft] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cdmcsoft] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cdmcsoft] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cdmcsoft] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cdmcsoft] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cdmcsoft] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cdmcsoft] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cdmcsoft] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cdmcsoft] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cdmcsoft] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cdmcsoft] SET  MULTI_USER 
GO
ALTER DATABASE [cdmcsoft] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cdmcsoft] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cdmcsoft] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cdmcsoft] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [cdmcsoft]
GO
/****** Object:  StoredProcedure [dbo].[loginusuario]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[loginusuario](@usu_id as varchar(50),@usu_pass as varchar(50),@usu_estado as varchar(10)) 
AS 
BEGIN 
    Select usu_id,usu_pass from dbo.usuario where usu_id=@usu_id and usu_pass=@usu_pass and usu_estado=@usu_estado
END
GO
/****** Object:  Table [dbo].[ambiente]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ambiente](
	[ambi_cod] [int] IDENTITY(1,1) NOT NULL,
	[ambi_nro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ambi_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[causa]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[causa](
	[causa_cod] [int] IDENTITY(1,1) NOT NULL,
	[causa_cual] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[causa_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[centro]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[centro](
	[centro_cod] [varchar](20) NOT NULL,
	[regional_cod] [varchar](20) NOT NULL,
	[centro_nombbre] [varchar](200) NOT NULL,
	[centro_subdire] [varchar](100) NOT NULL,
	[centro_complejo] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[centro_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[certificacion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[certificacion](
	[certi_cod] [int] IDENTITY(1,1) NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[inst_cod] [int] NOT NULL,
	[certi_compro] [char](2) NOT NULL,
	[certi_lugar] [varchar](50) NOT NULL,
	[certi_fech_entreg] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[certi_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[convencion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[convencion](
	[conven_cod] [int] IDENTITY(1,1) NOT NULL,
	[conven_nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[conven_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[desercion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[desercion](
	[deser_cod] [int] IDENTITY(1,1) NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[centro_cod] [varchar](20) NOT NULL,
	[deser_dia_ini_forma] [char](2) NOT NULL,
	[deser_mes_ini_forma] [char](2) NOT NULL,
	[deser_ano_ini_forma] [char](4) NOT NULL,
	[derser_dia] [char](2) NOT NULL,
	[deser_mes] [char](2) NOT NULL,
	[deser_ano] [char](4) NOT NULL,
	[deser_observa] [varchar](500) NOT NULL,
	[causa_cod] [int] NOT NULL,
	[hora_cod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[deser_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[egresado]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[egresado](
	[egre_cod] [int] IDENTITY(1,1) NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[egre_alt_etapa_prod] [varchar](50) NOT NULL,
	[egre_otra_cual_etapa_prod] [varchar](50) NOT NULL,
	[egre_vinc_fin_etapa_prac] [char](2) NOT NULL,
	[egre_vinc_act] [char](2) NOT NULL,
	[emp_nit] [varchar](30) NOT NULL,
	[egre_cargo] [varchar](80) NOT NULL,
	[egre_fech_vinc] [char](10) NOT NULL,
	[egre_perti_func] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[egre_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empresa](
	[emp_nit] [varchar](30) NOT NULL,
	[emp_nombre] [varchar](80) NOT NULL,
	[emp_direc] [varchar](30) NOT NULL,
	[emp_tele] [varchar](15) NOT NULL,
	[emp_email] [varchar](50) NOT NULL,
	[emp_jefe_inme] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_nit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estudio]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estudio](
	[est_cod] [int] IDENTITY(1,1) NOT NULL,
	[est_nombre] [varchar](80) NOT NULL,
	[est_graduado] [char](2) NOT NULL,
	[est_ano] [char](4) NOT NULL,
	[est_observ] [varchar](200) NOT NULL,
	[est_niv_form] [varchar](50) NOT NULL,
	[egre_cod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[est_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ficha]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ficha](
	[Ficha_cod] [varchar](20) NOT NULL,
	[Prog_cod] [varchar](20) NULL,
	[Horario] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ficha_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[horario]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[horario](
	[hora_cod] [int] IDENTITY(1,1) NOT NULL,
	[hora_rango_dias] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hora_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inasis_x_convencion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inasis_x_convencion](
	[conven_cod] [int] NOT NULL,
	[inasis_cod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[conven_cod] ASC,
	[inasis_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inasistencia]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inasistencia](
	[inasis_cod] [int] IDENTITY(1,1) NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[inasis_num_horas] [int] NOT NULL,
	[inasis_fecha] [varchar](10) NOT NULL,
	[inasis_descrip] [varchar](200) NOT NULL,
	[ficha_cod] [varchar](20) NOT NULL,
	[usu_cod_aux] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[inasis_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[incidencia]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[incidencia](
	[inci_cod] [int] NOT NULL,
	[inv_cod] [int] NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[inci_desc] [varchar](300) NOT NULL,
	[inci_fecha] [varchar](10) NOT NULL,
	[inci_hora] [varchar](10) NOT NULL,
	[usu_cod_aux] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[inci_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[institucion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[institucion](
	[inst_cod] [int] IDENTITY(1,1) NOT NULL,
	[inst_nombre] [varchar](80) NOT NULL,
	[ciu_cod] [varchar](10) NOT NULL,
 CONSTRAINT [PK__instituc__668E2657B27C887C] PRIMARY KEY CLUSTERED 
(
	[inst_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inventario](
	[inv_cod] [int] NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[centro_cod] [varchar](20) NOT NULL,
	[ambi_cod] [int] NOT NULL,
	[tipoinv_cod] [int] NOT NULL,
	[inv_desc] [varchar](150) NOT NULL,
	[inv_obser] [varchar](300) NOT NULL,
	[inv_modelo] [varchar](20) NOT NULL,
	[inv_marca] [varchar](30) NOT NULL,
	[inv_serial] [varchar](20) NOT NULL,
	[inv_vlrunit] [varchar](20) NOT NULL,
	[inv_nromesa] [int] NOT NULL,
	[inv_nroequi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[inv_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[permiso]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permiso](
	[perm_cod] [int] IDENTITY(1,1) NOT NULL,
	[perm_nom] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[perm_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[permiso_x_rol]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permiso_x_rol](
	[rol_cod] [int] NOT NULL,
	[perm_cod] [int] NOT NULL,
	[perm_rol_estado] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rol_cod] ASC,
	[perm_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programa]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programa](
	[prog_cod] [varchar](20) NOT NULL,
	[prog_nom] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prog_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[regional]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[regional](
	[regional_cod] [varchar](20) NOT NULL,
	[regional_nombre] [varchar](200) NOT NULL,
	[regional_nom_direct] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[regional_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rol]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rol](
	[rol_cod] [int] IDENTITY(1,1) NOT NULL,
	[rol_nom] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rol_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_act_a_desarrollar]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_act_a_desarrollar](
	[act_cod] [varchar](10) NOT NULL,
	[plan_cod] [int] NOT NULL,
	[act_inicio] [varchar](10) NOT NULL,
	[act_fin] [varchar](10) NOT NULL,
	[act_centro_de_formacion] [varchar](50) NOT NULL,
	[act_empresa] [varchar](50) NOT NULL,
	[act_conocimiento] [char](1) NOT NULL,
	[act_desempeño] [char](1) NOT NULL,
	[act_producto] [char](1) NOT NULL,
	[act_criterio_eval] [varchar](2) NOT NULL,
	[act_fecha] [varchar](10) NOT NULL,
	[act_hora] [varchar](12) NOT NULL,
	[act_autenticidad] [varchar](2) NOT NULL,
	[act_calidad] [varchar](2) NULL,
	[act_logro] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[act_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_act_proy]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_act_proy](
	[act_proy_cod] [varchar](10) NOT NULL,
	[plan_cod] [int] NOT NULL,
	[act_proy_descp] [varchar](500) NULL,
	[act_proy_aprobado] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_actividad_aprendiz]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_actividad_aprendiz](
	[id_act_aprend] [int] NOT NULL,
	[duracion] [varchar](50) NOT NULL,
	[didacticas_estrategias] [varchar](50) NOT NULL,
	[escenario] [varchar](50) NOT NULL,
	[didacticos_recursos] [varchar](50) NOT NULL,
	[responsable_instructor] [varchar](50) NOT NULL,
	[evidencia_tipo] [varchar](50) NOT NULL,
	[actividad_id] [int] NOT NULL,
	[fase_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_act_aprend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_actividad_proyec]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_actividad_proyec](
	[actividad_id] [int] IDENTITY(1,1) NOT NULL,
	[actividad_nom] [varchar](200) NOT NULL,
	[duracion] [varchar](50) NOT NULL,
	[comp_cod] [int] NOT NULL,
	[result_cod] [int] NOT NULL,
	[fase_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[actividad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ciudad]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ciudad](
	[ciu_cod] [varchar](10) NOT NULL,
	[ciu_nom] [varchar](30) NOT NULL,
	[dept_cod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ciu_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_comite]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_comite](
	[com_cod] [varchar](10) NOT NULL,
	[plan_cod] [int] NOT NULL,
	[com_descp] [varchar](500) NOT NULL,
	[com_conclusion] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[com_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_competencia]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_competencia](
	[comp_cod] [int] IDENTITY(1,1) NOT NULL,
	[comp_descp] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[comp_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_compromiso]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_compromiso](
	[compr_cod] [varchar](10) NOT NULL,
	[plan_cod] [int] NOT NULL,
	[compr_descp] [varchar](500) NOT NULL,
	[compr_fecha] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[compr_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_criterios_eval]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_criterios_eval](
	[criterios_id] [int] NOT NULL,
	[criterios_nom] [varchar](50) NOT NULL,
	[actividad_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[criterios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_departamento]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_departamento](
	[dept_cod] [int] IDENTITY(1,1) NOT NULL,
	[dept_nom] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dept_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_enc_planeacion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_enc_planeacion](
	[id_enc_plan] [int] IDENTITY(1,1) NOT NULL,
	[inicio_fecha] [varchar](50) NOT NULL,
	[fecha_fin] [varchar](10) NOT NULL,
	[ejecut_equip] [varchar](50) NOT NULL,
	[Ficha_cod] [varchar](20) NOT NULL,
	[prog_cod] [varchar](20) NOT NULL,
	[ciudad_fecha] [varchar](50) NOT NULL,
	[proyec_cod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_enc_plan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_fase_proyec]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_fase_proyec](
	[fase_id] [int] IDENTITY(1,1) NOT NULL,
	[fase_nom] [varchar](50) NOT NULL,
	[proyec_cod] [int] NOT NULL,
	[id_enc_plan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_obs_actividad]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_obs_actividad](
	[obs_id] [int] NOT NULL,
	[actividad_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[obs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_plan_de_mejoramiento]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_plan_de_mejoramiento](
	[plan_cod] [int] IDENTITY(1,1) NOT NULL,
	[usu_cod] [varchar](20) NOT NULL,
	[tipo_cod] [int] NOT NULL,
	[plan_num] [varchar](10) NOT NULL,
	[plan_fecha_creacion] [varchar](10) NOT NULL,
 CONSTRAINT [PK__tbl_plan__7DEA5208EEEBE462] PRIMARY KEY CLUSTERED 
(
	[plan_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_proyec_grado]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_proyec_grado](
	[proyec_cod] [int] IDENTITY(1,1) NOT NULL,
	[proyec_nom] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proyec_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_resultado]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_resultado](
	[result_cod] [int] IDENTITY(1,1) NOT NULL,
	[result_descp] [varchar](500) NOT NULL,
	[comp_cod] [int] NOT NULL,
 CONSTRAINT [PK__tbl_resu__12424FF42EF58F04] PRIMARY KEY CLUSTERED 
(
	[result_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_resultado_x_plan]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_resultado_x_plan](
	[plan_cod] [int] NOT NULL,
	[result_cod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_cod] ASC,
	[result_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_sancion]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_sancion](
	[sancion_cod] [int] IDENTITY(1,1) NOT NULL,
	[sancion_descp] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sancion_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_tipo_plan]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_tipo_plan](
	[tipo_cod] [int] IDENTITY(1,1) NOT NULL,
	[tipo_nom] [varchar](30) NOT NULL,
 CONSTRAINT [PK__tbl_tipo__714931EA654031D2] PRIMARY KEY CLUSTERED 
(
	[tipo_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_inventario]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_inventario](
	[tipoinv_cod] [int] NOT NULL,
	[tipoinv_desc] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoinv_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 20/09/2016 05:14:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[usu_cod] [varchar](20) NOT NULL,
	[ficha_cod] [varchar](20) NOT NULL,
	[ciu_cod] [varchar](10) NOT NULL,
	[rol_cod] [int] NOT NULL,
	[usu_nom] [varchar](80) NOT NULL,
	[usu_ape] [varchar](80) NOT NULL,
	[usu_direc] [varchar](100) NOT NULL,
	[usu_tel] [varchar](20) NULL,
	[usu_estado] [varchar](10) NOT NULL,
	[regional_cod] [varchar](20) NOT NULL,
	[centro_cod] [varchar](20) NOT NULL,
	[usu_tipo_id] [varchar](20) NOT NULL,
	[usu_fecha_naci] [varchar](20) NOT NULL,
	[usu_id] [varchar](20) NOT NULL,
	[usu_pass] [varchar](20) NOT NULL,
	[ruta_imagen] [varchar](100) NULL,
 CONSTRAINT [PK__usuario__D8E8AEAC294F92CE] PRIMARY KEY CLUSTERED 
(
	[usu_cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[centro]  WITH CHECK ADD FOREIGN KEY([regional_cod])
REFERENCES [dbo].[regional] ([regional_cod])
GO
ALTER TABLE [dbo].[certificacion]  WITH CHECK ADD  CONSTRAINT [FK__certifica__inst___4AB81AF0] FOREIGN KEY([inst_cod])
REFERENCES [dbo].[institucion] ([inst_cod])
GO
ALTER TABLE [dbo].[certificacion] CHECK CONSTRAINT [FK__certifica__inst___4AB81AF0]
GO
ALTER TABLE [dbo].[certificacion]  WITH CHECK ADD  CONSTRAINT [FK__certifica__usu_c__4BAC3F29] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[certificacion] CHECK CONSTRAINT [FK__certifica__usu_c__4BAC3F29]
GO
ALTER TABLE [dbo].[desercion]  WITH CHECK ADD FOREIGN KEY([causa_cod])
REFERENCES [dbo].[causa] ([causa_cod])
GO
ALTER TABLE [dbo].[desercion]  WITH CHECK ADD FOREIGN KEY([centro_cod])
REFERENCES [dbo].[centro] ([centro_cod])
GO
ALTER TABLE [dbo].[desercion]  WITH CHECK ADD FOREIGN KEY([hora_cod])
REFERENCES [dbo].[horario] ([hora_cod])
GO
ALTER TABLE [dbo].[desercion]  WITH CHECK ADD  CONSTRAINT [FK__desercion__usu_c__5165187F] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[desercion] CHECK CONSTRAINT [FK__desercion__usu_c__5165187F]
GO
ALTER TABLE [dbo].[egresado]  WITH CHECK ADD  CONSTRAINT [FK__egresado__usu_co__44FF419A] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[egresado] CHECK CONSTRAINT [FK__egresado__usu_co__44FF419A]
GO
ALTER TABLE [dbo].[estudio]  WITH CHECK ADD FOREIGN KEY([egre_cod])
REFERENCES [dbo].[egresado] ([egre_cod])
GO
ALTER TABLE [dbo].[inasis_x_convencion]  WITH CHECK ADD FOREIGN KEY([conven_cod])
REFERENCES [dbo].[convencion] ([conven_cod])
GO
ALTER TABLE [dbo].[inasis_x_convencion]  WITH CHECK ADD FOREIGN KEY([inasis_cod])
REFERENCES [dbo].[inasistencia] ([inasis_cod])
GO
ALTER TABLE [dbo].[inasistencia]  WITH CHECK ADD FOREIGN KEY([ficha_cod])
REFERENCES [dbo].[ficha] ([Ficha_cod])
GO
ALTER TABLE [dbo].[inasistencia]  WITH CHECK ADD  CONSTRAINT [FK__inasisten__usu_c__5535A963] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[inasistencia] CHECK CONSTRAINT [FK__inasisten__usu_c__5535A963]
GO
ALTER TABLE [dbo].[incidencia]  WITH CHECK ADD FOREIGN KEY([inv_cod])
REFERENCES [dbo].[inventario] ([inv_cod])
GO
ALTER TABLE [dbo].[incidencia]  WITH CHECK ADD  CONSTRAINT [FK__incidenci__usu_c__628FA481] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[incidencia] CHECK CONSTRAINT [FK__incidenci__usu_c__628FA481]
GO
ALTER TABLE [dbo].[institucion]  WITH CHECK ADD  CONSTRAINT [FK_institucion_tbl_ciudad] FOREIGN KEY([ciu_cod])
REFERENCES [dbo].[tbl_ciudad] ([ciu_cod])
GO
ALTER TABLE [dbo].[institucion] CHECK CONSTRAINT [FK_institucion_tbl_ciudad]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([ambi_cod])
REFERENCES [dbo].[ambiente] ([ambi_cod])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([centro_cod])
REFERENCES [dbo].[centro] ([centro_cod])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([tipoinv_cod])
REFERENCES [dbo].[tipo_inventario] ([tipoinv_cod])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK__inventari__usu_c__5EBF139D] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK__inventari__usu_c__5EBF139D]
GO
ALTER TABLE [dbo].[permiso_x_rol]  WITH CHECK ADD FOREIGN KEY([perm_cod])
REFERENCES [dbo].[permiso] ([perm_cod])
GO
ALTER TABLE [dbo].[permiso_x_rol]  WITH CHECK ADD FOREIGN KEY([rol_cod])
REFERENCES [dbo].[rol] ([rol_cod])
GO
ALTER TABLE [dbo].[tbl_act_a_desarrollar]  WITH CHECK ADD  CONSTRAINT [FK__tbl_act_a__plan___74AE54BC] FOREIGN KEY([plan_cod])
REFERENCES [dbo].[tbl_plan_de_mejoramiento] ([plan_cod])
GO
ALTER TABLE [dbo].[tbl_act_a_desarrollar] CHECK CONSTRAINT [FK__tbl_act_a__plan___74AE54BC]
GO
ALTER TABLE [dbo].[tbl_act_proy]  WITH CHECK ADD  CONSTRAINT [FK__tbl_act_p__plan___68487DD7] FOREIGN KEY([plan_cod])
REFERENCES [dbo].[tbl_plan_de_mejoramiento] ([plan_cod])
GO
ALTER TABLE [dbo].[tbl_act_proy] CHECK CONSTRAINT [FK__tbl_act_p__plan___68487DD7]
GO
ALTER TABLE [dbo].[tbl_actividad_aprendiz]  WITH CHECK ADD FOREIGN KEY([actividad_id])
REFERENCES [dbo].[tbl_actividad_proyec] ([actividad_id])
GO
ALTER TABLE [dbo].[tbl_actividad_aprendiz]  WITH CHECK ADD FOREIGN KEY([fase_id])
REFERENCES [dbo].[tbl_fase_proyec] ([fase_id])
GO
ALTER TABLE [dbo].[tbl_actividad_proyec]  WITH CHECK ADD FOREIGN KEY([comp_cod])
REFERENCES [dbo].[tbl_competencia] ([comp_cod])
GO
ALTER TABLE [dbo].[tbl_actividad_proyec]  WITH CHECK ADD FOREIGN KEY([fase_id])
REFERENCES [dbo].[tbl_fase_proyec] ([fase_id])
GO
ALTER TABLE [dbo].[tbl_actividad_proyec]  WITH CHECK ADD  CONSTRAINT [FK__tbl_activ__resul__1CBC4616] FOREIGN KEY([result_cod])
REFERENCES [dbo].[tbl_resultado] ([result_cod])
GO
ALTER TABLE [dbo].[tbl_actividad_proyec] CHECK CONSTRAINT [FK__tbl_activ__resul__1CBC4616]
GO
ALTER TABLE [dbo].[tbl_ciudad]  WITH CHECK ADD FOREIGN KEY([dept_cod])
REFERENCES [dbo].[tbl_departamento] ([dept_cod])
GO
ALTER TABLE [dbo].[tbl_comite]  WITH CHECK ADD  CONSTRAINT [FK__tbl_comit__plan___6B24EA82] FOREIGN KEY([plan_cod])
REFERENCES [dbo].[tbl_plan_de_mejoramiento] ([plan_cod])
GO
ALTER TABLE [dbo].[tbl_comite] CHECK CONSTRAINT [FK__tbl_comit__plan___6B24EA82]
GO
ALTER TABLE [dbo].[tbl_compromiso]  WITH CHECK ADD  CONSTRAINT [FK__tbl_compr__plan___71D1E811] FOREIGN KEY([plan_cod])
REFERENCES [dbo].[tbl_plan_de_mejoramiento] ([plan_cod])
GO
ALTER TABLE [dbo].[tbl_compromiso] CHECK CONSTRAINT [FK__tbl_compr__plan___71D1E811]
GO
ALTER TABLE [dbo].[tbl_criterios_eval]  WITH CHECK ADD FOREIGN KEY([actividad_id])
REFERENCES [dbo].[tbl_actividad_proyec] ([actividad_id])
GO
ALTER TABLE [dbo].[tbl_enc_planeacion]  WITH CHECK ADD FOREIGN KEY([Ficha_cod])
REFERENCES [dbo].[ficha] ([Ficha_cod])
GO
ALTER TABLE [dbo].[tbl_enc_planeacion]  WITH CHECK ADD FOREIGN KEY([prog_cod])
REFERENCES [dbo].[programa] ([prog_cod])
GO
ALTER TABLE [dbo].[tbl_enc_planeacion]  WITH CHECK ADD FOREIGN KEY([proyec_cod])
REFERENCES [dbo].[tbl_proyec_grado] ([proyec_cod])
GO
ALTER TABLE [dbo].[tbl_fase_proyec]  WITH CHECK ADD FOREIGN KEY([id_enc_plan])
REFERENCES [dbo].[tbl_enc_planeacion] ([id_enc_plan])
GO
ALTER TABLE [dbo].[tbl_fase_proyec]  WITH CHECK ADD FOREIGN KEY([proyec_cod])
REFERENCES [dbo].[tbl_proyec_grado] ([proyec_cod])
GO
ALTER TABLE [dbo].[tbl_obs_actividad]  WITH CHECK ADD FOREIGN KEY([actividad_id])
REFERENCES [dbo].[tbl_actividad_proyec] ([actividad_id])
GO
ALTER TABLE [dbo].[tbl_plan_de_mejoramiento]  WITH CHECK ADD  CONSTRAINT [FK__tbl_plan___tipo___66603565] FOREIGN KEY([tipo_cod])
REFERENCES [dbo].[tbl_tipo_plan] ([tipo_cod])
GO
ALTER TABLE [dbo].[tbl_plan_de_mejoramiento] CHECK CONSTRAINT [FK__tbl_plan___tipo___66603565]
GO
ALTER TABLE [dbo].[tbl_plan_de_mejoramiento]  WITH CHECK ADD  CONSTRAINT [FK__tbl_plan___usu_c__656C112C] FOREIGN KEY([usu_cod])
REFERENCES [dbo].[usuario] ([usu_cod])
GO
ALTER TABLE [dbo].[tbl_plan_de_mejoramiento] CHECK CONSTRAINT [FK__tbl_plan___usu_c__656C112C]
GO
ALTER TABLE [dbo].[tbl_resultado]  WITH CHECK ADD  CONSTRAINT [FK_tbl_resultado_tbl_competencia] FOREIGN KEY([comp_cod])
REFERENCES [dbo].[tbl_competencia] ([comp_cod])
GO
ALTER TABLE [dbo].[tbl_resultado] CHECK CONSTRAINT [FK_tbl_resultado_tbl_competencia]
GO
ALTER TABLE [dbo].[tbl_resultado_x_plan]  WITH CHECK ADD  CONSTRAINT [FK__tbl_resul__plan___6E01572D] FOREIGN KEY([plan_cod])
REFERENCES [dbo].[tbl_plan_de_mejoramiento] ([plan_cod])
GO
ALTER TABLE [dbo].[tbl_resultado_x_plan] CHECK CONSTRAINT [FK__tbl_resul__plan___6E01572D]
GO
ALTER TABLE [dbo].[tbl_resultado_x_plan]  WITH CHECK ADD  CONSTRAINT [FK__tbl_resul__resul__6EF57B66] FOREIGN KEY([result_cod])
REFERENCES [dbo].[tbl_resultado] ([result_cod])
GO
ALTER TABLE [dbo].[tbl_resultado_x_plan] CHECK CONSTRAINT [FK__tbl_resul__resul__6EF57B66]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK__usuario__centro___3F466844] FOREIGN KEY([centro_cod])
REFERENCES [dbo].[centro] ([centro_cod])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK__usuario__centro___3F466844]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK__usuario__ciu_cod__403A8C7D] FOREIGN KEY([ciu_cod])
REFERENCES [dbo].[tbl_ciudad] ([ciu_cod])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK__usuario__ciu_cod__403A8C7D]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK__usuario__ficha_c__412EB0B6] FOREIGN KEY([ficha_cod])
REFERENCES [dbo].[ficha] ([Ficha_cod])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK__usuario__ficha_c__412EB0B6]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK__usuario__rol_cod__4222D4EF] FOREIGN KEY([rol_cod])
REFERENCES [dbo].[rol] ([rol_cod])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK__usuario__rol_cod__4222D4EF]
GO
USE [master]
GO
ALTER DATABASE [cdmcsoft] SET  READ_WRITE 
GO
