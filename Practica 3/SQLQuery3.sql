USE [master]
GO
/****** Object:  Database [d]    Script Date: 30/04/2018 02:17:00 a. m. ******/
CREATE DATABASE [d]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\d.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\d_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [d] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [d].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [d] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [d] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [d] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [d] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [d] SET ARITHABORT OFF 
GO
ALTER DATABASE [d] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [d] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [d] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [d] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [d] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [d] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [d] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [d] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [d] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [d] SET  DISABLE_BROKER 
GO
ALTER DATABASE [d] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [d] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [d] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [d] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [d] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [d] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [d] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [d] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [d] SET  MULTI_USER 
GO
ALTER DATABASE [d] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [d] SET DB_CHAINING OFF 
GO
ALTER DATABASE [d] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [d] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [d] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [d] SET QUERY_STORE = OFF
GO
USE [d]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [d]
GO
/****** Object:  Table [dbo].[activo]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activo](
	[id_activos] [int] IDENTITY(1,1) NOT NULL,
	[id_code] [int] NOT NULL,
	[statusEQ] [varchar](50) NOT NULL,
	[add_desktop] [int] NULL,
	[add_laptop] [int] NULL,
	[add_monitor] [int] NULL,
	[add_impresora] [int] NULL,
	[add_servidor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[razonSocial] [varchar](50) NOT NULL,
	[rfc] [varchar](50) NOT NULL,
	[direccion] [int] NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[movil] [varchar](50) NULL,
	[correo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrato](
	[id_contrato] [int] IDENTITY(1,1) NOT NULL,
	[date_inicio] [date] NOT NULL,
	[date_fin] [date] NOT NULL,
	[add_activos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[desktop]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desktop](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[es_cpu] [varchar](50) NOT NULL,
	[es_ram] [varchar](50) NOT NULL,
	[es_TM] [varchar](50) NULL,
	[es_DD] [varchar](50) NOT NULL,
	[es_TV] [varchar](50) NULL,
	[es_gab] [varchar](50) NULL,
	[serie] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[id_dir] [int] IDENTITY(1,1) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[numero] [int] NOT NULL,
	[colonia] [varchar](50) NOT NULL,
	[cp] [int] NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[pais] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impresora]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impresora](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[serie] [varchar](50) NOT NULL,
	[especificacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laptop]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laptop](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[es_cpu] [varchar](50) NOT NULL,
	[es_ram] [varchar](50) NOT NULL,
	[es_DD] [varchar](50) NOT NULL,
	[es_TV] [varchar](50) NULL,
	[serie] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monitor]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monitor](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[serie] [varchar](50) NOT NULL,
	[especificaciones] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renter]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renter](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[date_ingreso] [datetime] NULL,
	[ubicacion] [geography] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servidor]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servidor](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[serie] [varchar](50) NOT NULL,
	[es_cpu] [varchar](50) NOT NULL,
	[es_ram] [varchar](50) NOT NULL,
	[es_TM] [varchar](50) NOT NULL,
	[es_DD] [varchar](50) NOT NULL,
	[es_TV] [varchar](50) NULL,
	[es_gab] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 30/04/2018 02:17:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[date_inicio] [datetime] NOT NULL,
	[date_fin] [datetime] NOT NULL,
	[add_cliente] [int] NULL,
	[add_renter] [int] NULL,
	[add_contrato] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_desktop] FOREIGN KEY([add_desktop])
REFERENCES [dbo].[desktop] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_desktop]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_impresora] FOREIGN KEY([add_impresora])
REFERENCES [dbo].[impresora] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_impresora]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_laptop] FOREIGN KEY([add_laptop])
REFERENCES [dbo].[laptop] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_laptop]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_monitor] FOREIGN KEY([add_monitor])
REFERENCES [dbo].[monitor] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_monitor]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_servidor] FOREIGN KEY([add_servidor])
REFERENCES [dbo].[servidor] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_servidor]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_direccion] FOREIGN KEY([direccion])
REFERENCES [dbo].[direccion] ([id_dir])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_direccion]
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD  CONSTRAINT [FK_contrato_activo] FOREIGN KEY([add_activos])
REFERENCES [dbo].[activo] ([id_activos])
GO
ALTER TABLE [dbo].[contrato] CHECK CONSTRAINT [FK_contrato_activo]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_clientes] FOREIGN KEY([add_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_clientes]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_contrato] FOREIGN KEY([add_contrato])
REFERENCES [dbo].[contrato] ([id_contrato])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_contrato]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_renter] FOREIGN KEY([add_renter])
REFERENCES [dbo].[renter] ([id_user])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_renter]
GO
USE [master]
GO
ALTER DATABASE [d] SET  READ_WRITE 
GO
