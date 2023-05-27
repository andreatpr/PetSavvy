﻿USE [master]
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


--andrea
--data para veterinarios
INSERT INTO Veterinario VALUES(1,'Jon','Stein','953779');
INSERT INTO Veterinario VALUES(2,'Billy','Jansson','466972');
INSERT INTO Veterinario VALUES(3,'Mauricio','Dun','574905');
INSERT INTO Veterinario VALUES(4,'Kelvin','Hainsworth','857378');
INSERT INTO Veterinario VALUES(5,'Carlos','Bromley','264433');
INSERT INTO Veterinario VALUES(6,'Quenten','Ruiz','261942');
INSERT INTO Veterinario VALUES(7,'Jeremy','Beveridge','503104');
INSERT INTO Veterinario VALUES(8,'Ramon','Sears','665356');
INSERT INTO Veterinario VALUES(9,'Amira','Stockton','297135');
INSERT INTO Veterinario VALUES(10,'Oswaldo','Johansen','995981');
INSERT INTO Veterinario VALUES(11,'Irene','Reddenhurst','424197');
INSERT INTO Veterinario VALUES(12,'Maxwell','O Reilly','459963');
INSERT INTO Veterinario VALUES(13,'Kenzie','Blackwood','761868');
INSERT INTO Veterinario VALUES(14,'Elliot','Lim','128306');

--data de albergue
INSERT INTO Albergue VALUES(1,'Albergue Canino "La Esperanza"','Calle del Sol, Colonia San Francisco, Ciudad Esperanza, Estado Central',1);
INSERT INTO Albergue VALUES(2,'Albergue Felino "Gatos Sin Hogar"','Avenida Principal, Urbanización Los Álamos, Distrito Residencial, Ciudad Primavera',2);
INSERT INTO Albergue VALUES(3,'Refugio de Mascotas "Patas Felices"','Paseo Marítimo, Barrio La Costa, Ciudad Bella Vista, País del Mar',3);
INSERT INTO Albergue VALUES(4,'Albergue Animal "Amor y Protección"','Calle Mayor, Barrio El Centro, Ciudad Antigua, Provincia Histórica',4);
INSERT INTO Albergue VALUES(5,'Centro de Adopción "Hogar Animal"','Avenida del Parque, Urbanización El Bosque, Ciudad País Verde',5);
INSERT INTO Albergue VALUES(6,'Albergue Canino y Felino "Amigos Peludos"','Calle Real, Colonia San Pedro, Ciudad Moderna, Estado Metropolitano',6);
INSERT INTO Albergue VALUES(7,'Refugio de Animales "Rincón de Esperanza"','Avenida Principal, Barrio La Esperanza, Ciudad Bella Esperanza, Sol',7);
INSERT INTO Albergue VALUES(8,'Albergue de Rescate Animal "Vida Nueva"','Paseo de los Robles, Urbanización Las Acacias, Ciudad Tranquila, Sereno',8);
INSERT INTO Albergue VALUES(9,'Corazón Animal','Calle del Carmen, Barrio El Mirador, Ciudad Encantada, País de Ser',9);
INSERT INTO Albergue VALUES(10,'Un Hogar para Todos','Calle del Río, Colonia El Prado, Ciudad Hermosa, Estado Delicias',10);
INSERT INTO Albergue VALUES(11,'Albergue para Mascotas "Amigos Fieles"','Avenida Libertad, Urbanización Los Pinos, Distrito Libertador, Esperanza',11);
INSERT INTO Albergue VALUES(12,'Refugio de Animales "Un Nuevo Comienzo"','Paseo del Mar, Barrio Las Brisas, Ciudad Costera, el Horizonte',12);
INSERT INTO Albergue VALUES(13,'Albergue de Adopción "Patas de Amor"','Calle Principal, Barrio El Carmen, Ciudad Antigua, Provincia',13);
INSERT INTO Albergue VALUES(14,'Hogar Animal "Casa de Esperanza"','Avenida de la Paz, Urbanización Los Alamos, Ciudad Serena',14);

--data de catalogo
INSERT INTO Catalogo VALUES(1);
INSERT INTO Catalogo VALUES(2);
INSERT INTO Catalogo VALUES(3);
INSERT INTO Catalogo VALUES(4);
INSERT INTO Catalogo VALUES(5);
INSERT INTO Catalogo VALUES(6);
INSERT INTO Catalogo VALUES(7);
INSERT INTO Catalogo VALUES(8);
INSERT INTO Catalogo VALUES(9);
INSERT INTO Catalogo VALUES(10);
INSERT INTO Catalogo VALUES(11);
INSERT INTO Catalogo VALUES(12);
INSERT INTO Catalogo VALUES(13);
INSERT INTO Catalogo VALUES(14);

