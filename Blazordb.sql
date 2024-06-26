USE [master]
GO
/****** Object:  Database [BlazorDb]    Script Date: 5/22/2024 10:09:53 AM ******/
CREATE DATABASE [BlazorDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BlazorDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BlazorDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BlazorDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BlazorDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BlazorDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlazorDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlazorDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlazorDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlazorDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlazorDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlazorDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlazorDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BlazorDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlazorDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlazorDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlazorDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlazorDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlazorDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlazorDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlazorDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlazorDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BlazorDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlazorDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlazorDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlazorDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlazorDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlazorDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BlazorDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlazorDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BlazorDb] SET  MULTI_USER 
GO
ALTER DATABASE [BlazorDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlazorDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlazorDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlazorDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BlazorDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BlazorDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BlazorDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [BlazorDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BlazorDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/22/2024 10:09:53 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accessibilities]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessibilities](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Accessibilities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[IdNumber] [nvarchar](max) NOT NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CurrentLocation] [nvarchar](max) NULL,
	[PreferdLangugae] [nvarchar](max) NULL,
	[AllowNotification] [bit] NULL,
	[DeviceID] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginInfos]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginInfos](
	[Id] [uniqueidentifier] NOT NULL,
	[DeviceName] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserLoginInfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOTP]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOTP](
	[Id] [uniqueidentifier] NOT NULL,
	[OneTimePassword] [nvarchar](max) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ValidTillUtc] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserOTP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleAccessibilities]    Script Date: 5/22/2024 10:09:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleAccessibilities](
	[Id] [uniqueidentifier] NOT NULL,
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[AccessibilityId] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserRoleAccessibilities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240521144155_contactlist', N'6.0.30')
GO
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'2eb114dc-fcfc-4ab4-2672-08dc79c43857', N'bahaa', N'Alweisy', N'bahaalweisy@gmail.com', N'+962780857842', 1, CAST(N'2024-05-21T18:31:24.4568554' AS DateTime2), CAST(N'2024-05-21T18:52:37.3857506' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'08006b2c-af14-45c9-3350-08dc79c4d0c2', N'Ahmad', N'Mohammad', N'bahaalweisy23232@gmail.com', N'+962780857845', 1, CAST(N'2024-05-21T18:35:40.2022940' AS DateTime2), CAST(N'2024-05-21T18:52:02.1411172' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'fde05cfd-23be-4719-7247-08dc79d5b531', N'bahaa', N'Alweisy', N'bahaalweisy@gmail.com', N'0780857846', 1, CAST(N'2024-05-21T20:36:35.4063615' AS DateTime2), CAST(N'2024-05-21T23:37:19.6598966' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'93415692-cb3f-40c1-7248-08dc79d5b531', N'ijijij', N'pkokok', N'bahaa@yahoo.com', N'0780857849', 1, CAST(N'2024-05-21T21:41:57.7469852' AS DateTime2), CAST(N'2024-05-21T23:38:48.0247826' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'a61d3fa3-f7ce-4320-7249-08dc79d5b531', N'aaa', N'bbb', N'bahaalweisy95959a@gmail.com', N'0780857848', 1, CAST(N'2024-05-21T21:47:50.3468580' AS DateTime2), CAST(N'2024-05-21T23:41:08.3547504' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'f8442d46-acbe-4deb-724a-08dc79d5b531', N'grehreheh33333', N'ehrreher3333333333333', N'rehreh333333333@yahii.com', N'0784892544', 1, CAST(N'2024-05-21T21:50:34.2976246' AS DateTime2), CAST(N'2024-05-22T00:03:58.5368657' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'0de9224b-b2df-436a-724b-08dc79d5b531', N'FEFE', N'EFEF', N'EFEF@YAHOO.COM', N'0780857842', 1, CAST(N'2024-05-21T23:04:02.9962197' AS DateTime2), CAST(N'2024-05-22T00:12:19.7785381' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'e13904c3-a2ba-4227-f484-08dc79f42bc2', N'aaaaaaaa', N'bbbbbbbbbb', N'aaaaaaaa@tahoo.com', N'0780857842', 1, CAST(N'2024-05-22T00:14:39.2271131' AS DateTime2), CAST(N'2024-05-22T00:15:46.9477263' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'e05ac817-bd0b-4b4a-f485-08dc79f42bc2', N'bbbbbbwww111111111111', N'3r3r34r3r11111111111111111', N'jijtijgitjgi11111111111111111@yahoo.com', N'0780857846', 1, CAST(N'2024-05-22T00:15:14.1858745' AS DateTime2), CAST(N'2024-05-22T00:15:53.4478174' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'a4a2dab3-e81f-4029-f486-08dc79f42bc2', N'Bahaa', N'Alweisy', N'bahaalweisy@gmail.com', N'0780857842', 0, CAST(N'2024-05-22T00:16:24.3524232' AS DateTime2), CAST(N'2024-05-22T00:16:24.3524235' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'290c91e6-3572-4f88-f487-08dc79f42bc2', N'aaa', N'bbbbbbbbb', N'aaaaaa@yahoo.com', N'0780857849', 1, CAST(N'2024-05-22T00:17:14.6209807' AS DateTime2), CAST(N'2024-05-22T00:17:32.1529486' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'2b80d801-d55d-4ff0-f488-08dc79f42bc2', N'orfkorekfporef', N'eroijfrefoeijrf', N'jrnfrjnfjrnfj@yahoo.com', N'0780857849', 1, CAST(N'2024-05-22T00:17:55.7448258' AS DateTime2), CAST(N'2024-05-22T00:18:14.3532496' AS DateTime2))
INSERT [dbo].[contacts] ([Id], [FirstName], [LastName], [Email], [PhoneNumber], [IsDeleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (N'fdfc7c8b-614d-47b5-f489-08dc79f42bc2', N'wdd', N'deded', N'deeded@yahoo.com', N'0780857849', 1, CAST(N'2024-05-22T00:18:33.4909271' AS DateTime2), CAST(N'2024-05-22T00:18:41.0736300' AS DateTime2))
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoles_Name]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoles_Name] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLoginInfos_UserId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserLoginInfos_UserId] ON [dbo].[UserLoginInfos]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserOTP_UserId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserOTP_UserId] ON [dbo].[UserOTP]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRoleAccessibilities_AccessibilityId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoleAccessibilities_AccessibilityId] ON [dbo].[UserRoleAccessibilities]
(
	[AccessibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRoleAccessibilities_UserRoleId]    Script Date: 5/22/2024 10:09:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoleAccessibilities_UserRoleId] ON [dbo].[UserRoleAccessibilities]
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserLoginInfos]  WITH CHECK ADD  CONSTRAINT [FK_UserLoginInfos_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLoginInfos] CHECK CONSTRAINT [FK_UserLoginInfos_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserOTP]  WITH CHECK ADD  CONSTRAINT [FK_UserOTP_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserOTP] CHECK CONSTRAINT [FK_UserOTP_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserRoleAccessibilities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleAccessibilities_Accessibilities_AccessibilityId] FOREIGN KEY([AccessibilityId])
REFERENCES [dbo].[Accessibilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoleAccessibilities] CHECK CONSTRAINT [FK_UserRoleAccessibilities_Accessibilities_AccessibilityId]
GO
ALTER TABLE [dbo].[UserRoleAccessibilities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleAccessibilities_AspNetRoles_UserRoleId] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoleAccessibilities] CHECK CONSTRAINT [FK_UserRoleAccessibilities_AspNetRoles_UserRoleId]
GO
USE [master]
GO
ALTER DATABASE [BlazorDb] SET  READ_WRITE 
GO
