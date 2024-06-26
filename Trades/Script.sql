USE [master]
GO
/****** Object:  Database [Marchenko_ISP_401_Trade]    Script Date: 26.04.2024 21:48:33 ******/
CREATE DATABASE [Marchenko_ISP_401_Trade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Marchenko_ISP_401_Trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Marchenko_ISP_401_Trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Marchenko_ISP_401_Trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Marchenko_ISP_401_Trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Marchenko_ISP_401_Trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET RECOVERY FULL 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET  MULTI_USER 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Marchenko_ISP_401_Trade', N'ON'
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET QUERY_STORE = OFF
GO
USE [Marchenko_ISP_401_Trade]
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
USE [Marchenko_ISP_401_Trade]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 26.04.2024 21:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_order] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[ID_point_up_pick] [int] NOT NULL,
	[ID_user] [int] NULL,
	[OrderPickupPoint] [float] NOT NULL,
	[status] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 26.04.2024 21:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID_orderProduct] [int] IDENTITY(1,1) NOT NULL,
	[ID_order] [int] NOT NULL,
	[ID_product] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[ID_orderProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point_up_pick]    Script Date: 26.04.2024 21:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point_up_pick](
	[ID_point_up_pick] [int] IDENTITY(1,1) NOT NULL,
	[Post_index] [float] NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[Hous] [float] NOT NULL,
 CONSTRAINT [PK_Point_up_pick] PRIMARY KEY CLUSTERED 
(
	[ID_point_up_pick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26.04.2024 21:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_product] [int] IDENTITY(1,1) NOT NULL,
	[Article] [varchar](50) NOT NULL,
	[ProductName] [varchar](40) NOT NULL,
	[ProductUnitOfMeasurment] [varchar](10) NOT NULL,
	[ProductCost] [float] NOT NULL,
	[ProductMaxDiscount] [float] NOT NULL,
	[ProductManufacturer] [varchar](40) NOT NULL,
	[ProductProvider] [varchar](30) NOT NULL,
	[ProductCategory] [varchar](30) NOT NULL,
	[ProductDiscountAmount] [float] NOT NULL,
	[ProductQuantityInStock] [float] NOT NULL,
	[ProductDescription] [varchar](100) NOT NULL,
	[ProductPhoto] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.04.2024 21:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_role] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.04.2024 21:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID_user] [int] IDENTITY(1,1) NOT NULL,
	[ID_role] [int] NOT NULL,
	[Surname] [varchar](30) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Patronymic] [varchar](30) NOT NULL,
	[Login] [varchar](30) NOT NULL,
	[Password] [varchar](20) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (1, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 13, NULL, 301, N'Завершен')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (2, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 12, 11, 302, N'Новый ')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (3, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 13, NULL, 303, N'Завершен')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (4, CAST(N'2022-05-07' AS Date), CAST(N'2022-05-13' AS Date), 14, NULL, 304, N'Завершен')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (5, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 15, 12, 305, N'Новый ')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (6, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 16, NULL, 306, N'Новый ')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (7, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 16, 13, 307, N'Завершен')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (8, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 18, NULL, 308, N'Завершен')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (9, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 20, NULL, 309, N'Новый ')