--data de encargado
INSERT INTO Encargado VALUES('1598610','Dakota','144025037',1);
INSERT INTO Encargado VALUES('4677082','Stephon','624632727',2);
INSERT INTO Encargado VALUES('6121009','Jaden','746369155',3);
INSERT INTO Encargado VALUES('9853285','Aleena','429236914',4);
INSERT INTO Encargado VALUES('3147782','Marvin','929885317',5);
INSERT INTO Encargado VALUES('6682271','Shania','869746822',6);
INSERT INTO Encargado VALUES('2840023','Drew','169478440',7);
INSERT INTO Encargado VALUES('7244565','Amelia','473720571',8);
INSERT INTO Encargado VALUES('3942380','Sabine','319392386',9);
INSERT INTO Encargado VALUES('3704249','Alfonso','587649571',10);
INSERT INTO Encargado VALUES('7092368','Max','140096979',11);
INSERT INTO Encargado VALUES('3611343','Aleena','456247501',12);
INSERT INTO Encargado VALUES('4032921','Alma','933211176',13);
INSERT INTO Encargado VALUES('5523002','Jayda','470378096',14);

--data de cita
INSERT INTO Cita VALUES(1,1,'1598610');
INSERT INTO Cita VALUES(2,2,'4677082');
INSERT INTO Cita VALUES(3,3,'6121009');
INSERT INTO Cita VALUES(4,4,'9853285');
INSERT INTO Cita VALUES(5,5,'3147782');
INSERT INTO Cita VALUES(6,6,'6682271');
INSERT INTO Cita VALUES(7,7,'2840023');
INSERT INTO Cita VALUES(8,8,'7244565');
INSERT INTO Cita VALUES(9,9,'3942380');
INSERT INTO Cita VALUES(10,10,'3704249');
INSERT INTO Cita VALUES(11,11,'7092368');
INSERT INTO Cita VALUES(12,12,'3611343');
INSERT INTO Cita VALUES(13,13,'4032921');
INSERT INTO Cita VALUES(14,14,'5523002');


--data de accesorios
INSERT INTO Accesorios VALUES(1,'Collar',22);
INSERT INTO Accesorios VALUES(2,'Correa',18);
INSERT INTO Accesorios VALUES(3,'Arnés',28);
INSERT INTO Accesorios VALUES(4,'Caja de arena',33);
INSERT INTO Accesorios VALUES(5,'Cama para mascotas',32);
INSERT INTO Accesorios VALUES(6,'Juguete de masticar',20);
INSERT INTO Accesorios VALUES(7,'Juguete interactivo',37);
INSERT INTO Accesorios VALUES(8,'Rascador para gatos',24);
INSERT INTO Accesorios VALUES(9,'Comedero y bebedero',18);
INSERT INTO Accesorios VALUES(10,'Transportador',47);
INSERT INTO Accesorios VALUES(11,'Ropa para mascotas',44);
INSERT INTO Accesorios VALUES(12,'Cepillo',18);
INSERT INTO Accesorios VALUES(13,'Productos de pelaje',27);
INSERT INTO Accesorios VALUES(14,'Bolsas',36);


--data de gastos
INSERT INTO Gastos VALUES(1,'Alimentación para los animales','2022/01/22');
INSERT INTO Gastos VALUES(2,'Atención veterinaria y medicamentos','2022/01/23');
INSERT INTO Gastos VALUES(3,'Esterilización y castración de los animales','2022/01/24');
INSERT INTO Gastos VALUES(4,'Mantenimiento de las instalaciones y jaulas','2022/01/25');
INSERT INTO Gastos VALUES(5,'Limpieza y desinfección de las áreas','2022/01/26');
INSERT INTO Gastos VALUES(6,'Salarios y beneficios para el personal','2022/01/27');
INSERT INTO Gastos VALUES(7,'Suministros y equipos para el cuidado de los animales','2022/01/28');
INSERT INTO Gastos VALUES(8,'Publicidad y promoción de los animales para adopción','2022/01/29');
INSERT INTO Gastos VALUES(9,'Gastos de transporte relacionados con los animales','2022/01/30');
INSERT INTO Gastos VALUES(10,'Organización de eventos de adopción','2022/01/31');
INSERT INTO Gastos VALUES(11,'Reparaciones y mantenimiento de infraestructuras','2022/02/01');
INSERT INTO Gastos VALUES(12,'Pagos de servicios públicos como electricidad y agua','2022/02/02');
INSERT INTO Gastos VALUES(13,'Gastos administrativos para el funcionamiento del albergue','2022/02/03');
INSERT INTO Gastos VALUES(14,'Seguros y licencias requeridos','2022/02/04');


