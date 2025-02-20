USE [master]
GO
/****** Object:  Database [PetSavvy]    Script Date: 25/05/2023 15:52:16 ******/
CREATE DATABASE [PetSavvy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetSavvy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PetSavvy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PetSavvy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PetSavvy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PetSavvy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetSavvy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PetSavvy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetSavvy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetSavvy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetSavvy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetSavvy] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetSavvy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetSavvy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetSavvy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetSavvy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetSavvy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetSavvy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetSavvy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetSavvy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetSavvy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetSavvy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PetSavvy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetSavvy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetSavvy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetSavvy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetSavvy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetSavvy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetSavvy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetSavvy] SET RECOVERY FULL 
GO
ALTER DATABASE [PetSavvy] SET  MULTI_USER 
GO
ALTER DATABASE [PetSavvy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetSavvy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetSavvy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetSavvy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PetSavvy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PetSavvy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PetSavvy', N'ON'
GO
ALTER DATABASE [PetSavvy] SET QUERY_STORE = OFF
GO
USE [PetSavvy]
GO
/****** Object:  Table [dbo].[Accesorios]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesorios](
	[Id_Accesorio] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Accesorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adoptante]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adoptante](
	[Id_Adoptante] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[DNI] [char](10) NULL,
	[Telefono] [char](9) NULL,
	[Direccion] [varchar](90) NULL,
	[Cita_Id] [int] NULL,
	[Proceso_Adopcion_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Adoptante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Albergue]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albergue](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[Veterinario_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alimentos]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alimentos](
	[ID_Food] [int] NOT NULL,
	[Marca] [varchar](100) NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Food] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Id_Almacen] [int] NOT NULL,
	[Albergue_Id] [int] NULL,
	[ID_Gastos] [int] NULL,
	[id_medicamento] [int] NULL,
	[Id_Accesorio] [int] NULL,
	[ID_Food] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[Id] [int] NOT NULL,
	[Edad] [int] NULL,
	[Raza] [varchar](40) NULL,
	[Tamanio] [int] NULL,
	[Color] [varchar](20) NULL,
	[Afinidad] [varchar](20) NULL,
	[Proceso_Adopcion_Id] [int] NULL,
	[Albergue_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogo]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogo](
	[ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[Id] [int] NOT NULL,
	[Catalogo_ID] [int] NULL,
	[Encargado_DNI] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encargado]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encargado](
	[DNI] [char](10) NOT NULL,
	[Nombre] [varchar](40) NULL,
	[Telefono] [char](9) NULL,
	[Albergue_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gastos]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gastos](
	[ID_Gastos] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Fecha_comrpa] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Gastos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[id_medicamento] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Fecha_compra] [date] NULL,
	[Fecha_Vencimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proceso_Adopcion]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proceso_Adopcion](
	[Id] [int] NOT NULL,
	[Catalogo_ID] [int] NULL,
	[Encargado_DNI] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[Id] [int] NOT NULL,
	[id_medicamento] [int] NULL,
	[id_Animal] [int] NULL,
	[id_Veterianrio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinario]    Script Date: 25/05/2023 15:52:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinario](
	[id] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellido] [varchar](20) NULL,
	[NumeroColegiatura] [char](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adoptante]  WITH CHECK ADD  CONSTRAINT [fk_Cita] FOREIGN KEY([Cita_Id])
REFERENCES [dbo].[Cita] ([Id])
GO
ALTER TABLE [dbo].[Adoptante] CHECK CONSTRAINT [fk_Cita]
GO
ALTER TABLE [dbo].[Adoptante]  WITH CHECK ADD  CONSTRAINT [fk_Proceso_Adopcion] FOREIGN KEY([Proceso_Adopcion_Id])
REFERENCES [dbo].[Proceso_Adopcion] ([Id])
GO
ALTER TABLE [dbo].[Adoptante] CHECK CONSTRAINT [fk_Proceso_Adopcion]
GO
ALTER TABLE [dbo].[Albergue]  WITH CHECK ADD  CONSTRAINT [fk_Veterinario] FOREIGN KEY([Veterinario_id])
REFERENCES [dbo].[Veterinario] ([id])
GO
ALTER TABLE [dbo].[Albergue] CHECK CONSTRAINT [fk_Veterinario]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [fk_Accesorio] FOREIGN KEY([Id_Accesorio])
REFERENCES [dbo].[Accesorios] ([Id_Accesorio])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [fk_Accesorio]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [fk_Albergue3] FOREIGN KEY([Albergue_Id])
REFERENCES [dbo].[Albergue] ([Id])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [fk_Albergue3]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [fk_Almacen] FOREIGN KEY([ID_Food])
REFERENCES [dbo].[Alimentos] ([ID_Food])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [fk_Almacen]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [fk_Gastos] FOREIGN KEY([ID_Gastos])
REFERENCES [dbo].[Gastos] ([ID_Gastos])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [fk_Gastos]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [fk_Medicamento] FOREIGN KEY([id_medicamento])
REFERENCES [dbo].[Medicamentos] ([id_medicamento])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [fk_Medicamento]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [fk_Albergue2] FOREIGN KEY([Albergue_Id])
REFERENCES [dbo].[Albergue] ([Id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [fk_Albergue2]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [fk_Proceso_Adopcion2] FOREIGN KEY([Proceso_Adopcion_Id])
REFERENCES [dbo].[Proceso_Adopcion] ([Id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [fk_Proceso_Adopcion2]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fk_Catalogo] FOREIGN KEY([Catalogo_ID])
REFERENCES [dbo].[Catalogo] ([ID])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fk_Catalogo]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fk_Encargado] FOREIGN KEY([Encargado_DNI])
REFERENCES [dbo].[Encargado] ([DNI])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fk_Encargado]
GO
ALTER TABLE [dbo].[Encargado]  WITH CHECK ADD  CONSTRAINT [fk_Albergue] FOREIGN KEY([Albergue_Id])
REFERENCES [dbo].[Albergue] ([Id])
GO
ALTER TABLE [dbo].[Encargado] CHECK CONSTRAINT [fk_Albergue]
GO
ALTER TABLE [dbo].[Proceso_Adopcion]  WITH CHECK ADD  CONSTRAINT [fk_Catalogos] FOREIGN KEY([Catalogo_ID])
REFERENCES [dbo].[Catalogo] ([ID])
GO
ALTER TABLE [dbo].[Proceso_Adopcion] CHECK CONSTRAINT [fk_Catalogos]
GO
ALTER TABLE [dbo].[Proceso_Adopcion]  WITH CHECK ADD  CONSTRAINT [fk_Encargados] FOREIGN KEY([Encargado_DNI])
REFERENCES [dbo].[Encargado] ([DNI])
GO
ALTER TABLE [dbo].[Proceso_Adopcion] CHECK CONSTRAINT [fk_Encargados]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [fk_Animal] FOREIGN KEY([id_Animal])
REFERENCES [dbo].[Animal] ([Id])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [fk_Animal]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [fk_Medicamento2] FOREIGN KEY([id_medicamento])
REFERENCES [dbo].[Medicamentos] ([id_medicamento])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [fk_Medicamento2]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [fk_Veterinario2] FOREIGN KEY([id_Veterianrio])
REFERENCES [dbo].[Veterinario] ([id])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [fk_Veterinario2]
GO
USE [master]
GO
ALTER DATABASE [PetSavvy] SET  READ_WRITE 
GO
