USE [master]
GO
/****** Object:  Database [bai5 quan ly nha hang hai san]    Script Date: 4/23/2025 9:53:16 PM ******/
CREATE DATABASE [bai5 quan ly nha hang hai san]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bai5 quan ly nha hang hai san', FILENAME = N'D:\bai5 quan ly nha hang hai san.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bai5 quan ly nha hang hai san_log', FILENAME = N'D:\bai5 quan ly nha hang hai san_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bai5 quan ly nha hang hai san].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ARITHABORT OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET RECOVERY FULL 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET  MULTI_USER 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bai5 quan ly nha hang hai san', N'ON'
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET QUERY_STORE = ON
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [bai5 quan ly nha hang hai san]
GO
/****** Object:  Table [dbo].[Bang ban an]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang ban an](
	[Maban] [varchar](50) NOT NULL,
	[Sochonguoi] [int] NULL,
	[Trangthai] [varchar](50) NULL,
 CONSTRAINT [PK_Bang ban an] PRIMARY KEY CLUSTERED 
(
	[Maban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang chi tiet hd]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang chi tiet hd](
	[Mahd] [varchar](50) NOT NULL,
	[Mamon] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[Dongia] [varchar](50) NULL,
 CONSTRAINT [PK_Bang chi tiet hd] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC,
	[Mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang dat ban]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang dat ban](
	[Madat] [varchar](50) NOT NULL,
	[Tenkhach] [varchar](50) NULL,
	[Sdt] [int] NULL,
	[Ngaydat] [datetime] NULL,
	[Giodat] [time](7) NULL,
	[Maban] [varchar](50) NULL,
 CONSTRAINT [PK_Bang dat ban] PRIMARY KEY CLUSTERED 
(
	[Madat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang Hoa Don]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang Hoa Don](
	[Mahd] [varchar](50) NOT NULL,
	[Ngaylap] [datetime] NULL,
	[Tongtien] [varchar](50) NULL,
	[Manv] [varchar](50) NULL,
	[Maban] [varchar](50) NULL,
 CONSTRAINT [PK_Bang Hoa Don] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang nhan vien]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang nhan vien](
	[Manv] [varchar](50) NOT NULL,
	[Hoten] [varchar](50) NULL,
	[Chucvu] [varchar](50) NULL,
	[Sdt] [int] NULL,
 CONSTRAINT [PK_Bang nhan vien] PRIMARY KEY CLUSTERED 
(
	[Manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cong thuc mon]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cong thuc mon](
	[Mamon] [varchar](50) NOT NULL,
	[Manl] [varchar](50) NOT NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Cong thuc mon] PRIMARY KEY CLUSTERED 
(
	[Mamon] ASC,
	[Manl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_CanhBaoDatBan]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_CanhBaoDatBan](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[Madat] [varchar](50) NULL,
	[ThoiGianCanhBao] [datetime] NULL,
	[NoiDung] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monan]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monan](
	[Mamon] [varchar](50) NOT NULL,
	[Tenmon] [varchar](50) NULL,
	[Giamon] [varchar](50) NULL,
	[Mota] [varchar](50) NULL,
	[loaimon] [varchar](50) NULL,
 CONSTRAINT [PK_monan] PRIMARY KEY CLUSTERED 
(
	[Mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguyen lieu]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguyen lieu](
	[manl] [varchar](50) NOT NULL,
	[Tennl] [varchar](50) NULL,
	[Donvitinh] [varchar](50) NULL,
	[Soluongton] [int] NULL,
	[Mancc] [varchar](50) NULL,
 CONSTRAINT [PK_Nguyen lieu] PRIMARY KEY CLUSTERED 
(
	[manl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nha cung cap]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nha cung cap](
	[Mancc] [varchar](50) NOT NULL,
	[Tenncc] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_nha cung cap] PRIMARY KEY CLUSTERED 
(
	[Mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bang ban an] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'MBAN01', 6, N'TOT')
INSERT [dbo].[Bang ban an] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'MBAN02', 6, N'TOT')
INSERT [dbo].[Bang ban an] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'MBAN03', 6, N'TOT')
INSERT [dbo].[Bang ban an] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'MBAN04', 6, N'TOT')
INSERT [dbo].[Bang ban an] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'MBAN05', 4, N'Tr?ng')
GO
INSERT [dbo].[Bang chi tiet hd] ([Mahd], [Mamon], [SoLuong], [Dongia]) VALUES (N'HD01', N'M01', 200, N'2000000')
INSERT [dbo].[Bang chi tiet hd] ([Mahd], [Mamon], [SoLuong], [Dongia]) VALUES (N'HD02', N'M02', 300, N'4000000')
INSERT [dbo].[Bang chi tiet hd] ([Mahd], [Mamon], [SoLuong], [Dongia]) VALUES (N'HD03', N'M03', 400, N'5000000')
INSERT [dbo].[Bang chi tiet hd] ([Mahd], [Mamon], [SoLuong], [Dongia]) VALUES (N'HD04', N'M04', 600, N'6000000')
GO
INSERT [dbo].[Bang dat ban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MADAT01', N'TRUONG VAN QUYEN', 358147281, CAST(N'2025-04-23T00:00:00.000' AS DateTime), CAST(N'07:18:00' AS Time), N'MBAN01')
INSERT [dbo].[Bang dat ban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MADAT02', N'NONG HO NHAT', 358147218, CAST(N'2025-04-23T00:00:00.000' AS DateTime), CAST(N'07:18:00' AS Time), N'MBAN02')
INSERT [dbo].[Bang dat ban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MADAT03', N'NGUYEN THI LINH', 358147218, CAST(N'2025-04-23T00:00:00.000' AS DateTime), CAST(N'07:18:00' AS Time), N'MBAN03')
INSERT [dbo].[Bang dat ban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MADAT04', N'NGUYEN VAN HOAN', 358147218, CAST(N'2025-04-23T00:00:00.000' AS DateTime), CAST(N'07:18:00' AS Time), N'MBAN04')
GO
INSERT [dbo].[Bang Hoa Don] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'HD01', CAST(N'2025-04-23T00:00:00.000' AS DateTime), N'2000000', N'MNV01', N'MBAN01')
INSERT [dbo].[Bang Hoa Don] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'HD02', CAST(N'2025-04-23T00:00:00.000' AS DateTime), N'4000000', N'MNV02', N'MBAN02')
INSERT [dbo].[Bang Hoa Don] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'HD03', CAST(N'2025-04-23T00:00:00.000' AS DateTime), N'5000000', N'MNV03', N'MBAN03')
INSERT [dbo].[Bang Hoa Don] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'HD04', CAST(N'2025-04-23T00:00:00.000' AS DateTime), N'1000000', N'MNV04', N'MBAN04')
GO
INSERT [dbo].[Bang nhan vien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV01', N'TRUONG VAN QUYEN', N'GIAM DOC', 358147218)
INSERT [dbo].[Bang nhan vien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV02', N'NGUYEN VAN HOAN', N'LAO CONG', 358147218)
INSERT [dbo].[Bang nhan vien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV03', N'NGUYEN THI LINH', N'QUAN LY', 358153748)
INSERT [dbo].[Bang nhan vien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV04', N'NONG HO NHAT', N'BAO VE', 358147218)
GO
INSERT [dbo].[Cong thuc mon] ([Mamon], [Manl], [Soluong]) VALUES (N'M01', N'MNL01', 300)
INSERT [dbo].[Cong thuc mon] ([Mamon], [Manl], [Soluong]) VALUES (N'M02', N'MNL02', 500)
INSERT [dbo].[Cong thuc mon] ([Mamon], [Manl], [Soluong]) VALUES (N'M03', N'MNL03', 400)
INSERT [dbo].[Cong thuc mon] ([Mamon], [Manl], [Soluong]) VALUES (N'M04', N'MNL04', 200)
GO
SET IDENTITY_INSERT [dbo].[Log_CanhBaoDatBan] ON 

INSERT [dbo].[Log_CanhBaoDatBan] ([LogID], [Madat], [ThoiGianCanhBao], [NoiDung]) VALUES (1, N'MADAT05', CAST(N'2025-04-23T10:00:00.000' AS DateTime), N'Đặt bàn trưa')
SET IDENTITY_INSERT [dbo].[Log_CanhBaoDatBan] OFF
GO
INSERT [dbo].[monan] ([Mamon], [Tenmon], [Giamon], [Mota], [loaimon]) VALUES (N'M01', N'CA NGU', N'500000', N'NGON', N'CA NGU NUONG')
INSERT [dbo].[monan] ([Mamon], [Tenmon], [Giamon], [Mota], [loaimon]) VALUES (N'M02', N'CUA HOANG DE', N'500000', N'NGON', N'CUA HAP')
INSERT [dbo].[monan] ([Mamon], [Tenmon], [Giamon], [Mota], [loaimon]) VALUES (N'M03', N'OC VOI VOI', N'500000', N'NGON', N'OC VOI VOI LUOC')
INSERT [dbo].[monan] ([Mamon], [Tenmon], [Giamon], [Mota], [loaimon]) VALUES (N'M04', N'TOM HUM', N'500000', N'NGON', N'TOM NUONG BO')
GO
INSERT [dbo].[Nguyen lieu] ([manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL01', N'CA NGU', N'CON', 10, N'MCC01')
INSERT [dbo].[Nguyen lieu] ([manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL02', N'CUA HOANG DE', N'CON', 50, N'MCC02')
INSERT [dbo].[Nguyen lieu] ([manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL03', N'OC VOI VOI', N'CON', 100, N'MCC03')
INSERT [dbo].[Nguyen lieu] ([manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL04', N'TOM HUM', N'CON', 200, N'MCC04')
INSERT [dbo].[Nguyen lieu] ([manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL05', N'HAU', N'CON', 500, NULL)
GO
INSERT [dbo].[nha cung cap] ([Mancc], [Tenncc], [Sdt], [Diachi]) VALUES (N'MCC01', N'TRUONG VAN QUYEN', N'0358147218', N'PHO YEN')
INSERT [dbo].[nha cung cap] ([Mancc], [Tenncc], [Sdt], [Diachi]) VALUES (N'MCC02', N'NGUYEN THI LINH', N'0358147218', N'BAC GIANG')
INSERT [dbo].[nha cung cap] ([Mancc], [Tenncc], [Sdt], [Diachi]) VALUES (N'MCC03', N'NONG HO NHAT', N'0358147218', N'DAI TU')
INSERT [dbo].[nha cung cap] ([Mancc], [Tenncc], [Sdt], [Diachi]) VALUES (N'MCC04', N'TRIEU TRA MY', N'0358147218', N'DAI TU')
GO
ALTER TABLE [dbo].[Log_CanhBaoDatBan] ADD  DEFAULT (getdate()) FOR [ThoiGianCanhBao]
GO
ALTER TABLE [dbo].[Bang chi tiet hd]  WITH CHECK ADD  CONSTRAINT [FK_Bang chi tiet hd_Bang Hoa Don] FOREIGN KEY([Mahd])
REFERENCES [dbo].[Bang Hoa Don] ([Mahd])
GO
ALTER TABLE [dbo].[Bang chi tiet hd] CHECK CONSTRAINT [FK_Bang chi tiet hd_Bang Hoa Don]
GO
ALTER TABLE [dbo].[Bang chi tiet hd]  WITH CHECK ADD  CONSTRAINT [FK_Bang chi tiet hd_monan] FOREIGN KEY([Mamon])
REFERENCES [dbo].[monan] ([Mamon])
GO
ALTER TABLE [dbo].[Bang chi tiet hd] CHECK CONSTRAINT [FK_Bang chi tiet hd_monan]
GO
ALTER TABLE [dbo].[Bang dat ban]  WITH CHECK ADD  CONSTRAINT [FK_Bang dat ban_Bang ban an] FOREIGN KEY([Maban])
REFERENCES [dbo].[Bang ban an] ([Maban])
GO
ALTER TABLE [dbo].[Bang dat ban] CHECK CONSTRAINT [FK_Bang dat ban_Bang ban an]
GO
ALTER TABLE [dbo].[Bang Hoa Don]  WITH CHECK ADD  CONSTRAINT [FK_Bang Hoa Don_Bang ban an] FOREIGN KEY([Maban])
REFERENCES [dbo].[Bang ban an] ([Maban])
GO
ALTER TABLE [dbo].[Bang Hoa Don] CHECK CONSTRAINT [FK_Bang Hoa Don_Bang ban an]
GO
ALTER TABLE [dbo].[Bang Hoa Don]  WITH CHECK ADD  CONSTRAINT [FK_Bang Hoa Don_Bang nhan vien] FOREIGN KEY([Manv])
REFERENCES [dbo].[Bang nhan vien] ([Manv])
GO
ALTER TABLE [dbo].[Bang Hoa Don] CHECK CONSTRAINT [FK_Bang Hoa Don_Bang nhan vien]
GO
ALTER TABLE [dbo].[Cong thuc mon]  WITH CHECK ADD  CONSTRAINT [FK_Cong thuc mon_monan] FOREIGN KEY([Mamon])
REFERENCES [dbo].[monan] ([Mamon])
GO
ALTER TABLE [dbo].[Cong thuc mon] CHECK CONSTRAINT [FK_Cong thuc mon_monan]
GO
ALTER TABLE [dbo].[Cong thuc mon]  WITH CHECK ADD  CONSTRAINT [FK_Cong thuc mon_Nguyen lieu] FOREIGN KEY([Manl])
REFERENCES [dbo].[Nguyen lieu] ([manl])
GO
ALTER TABLE [dbo].[Cong thuc mon] CHECK CONSTRAINT [FK_Cong thuc mon_Nguyen lieu]
GO
ALTER TABLE [dbo].[Nguyen lieu]  WITH CHECK ADD  CONSTRAINT [FK_Nguyen lieu_nha cung cap] FOREIGN KEY([Mancc])
REFERENCES [dbo].[nha cung cap] ([Mancc])
GO
ALTER TABLE [dbo].[Nguyen lieu] CHECK CONSTRAINT [FK_Nguyen lieu_nha cung cap]
GO
/****** Object:  Trigger [dbo].[trg_CanhBaoDatBan]    Script Date: 4/23/2025 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Truong Van Quyen
-- Create date: 2025-04-23
-- Description:	Cảnh báo trung giờ đặt bàn
-- =============================================
CREATE TRIGGER [dbo].[trg_CanhBaoDatBan]
ON [dbo].[Bang dat ban]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Log_CanhBaoDatBan (Madat,ThoiGianCanhBao,NoiDung)
    SELECT  i.Madat,
            GETDATE(),                          -- thời gian ghi log
            N'Đặt trùng giờ với lịch đã có cho bàn ' + i.Maban
    FROM    inserted i
    WHERE   EXISTS (
              SELECT 1
              FROM   dbo.DatBan d
              WHERE  d.Maban   = i.Maban
                AND  d.Ngaydat = i.Ngaydat
                AND  d.Giodat  = i.Giodat
                AND  d.Madat  <> i.Madat       -- tránh chính bản ghi vừa thêm
            );
END;
GO
ALTER TABLE [dbo].[Bang dat ban] ENABLE TRIGGER [trg_CanhBaoDatBan]
GO
USE [master]
GO
ALTER DATABASE [bai5 quan ly nha hang hai san] SET  READ_WRITE 
GO