-- data de animal
INSERT INTO Animal VALUES(1,10,' Labrador Retriever',30,'Negro','Amigable',NULL,1);
INSERT INTO Animal VALUES(2,2,' Bulldog Francés',45,'Blanco','Tímido',NULL,2);
INSERT INTO Animal VALUES(3,12,' Poodle',35,'Marrón','Juguetón',NULL,3);
INSERT INTO Animal VALUES(4,10,' Golden Retriever',50,'Gris','Protector',NULL,4);
INSERT INTO Animal VALUES(5,7,' Boxer',40,'Dorado','Leal',NULL,5);
INSERT INTO Animal VALUES(6,11,' Chihuahua',25,'Crema','Sociable',NULL,6);
INSERT INTO Animal VALUES(7,3,' Husky Siberiano',55,'Atigrado','Independiente',NULL,7);
INSERT INTO Animal VALUES(8,3,' Rottweiler',60,'Leonado','Curioso',NULL,8);
INSERT INTO Animal VALUES(9,8,' Beagle',38,'Crema','Energético',NULL,9);
INSERT INTO Animal VALUES(10,9,' Dalmata',42,'Canela','Tranquilo',NULL,10);
INSERT INTO Animal VALUES(11,11,' Bichón Frisé',28,'Tricolor','Tranquilo',NULL,11);
INSERT INTO Animal VALUES(12,5,' Pastor Alemán',48,'Bicolor','Cariñoso',NULL,12);
INSERT INTO Animal VALUES(13,9,' Cocker Spaniel',33,'Crema','Agresivo',NULL,13);
INSERT INTO Animal VALUES(14,6,' Shih Tzu',37,'Plateado','Territorial',NULL,14);

--data de medicamentos
INSERT INTO Medicamentos VALUES(1,'Amoxicilina','2023/02/01','2024/02/01');
INSERT INTO Medicamentos VALUES(2,'Metronidazol','2023/02/02','2024/02/02');
INSERT INTO Medicamentos VALUES(3,'Ibuprofeno','2023/02/03','2024/02/03');
INSERT INTO Medicamentos VALUES(4,'Prednisona','2023/02/04','2024/02/04');
INSERT INTO Medicamentos VALUES(5,'Ciprofloxacina','2023/02/05','2024/02/05');
INSERT INTO Medicamentos VALUES(6,'Ketoprofeno','2023/02/06','2024/02/06');
INSERT INTO Medicamentos VALUES(7,'Enrofloxacina','2023/02/07','2024/02/07');
INSERT INTO Medicamentos VALUES(8,'Meloxicam','2023/02/08','2024/02/08');
INSERT INTO Medicamentos VALUES(9,'Fenbendazol','2023/02/09','2024/02/09');
INSERT INTO Medicamentos VALUES(10,'Ivermectina','2023/02/10','2024/02/10');
INSERT INTO Medicamentos VALUES(11,'Dipirona','2023/02/11','2024/02/11');
INSERT INTO Medicamentos VALUES(12,'Ranitidina','2023/02/12','2024/02/12');
INSERT INTO Medicamentos VALUES(13,'Omeprazol','2023/02/13','2024/02/13');
INSERT INTO Medicamentos VALUES(14,'Doxiciclina','2023/02/14','2024/02/14');

--data de receta
INSERT INTO Receta VALUES(1,1,1,1);
INSERT INTO Receta VALUES(2,1,8,8);
INSERT INTO Receta VALUES(3,3,3,3);
INSERT INTO Receta VALUES(4,NULL,NULL,NULL);
INSERT INTO Receta VALUES(5,NULL,NULL,NULL);
INSERT INTO Receta VALUES(6,6,6,6);
INSERT INTO Receta VALUES(7,NULL,NULL,NULL);
INSERT INTO Receta VALUES(8,8,8,8);
INSERT INTO Receta VALUES(9,9,9,9);
INSERT INTO Receta VALUES(10,10,10,10);
INSERT INTO Receta VALUES(11,3,11,10);
INSERT INTO Receta VALUES(12,12,12,12);
INSERT INTO Receta VALUES(13,13,13,13);
INSERT INTO Receta VALUES(14,14,14,14);


--data de alimentos
INSERT INTO Alimentos VALUES(1,'Royal Canin',6);
INSERT INTO Alimentos VALUES(2,'Eukanuba',6);
INSERT INTO Alimentos VALUES(3,'Pro Plan',19);
INSERT INTO Alimentos VALUES(4,'Nutro',14);
INSERT INTO Alimentos VALUES(5,'Pedigree',23);
INSERT INTO Alimentos VALUES(6,'Dog Chow',30);
INSERT INTO Alimentos VALUES(7,'Hills Science Diet',29);
INSERT INTO Alimentos VALUES(8,'Natures Variety',4);
INSERT INTO Alimentos VALUES(9,'Acana',30);
INSERT INTO Alimentos VALUES(10,'Taste of the Wild',27);
INSERT INTO Alimentos VALUES(11,'Merrick',24);
INSERT INTO Alimentos VALUES(12,'Blue Buffalo',24);
INSERT INTO Alimentos VALUES(13,'Canagan',15);
INSERT INTO Alimentos VALUES(14,'Orijen',26);

