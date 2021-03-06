USE [master]
GO
/****** Object:  Database [BlogWork]    Script Date: 1/17/2020 7:06:33 PM ******/
CREATE DATABASE [BlogWork]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BlogWork', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BlogWork.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BlogWork_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BlogWork_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BlogWork] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogWork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogWork] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogWork] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogWork] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogWork] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogWork] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogWork] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BlogWork] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogWork] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogWork] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogWork] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogWork] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogWork] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogWork] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogWork] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogWork] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BlogWork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogWork] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogWork] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogWork] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogWork] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogWork] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BlogWork] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogWork] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BlogWork] SET  MULTI_USER 
GO
ALTER DATABASE [BlogWork] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogWork] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlogWork] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlogWork] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BlogWork] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BlogWork] SET QUERY_STORE = OFF
GO
USE [BlogWork]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/17/2020 7:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 1/17/2020 7:06:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 1/17/2020 7:06:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191024170436_initial', N'2.1.4-rtm-31024')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191024171127_initialannotations', N'2.1.4-rtm-31024')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191027173206_datetimeaddition', N'2.1.4-rtm-31024')
GO
SET IDENTITY_INSERT [dbo].[Likes] ON 
GO
INSERT [dbo].[Likes] ([Id], [PostId]) VALUES (1, 1)
GO
INSERT [dbo].[Likes] ([Id], [PostId]) VALUES (2, 1)
GO
INSERT [dbo].[Likes] ([Id], [PostId]) VALUES (3, 1)
GO
INSERT [dbo].[Likes] ([Id], [PostId]) VALUES (4, 1)
GO
SET IDENTITY_INSERT [dbo].[Likes] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 
GO
INSERT [dbo].[Posts] ([Id], [CreatedAt], [Title], [Content]) VALUES (1, CAST(N'2019-10-27T21:32:06.4220000' AS DateTime2), N'The best VR games on the market', N'Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua')
GO
INSERT [dbo].[Posts] ([Id], [CreatedAt], [Title], [Content]) VALUES (2, CAST(N'2019-10-27T21:32:06.4230000' AS DateTime2), N'The best online game is out now!', N'Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua')
GO
INSERT [dbo].[Posts] ([Id], [CreatedAt], [Title], [Content]) VALUES (3, CAST(N'2019-10-27T21:32:06.4230000' AS DateTime2), N'The best online game is out now!', N'Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua')
GO
INSERT [dbo].[Posts] ([Id], [CreatedAt], [Title], [Content]) VALUES (17, CAST(N'2019-10-28T17:07:40.2851214' AS DateTime2), N'Spiderman', N'Spiderman returned')
GO
INSERT [dbo].[Posts] ([Id], [CreatedAt], [Title], [Content]) VALUES (18, CAST(N'2019-10-28T17:15:59.2005912' AS DateTime2), N'Hulk', N'Hulk is green')
GO
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
/****** Object:  Index [IX_Likes_PostId]    Script Date: 1/17/2020 7:06:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_Likes_PostId] ON [dbo].[Likes]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Posts_PostId]
GO
USE [master]
GO
ALTER DATABASE [BlogWork] SET  READ_WRITE 
GO
