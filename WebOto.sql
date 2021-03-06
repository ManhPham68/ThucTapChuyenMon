USE [master]
GO
/****** Object:  Database [WebOto]    Script Date: 12/05/2021 12:19:14 PM ******/
CREATE DATABASE [WebOto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebOto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebOto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebOto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebOto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebOto] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebOto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebOto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebOto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebOto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebOto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebOto] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebOto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebOto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebOto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebOto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebOto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebOto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebOto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebOto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebOto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebOto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebOto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebOto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebOto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebOto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebOto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebOto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebOto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebOto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebOto] SET  MULTI_USER 
GO
ALTER DATABASE [WebOto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebOto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebOto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebOto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebOto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebOto] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebOto] SET QUERY_STORE = OFF
GO
USE [WebOto]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User] [nvarchar](255) NULL,
	[PassWord] [nvarchar](255) NULL,
	[MaLoaiTV] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[MaBlog] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [ntext] NULL,
	[NoiDung] [ntext] NULL,
	[HinhAnh] [ntext] NULL,
	[NgayCapNhat] [datetime] NULL,
	[metaTiltle] [ntext] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[MaBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[DonGiaNhap] [float] NULL,
	[SoLuongNhap] [int] NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
 CONSTRAINT [PK_ChiTietPN] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[MaCTSP] [int] IDENTITY(1,1) NOT NULL,
	[ChungLoai] [nvarchar](255) NULL,
	[XuatXu] [nvarchar](255) NULL,
	[NamSanXuat] [int] NULL,
	[KichThuoc] [nvarchar](255) NULL,
	[ChieuDaiCoSo] [nvarchar](255) NULL,
	[TuTrong] [nvarchar](255) NULL,
	[DungTichXiLanh] [nvarchar](max) NULL,
	[KieuDongCo] [nvarchar](25) NULL,
	[HopSo] [nvarchar](50) NULL,
	[CongSuatLonNhat] [nvarchar](55) NULL,
	[Momen] [nvarchar](55) NULL,
	[TocDoToiDa] [nvarchar](55) NULL,
	[NhienLieu] [nvarchar](55) NULL,
	[KieuDanDong] [nvarchar](55) NULL,
	[SoChoNgoi] [int] NULL,
	[TieuThu] [nvarchar](max) NULL,
	[CoLop] [nvarchar](255) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_ChiTietXe] PRIMARY KEY CLUSTERED 
(
	[MaCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [ntext] NULL,
	[DiaChi] [ntext] NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [nvarchar](12) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [ntext] NULL,
	[ThongTin] [ntext] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_db.PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](255) NOT NULL,
	[TenQuyen] [ntext] NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [ntext] NULL,
	[HinhAnh] [ntext] NULL,
	[DonGia] [float] NULL,
	[LuotXem] [int] NULL,
	[TrangThai] [bit] NULL,
	[HinhAnh1] [ntext] NULL,
	[HinhAnh2] [ntext] NULL,
	[HinhAnh3] [ntext] NULL,
	[HinhAnh4] [ntext] NULL,
	[MaCTSP] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[MaTeam] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[ChucVu] [nvarchar](max) NULL,
	[HinhAnh] [ntext] NULL,
	[TramNgon] [ntext] NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[MaTeam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTV] [ntext] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien_Quyen]    Script Date: 12/05/2021 12:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien_Quyen](
	[MaTVQ] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiTV] [int] NULL,
	[MaQuyen] [nvarchar](255) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_ThanhVien_Quyen_1] PRIMARY KEY CLUSTERED 
(
	[MaTVQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [User], [PassWord], [MaLoaiTV]) VALUES (1, N'Admin', N'12345678', 1)
INSERT [dbo].[Admin] ([ID], [User], [PassWord], [MaLoaiTV]) VALUES (2, N'Member', N'12345678', 2)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (1, N'7 useful technologies for long-distance travel', NULL, N'blog-1-370x270.jpg', CAST(N'2020-04-12T00:00:00.000' AS DateTime), N'7-use')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (2, N'What is Active Steering?', NULL, N'blog-2-370x270.jpg', CAST(N'2021-05-30T00:00:00.000' AS DateTime), N'active')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (3, N'What is airbag', NULL, N'blog-3-370x270.jpg', CAST(N'2021-05-24T00:00:00.000' AS DateTime), N'airbag')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (4, N'What is car??', NULL, N'blog-4-370x270.jpg', CAST(N'2012-02-23T00:00:00.000' AS DateTime), N'car')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (5, N'Why ?', NULL, N'blog-5-370x270.jpg', CAST(N'2012-06-24T00:00:00.000' AS DateTime), N'why')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (6, N'What is benefit''s autos', NULL, N'blog-6-370x270.jpg', CAST(N'2020-02-23T00:00:00.000' AS DateTime), N'benefit')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (7, N'test', N'ádsad', N'ádas', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'ádas')
INSERT [dbo].[Blog] ([MaBlog], [TieuDe], [NoiDung], [HinhAnh], [NgayCapNhat], [metaTiltle]) VALUES (8, N'Teest 2', N'<p>adasdas</p>', N'2021-porsche-panamera-vne-1-jp-9728-3037-1598496416.jpg', CAST(N'2021-05-06T10:55:00.000' AS DateTime), N'test')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSP] ON 