--data de almacen
INSERT INTO Almacen VALUES(1,1,1,1,1,1);
INSERT INTO Almacen VALUES(2,2,2,2,2,2);
INSERT INTO Almacen VALUES(3,3,3,3,3,3);
INSERT INTO Almacen VALUES(4,4,4,4,4,4);
INSERT INTO Almacen VALUES(5,5,5,5,5,5);
INSERT INTO Almacen VALUES(6,6,6,6,6,6);
INSERT INTO Almacen VALUES(7,7,7,7,7,7);
INSERT INTO Almacen VALUES(8,8,8,8,8,8);
INSERT INTO Almacen VALUES(9,9,9,9,9,9);
INSERT INTO Almacen VALUES(10,10,10,10,10,10);
INSERT INTO Almacen VALUES(11,11,11,11,11,11);
INSERT INTO Almacen VALUES(12,12,12,12,12,12);
INSERT INTO Almacen VALUES(13,13,13,13,13,13);
INSERT INTO Almacen VALUES(14,14,14,14,14,14);


--data de proceso_adopcion
INSERT INTO Proceso_Adopcion VALUES(1,1,'1598610');
INSERT INTO Proceso_Adopcion VALUES(2,2,'4677082');
INSERT INTO Proceso_Adopcion VALUES(3,3,'6121009');
INSERT INTO Proceso_Adopcion VALUES(4,4,'9853285');
INSERT INTO Proceso_Adopcion VALUES(5,5,'3147782');
INSERT INTO Proceso_Adopcion VALUES(6,6,'6682271');
INSERT INTO Proceso_Adopcion VALUES(7,7,'2840023');
INSERT INTO Proceso_Adopcion VALUES(8,8,'7244565');
INSERT INTO Proceso_Adopcion VALUES(9,9,'3942380');
INSERT INTO Proceso_Adopcion VALUES(10,10,'3704249');
INSERT INTO Proceso_Adopcion VALUES(11,11,'7092368');
INSERT INTO Proceso_Adopcion VALUES(12,12,'3611343');
INSERT INTO Proceso_Adopcion VALUES(13,13,'4032921');
INSERT INTO Proceso_Adopcion VALUES(14,14,'5523002');



--data de adoptante
INSERT INTO Adoptante VALUES(1,'Octavio','75635231','933425575','Calle San Miguel, Urb. Los Pinos, Lima',1,1);
INSERT INTO Adoptante VALUES(2,'Deja','88433609','993347730','Avenida del Sol, Residencial El Dorado, Arequipa',2,2);
INSERT INTO Adoptante VALUES(3,'Charles','88910521','953844733','Jr. Los Robles, Urbanización La Primavera, Trujillo',3,3);
INSERT INTO Adoptante VALUES(4,'Kimora','94754207','945102909','Calle Las Flores, Villa del Mar, Chiclayo',4,4);
INSERT INTO Adoptante VALUES(5,'Carmen','73710222','968162952','Av. Los Alamos, Condominio Los Pájaros, Cusco',5,5);
INSERT INTO Adoptante VALUES(6,'Shirley','79161026','948997019','Pasaje Los Jazmines, Barrio San Antonio, Piura',6,6);
INSERT INTO Adoptante VALUES(7,'Albert','84266532','959888617','Calle Las Acacias, Urbanización Santa Rosa, Iquitos',7,7);
INSERT INTO Adoptante VALUES(8,'Tatiana','84088301','965460737','Av. Los Pinos, Residencial Los Cedros, Huancayo',8,8);
INSERT INTO Adoptante VALUES(9,'Gunnar','86069712','917310109','Jr. Las Orquídeas, Urb. Los Laureles, Tacna',9,9);
INSERT INTO Adoptante VALUES(10,'Blaise','79603773','904025965','Calle Los Cipreses, Villa Bonita, Chimbote',10,10);
INSERT INTO Adoptante VALUES(11,'Kamden','71550841','979945316','Av. Los Lirios, Residencial El Bosque, Pucallpa',11,11);
INSERT INTO Adoptante VALUES(12,'Lena','75069595','938756881','Pasaje Las Margaritas, Urbanización Los Páramos, Juliaca',12,12);
INSERT INTO Adoptante VALUES(13,'Nicole','86353107','928856149','Jr. Los Girasoles, Urb. Las Palmas, Huaraz',13,13);
INSERT INTO Adoptante VALUES(14,'Angie','95367170','951025004','Calle Los Olivos, Villa Hermosa, Ica',14,14);


-- modifico un valor null de los animales
UPDATE Animal
SET Proceso_Adopcion_ID = 10
WHERE Id= 10
