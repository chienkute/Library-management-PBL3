USE [System_Library]
GO
ALTER TABLE [dbo].[borrows] DROP CONSTRAINT [FK_borrows_readers]
GO
ALTER TABLE [dbo].[borrows] DROP CONSTRAINT [FK_borrows_employees]
GO
ALTER TABLE [dbo].[borrow_details] DROP CONSTRAINT [FK_borrow_details_borrows]
GO
ALTER TABLE [dbo].[borrow_details] DROP CONSTRAINT [FK_borrow_details_books]
GO
ALTER TABLE [dbo].[books] DROP CONSTRAINT [FK_books_book_titles]
GO
ALTER TABLE [dbo].[book_titles] DROP CONSTRAINT [FK_book_titles_publishers]
GO
ALTER TABLE [dbo].[book_titles] DROP CONSTRAINT [FK_book_titles_categorys]
GO
ALTER TABLE [dbo].[book_titles] DROP CONSTRAINT [FK_book_titles_authors]
GO
/****** Object:  Table [dbo].[readers]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[readers]') AND type in (N'U'))
DROP TABLE [dbo].[readers]
GO
/****** Object:  Table [dbo].[publishers]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[publishers]') AND type in (N'U'))
DROP TABLE [dbo].[publishers]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employees]') AND type in (N'U'))
DROP TABLE [dbo].[employees]
GO
/****** Object:  Table [dbo].[categorys]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categorys]') AND type in (N'U'))
DROP TABLE [dbo].[categorys]
GO
/****** Object:  Table [dbo].[borrows]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[borrows]') AND type in (N'U'))
DROP TABLE [dbo].[borrows]
GO
/****** Object:  Table [dbo].[borrow_details]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[borrow_details]') AND type in (N'U'))
DROP TABLE [dbo].[borrow_details]
GO
/****** Object:  Table [dbo].[books]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[books]') AND type in (N'U'))
DROP TABLE [dbo].[books]
GO
/****** Object:  Table [dbo].[book_titles]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[book_titles]') AND type in (N'U'))
DROP TABLE [dbo].[book_titles]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 6/7/2022 1:24:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[authors]') AND type in (N'U'))
DROP TABLE [dbo].[authors]
GO
USE [master]
GO
/****** Object:  Database [System_Library]    Script Date: 6/7/2022 1:24:03 AM ******/
DROP DATABASE [System_Library]
GO
/****** Object:  Database [System_Library]    Script Date: 6/7/2022 1:24:03 AM ******/
CREATE DATABASE [System_Library]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'System_Library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VANMANH\MSSQL\DATA\System_Library.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'System_Library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VANMANH\MSSQL\DATA\System_Library_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [System_Library] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [System_Library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [System_Library] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [System_Library] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [System_Library] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [System_Library] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [System_Library] SET ARITHABORT OFF 
GO
ALTER DATABASE [System_Library] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [System_Library] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [System_Library] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [System_Library] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [System_Library] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [System_Library] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [System_Library] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [System_Library] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [System_Library] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [System_Library] SET  DISABLE_BROKER 
GO
ALTER DATABASE [System_Library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [System_Library] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [System_Library] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [System_Library] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [System_Library] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [System_Library] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [System_Library] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [System_Library] SET RECOVERY FULL 
GO
ALTER DATABASE [System_Library] SET  MULTI_USER 
GO
ALTER DATABASE [System_Library] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [System_Library] SET DB_CHAINING OFF 
GO
ALTER DATABASE [System_Library] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [System_Library] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [System_Library] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [System_Library] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'System_Library', N'ON'
GO
ALTER DATABASE [System_Library] SET QUERY_STORE = OFF
GO
USE [System_Library]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[description] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_titles]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_titles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[author_id] [int] NULL,
	[category_id] [int] NULL,
	[publisher_id] [int] NULL,
	[description] [nvarchar](max) NULL,
	[publication_date] [date] NULL,
	[number_of_pages] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[book_title_id] [int] NULL,
	[imported_at] [date] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrow_details]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrow_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[borrow_id] [int] NULL,
	[book_id] [int] NULL,
	[borrow_at] [date] NOT NULL,
	[return_at] [date] NULL,
	[book_title] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrows]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrows](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[creator_id] [int] NULL,
	[creator_name] [nvarchar](50) NULL,
	[reader_id] [int] NULL,
	[reader_name] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorys]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[date_of_birth] [date] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publishers]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publishers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[address] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[readers]    Script Date: 6/7/2022 1:24:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[readers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[date_of_birth] [date] NULL,
	[email] [varchar](50) NULL,
	[identity_card_number] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[address] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[authors] ON 

INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (3, N'Nhật Ánh', N'Nguyễn', 1, N'nhà văn nổi tiếng', CAST(N'2022-05-21T22:26:59.000' AS DateTime), CAST(N'2022-06-06T08:24:29.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (4, N'Phong Việt', N'Nguyễn ', 1, N'Nguyễn Phong Việt sinh ngày 18/7/1980', CAST(N'2022-05-21T22:27:12.000' AS DateTime), CAST(N'2022-06-05T17:10:24.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (6, N'Xuânn Hương', N'Hồ', 0, N'nhà thơ việt nam', CAST(N'2022-06-05T03:59:02.000' AS DateTime), CAST(N'2022-06-05T03:59:11.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (7, N'Hạ', N'Trang', 0, N'Nhà văn Trang Hạ, tên thật là Hạ Trịnh Minh Trang', CAST(N'2022-06-05T17:08:42.000' AS DateTime), CAST(N'2022-06-05T17:08:42.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (8, N'Ngọc Thạch', N'Nguyễn ', 1, N'Nguyễn Ngọc Thạch là nhà văn khá nổi tiếng hiện nay', CAST(N'2022-06-05T17:11:23.000' AS DateTime), CAST(N'2022-06-05T17:11:23.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (9, N'Hamlet ', N'Trương', 1, N'ca sĩ, nhạc sĩ, nhà văn và MC', CAST(N'2022-06-05T17:11:51.000' AS DateTime), CAST(N'2022-06-05T17:11:51.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (10, N'Nhật Nam', N'Đỗ ', 1, N'sinh năm 2001 là một sinh viên người Việt Nam', CAST(N'2022-06-05T17:12:17.000' AS DateTime), CAST(N'2022-06-05T17:12:17.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (11, N' Ngọc Sơn ', N'Nguyễn', 1, N'(Sơn Paris)', CAST(N'2022-06-05T17:12:35.000' AS DateTime), CAST(N'2022-06-05T17:12:35.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (12, N'Khuyến', N'Nguyễn ', 1, N'à một hiện tượng đặc biệt trong nền văn học', CAST(N'2022-06-05T17:15:22.000' AS DateTime), CAST(N'2022-06-05T17:15:22.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (13, N'Bội Châu', N'Phan ', 1, N'là một nhà yêu nước lớn', CAST(N'2022-06-05T17:15:43.000' AS DateTime), CAST(N'2022-06-05T17:15:43.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (14, N'Đà', N'Tản ', 1, N'"Tản Đà là thi sĩ đầu tiên, mở đầu cho thơ Việt Nam hiện đại.', CAST(N'2022-06-05T17:16:05.000' AS DateTime), CAST(N'2022-06-05T17:16:05.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (15, N'Lữ', N'Thế ', 1, N'Thế Lữ trước sau vẫn được coi là người cách tân số một', CAST(N'2022-06-05T17:16:31.000' AS DateTime), CAST(N'2022-06-05T17:16:31.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (16, N'Diệu', N'Xuân ', 1, N'Xuân Diệu đã đem đến Thơ mới', CAST(N'2022-06-05T17:16:57.000' AS DateTime), CAST(N'2022-06-05T17:16:57.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (17, N'Cận', N'Huy ', 1, N'là nhà thơ lớn của dân tộc', CAST(N'2022-06-05T17:17:21.000' AS DateTime), CAST(N'2022-06-05T17:17:21.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (18, N'Lan Viên', N'Chế', 1, N'', CAST(N'2022-06-05T17:17:50.000' AS DateTime), CAST(N'2022-06-05T17:17:50.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (19, N'Hữu', N'Tố ', 1, N'', CAST(N'2022-06-05T17:17:59.000' AS DateTime), CAST(N'2022-06-05T17:17:59.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (20, N'Hoài Phương', N'Đặng', 1, N'tiến sĩ đặng hoài phương', CAST(N'2022-06-05T17:23:41.000' AS DateTime), CAST(N'2022-06-05T17:23:41.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (21, N'Hà', N'Mai Văn', 1, N'thạc sĩ Mai Văn Hà', CAST(N'2022-06-05T17:24:08.000' AS DateTime), CAST(N'2022-06-05T17:24:08.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (22, N'Mỹ Hạnh', N'Nguyễn Thị', 1, N'tiến sĩ mỹ hạnh ', CAST(N'2022-06-05T17:24:34.000' AS DateTime), CAST(N'2022-06-05T17:24:34.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (23, N'Tân Khôi', N'Nguyên', 1, N'phó giáo sư Nguyễn Tấn Khôi', CAST(N'2022-06-05T17:57:41.000' AS DateTime), CAST(N'2022-06-05T17:57:58.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (26, N'Hemingway', N'Ernest Miller ', 1, N'là nhà văn, nhà báo người Mỹ. ', CAST(N'2022-06-07T00:59:39.000' AS DateTime), CAST(N'2022-06-07T00:59:39.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (27, N'Kafka', N'Franz', 1, N' sinh năm 1883 trong một gia đình Do Thái nói tiếng Đức ở Praha, Cộng hòa Séc,', CAST(N'2022-06-07T01:00:25.000' AS DateTime), CAST(N'2022-06-07T01:00:25.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (28, N'J R R Tolkien', N'', 1, N'J.R.R.Tolkien sinh năm 1892', CAST(N'2022-06-07T01:01:21.000' AS DateTime), CAST(N'2022-06-07T01:01:21.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (29, N'Marquez', N'Gabriel Garcia', 1, N'Gabriel Garcia Marquez (sinh năm 1927)', CAST(N'2022-06-07T01:01:52.000' AS DateTime), CAST(N'2022-06-07T01:01:52.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (30, N'Lee', N'Harper ', 0, N'Harper Lee sinh năm 1926 và lớn lên ở Monroeville, ', CAST(N'2022-06-07T01:02:21.000' AS DateTime), CAST(N'2022-06-07T01:02:21.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (31, N'Nguyện', N'Bùi Văn', 1, N'lập trình cuộc sống', CAST(N'2022-06-07T01:12:54.000' AS DateTime), CAST(N'2022-06-07T01:12:54.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (32, N'Huy Hoàng', N'Phạm', 1, N'tôi đi code dạo', CAST(N'2022-06-07T01:13:09.000' AS DateTime), CAST(N'2022-06-07T01:13:09.000' AS DateTime))
INSERT [dbo].[authors] ([id], [first_name], [last_name], [gender], [description], [created_at], [updated_at]) VALUES (33, N'Dũng ', N'Lại', 1, N'Dũng lại lập trình', CAST(N'2022-06-07T01:13:24.000' AS DateTime), CAST(N'2022-06-07T01:13:24.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[authors] OFF
GO
SET IDENTITY_INSERT [dbo].[book_titles] ON 

INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (7, N'Lập trình web', 20, 2, 3, N'sách lập trình ', CAST(N'2022-05-29' AS Date), 120, CAST(N'2022-05-17T11:18:39.000' AS DateTime), CAST(N'2022-06-06T08:40:18.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (8, N'Mắt Biếc', 3, 2, 3, N'sách hay', CAST(N'2022-04-24' AS Date), 120, CAST(N'2022-05-17T11:18:39.000' AS DateTime), CAST(N'2022-06-05T17:25:12.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (11, N'Lập trình PHP', 20, 5, 3, N'sách hay', CAST(N'2002-08-08' AS Date), 90, CAST(N'2022-05-21T22:51:18.000' AS DateTime), CAST(N'2022-06-05T17:25:54.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (12, N'Lập trình C#', 22, 2, 3, N'Lập trình C#', CAST(N'2022-03-27' AS Date), 120, CAST(N'2022-05-21T22:52:03.000' AS DateTime), CAST(N'2022-06-06T08:40:10.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (19, N'Lập trình PHP - Laravel', 21, 7, 5, N'sách hay', CAST(N'2022-05-30' AS Date), 200, CAST(N'2022-06-02T09:39:34.000' AS DateTime), CAST(N'2022-06-05T17:27:22.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (20, N'Tôi thấy hoa vàng trên cỏ xanh', 3, 2, 6, N'sách hay', CAST(N'2022-02-27' AS Date), 200, CAST(N'2022-06-05T17:28:19.000' AS DateTime), CAST(N'2022-06-05T17:28:19.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (21, N'Tôi Là Bêto', 3, 2, 9, N'hay', CAST(N'2022-01-30' AS Date), 300, CAST(N'2022-06-05T17:28:54.000' AS DateTime), CAST(N'2022-06-05T17:28:54.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (22, N'Ngồi Khóc Trên Cây', 3, 2, 4, N'sách hay', CAST(N'2021-12-26' AS Date), 120, CAST(N'2022-06-05T17:29:25.000' AS DateTime), CAST(N'2022-06-05T17:29:25.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (23, N'Bồ Câu Không Đưa Thư', 3, 2, 10, N'hay', CAST(N'2021-11-28' AS Date), 300, CAST(N'2022-06-05T17:30:02.000' AS DateTime), CAST(N'2022-06-05T17:30:02.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (24, N'Thi Nhân Việt Nam', 16, 5, 5, N'hay', CAST(N'2021-10-31' AS Date), 300, CAST(N'2022-06-05T17:30:48.000' AS DateTime), CAST(N'2022-06-05T17:30:48.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (25, N'Đồ Họa Máy Tính', 23, 7, 5, N'sách hay', CAST(N'2017-01-30' AS Date), 250, CAST(N'2022-06-05T18:02:43.000' AS DateTime), CAST(N'2022-06-05T18:02:43.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (28, N'Lập trìn nhúng IOT', 20, 7, 5, N'sách lập trình', CAST(N'2022-05-29' AS Date), 111, CAST(N'2022-06-07T01:11:03.000' AS DateTime), CAST(N'2022-06-07T01:11:03.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (29, N'Lập trình AI', 23, 20, 10, N'sách về AI', CAST(N'2022-04-24' AS Date), 222, CAST(N'2022-06-07T01:11:43.000' AS DateTime), CAST(N'2022-06-07T01:11:43.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (30, N'Lập trình Hướng Đối Tượng', 22, 17, 5, N'sách về OOP', CAST(N'2022-03-27' AS Date), 333, CAST(N'2022-06-07T01:12:32.000' AS DateTime), CAST(N'2022-06-07T01:12:32.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (31, N'Python', 33, 7, 10, N'sách hay', CAST(N'2022-06-05' AS Date), 234, CAST(N'2022-06-07T01:13:58.000' AS DateTime), CAST(N'2022-06-07T01:13:58.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (32, N'IT có gì ?', 32, 7, 5, N'sách hay', CAST(N'2022-05-29' AS Date), 342, CAST(N'2022-06-07T01:14:28.000' AS DateTime), CAST(N'2022-06-07T01:14:28.000' AS DateTime))
INSERT [dbo].[book_titles] ([id], [title], [author_id], [category_id], [publisher_id], [description], [publication_date], [number_of_pages], [created_at], [updated_at]) VALUES (33, N'Tôi đi code dạo ', 31, 5, 4, N'sách hay', CAST(N'2022-04-24' AS Date), 422, CAST(N'2022-06-07T01:14:59.000' AS DateTime), CAST(N'2022-06-07T01:14:59.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[book_titles] OFF
GO
SET IDENTITY_INSERT [dbo].[books] ON 

INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (3, 7, NULL, 1, CAST(N'2022-05-17T11:18:39.000' AS DateTime), NULL)
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (4, 8, NULL, 1, CAST(N'2022-05-17T11:18:39.000' AS DateTime), NULL)
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (5, 8, NULL, 1, CAST(N'2022-05-17T11:18:39.000' AS DateTime), NULL)
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (6, 8, NULL, 1, CAST(N'2022-05-17T11:18:39.000' AS DateTime), NULL)
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (8, 7, NULL, 1, CAST(N'2022-05-17T11:18:39.000' AS DateTime), NULL)
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (9, 8, NULL, 0, CAST(N'2022-05-17T11:18:39.000' AS DateTime), NULL)
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (11, NULL, CAST(N'2022-05-08' AS Date), 1, CAST(N'2022-05-31T23:55:59.000' AS DateTime), CAST(N'2022-05-31T23:55:59.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (12, NULL, CAST(N'2022-05-10' AS Date), 0, CAST(N'2022-05-31T23:56:10.000' AS DateTime), CAST(N'2022-06-04T00:36:51.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (13, NULL, CAST(N'2022-05-18' AS Date), 1, CAST(N'2022-05-31T23:56:14.000' AS DateTime), CAST(N'2022-05-31T23:56:14.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (14, NULL, CAST(N'2022-05-15' AS Date), 0, CAST(N'2022-05-31T23:56:17.000' AS DateTime), CAST(N'2022-06-04T00:36:37.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (15, NULL, CAST(N'2022-05-24' AS Date), 1, CAST(N'2022-05-31T23:56:20.000' AS DateTime), CAST(N'2022-06-03T14:59:03.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (16, NULL, CAST(N'2022-05-22' AS Date), 1, CAST(N'2022-05-31T23:56:24.000' AS DateTime), CAST(N'2022-05-31T23:56:24.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (17, NULL, CAST(N'2022-05-11' AS Date), 1, CAST(N'2022-05-31T23:56:27.000' AS DateTime), CAST(N'2022-05-31T23:56:27.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (18, 7, CAST(N'2022-06-05' AS Date), 1, CAST(N'2022-06-01T15:43:12.000' AS DateTime), CAST(N'2022-06-01T15:43:12.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (19, 11, CAST(N'2022-06-19' AS Date), 1, CAST(N'2022-06-01T15:46:02.000' AS DateTime), CAST(N'2022-06-01T15:46:07.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (20, 11, CAST(N'2022-06-20' AS Date), 0, CAST(N'2022-06-01T15:46:19.000' AS DateTime), CAST(N'2022-06-01T15:46:25.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (22, 19, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-02T09:41:13.000' AS DateTime), CAST(N'2022-06-02T09:41:13.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (23, 19, CAST(N'2022-04-24' AS Date), 0, CAST(N'2022-06-02T09:42:10.000' AS DateTime), CAST(N'2022-06-02T09:42:10.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (24, 7, CAST(N'2022-06-05' AS Date), 1, CAST(N'2022-06-05T16:14:08.000' AS DateTime), CAST(N'2022-06-05T16:14:08.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (25, 7, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-05T17:31:04.000' AS DateTime), CAST(N'2022-06-05T17:31:04.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (26, 7, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-05T17:31:09.000' AS DateTime), CAST(N'2022-06-05T17:31:09.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (27, 7, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-05T17:31:12.000' AS DateTime), CAST(N'2022-06-05T17:31:12.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (28, 7, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-05T17:31:17.000' AS DateTime), CAST(N'2022-06-05T17:31:17.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (29, 8, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-05T17:31:27.000' AS DateTime), CAST(N'2022-06-05T17:31:27.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (30, 8, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-05T17:31:31.000' AS DateTime), CAST(N'2022-06-05T17:31:31.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (31, 8, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-05T17:31:33.000' AS DateTime), CAST(N'2022-06-05T17:31:33.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (32, 8, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-05T17:31:36.000' AS DateTime), CAST(N'2022-06-05T17:31:36.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (33, 12, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-05T17:31:49.000' AS DateTime), CAST(N'2022-06-05T17:31:49.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (34, 12, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-05T17:31:53.000' AS DateTime), CAST(N'2022-06-05T17:31:53.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (35, 12, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-05T17:31:56.000' AS DateTime), CAST(N'2022-06-05T17:31:56.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (36, 12, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-05T17:31:59.000' AS DateTime), CAST(N'2022-06-05T17:31:59.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (37, 12, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-05T17:32:02.000' AS DateTime), CAST(N'2022-06-05T17:32:02.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (38, 12, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-05T17:32:06.000' AS DateTime), CAST(N'2022-06-05T17:32:06.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (39, 12, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-05T17:32:09.000' AS DateTime), CAST(N'2022-06-05T17:32:09.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (40, 12, CAST(N'2021-10-31' AS Date), 1, CAST(N'2022-06-05T17:32:12.000' AS DateTime), CAST(N'2022-06-05T17:32:12.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (41, 20, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-05T17:32:37.000' AS DateTime), CAST(N'2022-06-05T17:32:37.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (42, 20, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-05T17:32:39.000' AS DateTime), CAST(N'2022-06-05T17:32:39.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (43, 20, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-05T17:32:42.000' AS DateTime), CAST(N'2022-06-05T17:32:42.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (44, 20, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-05T17:32:45.000' AS DateTime), CAST(N'2022-06-05T17:32:45.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (45, 19, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-05T17:32:53.000' AS DateTime), CAST(N'2022-06-05T17:32:53.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (46, 25, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-05T18:03:09.000' AS DateTime), CAST(N'2022-06-05T18:03:09.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (47, 25, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-05T18:03:16.000' AS DateTime), CAST(N'2022-06-05T18:03:16.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (48, 25, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-05T18:03:20.000' AS DateTime), CAST(N'2022-06-05T18:03:20.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (49, 25, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-05T18:03:24.000' AS DateTime), CAST(N'2022-06-05T18:03:24.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (50, NULL, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-06T08:42:28.000' AS DateTime), CAST(N'2022-06-06T08:42:28.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (51, NULL, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-06T08:42:32.000' AS DateTime), CAST(N'2022-06-06T08:42:32.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (52, NULL, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-06T08:42:35.000' AS DateTime), CAST(N'2022-06-06T08:42:35.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (53, NULL, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-06T08:42:39.000' AS DateTime), CAST(N'2022-06-06T08:42:39.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (54, NULL, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-06T08:42:42.000' AS DateTime), CAST(N'2022-06-06T08:42:42.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (55, NULL, CAST(N'2022-01-02' AS Date), 1, CAST(N'2022-06-06T08:42:46.000' AS DateTime), CAST(N'2022-06-06T08:42:46.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (56, NULL, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-06T08:42:49.000' AS DateTime), CAST(N'2022-06-06T08:42:49.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (57, NULL, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-06T08:42:53.000' AS DateTime), CAST(N'2022-06-06T08:42:53.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (59, 32, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-07T01:15:21.000' AS DateTime), CAST(N'2022-06-07T01:15:21.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (60, 32, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-07T01:15:27.000' AS DateTime), CAST(N'2022-06-07T01:15:27.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (61, 32, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-07T01:15:31.000' AS DateTime), CAST(N'2022-06-07T01:15:31.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (62, 32, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-07T01:15:35.000' AS DateTime), CAST(N'2022-06-07T01:15:35.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (63, 32, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-07T01:15:40.000' AS DateTime), CAST(N'2022-06-07T01:15:40.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (64, 32, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-07T01:15:43.000' AS DateTime), CAST(N'2022-06-07T01:15:43.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (65, 32, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-07T01:15:47.000' AS DateTime), CAST(N'2022-06-07T01:15:47.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (66, 33, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-07T01:16:11.000' AS DateTime), CAST(N'2022-06-07T01:16:11.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (67, 33, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-07T01:16:14.000' AS DateTime), CAST(N'2022-06-07T01:16:14.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (68, 33, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-07T01:16:17.000' AS DateTime), CAST(N'2022-06-07T01:16:17.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (69, 33, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-07T01:16:20.000' AS DateTime), CAST(N'2022-06-07T01:16:20.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (70, 33, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-07T01:16:24.000' AS DateTime), CAST(N'2022-06-07T01:16:24.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (71, 33, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-07T01:16:27.000' AS DateTime), CAST(N'2022-06-07T01:16:27.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (72, 33, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-07T01:16:30.000' AS DateTime), CAST(N'2022-06-07T01:16:30.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (73, 33, CAST(N'2021-10-31' AS Date), 1, CAST(N'2022-06-07T01:16:33.000' AS DateTime), CAST(N'2022-06-07T01:16:33.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (74, 31, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-07T01:16:42.000' AS DateTime), CAST(N'2022-06-07T01:16:42.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (75, 31, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-07T01:16:45.000' AS DateTime), CAST(N'2022-06-07T01:16:45.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (76, 31, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-07T01:16:49.000' AS DateTime), CAST(N'2022-06-07T01:16:49.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (77, 31, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-07T01:16:55.000' AS DateTime), CAST(N'2022-06-07T01:16:55.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (78, 31, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-07T01:17:00.000' AS DateTime), CAST(N'2022-06-07T01:17:00.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (79, 31, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-07T01:17:04.000' AS DateTime), CAST(N'2022-06-07T01:17:04.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (80, 31, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-07T01:17:08.000' AS DateTime), CAST(N'2022-06-07T01:17:08.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (81, 30, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-07T01:17:20.000' AS DateTime), CAST(N'2022-06-07T01:17:20.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (82, 30, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-07T01:17:23.000' AS DateTime), CAST(N'2022-06-07T01:17:23.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (83, 30, CAST(N'2022-04-03' AS Date), 1, CAST(N'2022-06-07T01:17:27.000' AS DateTime), CAST(N'2022-06-07T01:17:27.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (84, 30, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-07T01:17:30.000' AS DateTime), CAST(N'2022-06-07T01:17:30.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (85, 30, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-07T01:17:33.000' AS DateTime), CAST(N'2022-06-07T01:17:33.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (86, 30, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-07T01:17:38.000' AS DateTime), CAST(N'2022-06-07T01:17:38.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (87, 30, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-07T01:17:42.000' AS DateTime), CAST(N'2022-06-07T01:17:42.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (88, 30, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-07T01:17:46.000' AS DateTime), CAST(N'2022-06-07T01:17:46.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (89, 30, CAST(N'2021-11-07' AS Date), 1, CAST(N'2022-06-07T01:17:50.000' AS DateTime), CAST(N'2022-06-07T01:17:50.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (90, 30, CAST(N'2021-10-31' AS Date), 1, CAST(N'2022-06-07T01:17:56.000' AS DateTime), CAST(N'2022-06-07T01:17:56.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (91, 28, CAST(N'2022-05-29' AS Date), 1, CAST(N'2022-06-07T01:18:07.000' AS DateTime), CAST(N'2022-06-07T01:18:07.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (92, 28, CAST(N'2022-04-24' AS Date), 1, CAST(N'2022-06-07T01:18:11.000' AS DateTime), CAST(N'2022-06-07T01:18:11.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (93, 28, CAST(N'2022-03-27' AS Date), 1, CAST(N'2022-06-07T01:18:15.000' AS DateTime), CAST(N'2022-06-07T01:18:15.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (94, 28, CAST(N'2022-02-27' AS Date), 1, CAST(N'2022-06-07T01:18:19.000' AS DateTime), CAST(N'2022-06-07T01:18:19.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (95, 28, CAST(N'2022-01-30' AS Date), 1, CAST(N'2022-06-07T01:18:22.000' AS DateTime), CAST(N'2022-06-07T01:18:22.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (96, 28, CAST(N'2021-12-26' AS Date), 1, CAST(N'2022-06-07T01:18:26.000' AS DateTime), CAST(N'2022-06-07T01:18:26.000' AS DateTime))
INSERT [dbo].[books] ([id], [book_title_id], [imported_at], [status], [created_at], [updated_at]) VALUES (97, 28, CAST(N'2021-11-28' AS Date), 1, CAST(N'2022-06-07T01:18:31.000' AS DateTime), CAST(N'2022-06-07T01:18:31.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[books] OFF
GO
SET IDENTITY_INSERT [dbo].[borrow_details] ON 

INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (48, 29, 3, CAST(N'2022-05-29' AS Date), CAST(N'2022-06-06' AS Date), N'Lập trình web')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (49, 29, 5, CAST(N'2022-02-27' AS Date), CAST(N'2022-06-06' AS Date), N'Mắt Biếc')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (50, 29, 35, CAST(N'2022-02-01' AS Date), CAST(N'2022-06-05' AS Date), N'Lập trình C#')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (51, 29, 4, CAST(N'2022-04-01' AS Date), CAST(N'2022-06-05' AS Date), N'Mắt Biếc')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (52, 29, 43, CAST(N'2022-02-27' AS Date), CAST(N'2022-06-05' AS Date), N'Tôi thấy hoa vàng trên cỏ xanh')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (53, 35, 31, CAST(N'2022-06-05' AS Date), CAST(N'2022-06-05' AS Date), N'Mắt Biếc')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (54, 35, 33, CAST(N'2022-06-05' AS Date), NULL, N'Lập trình C#')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (55, NULL, 50, CAST(N'2022-05-29' AS Date), CAST(N'2022-06-06' AS Date), N'Doremon')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (56, NULL, 6, CAST(N'2022-04-24' AS Date), CAST(N'2022-06-05' AS Date), N'Mắt Biếc')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (57, NULL, 57, CAST(N'2022-05-29' AS Date), CAST(N'2022-06-06' AS Date), N'Doremon')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (58, 37, 51, CAST(N'2022-05-29' AS Date), NULL, N'Doremon')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (61, NULL, 48, CAST(N'2022-05-29' AS Date), CAST(N'2022-05-29' AS Date), N'Đồ Họa Máy Tính')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (62, 40, 46, CAST(N'2021-12-26' AS Date), CAST(N'2022-05-30' AS Date), N'Đồ Họa Máy Tính')
INSERT [dbo].[borrow_details] ([id], [borrow_id], [book_id], [borrow_at], [return_at], [book_title]) VALUES (63, 40, 28, CAST(N'2022-01-29' AS Date), NULL, N'Lập trình web')
SET IDENTITY_INSERT [dbo].[borrow_details] OFF
GO
SET IDENTITY_INSERT [dbo].[borrows] ON 

INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (29, 23, N'Nguyễn Văn Mạnh', 6, N'Nguyễn Văn Mạnh', CAST(N'2022-06-05T17:45:29.000' AS DateTime), CAST(N'2022-06-05T17:45:29.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (30, 23, N'Nguyễn Văn Mạnh', 7, N'Nguyễn Thị Mỹ An', CAST(N'2022-06-05T17:45:33.000' AS DateTime), CAST(N'2022-06-05T17:45:33.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (31, 23, N'Nguyễn Văn Mạnh', 8, N'Nguyễn Nghĩa', CAST(N'2022-06-05T17:45:37.000' AS DateTime), CAST(N'2022-06-05T17:45:37.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (32, 23, N'Nguyễn Văn Mạnh', 9, N'Trần Thị Thùy Dương', CAST(N'2022-06-05T17:45:41.000' AS DateTime), CAST(N'2022-06-05T17:45:41.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (33, 23, N'Nguyễn Văn Mạnh', 12, N'Trần Thị Ngà', CAST(N'2022-06-05T17:45:49.000' AS DateTime), CAST(N'2022-06-05T17:45:49.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (34, 23, N'Nguyễn Văn Mạnh', 13, N'Trần Ngọc Quốc', CAST(N'2022-06-05T17:45:53.000' AS DateTime), CAST(N'2022-06-05T17:45:53.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (35, 27, N'Nguyễn Thị Mỹ An', 14, N'Phạm Sĩ Chiến', CAST(N'2022-06-05T18:04:18.000' AS DateTime), CAST(N'2022-06-05T18:04:18.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (37, 23, N'Nguyễn Văn Mạnh', 15, N'Nguyễn Thị Tâm Như', CAST(N'2022-06-06T08:54:08.000' AS DateTime), CAST(N'2022-06-06T08:54:08.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (40, 23, N'Nguyễn Văn Mạnh', 15, N'Nguyễn Thị Tâm Như', CAST(N'2022-06-06T23:42:20.000' AS DateTime), CAST(N'2022-06-06T23:42:20.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (41, 1, N' Admin', 15, N'Nguyễn Thị Tâm Như', CAST(N'2022-06-07T01:19:39.000' AS DateTime), CAST(N'2022-06-07T01:19:39.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (42, 1, N' Admin', 9, N'Trần Thị Thùy Dương', CAST(N'2022-06-07T01:19:49.000' AS DateTime), CAST(N'2022-06-07T01:19:49.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (43, 1, N' Admin', 10, N'Nguyễn Thị Kim Thi', CAST(N'2022-06-07T01:19:56.000' AS DateTime), CAST(N'2022-06-07T01:19:56.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (44, 1, N' Admin', 12, N'Trần Thị Ngà', CAST(N'2022-06-07T01:20:04.000' AS DateTime), CAST(N'2022-06-07T01:20:04.000' AS DateTime))
INSERT [dbo].[borrows] ([id], [creator_id], [creator_name], [reader_id], [reader_name], [created_at], [updated_at]) VALUES (45, 1, N' Admin', 13, N'Trần Ngọc Quốc', CAST(N'2022-06-07T01:20:09.000' AS DateTime), CAST(N'2022-06-07T01:20:09.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[borrows] OFF
GO
SET IDENTITY_INSERT [dbo].[categorys] ON 

INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (2, N'Văn Học', N'sách về văn học', CAST(N'2022-05-20T14:37:55.000' AS DateTime), CAST(N'2022-06-02T07:07:52.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (4, N'Chính Trị', N'', CAST(N'2022-05-21T22:26:25.000' AS DateTime), CAST(N'2022-05-21T22:26:25.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (5, N'Khoa Học', N'', CAST(N'2022-05-21T22:26:33.000' AS DateTime), CAST(N'2022-05-21T22:26:33.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (7, N'Lập trình', N'lập trình web , ai, iot ,...', CAST(N'2022-06-02T09:37:33.000' AS DateTime), CAST(N'2022-06-05T17:22:44.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (8, N'Thơ', N'tác phẩm về thơ', CAST(N'2022-06-05T17:23:02.000' AS DateTime), CAST(N'2022-06-06T08:31:46.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (11, N'Truyện tranh', N'sách dành cho thiếu nhi', CAST(N'2022-06-06T08:45:56.000' AS DateTime), CAST(N'2022-06-06T08:45:57.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (12, N'Truyện trinh tham', N'sách về trinh thám', CAST(N'2022-06-06T08:46:19.000' AS DateTime), CAST(N'2022-06-06T08:46:19.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (13, N'Giáo dục', N'sách để dạy học', CAST(N'2022-06-06T08:46:50.000' AS DateTime), CAST(N'2022-06-06T08:46:50.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (14, N'Kinh Tế', N'sách viết về doanh nhân và kinh tê thế giới', CAST(N'2022-06-07T01:03:45.000' AS DateTime), CAST(N'2022-06-07T01:03:45.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (15, N'Văn Học  Nghệ Thuật', N'sách viết về văn học và nghệ thuật', CAST(N'2022-06-07T01:04:21.000' AS DateTime), CAST(N'2022-06-07T01:04:21.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (16, N'Xã Hội Lịch Sử', N'sách về lịch sử', CAST(N'2022-06-07T01:04:41.000' AS DateTime), CAST(N'2022-06-07T01:04:41.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (17, N'Giáo Trình', N'nghiên cứu', CAST(N'2022-06-07T01:05:38.000' AS DateTime), CAST(N'2022-06-07T01:05:38.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (18, N'Bài Luận', N'các bài luận', CAST(N'2022-06-07T01:05:48.000' AS DateTime), CAST(N'2022-06-07T01:05:48.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (19, N'IOT', N'internet vạn vật', CAST(N'2022-06-07T01:06:06.000' AS DateTime), CAST(N'2022-06-07T01:06:06.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (20, N'AI', N'trí tuệ nhân tạo', CAST(N'2022-06-07T01:06:18.000' AS DateTime), CAST(N'2022-06-07T01:06:18.000' AS DateTime))
INSERT [dbo].[categorys] ([id], [name], [description], [created_at], [updated_at]) VALUES (21, N'PHP Laravel', N'frame word BackEnd', CAST(N'2022-06-07T01:06:40.000' AS DateTime), CAST(N'2022-06-07T01:06:40.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (1, N'admin9library', N'yQjGw48/NFtMoytNRf/It3WUWpo=', N'admin', N'Admin', N'', N'0971404372', N'nguyenvanmanh2001it1@gmail.com', N'Phú Vang - Thừa Thiên Huế - VN', CAST(N'2001-08-29' AS Date), CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-06-06T08:21:46.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (23, N'vanmanh123', N'KRZn43dflOxmyED3RjpeOjZaM4g=', N'user', N'Mạnh', N'Nguyễn Văn', N'0971404372', N'vanmanh123@gmail.com', N'Phú Đa - Phú Vang - Thừa Thiên Huế', CAST(N'2001-08-29' AS Date), CAST(N'2022-06-05T16:56:14.000' AS DateTime), CAST(N'2022-06-06T08:30:02.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (24, N'phamsichien12', N'jYb6BTURDSQLWLROlTXb3qa4Cx8=', N'user', N'Sĩ Chiến', N'Phạm', N'0912343122', N'phamsichien112@gmail.com', N'Đà Nẵng - Việt Nam', CAST(N'2002-02-05' AS Date), CAST(N'2022-06-05T16:59:13.000' AS DateTime), CAST(N'2022-06-05T17:00:04.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (25, N'ngocquoc0705', N'pGLYjPAQqMAkHr8Dj2eBrQqv41g=', N'user', N'Ngọc Quốc', N'Trần', N'0912342123', N'quoctran07052002@gmail.com', N'Quảng Nam - Việt Nam', CAST(N'2002-07-15' AS Date), CAST(N'2022-06-05T17:00:51.000' AS DateTime), CAST(N'2022-06-05T17:01:24.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (26, N'nghiaprsv1', N'phzxCx+E7Z51a0G+kBuO2d6wQJY=', N'user', N'Nghĩa', N'Nguyễn', N'0912456312', N'nghiaprsv1@gmail.com', N'Cẩm Lệ - Đà Nẵng - Việt Nam', CAST(N'2002-07-30' AS Date), CAST(N'2022-06-05T17:02:00.000' AS DateTime), CAST(N'2022-06-05T17:02:41.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (27, N'myan123456', N'YmrlMcPQhuKyFifTku9QS3n5tjA=', N'user', N'Mỹ An', N'Nguyễn Thị', N'0971404372', N'myan123456@gmail.com', N'Huế - Việt Nam', CAST(N'2002-06-05' AS Date), CAST(N'2022-06-05T17:54:26.000' AS DateTime), CAST(N'2022-06-05T17:56:27.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (29, N'quynhnhu123', N'LbS1mTh4OMBPTHeCyHMxyqaEegU=', N'user', N'Quỳnh Như', N'Nguyễn Thị', N'0984277261', N'quynhnhu@gmail.com', N'Huế - Việt Nam', CAST(N'2002-11-21' AS Date), CAST(N'2022-06-07T00:55:09.000' AS DateTime), CAST(N'2022-06-07T00:56:15.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (30, N'tranvanvu123', N'aQLsLY9NHqp0lUprPf2xDi89ysY=', N'user', N'Vũ', N'Trần', N'0473747291', N'tranvanvu@gmail.com', N'Phú Đa - Phú Vang - Huế', CAST(N'2001-07-12' AS Date), CAST(N'2022-06-07T00:56:45.000' AS DateTime), CAST(N'2022-06-07T00:57:20.000' AS DateTime))
INSERT [dbo].[employees] ([id], [username], [password], [role], [first_name], [last_name], [phone], [email], [address], [date_of_birth], [created_at], [updated_at]) VALUES (31, N'ngocanh123', N'NLEBcZNyqLYD1DMMx1C1rX7QvvE=', N'user', N'Ngọc Ánh', N'Nguyễn Thị', N'098438231', N'ngocanh@gmail.com', N'Nha Trang - Việt Nam', CAST(N'2001-06-12' AS Date), CAST(N'2022-06-07T00:57:41.000' AS DateTime), CAST(N'2022-06-07T00:58:24.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[publishers] ON 

INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (3, N'Kim Đồng', N'nhà xuất bản kim đồng', N'Hồ Chí Minh', N'Việt Nam', CAST(N'2022-05-20T14:38:35.000' AS DateTime), CAST(N'2022-06-06T08:30:14.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (4, N'Thế Giới', N'', N'Huế', N'Việt Nam', CAST(N'2022-05-21T22:25:03.000' AS DateTime), CAST(N'2022-06-05T17:22:01.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (5, N'Khoa Học', N'', N'Hồ Chí Minh', N'Việt Nam', CAST(N'2022-05-21T22:25:19.000' AS DateTime), CAST(N'2022-06-05T17:19:26.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (6, N'Thiếu Nhi', N'', N'Nha Trang', N'Việt Nam', CAST(N'2022-05-21T22:25:41.000' AS DateTime), CAST(N'2022-06-05T17:19:37.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (9, N'Trẻ', N'Nhà xuất bản trẻ', N'Đà Nẵng', N'Việt Nam', CAST(N'2022-06-02T09:35:36.000' AS DateTime), CAST(N'2022-06-05T17:21:52.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (10, N'Nhà xuất bản Giáo dục', N'', N'Hà Nội', N'Việt Nam', CAST(N'2022-06-05T17:18:52.000' AS DateTime), CAST(N'2022-06-05T17:18:52.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (11, N'Kỷ Nguyên', N'nhà xuất bản Kỷ Nguyên', N'Thái Bình', N'Việt Nam', CAST(N'2022-06-05T17:59:16.000' AS DateTime), CAST(N'2022-06-05T17:59:16.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (13, N'Chính Trị Quốc Gia', N'nxb chính trị', N'Sài Gòn', N'Việt Nam', CAST(N'2022-06-07T01:07:43.000' AS DateTime), CAST(N'2022-06-07T01:07:43.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (14, N'Tư Pháp', N'', N'Khánh Hòa', N'Việt Nam', CAST(N'2022-06-07T01:08:26.000' AS DateTime), CAST(N'2022-06-07T01:08:26.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (15, N'Quân Đội', N'nxb quân đội', N'Đà Nẵng', N'Việt Nam', CAST(N'2022-06-07T01:08:56.000' AS DateTime), CAST(N'2022-06-07T01:08:56.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (16, N'Lao Động', N'', N'Phú Vang - Huế', N'Việt Nam', CAST(N'2022-06-07T01:09:28.000' AS DateTime), CAST(N'2022-06-07T01:09:28.000' AS DateTime))
INSERT [dbo].[publishers] ([id], [name], [description], [address], [country], [created_at], [updated_at]) VALUES (17, N'Phụ Nữ', N'', N'Huê', N'Việt Nam', CAST(N'2022-06-07T01:09:51.000' AS DateTime), CAST(N'2022-06-07T01:09:51.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[publishers] OFF
GO
SET IDENTITY_INSERT [dbo].[readers] ON 

INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (6, N'Mạnh', N'Nguyễn Văn', 1, CAST(N'2001-08-29' AS Date), N'vanmanh@gmail.com', N'192078214', N'0971404372', N'Huế', CAST(N'2022-05-20T15:51:20.000' AS DateTime), CAST(N'2022-05-20T15:51:20.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (7, N'Mỹ An', N'Nguyễn Thị', 0, CAST(N'2002-11-11' AS Date), N'myan@gmail.com', N'192078222', N'0123456789', N'Hồ Chí Minh', CAST(N'2022-05-21T22:30:19.000' AS DateTime), CAST(N'2022-05-21T22:30:19.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (8, N'Nghĩa', N'Nguyễn', 1, CAST(N'2022-05-29' AS Date), N'', N'192078214', N'0123000333', N'Cam Le - Đà Nẵng', CAST(N'2022-06-02T10:04:21.000' AS DateTime), CAST(N'2022-06-02T10:04:21.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (9, N'Thùy Dương', N'Trần Thị', 0, CAST(N'2002-06-04' AS Date), N'thuyduong@gmail.com', N'18374338822', N'0826373722', N'Phú Đa - Phú Vang - Thừa Thiên Huế', CAST(N'2022-06-05T17:38:39.000' AS DateTime), CAST(N'2022-06-05T17:38:39.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (10, N'Kim Thi', N'Nguyễn Thị', 0, CAST(N'2002-02-04' AS Date), N'kimthi@gmail.com', N'193948474732', N'0384737374', N'Phú Đa  - Huế', CAST(N'2022-06-05T17:39:34.000' AS DateTime), CAST(N'2022-06-05T17:39:34.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (11, N'Kim Khánh', N'Mai Thị', 0, CAST(N'2002-02-13' AS Date), N'kimkhanh@gmail.com', N'2193847272', N'0927462632', N'Phú Vang - Huế', CAST(N'2022-06-05T17:40:56.000' AS DateTime), CAST(N'2022-06-05T17:40:56.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (12, N'Ngà', N'Trần Thị', 0, CAST(N'2002-02-04' AS Date), N'nga@gmail.com', N'18473772263', N'0187737272', N'Đà Nẵng - Việt Nam', CAST(N'2022-06-05T17:41:35.000' AS DateTime), CAST(N'2022-06-05T17:41:35.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (13, N'Ngọc Quốc', N'Trần', 1, CAST(N'2002-01-27' AS Date), N'ngocquoc@gmail.com', N'183746727273', N'0974366234', N'Quảng Nam - Việt Nam', CAST(N'2022-06-05T17:42:28.000' AS DateTime), CAST(N'2022-06-05T17:42:28.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (14, N'Sĩ Chiến', N'Phạm', 1, CAST(N'2002-02-04' AS Date), N'sichien@gmail.com', N'19283274623', N'0971340232', N'Đà Nẵng - Việt Nam', CAST(N'2022-06-05T18:01:23.000' AS DateTime), CAST(N'2022-06-05T18:01:23.000' AS DateTime))
INSERT [dbo].[readers] ([id], [first_name], [last_name], [gender], [date_of_birth], [email], [identity_card_number], [phone], [address], [created_at], [updated_at]) VALUES (15, N'Tâm Như', N'Nguyễn Thị', 0, CAST(N'2002-06-11' AS Date), N'tamnhu@gmail.com', N'123432123445', N'0965922304', N'Phú Đa - Phú Vang - Huế', CAST(N'2022-06-06T08:44:04.000' AS DateTime), CAST(N'2022-06-06T08:44:04.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[readers] OFF
GO
ALTER TABLE [dbo].[book_titles]  WITH CHECK ADD  CONSTRAINT [FK_book_titles_authors] FOREIGN KEY([author_id])
REFERENCES [dbo].[authors] ([id])
GO
ALTER TABLE [dbo].[book_titles] CHECK CONSTRAINT [FK_book_titles_authors]
GO
ALTER TABLE [dbo].[book_titles]  WITH CHECK ADD  CONSTRAINT [FK_book_titles_categorys] FOREIGN KEY([category_id])
REFERENCES [dbo].[categorys] ([id])
GO
ALTER TABLE [dbo].[book_titles] CHECK CONSTRAINT [FK_book_titles_categorys]
GO
ALTER TABLE [dbo].[book_titles]  WITH CHECK ADD  CONSTRAINT [FK_book_titles_publishers] FOREIGN KEY([publisher_id])
REFERENCES [dbo].[publishers] ([id])
GO
ALTER TABLE [dbo].[book_titles] CHECK CONSTRAINT [FK_book_titles_publishers]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [FK_books_book_titles] FOREIGN KEY([book_title_id])
REFERENCES [dbo].[book_titles] ([id])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [FK_books_book_titles]
GO
ALTER TABLE [dbo].[borrow_details]  WITH CHECK ADD  CONSTRAINT [FK_borrow_details_books] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([id])
GO
ALTER TABLE [dbo].[borrow_details] CHECK CONSTRAINT [FK_borrow_details_books]
GO
ALTER TABLE [dbo].[borrow_details]  WITH CHECK ADD  CONSTRAINT [FK_borrow_details_borrows] FOREIGN KEY([borrow_id])
REFERENCES [dbo].[borrows] ([id])
GO
ALTER TABLE [dbo].[borrow_details] CHECK CONSTRAINT [FK_borrow_details_borrows]
GO
ALTER TABLE [dbo].[borrows]  WITH CHECK ADD  CONSTRAINT [FK_borrows_employees] FOREIGN KEY([creator_id])
REFERENCES [dbo].[employees] ([id])
GO
ALTER TABLE [dbo].[borrows] CHECK CONSTRAINT [FK_borrows_employees]
GO
ALTER TABLE [dbo].[borrows]  WITH CHECK ADD  CONSTRAINT [FK_borrows_readers] FOREIGN KEY([reader_id])
REFERENCES [dbo].[readers] ([id])
GO
ALTER TABLE [dbo].[borrows] CHECK CONSTRAINT [FK_borrows_readers]
GO
USE [master]
GO
ALTER DATABASE [System_Library] SET  READ_WRITE 
GO