INSERT [dbo].[ChiTietSP] ([MaCTSP], [ChungLoai], [XuatXu], [NamSanXuat], [KichThuoc], [ChieuDaiCoSo], [TuTrong], [DungTichXiLanh], [KieuDongCo], [HopSo], [CongSuatLonNhat], [Momen], [TocDoToiDa], [NhienLieu], [KieuDanDong], [SoChoNgoi], [TieuThu], [CoLop], [MoTa]) VALUES (1, N'MERCEDES BENZ MAYBACH GLS600', N'USA', 2020, N'5226x 2030x 1845', N'3.135', N'2.785', N'4.0 BITURBO', N'V8', N'Tự động 9 cấp 9G-TRONIC', N'571 Hp', N'977 Nm ', N'250', N'Xăng', N'AWD', 4, N'15L / 100KM', N'325/35/R23', N'<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">ASSIST</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hệ thống tự động bảo vệ PRE-SAFE</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hệ thống chống b&oacute; cứng phanh ABS</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Chống trượt khi tăng tốc ASR</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Ổn định th&acirc;n xe điện tử ESP v&agrave; hỗ trợ ổn định xe khi gi&oacute; thổi ngang</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Kiểm so&aacute;t lực k&eacute;o điện tử cho hệ thống 4 b&aacute;nh 4ETS, hỗ trợ xuống dốc DSR</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hệ thống phanh ADAPTIVE với chức năng hỗ trợ dừng xe (HOLD) v&agrave; hỗ trợ khởi h&agrave;nh ngang dốc ( Hill &ndash; Start Assist)</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">CruiseControl (ga tự động)</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">AdaptiveCruiseControl (ACC) giữ khoảng c&aacute;ch với xe ph&iacute;a trước</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hỗ trợ đ&aacute;nh l&aacute;i khẩn cấp khi xe cảm thấy kh&ocirc;ng an to&agrave;n</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hỗ trợ giữ l&agrave;n Lane Assits</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">E-Body Active Control</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Phanh tay điều khiển điện với chức năng nhả phanh th&ocirc;ng minh</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Đ&egrave;n phanh Adaptive nhấp nh&aacute;y khi phanh gấp</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">T&uacute;i kh&iacute; ph&iacute;a trước, b&ecirc;n h&ocirc;ng ph&iacute;a trước v&agrave; sau,t&uacute;i kh&iacute; cửa sổ, t&uacute;i kh&iacute; cho đầu gối người l&aacute;i</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">D&acirc;y đai an to&agrave;n 3 điểm cho tất cả c&aacute;c ghế với bộ căng đai khẩn cấp v&agrave; giới hạn lực siết</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Cần gạt nước mưa với cảm biến nước mưa Hệ thống kh&oacute;a cửa trung t&acirc;m với chức năng tự động kh&oacute;a xe v&agrave; tự động mở kh&oacute;a trong trường hợp khẩn cấp</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">B&agrave;n l&agrave;m việc cho h&agrave;ng ghế sau</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Sấy/l&agrave;m m&aacute;t 4 ghế</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Massage nhiều chế độ cho to&agrave;n bộ ghế</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Tablet th&aacute;o rời cho h&agrave;ng ghế sau</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Cửa sổ trời to&agrave;n cảnh</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Tủ lạnh h&agrave;ng ghế thứ 2</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Bệ bước điện đ&oacute;ng mở chủ động</span></span></p>')
INSERT [dbo].[ChiTietSP] ([MaCTSP], [ChungLoai], [XuatXu], [NamSanXuat], [KichThuoc], [ChieuDaiCoSo], [TuTrong], [DungTichXiLanh], [KieuDongCo], [HopSo], [CongSuatLonNhat], [Momen], [TocDoToiDa], [NhienLieu], [KieuDanDong], [SoChoNgoi], [TieuThu], [CoLop], [MoTa]) VALUES (2, N'BMW X7', N'USA', 2020, N'5.151 x 2.000 x 1.805', N'3.105', N'2.395', N'3.0 L', N'I6', N'Hộp số tự động 8 Steptronic', N'340 Hp ', N'450 Nm', N'250', N'Xăng', N'2 cầu (AWD)', 6, N'8.4– 11.4/100km', N'275/40 R22', N'<div style="box-sizing: border-box; font-family: ''Segoe UI'', system-ui, ''Apple Color Emoji'', ''Segoe UI Emoji'', sans-serif; font-size: 14px;">
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">9 t&uacute;i kh&iacute; an to&agrave;n.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Đ&egrave;n pha tự động ch&ugrave;m s&aacute;ng cao hoặc thấp.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cần gạt cảm biến nước mưa.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cảnh b&aacute;o chệch l&agrave;n đường.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cảnh b&aacute;o điểm m&ugrave;.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cảnh b&aacute;o giao th&ocirc;ng ph&iacute;a sau.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống phanh khẩn cấp tự động.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống hỗ trợ giữ l&agrave;n đường.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống hỗ trợ dừng khẩn cấp.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cảnh b&aacute;o &aacute;p suất lốp.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống bảo vệ chủ động.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống hỗ trợ chuyển hướng l&aacute;i b&aacute;nh sau.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hỗ trợ l&ugrave;i xe Reversing Assistant. Hệ thống treo kh&iacute; 2 cầu th&ocirc;ng minh.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống đ&aacute;nh l&aacute;i chủ động Imtergral Active Steering Kh&oacute;a cửa tự động khi xe chạy.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">T&ugrave;y chọn đ&egrave;n nội thất.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Chức năng tự động Khởi động/dừng.Chức năng đ&oacute;ng/mở cửa th&ocirc;ng minh.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống điều khiển khung gầm Excutive Drive Pro.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống điều khiển bằng cử chỉ BMW Gesture Control.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Camera 360 độ.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hỗ trợ t&igrave;m kiếm kh&ocirc;ng gian đỗ xe Parking Space Assistant.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">V&ocirc; lăng bọc da kiểu thể thao.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Đồng hồ l&aacute;i kỹ thuật số khoang l&aacute;i trợ l&yacute; ảo BMW Live Cockpit Professional.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">H&agrave;ng ghế trước điều chỉnh điện, massage, chức năng th&ocirc;ng hơi v&agrave; sưởi cho h&agrave;ng ghế trước.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">H&agrave;ng ghế thứ hai trượt l&ecirc;n xuống, gập lưng ghế điều chỉnh điện.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">H&agrave;ng thế thứ 3 điều chỉnh gập điện. Hệ thống hỗ trợ tiện &iacute;ch đ&oacute;ng-mở cửa xe.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Giá đỡ cốc điều chỉnh giữ n&oacute;ng-lạnh h&agrave;ng ghế trước..</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cần số pha l&ecirc; lần đầu được &aacute;p dụng tr&ecirc;n c&aacute;c d&ograve;ng xe của BMW.</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cảm biến đỗ xe ph&iacute;a trước v&agrave; ph&iacute;a sau</span></p>
</div>')
INSERT [dbo].[ChiTietSP] ([MaCTSP], [ChungLoai], [XuatXu], [NamSanXuat], [KichThuoc], [ChieuDaiCoSo], [TuTrong], [DungTichXiLanh], [KieuDongCo], [HopSo], [CongSuatLonNhat], [Momen], [TocDoToiDa], [NhienLieu], [KieuDanDong], [SoChoNgoi], [TieuThu], [CoLop], [MoTa]) VALUES (3, N'Lexus LX570', N'Trung Đông', 2020, N'5.080 x 1.980 x 1910', N'2.850', N'2721', N'5.7L', N'V8 DOHC Dual VVTi', N'Tự Động 8 cấp điện tử,chế độ số thể thao', N'362 Hp ', N'529 Nm ', N'260', N'Xăng', N'2 cầu(AWD)', 8, N'15L / 100KM', N'275/R21', N'<div style="box-sizing: border-box; font-family: ''Segoe UI'', system-ui, ''Apple Color Emoji'', ''Segoe UI Emoji'', sans-serif; font-size: 14px;">
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống t&uacute;i kh&iacute; an to&agrave;n: 12 t&uacute;i kh&iacute;. Hệ thống chống b&oacute; cứng phanh ABS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống ph&acirc;n bổ lực phanh điện tử EBD</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống hỗ trợ lực phanh khẩn cấp BAS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống c&acirc;n bằng điện tử VSC</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống chống trơn trượt Traction control</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống kiểm so&aacute;t động lực học VDIM</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống c&agrave;i đặt th&ocirc;ng tin c&aacute; nh&acirc;n LPS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống đi ga tay Cruise control</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống cảm biến &aacute;p suất lốp TMPS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống kh&oacute;a Smart key, Start Stop, định vị GPS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống chiều cao chủ động AHC</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống treo th&iacute;ch ứng AVS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống kiểm so&aacute;t độ b&aacute;m đường TRC</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống kh&oacute;a an to&agrave;n trẻ em CRS Lexus Enform Remote ứng dụng đi&ecirc;n thoại di động từ xa</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Sạc điện thoại kh&ocirc;ng d&acirc;y</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Cảnh b&aacute;o chệch l&agrave;n đường</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hỗ trợ giữ l&agrave;n V&ocirc; lăng điều khiển 4 hướng,trợ lực l&aacute;i EPS</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">K&iacute;nh m&agrave;u chống tia cực t&iacute;m, 1 chạm chống kẹt</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Gương chiếu hậu chống ch&oacute;i ECM, cảnh b&aacute;o vượt tr&ecirc;n gương</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">H&agrave;ng ghế trước điều khiển 16 hướng,nhớ vị tr&iacute; h&agrave;ng ghế l&aacute;i</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống &acirc;m thanh cao cấp 19 loa Mark Levison</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">M&agrave;n h&igrave;nh DVD trung t&acirc;m hiển thị đa chức năng</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Kết nối bluetooth _ AUX,USB, Radio FM-AM DVD t&iacute;ch hợp tựa đầu h&agrave;ng ghế trước với tai nghe hồng ngoại đi k&egrave;m Ph&iacute;m điều khiển t&iacute;ch hợp v&ocirc; lăng</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Nội thất l&agrave; g&oacute;i Luxury pack da cao cấp, ốp v&acirc;n gỗ Sấy, th&ocirc;ng gi&oacute; h&agrave;ng ghế trước v&agrave; h&agrave;ng ghế thứ 2 Điều h&ograve;a tự động 4 v&ugrave;ng ri&ecirc;ng biệt, lọc gi&oacute; kh&ocirc;ng kh&iacute;, b&agrave;n điều khiển ph&iacute;a sau Đ&egrave;n pha full LED, đ&egrave;n LED chạy ban ng&agrave;y v&agrave; đ&egrave;n sương m&ugrave; Cảm biến va chạm trước sau, 4 Camera to&agrave;n cảnh Cảm biến gạt mưa tự động Cửa n&oacute;c điều khiển điện</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Lazăng đ&uacute;c hợp kim Hộp lạnh</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">R&egrave;m che nắng ph&iacute;a sau Rada phanh khoảng c&aacute;ch Đồng hồ hiển thị tốc độ tr&ecirc;n k&iacute;nh l&aacute;i (HUD k&iacute;nh)</span></p>
<span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"> </span>
<p style="font-size: medium;"><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;">Hệ thống hỗ trợ l&aacute;i xe an to&agrave;n Lexus Safety System+</span></p>
</div>')
INSERT [dbo].[ChiTietSP] ([MaCTSP], [ChungLoai], [XuatXu], [NamSanXuat], [KichThuoc], [ChieuDaiCoSo], [TuTrong], [DungTichXiLanh], [KieuDongCo], [HopSo], [CongSuatLonNhat], [Momen], [TocDoToiDa], [NhienLieu], [KieuDanDong], [SoChoNgoi], [TieuThu], [CoLop], [MoTa]) VALUES (5, N'Rolls-Royce Cullinan ', N'Anh', 2020, N'5.341 x 2.164 x 1.835', N'3.295', N'2660', N' 6755', N'6.75L ', N'AT', N'563 Hp', N'850 Nm', N'250', N'Xăng', N'2 cầu', 4, N'15,5L/100Km', NULL, N'<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">ASSIST</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hệ thống tự động bảo vệ PRE-SAFE</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hệ thống chống b&oacute; cứng phanh ABS</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Chống trượt khi tăng tốc ASR</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Ổn định th&acirc;n xe điện tử ESP v&agrave; hỗ trợ ổn định xe khi gi&oacute; thổi ngang</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Kiểm so&aacute;t lực k&eacute;o điện tử cho hệ thống 4 b&aacute;nh 4ETS, hỗ trợ xuống dốc DSR</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hệ thống phanh ADAPTIVE với chức năng hỗ trợ dừng xe (HOLD) v&agrave; hỗ trợ khởi h&agrave;nh ngang dốc ( Hill &ndash; Start Assist)</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">CruiseControl (ga tự động)</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">AdaptiveCruiseControl (ACC) giữ khoảng c&aacute;ch với xe ph&iacute;a trước</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hỗ trợ đ&aacute;nh l&aacute;i khẩn cấp khi xe cảm thấy kh&ocirc;ng an to&agrave;n</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Hỗ trợ giữ l&agrave;n Lane Assits</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">E-Body Active Control</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Phanh tay điều khiển điện với chức năng nhả phanh th&ocirc;ng minh</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Đ&egrave;n phanh Adaptive nhấp nh&aacute;y khi phanh gấp</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">T&uacute;i kh&iacute; ph&iacute;a trước, b&ecirc;n h&ocirc;ng ph&iacute;a trước v&agrave; sau,t&uacute;i kh&iacute; cửa sổ, t&uacute;i kh&iacute; cho đầu gối người l&aacute;i</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">D&acirc;y đai an to&agrave;n 3 điểm cho tất cả c&aacute;c ghế với bộ căng đai khẩn cấp v&agrave; giới hạn lực siết</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Cần gạt nước mưa với cảm biến nước mưa Hệ thống kh&oacute;a cửa trung t&acirc;m với chức năng tự động kh&oacute;a xe v&agrave; tự động mở kh&oacute;a trong trường hợp khẩn cấp</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">B&agrave;n l&agrave;m việc cho h&agrave;ng ghế sau</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Sấy/l&agrave;m m&aacute;t 4 ghế</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Massage nhiều chế độ cho to&agrave;n bộ ghế</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Tablet th&aacute;o rời cho h&agrave;ng ghế sau</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Cửa sổ trời to&agrave;n cảnh</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Tủ lạnh h&agrave;ng ghế thứ 2</span></span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #858796; font-family: Nunito, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; font-size: 16px; text-align: center; background-color: #f8f9fc;"><span style="box-sizing: border-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><span style="box-sizing: border-box; font-weight: bolder;">Bệ bước điện đ&oacute;ng mở chủ động</span></span></p>')
INSERT [dbo].[ChiTietSP] ([MaCTSP], [ChungLoai], [XuatXu], [NamSanXuat], [KichThuoc], [ChieuDaiCoSo], [TuTrong], [DungTichXiLanh], [KieuDongCo], [HopSo], [CongSuatLonNhat], [Momen], [TocDoToiDa], [NhienLieu], [KieuDanDong], [SoChoNgoi], [TieuThu], [CoLop], [MoTa]) VALUES (7, N'Lamborghini Aventador', N'Italia', 2021, N'4.943 x 2.273 x 1.136', N'3.135', N'1525', N'3.0 L', N'V12 6.5L', N'ISR 7 cấp', N'571 hp', N'450Nm', N'350 ', N'Xăng', N'4 cầu (AWD)', 2, N'15L / 100KM', N'275/R21', N'<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">ASSIST</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Hệ thống tự động bảo vệ PRE-SAFE</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Hệ thống chống b&oacute; cứng phanh ABS</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Chống trượt khi tăng tốc ASR</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;"> Ổn định th&acirc;n xe điện tử ESP v&agrave; hỗ trợ ổn định xe khi gi&oacute; thổi ngang</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Kiểm so&aacute;t lực k&eacute;o điện tử cho hệ thống 4 b&aacute;nh 4ETS, hỗ trợ xuống dốc DSR</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Hệ thống phanh ADAPTIVE với chức năng hỗ trợ dừng xe (HOLD) v&agrave; hỗ trợ khởi h&agrave;nh ngang dốc ( Hill &ndash; Start Assist)</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">CruiseControl (ga tự động)</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">AdaptiveCruiseControl (ACC) giữ khoảng c&aacute;ch với xe ph&iacute;a trước</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Hỗ trợ đ&aacute;nh l&aacute;i khẩn cấp khi xe cảm thấy kh&ocirc;ng an to&agrave;n</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Hỗ trợ giữ l&agrave;n Lane Assits</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">E-Body Active Control</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Phanh tay điều khiển điện với chức năng nhả phanh th&ocirc;ng minh</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Đ&egrave;n phanh Adaptive nhấp nh&aacute;y khi phanh gấp</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">T&uacute;i kh&iacute; ph&iacute;a trước, b&ecirc;n h&ocirc;ng ph&iacute;a trước v&agrave; sau,t&uacute;i kh&iacute; cửa sổ, t&uacute;i kh&iacute; cho đầu gối người l&aacute;i</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">D&acirc;y đai an to&agrave;n 3 điểm cho tất cả c&aacute;c ghế với bộ căng đai khẩn cấp v&agrave; giới hạn lực siết</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Cần gạt nước mưa với cảm biến nước mưa Hệ thống kh&oacute;a cửa trung t&acirc;m với chức năng tự động kh&oacute;a xe v&agrave; tự động mở kh&oacute;a trong trường hợp khẩn cấp</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;"> B&agrave;n l&agrave;m việc cho h&agrave;ng ghế sau</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Sấy/l&agrave;m m&aacute;t 4 ghế</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Massage nhiều chế độ cho to&agrave;n bộ ghế</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Tablet th&aacute;o rời cho h&agrave;ng ghế sau</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Cửa sổ trời to&agrave;n cảnh</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Tủ lạnh h&agrave;ng ghế thứ 2</span></strong></span></p>
<p><span style="font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong><span style="color: #858796; text-align: center; background-color: #f8f9fc;">Bệ bước điện đ&oacute;ng mở chủ động</span></strong></span></p>')
SET IDENTITY_INSERT [dbo].[ChiTietSP] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (1, N'BMW Việt Nam', N'68 Lê Văn Lương,Quận Thanh Xuân,Thành phố Hà Nội, Việt Nam.', N'bmwvietnam@gmail.com', N'0906990808')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (2, N'Mercedes-Benz Việt Nam', N'132 Lê Duẩn,Quận Hai Bà Trưng,Thành phố Hà Nội, Việt Nam.', N'mercedesvietnam@gmail.com', N'0906990888')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (3, N'Porsche Việt Nam', N'1 Ngô Gia Tự, Quận Long Biên,Thành phố Hà Nội, Việt Nam.', N'porschevietnam@gmail.com', N'0906998888')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (5, N'Rolls-Royce Việt Nam', N'12 Mai Chí Thọ, P. An Lợi Đông, Quận 2, Thành phố Hồ Chí Minh, Việt Nam.', N'rollroycevietnam@gmail.com', N'0907808880')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (6, N'Lexus Việt Nam', N'80 Nguyễn Văn Trỗi, P. 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam.', N'lexusvietnam@gmail.com', N'0968990808')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (7, N'Cadillac Việt Nam', N'80 Nguyễn Văn Trỗi, P. 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam.', N'cadillac vietnam@gmail.com', N'0906990808')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (8, N'Lamborghini Việt Nam', N'88 Nguyễn Văn Trỗi, P. 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam.', N'lamborghinivietnam@gmail.com', N'0906989999')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'BMW', N'Bayerische Motoren Werke AG, dịch ra tiếng Việt là Xưởng sản xuất Mô tô xứ Bavaria, thường được gọi là BMW (phát âm tiếng Đức: [ˈbeːˈʔɛmˈveː]  (Speaker Icon.svg nghe)), là một công ty đa quốc gia của Đức chuyên sản xuất ô tô và xe máy. Công ty được thành lập vào năm 1916 với tư cách là nhà sản xuất động cơ máy bay, được sản xuất từ năm 1917 đến năm 1918 và một lần nữa từ năm 1933 đến năm 1945.  Ô tô được bán trên thị trường dưới các thương hiệu BMW, Mini và Rolls-Royce, và xe máy được bán dưới thương hiệu BMW Motorrad. Năm 2015, BMW là nhà sản xuất xe cơ giới lớn thứ mười hai thế giới, với 2.279.503 xe đã được sản xuất.[4]  BMW có trụ sở tại Munich và sản xuất xe cơ giới ở Đức, Brazil, Trung Quốc, Ấn Độ, Nam Phi, Vương quốc Anh, Hoa Kỳ và Mexico. BMW có lịch sử tham gia đua xe đáng kể, đặc biệt là trong những chiếc xe đua du lịch, Công thức 1, đua xe thể thao và Isle of Man TT.')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N'Mercedes-Benz', N'Mercedes-Benz là một trong những hãng sản xuất xe ô tô, xe buýt, xe tải danh tiếng trên thế giới. Hãng được xem là hãng sản xuất xe hơi lâu đời nhất còn tồn tại đến ngày nay. Khởi đầu, hãng thuộc sở hữu bởi Daimler-Benz. Hiện tại, hãng là một thành viên của công ty mẹ, Daimler AG (tên trước đây là DaimlerChrysler AG). Mercedes-Benz còn là một trong những hãng đi tiên phong trong việc giới thiệu nhiều công nghệ và những sáng kiến về độ an toàn mà sau đó đã trở nên phổ biến trên toàn thế giới.  Khẩu hiệu của hãng là "the best or nothing"')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Porsche', N'Porsche AG, thường được gọi tắt là Porsche, là một công ty chuyên sản xuất xe hơi thể thao hạng sang của Đức kiêm thương hiệu con trực thuộc sở hữu của tập đoàn ô tô hàng đầu thế giới - Volkswagen AG cũng như gia tộc nhà Porsche. Porsche được sáng lập bởi Ferdinand Porsche - một trong những nhà phát minh, kỹ sư ô tô đi tiên phong trong lĩnh vực tự động hóa cùng với con gái của ông - bà Louise Piëch Porsche. Công ty hiện đặt trụ sở chính tại quận Zuffenhausen, thành phố Stuttgart, phía nam nước Đức.')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (4, N'Cadillac', N'Cadillac /ˈkædɪlæk/ là một bộ phận của công ty sản xuất ô tô Mỹ General Motors (GM), chuyên thiết kế và xây dựng xe hơi đắt tiền. Các thị trường chính của nó là Hoa Kỳ, Canada và Trung Quốc. Xe Cadillac được phân phối tại 34 thị trường khác trên toàn thế giới. Ô tô Cadillac đứng đầu trong lĩnh vực xe ôtô xa xỉ tại Hoa Kỳ.[2] Trong năm 2017, doanh số bán hàng tại Mỹ của Cadillac là 156.440 xe và doanh số toàn cầu của hãng là 356.467 xe.[3]  Cadillac là một trong những thương hiệu ô tô đầu tiên trên thế giới, đứng thứ hai tại Hoa Kỳ chỉ sau thương hiệu đồng hương GM Buick. Công ty được thành lập từ tàn dư của Công ty Henry Ford vào năm 1902.[4] Nó được đặt theo tên của Antoine de la Mothe Cadillac, người thành lập Detroit, Michigan. Biển đồng Cadillac dựa trên phù hiệu của ông.')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'Rolls-Royce', N'Rolls-Royce Holdings plc là một công ty đa quốc gia trách nhiệm hữu hạn của Anh, được thành lập vào tháng 2 năm 2011. Công ty sở hữu Rolls-Royce, một doanh nghiệp được thành lập vào năm 1904 và hiện nay thiết kế, sản xuất và phân phối các hệ thống điện danh cho ngành hàng không và các ngành công nghiệp khác')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'Lexus', N'Lexus là phân khúc xe hơi hạng sang của nhà sản xuất ô tô Nhật Bản Toyota. Sau khi được giới thiệu lần đầu tiên tại Hoa Kỳ vào năm 1989, Lexus đã nhanh chóng trở thành một trong những thương hiệu xe sang bán chạy nhất tại đây, tính tới năm 2006, Lexus đã có mặt tại 68 quốc gia và vùng lãnh thổ trên thế giới.')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'Lamborghini', N'Automobili Lamborghini S.p.A., thường gọi tắt là Lamborghini, là nhà sản xuất siêu xe thể thao cao cấp của Italy, có trụ sở chính và xưởng sản xuất đặt tại Sant'' Agata Bolognese, gần Bologna, Italy. Hiện tại Lamborghini là công ty con thuộc tập đoàn ô tô lớn trên thế giới Audi của Đức')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'DangKy', N'Đăng Kí')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLyBaiViet', N'QuanLyBaiViet')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLySanPham', N'Quản Lý Sản Phẩm')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DonGia], [LuotXem], [TrangThai], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [MaCTSP], [MaNCC], [MaNSX]) VALUES (1, N'Mercedes-benz Maybach GLS600', N'Mec-gls600.jpg', 11179, 10, 1, N'Mec-gls600-1.jpg', N'Mec-gls600-3.jpg', N'Mec-gls600-4.jpg', N'Mec-gls600-5.jpg', 1, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DonGia], [LuotXem], [TrangThai], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [MaCTSP], [MaNCC], [MaNSX]) VALUES (2, N'BMW X7', N'bmw112.jpg', 10979, 10, 0, N'bmw222.jpg', N'bmw332.jpg', N'bmw442.jpg', N'bmwww552.jpg', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DonGia], [LuotXem], [TrangThai], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [MaCTSP], [MaNCC], [MaNSX]) VALUES (3, N'Lexus LX570', N'lx1.jpg', 10979, 10, 0, N'luxeslx570.jpg', N'lx3.jpg', N'lx4.jpg', N'lx5.jpg', 3, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DonGia], [LuotXem], [TrangThai], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [MaCTSP], [MaNCC], [MaNSX]) VALUES (9, N'Roll-Royce Cullinan', N'rol1111l.jpg', 4199000, 0, 1, N'12315797.jpg', N'123312312.jpg', N'146567574.jpg', N'1232131231242.jpg', 5, 5, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DonGia], [LuotXem], [TrangThai], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [MaCTSP], [MaNCC], [MaNSX]) VALUES (12, N'Lamborghini Aventador', N'IM9500-1513680526.jpg', 9999999, NULL, 1, N'I-9495-1513680524.jpg', N'IMG-9513-15136529.jpg', N'I-9497-1513680524.jpg', N'IM9492-1513680524.jpg', 7, 8, 7)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DonGia], [LuotXem], [TrangThai], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [MaCTSP], [MaNCC], [MaNSX]) VALUES (13, N'Porsche cayenne', N'523f04922020porschepanamera4-1-9443-4868-1556855917_1200x0.jpg', 10979, NULL, NULL, N'2021-porsche-panamera-vne-1-jp-9728-3037-1598496416.jpg', N'2021-porsche-panamera-vne-6-jp-6448-6530-1598496417.jpg', N'Porsche-Panamera-den-xe.jpg', N'Porsche-Panamera-4-Executive-0-1203-2182-1532507282.jpg', 1, 3, 3)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([MaTeam], [Ten], [ChucVu], [HinhAnh], [TramNgon]) VALUES (1, N'Mạnh Dollar', N'Chairman', N'manh.jpg', N'Đừng khóc, kẻ xấu sẽ cười. Đừng cúi đầu, vương miện sẽ rơi')
INSERT [dbo].[Team] ([MaTeam], [Ten], [ChucVu], [HinhAnh], [TramNgon]) VALUES (2, N'Huy Ka', N'Salers', N'huy.jpg', N'Động lực là nghệ thuật khiến người khác làm những gì anh muốn vì chính bản thân họ cũng muốn làm điều đó.')
INSERT [dbo].[Team] ([MaTeam], [Ten], [ChucVu], [HinhAnh], [TramNgon]) VALUES (3, N'Hoàng Nguyễn', N'Salers', N'hoang.jpg', N'Nếu muốn thành công, bạn phải dấn thân vào những con đường mới, chứ không phải đi du lịch trên lối mòn của những thành công đã được thừa nhận.')
INSERT [dbo].[Team] ([MaTeam], [Ten], [ChucVu], [HinhAnh], [TramNgon]) VALUES (4, N'Thịnh Phan', N'Salers', N'thinh.jpg', N'Học tập là khởi đầu của giàu có. Học tập là khởi đầu của sức khỏe. Học tập là khởi đầu của tâm linh. Tìm kiếm và học hỏi là nơi điều kỳ diệu bắt nguồn.')
INSERT [dbo].[Team] ([MaTeam], [Ten], [ChucVu], [HinhAnh], [TramNgon]) VALUES (5, N'Anh Tuấn Hoàng', N'Salers', N'anh.jpg', N'Nếu muốn thành công, bạn phải dấn thân vào những con đường mới, chứ không phải đi du lịch trên lối mòn của những thành công đã được thừa nhận.')
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaLoaiTV], [TenLoaiTV]) VALUES (1, N'Admin')
INSERT [dbo].[ThanhVien] ([MaLoaiTV], [TenLoaiTV]) VALUES (2, N'Member')
INSERT [dbo].[ThanhVien] ([MaLoaiTV], [TenLoaiTV]) VALUES (3, N'Vip')
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien_Quyen] ON 

