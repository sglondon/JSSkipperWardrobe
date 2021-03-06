USE [master]
GO
/****** Object:  Database [WardrobeApp]    Script Date: 3/25/2018 5:03:34 PM ******/
CREATE DATABASE [WardrobeApp]
 CONTAINMENT = NONE
 GO
ALTER DATABASE [WardrobeApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeApp] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeApp]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/25/2018 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](200) NOT NULL,
	[AccessoryColor] [nvarchar](50) NULL,
	[AccessorySeason] [nvarchar](50) NULL,
	[AccessoryOccasion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/25/2018 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](200) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NULL,
	[BottomOccasion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 3/25/2018 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/25/2018 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](200) NOT NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](50) NULL,
	[ShoeOccasion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/25/2018 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](200) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](50) NULL,
	[TopOccasion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (1, N'Flowered Purse', N'/Content/images/floweredpurse.jpg', N'Pink', N'Summer', N'Casual')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (2, N'Straw Hat', N'/Content/images/hat.jpg', N'White with pink bow', N'Summer', N'Casual')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'Orange Purse', N'/Content/images/orangepurse.jpg', N'Orange', NULL, NULL)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (4, N'Party Hat', N'/Content/images/partyhat.jpg', N'Yellow & Black', NULL, N'Party')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (5, N'Red Hat', N'/Content/images/redhat.jpg', N'Red', NULL, NULL)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (6, N'Sunglasses', N'/Content/images/sunglasses.jpg', N'Pink', NULL, N'Sunny Days')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (7, N'White Purse', N'/Content/images/whitepurse.jpg', N'White', N'Summer', NULL)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (8, N'Flower Girl Headband', N'/Content/images/flowergirlheadband.jpg', N'Pink', NULL, N'Wedding')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Jeans', N'/Content/images/jeans.jpg', N'Blue', NULL, NULL)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (2, N'Flowered Pants', N'/Content/images/floweredpants.jpg', N'Pink', N'Summer', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (4, N'Ruffled Pants', N'/Content/images/ruffledpants.jpg', N'Blue', N'Summer', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (5, N'Overalls', N'/Content/images/overalls.jpg', N'Red flowered', NULL, NULL)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (6, N'Pink Pants', N'/Content/images/pinkpants.jpg', N'Pink', NULL, NULL)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (7, N'Shorts', N'/Content/images/shorts.jpg', N'Light Blue', N'Summer', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (8, N'Fishnet tights', N'/Content/images/fishnettights.jpg', N'White', NULL, NULL)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (9, N'Pink Tights', N'/Content/images/pinktights.jpg', N'Pink', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (2, 1, 8, 3, 1)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (3, 6, 4, 3, 6)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (4, 9, 5, 1, 7)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (5, 8, 9, 1, 8)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Black Shoes', N'/Content/images/blackshoes.jpg', N'Black', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Booties', N'/Content/images/booties.jpg', N'Orange', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Pink Shoes', N'/Content/images/pinkshoes.jpg', N'Pink', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (4, N'Sandals', N'/Content/images/sandels.jpg', N'Green', N'Summer', N'Casual')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (1, N'Dress with Flowers', N'/Content/images/dresswithflowers.jpg', N'Pink', N'Summer', N'Dressy Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (2, N'Fabric Coat', N'/Content/images/fabriccoat.jpg', N'Orange and yellow', NULL, NULL)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (3, N'Jacket', N'/Content/images/jacket.jpg', N'Yellow', N'Winter', NULL)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (4, N'Sleeveless top with pockets', N'/Content/images/pockettop.jpg', N'Yellow with pink pockets', N'Summer', N'Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (5, N'Posy Party Dress', N'/Content/images/posypartydress.jpg', N'Blue', NULL, N'Party ')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (6, N'Ruffled Top', N'/Content/images/ruffled top.jpg', N'Blue', N'Summer', NULL)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (7, N'Velvet Coat', N'/Content/images/velvetcoat.jpg', N'Dark Pink', N'Winter', N'Formal')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (8, N'Velvet Dress', N'/Content/images/velvetdress.jpg', N'Pink and white with green bow', N'Winter', N'Formal')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion]) VALUES (9, N'Blouse', N'/Content/images/whiteblouse.jpg', N'White', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeApp] SET  READ_WRITE 
GO
