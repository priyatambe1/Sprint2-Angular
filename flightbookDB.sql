USE [master]
GO
/****** Object:  Database [FlightBook]    Script Date: 7/22/2022 6:17:13 PM ******/
CREATE DATABASE [FlightBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FlightBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FlightBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FlightBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FlightBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FlightBook] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FlightBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FlightBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FlightBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FlightBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FlightBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FlightBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [FlightBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FlightBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FlightBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FlightBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FlightBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FlightBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FlightBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FlightBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FlightBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FlightBook] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FlightBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FlightBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FlightBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FlightBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FlightBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FlightBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FlightBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FlightBook] SET RECOVERY FULL 
GO
ALTER DATABASE [FlightBook] SET  MULTI_USER 
GO
ALTER DATABASE [FlightBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FlightBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FlightBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FlightBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FlightBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FlightBook] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FlightBook', N'ON'
GO
ALTER DATABASE [FlightBook] SET QUERY_STORE = OFF
GO
USE [FlightBook]
GO
/****** Object:  Table [dbo].[TblBookDetails]    Script Date: 7/22/2022 6:17:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBookDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](200) NULL,
	[PassengerDetails] [nvarchar](100) NULL,
	[Meal] [nvarchar](100) NULL,
	[SeatNo] [int] NULL,
 CONSTRAINT [PK_TblBookDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblFlight]    Script Date: 7/22/2022 6:17:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblFlight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightNo] [int] NULL,
	[Airline] [nvarchar](100) NULL,
	[FromPlace] [nvarchar](100) NULL,
	[ToPlace] [nvarchar](100) NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[Days] [nvarchar](100) NULL,
	[Instrument] [nvarchar](100) NULL,
	[BusinessSeats] [nvarchar](100) NULL,
	[NonBusinessSeats] [nvarchar](100) NULL,
	[TicketCost] [int] NULL,
	[Rows] [int] NULL,
	[Meal] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblFlight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLogin]    Script Date: 7/22/2022 6:17:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[IsAdmin] [int] NULL,
 CONSTRAINT [PK_TblLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblBookDetails] ON 

INSERT [dbo].[TblBookDetails] ([Id], [Name], [Email], [PassengerDetails], [Meal], [SeatNo]) VALUES (1, N'Prianka', N'tambepriya8@gmail.com', N'Priyanka Tambe,Female,25', N'Veg', 1)
INSERT [dbo].[TblBookDetails] ([Id], [Name], [Email], [PassengerDetails], [Meal], [SeatNo]) VALUES (2, N'Priyanka Tambe', N'tambepriya8@gmail.com', N'Priyanka', N'Veg', 1)
INSERT [dbo].[TblBookDetails] ([Id], [Name], [Email], [PassengerDetails], [Meal], [SeatNo]) VALUES (3, N'Shubhangi', N'Shu@gmail.com', N'Shubhangi, 22, Female', N'Veg', 2)
INSERT [dbo].[TblBookDetails] ([Id], [Name], [Email], [PassengerDetails], [Meal], [SeatNo]) VALUES (5, N'Rohan', N'@gmail', N'Rohan tambe', N'non veg', 5)
INSERT [dbo].[TblBookDetails] ([Id], [Name], [Email], [PassengerDetails], [Meal], [SeatNo]) VALUES (6, N'Rohan', N'gmail', N'Tambe', N'Pune', 4)
SET IDENTITY_INSERT [dbo].[TblBookDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblFlight] ON 

INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (1, 111, N'Air India', N'Pune', N'Mumbai', CAST(N'2022-07-15T09:32:43.233' AS DateTime), CAST(N'2022-07-15T09:32:43.233' AS DateTime), N'Monday', N'A320', N'10', N'10', 500, 30, N'None')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (2, 112, N'Indigo', N'Mumbai', N'Pune', CAST(N'2022-07-16T10:00:48.513' AS DateTime), CAST(N'2022-07-16T10:00:48.513' AS DateTime), N'Monday', N'A230', N'10', N'20', 1000, 20, N'No Veg')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (4, 113, N'SpaceJet', N'Chennai', N'Mumbai', CAST(N'2022-07-17T11:39:31.187' AS DateTime), CAST(N'2022-07-20T11:39:31.187' AS DateTime), N'Sunday', N'A230', N'15', N'15', 5000, 10, N'Veg')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (5, 113, N'SpaceJet', N'Chennai', N'Mumbai', NULL, NULL, N'Sunday', N'A230', N'15', N'15', 10000, 10, N'Veg')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (8, 114, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', 0, 0, N'')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (9, 116, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', 0, 0, N'')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (11, 117, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', 0, 0, N'')
INSERT [dbo].[TblFlight] ([Id], [FlightNo], [Airline], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [Days], [Instrument], [BusinessSeats], [NonBusinessSeats], [TicketCost], [Rows], [Meal]) VALUES (12, 114, N'AirAsia India', N'Nagpur', N'Mumbai', NULL, NULL, N'Monday-Tuesday', N'A320 neo', N'10', N'5', 5000, 20, N'Vegan')
SET IDENTITY_INSERT [dbo].[TblFlight] OFF
GO
SET IDENTITY_INSERT [dbo].[TblLogin] ON 

INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [IsAdmin]) VALUES (1, N'Priya@123', N'123', 1)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [IsAdmin]) VALUES (3, N'Pri@123', N'123', NULL)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [IsAdmin]) VALUES (7, N'Ram@123', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblLogin] OFF
GO
USE [master]
GO
ALTER DATABASE [FlightBook] SET  READ_WRITE 
GO