INSERT [dbo].[ThanhVien_Quyen] ([MaTVQ], [MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, 1, N'QuanLySanPham', NULL)
INSERT [dbo].[ThanhVien_Quyen] ([MaTVQ], [MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, 1, N'QuanLyBaiViet', NULL)
INSERT [dbo].[ThanhVien_Quyen] ([MaTVQ], [MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (3, 1, N'DangKy', NULL)
INSERT [dbo].[ThanhVien_Quyen] ([MaTVQ], [MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (4, 2, N'QuanLyBaiViet', NULL)
SET IDENTITY_INSERT [dbo].[ThanhVien_Quyen] OFF
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [fk_a_tv] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[ThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [fk_a_tv]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [fk_ctpn_pn2] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [fk_ctpn_pn2]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [fk_ctpn_sp2] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [fk_ctpn_sp2]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [fk_pn_ncc2] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [fk_pn_ncc2]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_sp_ctsp2] FOREIGN KEY([MaCTSP])
REFERENCES [dbo].[ChiTietSP] ([MaCTSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_sp_ctsp2]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_sp_ncc2] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_sp_ncc2]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_sp_nsx2] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_sp_nsx2]
GO
ALTER TABLE [dbo].[ThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [fk_tvq_q] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[ThanhVien_Quyen] CHECK CONSTRAINT [fk_tvq_q]
GO
ALTER TABLE [dbo].[ThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [fk_tvq_tv] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[ThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[ThanhVien_Quyen] CHECK CONSTRAINT [fk_tvq_tv]
GO
USE [master]
GO
ALTER DATABASE [WebOto] SET  READ_WRITE 
GO