INSERT [dbo].[Order] ([ID_order], [OrderDate], [OrderDeliveryDate], [ID_point_up_pick], [ID_user], [OrderPickupPoint], [status]) VALUES (10, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 20, 14, 310, N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (1, 1, 30, 2)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (2, 2, 10, 3)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (3, 3, 16, 2)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (4, 4, 24, 5)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (5, 5, 6, 10)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (6, 6, 18, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (7, 7, 20, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (8, 8, 15, 20)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (9, 9, 29, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (10, 10, 19, 3)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (11, 1, 7, 2)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (12, 2, 9, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (13, 3, 13, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (14, 4, 11, 5)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (15, 5, 23, 10)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (16, 6, 2, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (17, 7, 25, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (18, 8, 26, 20)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (19, 9, 12, 1)
INSERT [dbo].[OrderProduct] ([ID_orderProduct], [ID_order], [ID_product], [Amount]) VALUES (20, 10, 14, 2)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
SET IDENTITY_INSERT [dbo].[Point_up_pick] ON 

INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (1, 344288, N' г. Краснокаменск', N' ул. Чехова', 1)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (2, 614164, N' г. Краснокаменск', N' ул. Степная', 30)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (3, 394242, N' г. Краснокаменск', N' ул. Коммунистическая', 43)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (4, 660540, N' г. Краснокаменск', N' ул. Солнечная', 25)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (5, 125837, N' г. Краснокаменск', N' ул. Шоссейная', 40)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (6, 125703, N' г. Краснокаменск', N' ул. Партизанская', 49)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (7, 625283, N' г. Краснокаменск', N' ул. Победы', 46)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (8, 614611, N' г. Краснокаменск', N' ул. Молодежная', 50)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (9, 454311, N' г. Краснокаменск', N' ул. Новая', 19)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (10, 660007, N' г. Краснокаменск', N' ул. Октябрьская', 19)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (11, 603036, N' г. Краснокаменск', N' ул. Садовая', 4)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (12, 450983, N' г. Краснокаменск', N' ул. Комсомольская', 26)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (13, 394782, N' г. Краснокаменск', N' ул. Чехова', 3)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (14, 603002, N' г. Краснокаменск', N' ул. Дзержинского', 28)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (15, 450558, N' г. Краснокаменск', N' ул. Набережная', 30)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (16, 394060, N' г. Краснокаменск', N' ул. Фрунзе', 43)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (17, 410661, N' г. Краснокаменск', N' ул. Школьная', 50)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (18, 625590, N' г. Краснокаменск', N' ул. Коммунистическая', 20)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (19, 625683, N' г. Краснокаменск', N' ул. 8 Марта', 23)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (20, 400562, N' г. Краснокаменск', N' ул. Зеленая', 32)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (21, 614510, N' г. Краснокаменск', N' ул. Маяковского', 47)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (22, 410542, N' г. Краснокаменск', N' ул. Светлая', 46)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (23, 620839, N' г. Краснокаменск', N' ул. Цветочная', 8)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (24, 443890, N' г. Краснокаменск', N' ул. Коммунистическая', 1)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (25, 603379, N' г. Краснокаменск', N' ул. Спортивная', 46)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (26, 603721, N' г. Краснокаменск', N' ул. Гоголя', 41)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (27, 410172, N' г. Краснокаменск', N' ул. Северная', 13)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (28, 420151, N' г. Краснокаменск', N' ул. Вишневая', 32)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (29, 125061, N' г. Краснокаменск', N' ул. Подгорная', 8)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (30, 630370, N' г. Краснокаменск', N' ул. Шоссейная', 24)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (31, 614753, N' г. Краснокаменск', N' ул. Полевая', 35)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (32, 426030, N' г. Краснокаменск', N' ул. Маяковского', 44)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (33, 450375, N' г. Краснокаменск', N' ул. Клубная', 44)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (34, 625560, N' г. Краснокаменск', N' ул. Некрасова', 12)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (35, 630201, N' г. Краснокаменск', N' ул. Комсомольская', 17)
INSERT [dbo].[Point_up_pick] ([ID_point_up_pick], [Post_index], [City], [Street], [Hous]) VALUES (36, 190949, N' г. Краснокаменск', N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[Point_up_pick] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (1, N'A395T3', N'Набор кастрюль', N'шт.', 2150, 15, N'Эмаль', N'Домовой', N'Кастрюли', 2, 13, N'Набор кастрюль Эмаль Дача 2-3194/4 белый', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (2, N'C367R6', N'Набор кастрюль', N'шт.', 3600, 15, N'Webber', N'Максидом', N'Кастрюли', 3, 7, N'Набор кастрюль Webber BE-336/6 6 пр. серебристый', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (3, N'C425F8', N'Набор посуды', N'шт.', 5990, 15, N'Нева', N'Домовой', N'Посуда', 5, 9, N'Набор обеденной посуды Mason Cash Classic 12 предметов серый', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (4, N'C432H7', N'Набор посуды', N'шт.', 2700, 30, N'Tefal', N'Максидом', N'Посуда', 4, 6, N'Набор посуды Tefal Ingenio Red 04162820 3 пр. красный', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (5, N'D026R4', N'Сковорода', N'шт.', 1800, 25, N'Нева', N'Домовой', N'Сковорода', 4, 2, N'Сковорода НЕВА МЕТАЛЛ ПОСУДА Карелия 2328, 28 см', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (6, N'D036H2', N'Сковорода', N'шт.', 1960, 5, N'Нева', N'Максидом', N'Сковорода', 5, 12, N'Сковорода НЕВА МЕТАЛЛ ПОСУДА Алтай индукционная, 26 см', N'D036H2.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (7, N'D548T5', N'Столовый сервиз', N'шт.', 1700, 15, N'Luminarc', N'Домовой', N'Сервиз', 4, 10, N'Столовый сервиз Luminarc Every Day G0566, 6 персон, 18 предм.', N'D548T5.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (8, N'D630H5', N'Набор кастрюль', N'шт.', 2000, 10, N'Webber', N'Максидом', N'Кастрюли', 3, 8, N'Набор кастрюль Webber BE-621/6 стальной', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (9, N'D644G3', N'Набор кастрюль', N'шт.', 3500, 5, N'Webber', N'Домовой', N'Кастрюли', 3, 8, N'Набор кастрюль Webber ВЕ-620/8 8 пр. стальной', N'D644G3.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (10, N'F735F5', N'Сковорода', N'шт.', 1270, 10, N'Нева', N'Домовой', N'Сковорода', 2, 4, N'Сковорода НЕВА МЕТАЛЛ ПОСУДА Домашняя 7424, съемная ручка, 24 см', N'F735F5.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (11, N'F835F5', N'Набор посуды', N'шт.', 732, 10, N'Solaris', N'Домовой', N'Сервиз', 2, 9, N'Набор посуды SOLARIS S1605: 6 тарелок 180мм в контейнере', N'F835F5.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (12, N'F835H6', N'Кастрюля для запекания', N'шт.', 2130, 10, N'Нева', N'Домовой', N'Кастрюли', 2, 5, N'Кастрюля эмалированная, цветок Розы', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (13, N'F836E5', N'Набор сковород', N'шт.', 4600, 20, N'Tefal', N'Максидом', N'Сковорода', 2, 6, N'Набор сковород Tefal Ingenio Chef Red L6598672 3 пр. бордовый', N'F836E5.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (14, N'F934E5', N'Сервировочное блюдо', N'шт.', 1200, 10, N'Нева', N'Максидом', N'Посуда', 3, 5, N'Сервировочное блюдо ROSSI для подачи из керамики 28х18 см ', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (15, N'G405K9', N'Набор посуды', N'шт.', 240, 5, N'Solaris', N'Домовой', N'Посуда', 4, 23, N'Набор посуды SOLARIS S1607: 6 стаканов 0,1л в контейнере', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (16, N'H482Y6', N'Столовый сервиз', N'шт.', 2300, 15, N'Luminarc', N'Максидом', N'Сервиз', 5, 12, N'Столовый сервиз Luminarc Cadix L0300, 6 персон, 19 предм.', N'H482Y6.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (17, N'J468K6', N'Набор сковород', N'шт.', 1390, 25, N'Galaxy', N'Домовой', N'Сковорода', 2, 13, N'Набор сковород GALAXY GL9801 2 пр. синий', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (18, N'K036S3', N'Набор посуды', N'шт.', 2990, 5, N'Galaxy', N'Максидом', N'Сервиз', 5, 15, N'Набор посуды GALAXY GL9507 6 пр. коричневый', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (19, N'K935B6', N'Салатник', N'шт.', 1200, 5, N'Нева', N'Домовой', N'Посуда', 3, 9, N'Салатник «Кото», 0,19 л 10 см красный, фарфор', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (20, N'L346D4', N'Набор кружек', N'шт.', 329, 5, N'Нева', N'Максидом', N'Посуда', 5, 18, N'Набор кружек Pasabahce Basic, 370 мл, 2 предм., 2 персоны', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (21, N'M045H6', N'Набор кастрюль', N'шт.', 1499, 15, N'Эмаль', N'Максидом', N'Кастрюли', 4, 7, N'Набор кастрюль СтальЭмаль 1с33/1 6 пр. белоснежный /маки ', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (22, N'M527Y7', N'Казан', N'шт.', 1999, 30, N'Нева', N'Максидом', N'Кастрюли', 3, 6, N'Казан 5 л Наша Посуда антипригарный', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (23, N'N835D4', N'Набор кастрюль', N'шт.', 2100, 10, N'Galaxy', N'Домовой', N'Кастрюли', 3, 5, N'Набор кастрюль GALAXY GL9512 4 пр. фиолетовый', N'N835D4.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (24, N'N835F5', N'Кастрюля для запекания', N'шт.', 744, 5, N'Tefal', N'Домовой', N'Кастрюли', 3, 13, N'Кастрюля для запекания Tefal 208AC00/1043, 2.3 л, 23 см', N'N835F5.jpg')
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (25, N'S257G5', N'Набор посуды', N'шт.', 2300, 10, N'Tefal', N'Максидом', N'Посуда', 4, 8, N'Набор посуды для выпечки O CUISINE 333SA95/6142', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (26, N'S306J8', N'Ковш', N'шт.', 409, 10, N'Tefal', N'Домовой', N'Посуда', 2, 14, N'Ковш б/деколи(палевый) 17,5х8 см 1,5 л', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (27, N'S413D4', N'Набор кастрюль', N'шт.', 4500, 15, N'Эмаль', N'Домовой', N'Кастрюли', 3, 15, N'Набор кастрюль СтальЭмаль 7DA025S 6 пр. слоновая кость', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (28, N'S835H6', N'Кастрюля для запекания', N'шт.', 1600, 15, N'Tefal', N'Домовой', N'Кастрюли', 4, 13, N'Кастрюля Scovo Expert СЭ-008, 4.5 л', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (29, N'V493H5', N'Набор посуды', N'шт.', 6000, 15, N'Tefal', N'Максидом', N'Посуда', 4, 18, N'Набор посуды Tefal Ingenio RED 9 предметов ', NULL)
INSERT [dbo].[Product] ([ID_product], [Article], [ProductName], [ProductUnitOfMeasurment], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (30, N'А112Т4', N'Набор кастрюль', N'шт.', 2600, 30, N'Webber', N'Максидом', N'Кастрюли', 4, 6, N'Набор кастрюль Webber BE-335/6 6 пр. серебристый', N'А112Т4.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID_role], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([ID_role], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([ID_role], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (1, 1, N'Федоров', N'Глеб', N'Михайлович', N'o@outlook.com', N'2L6KZG')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (2, 1, N'Семенова', N'Софья', N'Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (3, 1, N'Васильев', N'Егор', N'Германович', N'kaft93x@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (4, 2, N'Смирнова', N'Ирина', N'Александровна', N'dcu@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (5, 2, N'Петров', N'Андрей', N'Владимирович', N'19dn@outlook.com', N'RSbvHv')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (6, 2, N'Егоров', N'Максим', N'Андреевич', N'pa5h@mail.ru', N'rwVDh9')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (7, 3, N'Никитин', N'Артур', N'Алексеевич', N'281av0@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (8, 3, N'Киселев', N'Максим', N'Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (9, 3, N'Борисов', N'Тимур', N'Егорович', N'sfn13i@mail.ru', N'AtnDjr')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (10, 3, N'Климов', N'Арсений', N'Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (11, 3, N'Никулин', N'Антон', N'Фёдорович', N'jhdsfjsf@mail.ru', N'jfesfjf')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (12, 3, N'Копылова', N'Софья', N'Николаевна', N'sudfhsi@Gmail.com', N'kdfje')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (13, 3, N'Петров', N'Ибрагим', N'Романович', N'sgkjeshfcs@log.ru', N'kjfeDSJKF')
INSERT [dbo].[User] ([ID_user], [ID_role], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (14, 3, N'Овсянников', N'Никита', N'Сергеевич', N'sidjfoksejfk@smail.com', N'KDSFKFkef')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Point_up_pick] FOREIGN KEY([ID_point_up_pick])
REFERENCES [dbo].[Point_up_pick] ([ID_point_up_pick])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Point_up_pick]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([ID_user])
REFERENCES [dbo].[User] ([ID_user])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([ID_order])
REFERENCES [dbo].[Order] ([ID_order])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ID_product])
REFERENCES [dbo].[Product] ([ID_product])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([ID_role])
REFERENCES [dbo].[Role] ([ID_role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[CheckOrder]    Script Date: 26.04.2024 21:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckOrder]
AS
BEGIN
	select *
	from [dbo].[Product]
END
GO
/****** Object:  StoredProcedure [dbo].[CheckUser]    Script Date: 26.04.2024 21:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckUser]
	@Login varchar(30),
	@Password varchar(20)
as
BEGIN
	SELECT *
	FROM [User]
	WHERE [Login]=@login and [Password]=@password
END
GO
USE [master]
GO
ALTER DATABASE [Marchenko_ISP_401_Trade] SET  READ_WRITE 
GO
