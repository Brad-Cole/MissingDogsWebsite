USE [master]
GO
/****** Object:  Database [MissingDogs]    Script Date: 11/13/2016 7:26:41 PM ******/
CREATE DATABASE [MissingDogs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MissingDogs', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MissingDogs.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MissingDogs_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MissingDogs_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MissingDogs] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MissingDogs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MissingDogs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MissingDogs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MissingDogs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MissingDogs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MissingDogs] SET ARITHABORT OFF 
GO
ALTER DATABASE [MissingDogs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MissingDogs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MissingDogs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MissingDogs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MissingDogs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MissingDogs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MissingDogs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MissingDogs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MissingDogs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MissingDogs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MissingDogs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MissingDogs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MissingDogs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MissingDogs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MissingDogs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MissingDogs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MissingDogs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MissingDogs] SET RECOVERY FULL 
GO
ALTER DATABASE [MissingDogs] SET  MULTI_USER 
GO
ALTER DATABASE [MissingDogs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MissingDogs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MissingDogs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MissingDogs] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MissingDogs] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MissingDogs', N'ON'
GO
USE [MissingDogs]
GO
/****** Object:  User [admin]    Script Date: 11/13/2016 7:26:41 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[missing]    Script Date: 11/13/2016 7:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[missing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DogName] [varchar](50) NULL,
	[DogBreed] [varchar](50) NULL,
	[LastKnownLocation] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[IsFound] [bit] NULL,
 CONSTRAINT [PK_missing_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[missing] ON 

INSERT [dbo].[missing] ([Id], [DogName], [DogBreed], [LastKnownLocation], [ContactNumber], [IsFound]) VALUES (1, N'arthur', N'Powell', N'75 Warbler Point', N'86-(440)420-6408', NULL)
INSERT [dbo].[missing] ([Id], [DogName], [DogBreed], [LastKnownLocation], [ContactNumber], [IsFound]) VALUES (2, N'Samuel', N'Gilbert', N'37501 Jay Junction', N'1-(904)442-3136', NULL)
INSERT [dbo].[missing] ([Id], [DogName], [DogBreed], [LastKnownLocation], [ContactNumber], [IsFound]) VALUES (3, N'Brian', N'Lane', N'91811 Northwestern Circle', N'46-(619)284-2784', NULL)
INSERT [dbo].[missing] ([Id], [DogName], [DogBreed], [LastKnownLocation], [ContactNumber], [IsFound]) VALUES (4, N'Clarence', N'Scott', N'4853 Annamark Drive', N'1-(617)740-1085', NULL)
INSERT [dbo].[missing] ([Id], [DogName], [DogBreed], [LastKnownLocation], [ContactNumber], [IsFound]) VALUES (5, N'Arthur', N'Lewis', N'09 Dakota Park', N'86-(232)676-3694', NULL)
INSERT [dbo].[missing] ([Id], [DogName], [DogBreed], [LastKnownLocation], [ContactNumber], [IsFound]) VALUES (6, N'jax', N'German Shepard mix', N'Newburg KY', N'5024426691', NULL)
SET IDENTITY_INSERT [dbo].[missing] OFF
USE [master]
GO
ALTER DATABASE [MissingDogs] SET  READ_WRITE 
GO
