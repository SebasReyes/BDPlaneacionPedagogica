USE [master]
GO
/****** Object:  Database [BDPlaneacionPedagogica]    Script Date: 30/07/2018 11:35:45 ******/
CREATE DATABASE [BDPlaneacionPedagogica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDPlaneacionPedagogica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BDPlaneacionPedagogica.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDPlaneacionPedagogica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BDPlaneacionPedagogica_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDPlaneacionPedagogica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET  MULTI_USER 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BDPlaneacionPedagogica]
GO
/****** Object:  Table [dbo].[ActividadDeAprendizaje]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActividadDeAprendizaje](
	[IdActividadDeAprendizaje] [int] IDENTITY(1,1) NOT NULL,
	[Actividad] [nvarchar](500) NOT NULL,
	[IdGuia] [int] NOT NULL,
 CONSTRAINT [PK_ActividadDeAprendizaje] PRIMARY KEY CLUSTERED 
(
	[IdActividadDeAprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ActividadesProyecto]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActividadesProyecto](
	[IdActividadesProyecto] [int] IDENTITY(1,1) NOT NULL,
	[NombreActividad] [nvarchar](500) NOT NULL,
	[IdFase] [int] NOT NULL,
 CONSTRAINT [PK_ActividadesProyecto] PRIMARY KEY CLUSTERED 
(
	[IdActividadesProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Competencia]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencia](
	[IdCompetencia] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCompetencia] [nvarchar](50) NOT NULL,
	[NombreCompetencia] [nvarchar](max) NOT NULL,
	[DescripcionCompetencia] [nvarchar](max) NULL,
	[IdProgramaFormacion] [int] NOT NULL,
	[IdTipoCompetencia] [int] NOT NULL,
 CONSTRAINT [PK_Competencia] PRIMARY KEY CLUSTERED 
(
	[IdCompetencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConocimientoConcepto]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConocimientoConcepto](
	[IdConocimientoConcepto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[IdResultado] [int] NOT NULL,
 CONSTRAINT [PK_ConocimientoConcepto] PRIMARY KEY CLUSTERED 
(
	[IdConocimientoConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConocimientoProceso]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConocimientoProceso](
	[IdConocimientoProceso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[IdResultado] [int] NOT NULL,
 CONSTRAINT [PK_ConocimientoProceso] PRIMARY KEY CLUSTERED 
(
	[IdConocimientoProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CriteriosEvaluacion]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriosEvaluacion](
	[IdCriteriosEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[IdResultado] [int] NOT NULL,
 CONSTRAINT [PK_CriteriosEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdCriteriosEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EquipoDesarrolloPedagogico]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoDesarrolloPedagogico](
	[IdEquipoDP] [int] IDENTITY(1,1) NOT NULL,
	[NombreEquipoDP] [nvarchar](800) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_EquipoDesarrolloPedagogico] PRIMARY KEY CLUSTERED 
(
	[IdEquipoDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fases]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fases](
	[IdFase] [int] IDENTITY(1,1) NOT NULL,
	[NombreFase] [nvarchar](500) NOT NULL,
	[IdProyectoFormativo] [int] NOT NULL,
 CONSTRAINT [PK_Fases] PRIMARY KEY CLUSTERED 
(
	[IdFase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ficha]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ficha](
	[IdFicha] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFinal] [date] NOT NULL,
	[Jornada] [nvarchar](50) NOT NULL,
	[CodigoFicha] [nvarchar](50) NOT NULL,
	[IdProgramaFormacion] [int] NOT NULL,
	[IdProyectoFormativo] [int] NULL,
 CONSTRAINT [PK_Ficha] PRIMARY KEY CLUSTERED 
(
	[IdFicha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Guia]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guia](
	[IdGuia] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](500) NOT NULL,
	[IdCompetencia] [int] NOT NULL,
 CONSTRAINT [PK_Guia] PRIMARY KEY CLUSTERED 
(
	[IdGuia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[IdInstructor] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[Celular] [nvarchar](50) NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
	[IdEquipoDP] [int] NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[IdInstructor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProgramaFormación]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramaFormación](
	[IdProgramaFormacion] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPrograma] [nvarchar](50) NOT NULL,
	[RequisitosIngreso] [nvarchar](500) NOT NULL,
	[NivelFormacion] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramaFormación] PRIMARY KEY CLUSTERED 
(
	[IdProgramaFormacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProyectoFormativo]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProyectoFormativo](
	[IdProyectoFormativo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoProyecto] [nvarchar](50) NOT NULL,
	[NombreProyecto] [nvarchar](500) NOT NULL,
	[TiempoProyecto] [nvarchar](50) NOT NULL,
	[Informacion] [nvarchar](max) NULL,
	[PalabrasClaves] [nvarchar](max) NOT NULL,
	[FichasAsociadas] [nvarchar](50) NOT NULL,
	[EmpresasParticipantes] [nvarchar](max) NOT NULL,
	[PlanteamientoProblema] [nvarchar](max) NOT NULL,
	[JustificacionProyecto] [nvarchar](max) NOT NULL,
	[ObjetivoGeneral] [nvarchar](max) NOT NULL,
	[ObjetivosEspecificos] [nvarchar](max) NOT NULL,
	[ResultadosEspecificos] [nvarchar](max) NULL,
	[ResultadosTransversales] [nvarchar](max) NULL,
	[ResultadosBasicos] [nvarchar](max) NULL,
	[Beneficiarios] [nvarchar](max) NOT NULL,
	[ImpactoSocial] [nvarchar](max) NOT NULL,
	[ImpactoEconomico] [nvarchar](max) NOT NULL,
	[ImpactoAmbiental] [nvarchar](max) NOT NULL,
	[ImpactoTecnologico] [nvarchar](max) NOT NULL,
	[Restricciones] [nvarchar](max) NOT NULL,
	[Productos] [nvarchar](max) NOT NULL,
	[Preguntas] [nvarchar](max) NOT NULL,
	[InstructoresRequeridos] [nvarchar](50) NOT NULL,
	[NumeroAprendices] [nvarchar](50) NOT NULL,
	[DescripcionAmbiente] [nvarchar](max) NOT NULL,
	[IdEquipoDP] [int] NOT NULL,
 CONSTRAINT [PK_ProyectoFormativo] PRIMARY KEY CLUSTERED 
(
	[IdProyectoFormativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recursos]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recursos](
	[IdRecurso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[Cantidad] [nvarchar](50) NOT NULL,
	[ValorUnitario] [nvarchar](50) NOT NULL,
	[ValorTotal] [nvarchar](50) NOT NULL,
	[Especialidad] [nvarchar](50) NOT NULL,
	[IdTipoRecurso] [int] NOT NULL,
	[IdActividadesProyecto] [int] NOT NULL,
 CONSTRAINT [PK_Recursos] PRIMARY KEY CLUSTERED 
(
	[IdRecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Resultado]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resultado](
	[IdResultado] [int] IDENTITY(1,1) NOT NULL,
	[Resultado] [nvarchar](500) NOT NULL,
	[IdCompetencia] [int] NOT NULL,
 CONSTRAINT [PK_Resultado] PRIMARY KEY CLUSTERED 
(
	[IdResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResultadoActividades]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoActividades](
	[IdResultadoActividades] [int] IDENTITY(1,1) NOT NULL,
	[IdResultado] [int] NOT NULL,
	[IdActividadesProyecto] [int] NOT NULL,
 CONSTRAINT [PK_ResultadoActividad] PRIMARY KEY CLUSTERED 
(
	[IdResultadoActividades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoCompetencia]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCompetencia](
	[IdTipoCompetencia] [int] IDENTITY(1,1) NOT NULL,
	[Competencia] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoCompetencia] PRIMARY KEY CLUSTERED 
(
	[IdTipoCompetencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoRecursos]    Script Date: 30/07/2018 11:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRecursos](
	[IdTipoRecurso] [int] IDENTITY(1,1) NOT NULL,
	[TipoRecurso] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_TipoRecurso] PRIMARY KEY CLUSTERED 
(
	[IdTipoRecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Competencia] ON 

INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (2, N'220501006
', N'ESPECIFICAR LOS REQUISITOS NECESARIOS PARA DESARROLLAR EL SISTEMA DE INFORMACION DE ACUERDO CON LAS NECESIDADES DEL CLIENTE.
', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (3, N'220501007', N'CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.
', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (4, N'220501009', N'PARTICIPAR EN EL PROCESO DE NEGOCIACIÓN DE TECNOLOGÍA INFORMÁTICA PARA PERMITIR LA IMPLEMENTACIÓN DEL SISTEMA DE INFORMACIÓN.
', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (5, N'220501032', N'ANALIZAR LOS REQUISITOS DEL CLIENTE PARA CONSTRUIR EL SISTEMA DE INFORMACION.', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (6, N'220501033', N'DISEÑAR EL SISTEMA DE ACUERDO CON LOS REQUISITOS DEL CLIENTE.', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (8, N'220501034', N'IMPLANTAR LA SOLUCIÓN QUE CUMPLA CON LOS REQUISITOS PARA SU OPERACIÓN.', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (9, N'220501035', N'APLICAR BUENAS PRÁCTICAS DE CALIDAD EN EL PROCESO DE DESARROLLO DE SOFTWARE, DE ACUERDO CON EL REFERENTE ADOPTADO EN LA EMPRESA.
', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (10, N'240201500', N'PROMOVER LA INTERACCIÓN IDÓNEA CONSIGO MISMO, CON LOS DEMÁS Y CON LA NATURALEZA EN LOS CONTEXTOS LABORAL Y SOCIAL
.', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (11, N'240201501', N'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (12, N'240201502', N'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL.', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (13, N'RESULTADOS DE APRENDIZAJE ETAPA PRACTICA
', N'APLICAR EN LA RESOLUCIÓN DE PROBLEMAS REALES DEL SECTOR PRODUCTIVO, LOS CONOCIMIENTOS, HABILIDADES Y DESTREZAS PERTINENTES A LAS COMPETENCIAS DEL PROGRAMA DE FORMACIÓN ASUMIENDO ESTRATEGIAS Y METODOLOGÍAS DE AUTOGESTIÓN
.', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (14, N'OCUPACIONES QUE PODRÁ DESEMPEÑAR', N'ANALISTAS DE SISTEMAS INFORMÁTICOS', NULL, 2, 1)
INSERT [dbo].[Competencia] ([IdCompetencia], [CodigoCompetencia], [NombreCompetencia], [DescripcionCompetencia], [IdProgramaFormacion], [IdTipoCompetencia]) VALUES (15, N'220501006', N'ESPECIFICAR LOS REQUISITOS NECESARIOS PARA DESARROLLAR EL SISTEMA DE INFORMACION DE ACUERDO CON LAS NECESIDADES DEL CLIENTE.
', NULL, 2, 1)
SET IDENTITY_INSERT [dbo].[Competencia] OFF
SET IDENTITY_INSERT [dbo].[ConocimientoConcepto] ON 

INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (1, N'INFORMACIÓN: ELEMENTOS, TÉCNICAS DE RECOLECCIÓN, ORGANIZACIÓN Y ANÁLISIS DE DATOS, PRESENTACIÓN DE RESULTADOS. ', 3)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (2, N'SISTEMAS DE INFORMACIÓN: ELEMENTOS, CLASIFICACIÓN, CARACTERÍSTICAS TEORÍA GENERAL DE SISTEMAS: CONCEPTOS, CARACTERÍSTICAS', 3)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (3, N'ENFOQUE SISTÉMICO: CONCEPTO, CARACTERÍSTICAS, APLICACIÓN. PROCESOS: IDENTIFICACIÓN, TIPOS, CARACTERÍSTICAS, METODOLOGÍAS DE ANÁLISIS, ELABORACIÓN DE MAPAS, IDENTIFICACIÓN DE PROCESOS CRÍTICOS A MEJORAR Y ENFOQUES DE MEJORAMIENTO', 1)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (4, N'HARDWARE: HISTORIA, CLASES, TIPOS DE DISPOSITIVOS', 2)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (5, N'REDES: TIPOS, CARACTERÍSTICAS', 2)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (6, N'MOTORES DE BASES DE DATOS: CARACTERÍSTICAS, CLASIFICACIÓN', 2)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (7, N'SOFTWARE: HISTORIA, TAXONOMIA', 2)
INSERT [dbo].[ConocimientoConcepto] ([IdConocimientoConcepto], [Descripcion], [IdResultado]) VALUES (8, N'SISTEMAS OPERATIVOS: CONCEPTOS, CARACTERÍSTICAS
', 2)
SET IDENTITY_INSERT [dbo].[ConocimientoConcepto] OFF
SET IDENTITY_INSERT [dbo].[ConocimientoProceso] ON 

INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (28, N'IDENTIFICAR FUENTES DE INFORMACIÓN.', 3)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (29, N'IDENTIFICAR LOS PARÁMETROS O ESTRUCTURA DE UN SISTEMA DE INFORMACIÓN DE UNA DETERMINADA EMPRESA.', 3)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (30, N'DISEÑAR Y APLICAR INSTRUMENTOS PARA RECOLECTAR INFORMACIÓN. ', 3)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (31, N'ELABORAR INFORMES', 3)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (32, N'ELABORAR MAPA DE PROCESOS CON SUS INTERRELACIONES. ', 1)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (33, N'DIAGRAMAR EN FORMA DETALLADA CADA PROCESO', 1)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (34, N'IDENTIFICAR EL HARDWARE DE LA EMPRESA', 2)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (35, N'DESCRIBIR LAS PRINCIPALES CARACTERÍSTICAS DE LOS MOTORES DE BASES DE DATOS ', 2)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (36, N'IDENTIFICAR EL SOFTWARE DE LA EMPRESA ', 2)
INSERT [dbo].[ConocimientoProceso] ([IdConocimientoProceso], [Descripcion], [IdResultado]) VALUES (37, N'ELABORAR EL INFORME DE REQUERIMIENTOS.
', 1)
SET IDENTITY_INSERT [dbo].[ConocimientoProceso] OFF
SET IDENTITY_INSERT [dbo].[CriteriosEvaluacion] ON 

INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (1, N'IDENTIFICA Y DESCRIBE, EN UN SISTEMA DE INFORMACIÓN DADO, LOS DATOS DE ENTRADA, PROCESAMIENTO DE LOS DATOS E INFORMACIÓN GENERADA, SEGÚN NECESIDADES DEL CLIENTE.', 3)
INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (2, N'DETERMINA LAS TÉCNICAS DE RECOLECCIÓN DE INFORMACIÓN DE ACUERDO CON EL OBJETIVO PLANTEADO PARA DAR RESPUESTA AL REQUERIMIENTO DEL USUARIO, SEGÚN NORMAS Y PROCEDIMIENTOS ESTABLECIDOS ', 3)
INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (3, N'DISEÑA INSTRUMENTOS PARA RECOLECCIÓN DE INFORMACIÓN, DE ACUERDO CON LA SITUACIÓN PLANTEADA POR EL USUARIO Y SIGUIENDO NORMAS Y PROCEDIMIENTOS TÉCNICOS.', 3)
INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (4, N'APLICA TÉCNICAS E INSTRUMENTOS PARA RECOLECTAR LA INFORMACIÓN A UTILIZAR, QUE PERMITAN LA ORGANIZACIÓN Y ANÁLISIS DE LOS DATOS RECOLECTADOS, SEGÚN NORMAS ESTABLECIDAS.', 3)
INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (5, N'PRESENTA INFORMES RELACIONADOS CON LAS NECESIDADES DEL USUARIO, FRENTE A LOS REQUERIMIENTOS DEL SISTEMA DE INFORMACIÓN, DE FORMA ORGANIZADA, DE ACUERDO CON LOS PROTOCOLOS ESTABLECIDOS.', 2)
INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (6, N'APLICA TÉCNICAS DE ANÁLISIS DE PROCESOS, PARA DEFINIR REQUERIMIENTOS DE INFORMACIÓN EN UN SISTEMA DE LA EMPRESA, SIGUIENDO LA METODOLOGÍA ESTABLECIDA', 1)
INSERT [dbo].[CriteriosEvaluacion] ([IdCriteriosEvaluacion], [Descripcion], [IdResultado]) VALUES (7, N'ELABORA EL MAPA DE PROCESOS DE LA EMPRESA, DETERMINANDO LOS PUNTOS CRÍTICOS A MEJORAR, SIGUIENDO NORMAS Y PROCEDIMIENTOS TÉCNICOS.
', 1)
SET IDENTITY_INSERT [dbo].[CriteriosEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[EquipoDesarrolloPedagogico] ON 

INSERT [dbo].[EquipoDesarrolloPedagogico] ([IdEquipoDP], [NombreEquipoDP], [Descripcion]) VALUES (1, N'Sistemas', N'Encargado de fichas de tecnologia')
SET IDENTITY_INSERT [dbo].[EquipoDesarrolloPedagogico] OFF
SET IDENTITY_INSERT [dbo].[Ficha] ON 

INSERT [dbo].[Ficha] ([IdFicha], [FechaInicio], [FechaFinal], [Jornada], [CodigoFicha], [IdProgramaFormacion], [IdProyectoFormativo]) VALUES (1, CAST(N'2017-04-17' AS Date), CAST(N'2018-09-30' AS Date), N'Diurna', N'1365211', 2, NULL)
INSERT [dbo].[Ficha] ([IdFicha], [FechaInicio], [FechaFinal], [Jornada], [CodigoFicha], [IdProgramaFormacion], [IdProyectoFormativo]) VALUES (2, CAST(N'2018-04-17' AS Date), CAST(N'2019-09-30' AS Date), N'Mixta', N'0000', 2, NULL)
INSERT [dbo].[Ficha] ([IdFicha], [FechaInicio], [FechaFinal], [Jornada], [CodigoFicha], [IdProgramaFormacion], [IdProyectoFormativo]) VALUES (6, CAST(N'2017-10-06' AS Date), CAST(N'2019-04-29' AS Date), N'Nocturna', N'1501718', 2, NULL)
SET IDENTITY_INSERT [dbo].[Ficha] OFF
SET IDENTITY_INSERT [dbo].[ProgramaFormación] ON 

INSERT [dbo].[ProgramaFormación] ([IdProgramaFormacion], [CodigoPrograma], [RequisitosIngreso], [NivelFormacion], [Version], [Descripcion]) VALUES (2, N'228106', N'Académicos:  Grado Once Superar prueba de aptitud, motivación, interés y competencias mínimas de ingreso', N'TECNÓLOGO', N'102', N'Ejecuta el proceso integral (análisis, diseño, implementación, pruebas y ajustes) de generación de sistemas de información, para la sitematización o automatización de procesos.
')
INSERT [dbo].[ProgramaFormación] ([IdProgramaFormacion], [CodigoPrograma], [RequisitosIngreso], [NivelFormacion], [Version], [Descripcion]) VALUES (3, N'217317', N'Superar prueba de Aptitud y las demás establecidas por la institucion', N'ESPECIALIZACIÓN TECNOLÓGICA', N'1', NULL)
SET IDENTITY_INSERT [dbo].[ProgramaFormación] OFF
SET IDENTITY_INSERT [dbo].[ProyectoFormativo] ON 

INSERT [dbo].[ProyectoFormativo] ([IdProyectoFormativo], [CodigoProyecto], [NombreProyecto], [TiempoProyecto], [Informacion], [PalabrasClaves], [FichasAsociadas], [EmpresasParticipantes], [PlanteamientoProblema], [JustificacionProyecto], [ObjetivoGeneral], [ObjetivosEspecificos], [ResultadosEspecificos], [ResultadosTransversales], [ResultadosBasicos], [Beneficiarios], [ImpactoSocial], [ImpactoEconomico], [ImpactoAmbiental], [ImpactoTecnologico], [Restricciones], [Productos], [Preguntas], [InstructoresRequeridos], [NumeroAprendices], [DescripcionAmbiente], [IdEquipoDP]) VALUES (5, N'1298878', N'SISTEMATIZACIÓN DE PROCESOS ADMINISTRATIVOS PARA ORGANIZACIÓNES', N'18 meses', NULL, N' búsqueda:
Sistematización, software, sistemas, plataforma', N'3', N'SENA', N'Muchas organizaciones de la región no cuentan con un sistema de información administrativo en línea, que les permita manejar de manera eficaz sus procesos internos, ocasionando pérdida de la información, procesos ineficientes y a la vez limitando su proyección económica y social.
', N'La creación e implementación de un sistema de información para las organizaciones que administren en línea sus procesos internos, permitirá un manejo eficiente y segura de la información, del tiempo, de los recursos y su proyección e inclusión en el mercado globalizado.
', N'Implementar un sistema de información en línea que permita administrar los procesos internos de las organizaciones.
', N'Diagnosticar los procesos actuales de manejo de información en la organización
Diseñar un sistema de información en línea que solucione las necesidades identificadas.
Desarrollar el sistema de información de acuerdo con el diseño.
Ejecutar las pruebas del sistema de información desarrollado.
Implementar el sistema según normas y protocolos establecidos.
Aplicar estándares de seguridad y calidad en el manejo de información establecidos por las leyes vigentes.
Desarrollar habilidades de investigación enfocadas a la innovación y el desarrollo tecnológico a partir de estrategias y técnicas didácticas planteadas.', N'20', N'14', N'32', N'Pequeñas, medianas y grandes organizaciones de la región.', N'Mejoramiento del entorno comunicativo de la Organización, generando una cultura de administración y seguridad de la información.
 ', N'Disminución de costos por reducción de tiempos y aumento en la productividad.
 ', N'Implementación y fomento de la cultura del no papel.
 ', N'Sistematización de la información y actualización permanente de los recursos tecnológicos de las empresas.
', N'Riesgo: No tener acceso a toda la información Solución: Elaborar documento previo de compromiso que garantice el acceso a la información
Riesgo: Reducción inesperada en presupuesto Solución: Asegurar disponibilidad presupuestal.
Riesgo: No delimitar el alcance del proyecto Solución: Establecer los requerimientos específicos del proyecto.', N'Informe de requerimientos según estándar IEEE.
Documento que contenga el diseño del sistema en diagramas UML. Módulos de software con código fuente y modelado de Base de Datos con estándar 3FN.
Documentación de pruebas.
Manual técnico y manual de usuario de la aplicación.
Link de acceso a la aplicación funcional.
Producto físico y/o digital que permita evidenciar la investigación, el desarrollo tecnológico y/o la innovación.

', N'2.6 Innovación/Gestión Tecnológica
El proyecto resuelve una necesidad del sector productivo? SI
El proyecto mejora el proceso/producto/servicio existente? SI
El proyecto involucra el uso de nuevas técnicas y tecnologías de proceso? SI
Los productos finales son susceptibles a protección industrial y/o derechos de autor? SI
Los productos obtenidos en el proyecto pueden ser posicionados en el mercado? SI
2.7 Valoración Productiva
Con el desarrollo del proyecto se puede satisfacer la necesidad de un cliente potencial? SI
Viabilidad de proyecto para plan de negocio? SI', N'5', N'30', N'Aula de formación con equipos de computo de última tecnología, mesas, sillas, video proyector, servicio de internet banda ancha.
', 1)
SET IDENTITY_INSERT [dbo].[ProyectoFormativo] OFF
SET IDENTITY_INSERT [dbo].[Resultado] ON 

INSERT [dbo].[Resultado] ([IdResultado], [Resultado], [IdCompetencia]) VALUES (1, N'ELABORAR MAPAS DE PROCESOS QUE PERMITAN IDENTIFICAR LAS ÁREASINVOLUCRADAS EN UN SISTEMA DE INFORMACIÓN, UTILIZANDO HERRAMIENTASINFORMÁTICAS Y LAS TICS, PARA GENERAR INFORMES SEGÚN LAS NECESIDADES DELA EMPRESA ', 15)
INSERT [dbo].[Resultado] ([IdResultado], [Resultado], [IdCompetencia]) VALUES (2, N'PLANTEAR DIFERENTES ALTERNATIVAS, DE MODELOS TECNOLÓGICOS DE INFORMACIÓNEMPRESARIAL, TENIENDO EN CUENTA LA PLATAFORMA TECNOLÓGICA DE LA EMPRESAY LAS TENDENCIAS DEL MERCADO, PARA DAR SOLUCIÓN A LAS SITUACIONESRELACIONADAS CON EL MANEJO DE LA INFORMACIÓN DE LA ORGANIZACIÓN. ', 15)
INSERT [dbo].[Resultado] ([IdResultado], [Resultado], [IdCompetencia]) VALUES (3, N'APLICAR LAS TÉCNICAS DE RECOLECCIÓN DE DATOS , DISEÑANDO LOSINSTRUMENTOS NECESARIOS PARA EL PROCESAMIENTO DE INFORMACIÓN, DEACUERDO CON LA SITUACIÓN PLANTEADA POR LA EMPRESA
', 15)
SET IDENTITY_INSERT [dbo].[Resultado] OFF
SET IDENTITY_INSERT [dbo].[TipoCompetencia] ON 

INSERT [dbo].[TipoCompetencia] ([IdTipoCompetencia], [Competencia], [Tipo]) VALUES (1, N'', N'Tecnica')
SET IDENTITY_INSERT [dbo].[TipoCompetencia] OFF
ALTER TABLE [dbo].[ActividadDeAprendizaje]  WITH CHECK ADD  CONSTRAINT [FK_ActividadDeAprendizaje_Guia] FOREIGN KEY([IdGuia])
REFERENCES [dbo].[Guia] ([IdGuia])
GO
ALTER TABLE [dbo].[ActividadDeAprendizaje] CHECK CONSTRAINT [FK_ActividadDeAprendizaje_Guia]
GO
ALTER TABLE [dbo].[ActividadesProyecto]  WITH CHECK ADD  CONSTRAINT [FK_ActividadesProyecto_Fases] FOREIGN KEY([IdFase])
REFERENCES [dbo].[Fases] ([IdFase])
GO
ALTER TABLE [dbo].[ActividadesProyecto] CHECK CONSTRAINT [FK_ActividadesProyecto_Fases]
GO
ALTER TABLE [dbo].[Competencia]  WITH CHECK ADD  CONSTRAINT [FK_Competencia_ProgramaFormación] FOREIGN KEY([IdProgramaFormacion])
REFERENCES [dbo].[ProgramaFormación] ([IdProgramaFormacion])
GO
ALTER TABLE [dbo].[Competencia] CHECK CONSTRAINT [FK_Competencia_ProgramaFormación]
GO
ALTER TABLE [dbo].[Competencia]  WITH CHECK ADD  CONSTRAINT [FK_Competencia_TipoCompetencia] FOREIGN KEY([IdTipoCompetencia])
REFERENCES [dbo].[TipoCompetencia] ([IdTipoCompetencia])
GO
ALTER TABLE [dbo].[Competencia] CHECK CONSTRAINT [FK_Competencia_TipoCompetencia]
GO
ALTER TABLE [dbo].[ConocimientoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_ConocimientoConcepto_Resultado] FOREIGN KEY([IdResultado])
REFERENCES [dbo].[Resultado] ([IdResultado])
GO
ALTER TABLE [dbo].[ConocimientoConcepto] CHECK CONSTRAINT [FK_ConocimientoConcepto_Resultado]
GO
ALTER TABLE [dbo].[ConocimientoProceso]  WITH CHECK ADD  CONSTRAINT [FK_ConocimientoProceso_Resultado1] FOREIGN KEY([IdResultado])
REFERENCES [dbo].[Resultado] ([IdResultado])
GO
ALTER TABLE [dbo].[ConocimientoProceso] CHECK CONSTRAINT [FK_ConocimientoProceso_Resultado1]
GO
ALTER TABLE [dbo].[CriteriosEvaluacion]  WITH CHECK ADD  CONSTRAINT [FK_CriteriosEvaluacion_Resultado] FOREIGN KEY([IdResultado])
REFERENCES [dbo].[Resultado] ([IdResultado])
GO
ALTER TABLE [dbo].[CriteriosEvaluacion] CHECK CONSTRAINT [FK_CriteriosEvaluacion_Resultado]
GO
ALTER TABLE [dbo].[Fases]  WITH CHECK ADD  CONSTRAINT [FK_Fases_ProyectoFormativo] FOREIGN KEY([IdProyectoFormativo])
REFERENCES [dbo].[ProyectoFormativo] ([IdProyectoFormativo])
GO
ALTER TABLE [dbo].[Fases] CHECK CONSTRAINT [FK_Fases_ProyectoFormativo]
GO
ALTER TABLE [dbo].[Ficha]  WITH CHECK ADD  CONSTRAINT [FK_Ficha_ProgramaFormación] FOREIGN KEY([IdProgramaFormacion])
REFERENCES [dbo].[ProgramaFormación] ([IdProgramaFormacion])
GO
ALTER TABLE [dbo].[Ficha] CHECK CONSTRAINT [FK_Ficha_ProgramaFormación]
GO
ALTER TABLE [dbo].[Ficha]  WITH CHECK ADD  CONSTRAINT [FK_Ficha_ProyectoFormativo] FOREIGN KEY([IdProyectoFormativo])
REFERENCES [dbo].[ProyectoFormativo] ([IdProyectoFormativo])
GO
ALTER TABLE [dbo].[Ficha] CHECK CONSTRAINT [FK_Ficha_ProyectoFormativo]
GO
ALTER TABLE [dbo].[Guia]  WITH CHECK ADD  CONSTRAINT [FK_Guia_Competencia] FOREIGN KEY([IdCompetencia])
REFERENCES [dbo].[Competencia] ([IdCompetencia])
GO
ALTER TABLE [dbo].[Guia] CHECK CONSTRAINT [FK_Guia_Competencia]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_EquipoDesarrolloPedagogico] FOREIGN KEY([IdEquipoDP])
REFERENCES [dbo].[EquipoDesarrolloPedagogico] ([IdEquipoDP])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_EquipoDesarrolloPedagogico]
GO
ALTER TABLE [dbo].[ProyectoFormativo]  WITH CHECK ADD  CONSTRAINT [FK_ProyectoFormativo_EquipoDesarrolloPedagogico] FOREIGN KEY([IdEquipoDP])
REFERENCES [dbo].[EquipoDesarrolloPedagogico] ([IdEquipoDP])
GO
ALTER TABLE [dbo].[ProyectoFormativo] CHECK CONSTRAINT [FK_ProyectoFormativo_EquipoDesarrolloPedagogico]
GO
ALTER TABLE [dbo].[Recursos]  WITH CHECK ADD  CONSTRAINT [FK_Recursos_ActividadesProyecto] FOREIGN KEY([IdActividadesProyecto])
REFERENCES [dbo].[ActividadesProyecto] ([IdActividadesProyecto])
GO
ALTER TABLE [dbo].[Recursos] CHECK CONSTRAINT [FK_Recursos_ActividadesProyecto]
GO
ALTER TABLE [dbo].[Recursos]  WITH CHECK ADD  CONSTRAINT [FK_Recursos_TipoRecursos] FOREIGN KEY([IdTipoRecurso])
REFERENCES [dbo].[TipoRecursos] ([IdTipoRecurso])
GO
ALTER TABLE [dbo].[Recursos] CHECK CONSTRAINT [FK_Recursos_TipoRecursos]
GO
ALTER TABLE [dbo].[Resultado]  WITH CHECK ADD  CONSTRAINT [FK_Resultado_Competencia] FOREIGN KEY([IdCompetencia])
REFERENCES [dbo].[Competencia] ([IdCompetencia])
GO
ALTER TABLE [dbo].[Resultado] CHECK CONSTRAINT [FK_Resultado_Competencia]
GO
ALTER TABLE [dbo].[ResultadoActividades]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoActividades_ActividadesProyecto] FOREIGN KEY([IdActividadesProyecto])
REFERENCES [dbo].[ActividadesProyecto] ([IdActividadesProyecto])
GO
ALTER TABLE [dbo].[ResultadoActividades] CHECK CONSTRAINT [FK_ResultadoActividades_ActividadesProyecto]
GO
ALTER TABLE [dbo].[ResultadoActividades]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoActividades_Resultado] FOREIGN KEY([IdResultado])
REFERENCES [dbo].[Resultado] ([IdResultado])
GO
ALTER TABLE [dbo].[ResultadoActividades] CHECK CONSTRAINT [FK_ResultadoActividades_Resultado]
GO
USE [master]
GO
ALTER DATABASE [BDPlaneacionPedagogica] SET  READ_WRITE 
GO
