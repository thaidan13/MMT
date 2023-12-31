USE [QuanLyNhanSuWedTN]
GO
/****** Object:  Table [dbo].[DiemThanhCongCuaOKR]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThanhCongCuaOKR](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK__DiemThan__3214EC0760339709] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ChucVu]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChucVu](
	[IdCV] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](100) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_ChucV__B7739095E99E25F7] PRIMARY KEY CLUSTERED 
(
	[IdCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DiNuocNgoai]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DiNuocNgoai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayDi] [date] NULL,
	[NgayVe] [date] NULL,
	[ThoiGian] [nvarchar](100) NULL,
	[QuocGiaDen] [nvarchar](100) NULL,
	[MucDich] [nvarchar](100) NULL,
	[IdNV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_DiNuo__3214EC0755D93C0E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HoSo]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoSo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNV] [int] NULL,
	[TenHoSo] [nvarchar](150) NULL,
	[TapTin] [nvarchar](500) NULL,
	[LoaiHoSo] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_HoSo__3214EC07FF9307C9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_KhenThuong_KyLuat]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KhenThuong_KyLuat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNV] [int] NULL,
	[HinhThuc] [nvarchar](150) NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[LyDo] [nvarchar](250) NULL,
	[CapQuyetDinh] [nvarchar](150) NULL,
	[SoQuyetDinh] [varchar](100) NULL,
	[NguoiKy] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[DinhKem] [nvarchar](500) NULL,
	[Loai] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_KhenT__3214EC077E63EDDC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_LichSuBanThanNhanVien]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LichSuBanThanNhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNV] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[LamGi] [nvarchar](250) NULL,
	[ODau] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_LichS__3214EC07273B86DB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OKR]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OKR](
	[IdOkr] [int] IDENTITY(1,1) NOT NULL,
	[Nam] [date] NOT NULL,
	[Quy] [varchar](10) NULL,
	[TieuDe] [nvarchar](500) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[MucTieu] [nvarchar](100) NOT NULL,
	[KieuOkr] [nvarchar](100) NOT NULL,
	[LaKetQuaThenChot] [int] NULL,
	[Diem] [float] NULL,
	[PhongBan] [int] NULL,
	[NhanVien] [int] NULL,
	[ChuSoHuu] [nvarchar](150) NULL,
	[KetQua] [bit] NULL,
	[TrongSo] [decimal](5, 2) NULL,
	[DiemThanhCong] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_OKR__2A0B92DCF590D442] PRIMARY KEY CLUSTERED 
(
	[IdOkr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhongBan]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhongBan](
	[IdPB] [int] IDENTITY(1,1) NOT NULL,
	[TenPhongBan] [nvarchar](100) NOT NULL,
	[IsDelete] [bit] NULL,
	[QuanLy] [int] NULL,
	[PhongBanCapTren] [int] NULL,
 CONSTRAINT [PK__tb_Phong__B7703B315BD0B293] PRIMARY KEY CLUSTERED 
(
	[IdPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_QuaTrinhCongTac]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuaTrinhCongTac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNV] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[TenCongTy] [nvarchar](100) NULL,
	[TenPhongBan] [nvarchar](100) NULL,
	[TenDoi] [nvarchar](100) NULL,
	[ChucDanh] [nvarchar](100) NULL,
	[LyDo] [nvarchar](250) NULL,
	[DangHoatDong] [bit] NULL,
	[SoHDLD] [nvarchar](100) NULL,
	[LoaiHDLD] [nvarchar](100) NULL,
	[NgayQuyetDinh] [date] NULL,
	[NgayHieuLuc] [date] NULL,
	[SoQD] [nvarchar](100) NULL,
	[NguoiKy] [nvarchar](100) NULL,
	[FileQuyetDinh] [nvarchar](500) NULL,
	[Loai] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_QuaTr__3214EC076769272D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_QuaTrinhDaoTao]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuaTrinhDaoTao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TuNam] [date] NOT NULL,
	[DenNam] [date] NULL,
	[CheDoHoc] [nvarchar](100) NOT NULL,
	[LoaiDaoTao] [nvarchar](100) NOT NULL,
	[TruongDaoTao] [nvarchar](100) NOT NULL,
	[NganhDaoTao] [nvarchar](100) NULL,
	[BangCap] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](500) NULL,
	[KetQua] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](50) NULL,
	[ChuyenMon] [nvarchar](100) NULL,
	[SoBang] [varchar](100) NULL,
	[NgayCap] [date] NULL,
	[QuocGia] [nvarchar](250) NULL,
	[IdNV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_QuaTr__3214EC07027CBA84] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_QuaTrinhDaoTaoCuMoi]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuaTrinhDaoTaoCuMoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KhoaHoc] [nvarchar](100) NULL,
	[Truong_DonVi] [nvarchar](100) NULL,
	[HoanTat] [bit] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[SoQuyetDinh] [nvarchar](100) NULL,
	[HinhThuc] [nvarchar](100) NULL,
	[TenBang] [nvarchar](100) NULL,
	[SoBang] [int] NULL,
	[DangBang] [nvarchar](100) NULL,
	[NgayCap] [date] NULL,
	[HetHan] [date] NULL,
	[LoaiDaoTao] [bit] NULL,
	[GhiChu] [nvarchar](500) NULL,
	[IdNV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_QuaTr__3214EC07151343B8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_QuaTrinhDaoTaoMoi]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuaTrinhDaoTaoMoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KhoaHoc] [nvarchar](100) NULL,
	[Truong_DonVi] [nvarchar](100) NULL,
	[HoanTat] [bit] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[SoQuyetDinh] [nvarchar](100) NULL,
	[HinhThuc] [nvarchar](100) NULL,
	[TenBang] [nvarchar](100) NULL,
	[SoBang] [int] NULL,
	[DangBang] [nvarchar](100) NULL,
	[NgayCap] [date] NULL,
	[HetHan] [bit] NULL,
	[KetQua] [nvarchar](100) NULL,
	[DiaDiem] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[IdNV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_QuaTr__3214EC07139862CA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_QuaTrinhLamViecCuaThanNhan]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuaTrinhLamViecCuaThanNhan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdThanNhan] [int] NULL,
	[TuNam] [date] NULL,
	[DenNam] [date] NULL,
	[CongViec] [nvarchar](150) NULL,
	[DonVi] [nvarchar](150) NULL,
	[CapBac] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[LoaiChucVu] [nvarchar](100) NULL,
	[TrongNganh] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_QuaTr__3214EC0768EF9789] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_TaiKhoan]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[DateCreated] [datetime] NULL,
	[Role] [nvarchar](150) NULL,
	[IdNv] [int] NULL,
 CONSTRAINT [PK__tb_TaiKh__3214EC0731F56160] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinChinhTri]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinChinhTri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrinhDoChinhTri] [nvarchar](100) NULL,
	[CheDoHoc] [nvarchar](100) NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[KinhPhi] [money] NULL,
	[NguonKinhPhi] [nvarchar](100) NULL,
	[NgayCap] [date] NULL,
	[IdNv] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_Thong__3214EC07AE914137] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinDoanDang]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinDoanDang](
	[IdNV] [int] NOT NULL,
	[SoTheDang] [int] NULL,
	[NgayCapThe] [date] NULL,
	[DaVaoDang] [bit] NULL,
	[NgayVaoDang1] [date] NULL,
	[NgayChinhThuc1] [date] NULL,
	[NgayVaoDang2] [date] NULL,
	[NgayChinhThuc2] [date] NULL,
	[NguoiThuNhat] [nvarchar](100) NULL,
	[ChucVu1] [nvarchar](100) NULL,
	[DiaChi1] [nvarchar](250) NULL,
	[NguoiThuHai] [nvarchar](100) NULL,
	[ChucVu2] [nvarchar](100) NULL,
	[DiaChi2] [nvarchar](250) NULL,
	[NgayVaoDoan] [date] NULL,
	[DaVaoDoan] [bit] NULL,
	[NgayNhapNgu] [date] NULL,
	[NgayXuatNgu] [date] NULL,
	[QuanHamChucVuCaoNhat] [nvarchar](100) NULL,
	[DanhHieuDuocPhong] [nvarchar](100) NULL,
	[SoTruong] [nvarchar](100) NULL,
 CONSTRAINT [PK__tb_Thong__B773C9708379E3CA] PRIMARY KEY CLUSTERED 
(
	[IdNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinGiaDinh]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinGiaDinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNV] [int] NULL,
	[HoTen] [nvarchar](250) NULL,
	[QuanHe] [nvarchar](250) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Phuong] [nvarchar](100) NULL,
	[QuanHuyen] [nvarchar](100) NULL,
	[TinhThanh] [nvarchar](100) NULL,
	[ConSong] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_Thong__3214EC07F706D245] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinHopDongLaoDong]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinHopDongLaoDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNV] [int] NULL,
	[SoHDLD] [varchar](50) NULL,
	[LoaiHopDong] [nvarchar](100) NULL,
	[ThoiHan] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](100) NULL,
	[BacLuong] [float] NULL,
	[HeSoLuong] [float] NULL,
	[NgayKy] [date] NULL,
	[NguoiKy] [nvarchar](100) NULL,
	[NgayThuViec] [date] NULL,
	[NgayChinhThuc] [date] NULL,
	[NgayHetHan] [date] NULL,
	[NgayGiaHan] [date] NULL,
	[FileQuyetDinh] [nvarchar](500) NULL,
	[FileHDLD] [nvarchar](500) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_Thong__3214EC076A9523FC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinNgoaiNgu]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinNgoaiNgu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgoaiNgu] [nvarchar](100) NULL,
	[BangCap] [nvarchar](100) NULL,
	[KetQua] [nvarchar](100) NULL,
	[NgayCap] [date] NULL,
	[KinhPhi] [money] NULL,
	[ChinhPhu] [bit] NULL,
	[NguonKinhPhi] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[IdNV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_Thong__3214EC0751591164] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinNhanVien]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinNhanVien](
	[IdNV] [int] IDENTITY(1,1) NOT NULL,
	[HoKhaiSinh] [nvarchar](250) NOT NULL,
	[HoThuongDung] [nvarchar](250) NOT NULL,
	[TenKhaiSinh] [nvarchar](250) NOT NULL,
	[TenThuongDung] [nvarchar](250) NOT NULL,
	[BiDanh] [nvarchar](150) NOT NULL,
	[CMND] [nvarchar](100) NULL,
	[NgayCapCMND] [date] NULL,
	[NoiCapCMND] [nvarchar](250) NULL,
	[TheCanCuoc] [nvarchar](100) NOT NULL,
	[NgayCapTheCanCuoc] [date] NOT NULL,
	[SoHoChieu] [nvarchar](100) NULL,
	[NgayCapHoChieu] [date] NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[HinhAnh] [nvarchar](500) NOT NULL,
	[QuocTich] [nvarchar](100) NOT NULL,
	[DanToc] [nvarchar](100) NOT NULL,
	[TonGiao] [nvarchar](100) NULL,
	[ThanhPhanGiaDinh] [nvarchar](100) NOT NULL,
	[ChieuCao] [int] NOT NULL,
	[NhanDang] [nvarchar](100) NULL,
	[TenChucDanh] [nvarchar](100) NULL,
	[MoTaCongViec] [nvarchar](250) NULL,
	[BacLuong] [float] NULL,
	[NgayNghiViec] [date] NULL,
	[LyDoNghiViec] [nvarchar](250) NULL,
	[QueQuanPhuongXa] [nvarchar](150) NULL,
	[QueQuanQuanHuyen] [nvarchar](150) NULL,
	[QueQuanThanhPho] [nvarchar](150) NULL,
	[DienThoaiNha] [varchar](20) NULL,
	[DTDD] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DiaChiThuongTru] [nvarchar](250) NOT NULL,
	[PhuongXaThuongTru] [nvarchar](250) NOT NULL,
	[QuanHuyenThuongTru] [nvarchar](250) NOT NULL,
	[ThanhPhoThuongTru] [nvarchar](100) NOT NULL,
	[DiaChiTamTru] [nvarchar](250) NOT NULL,
	[PhuongXaTamTru] [nvarchar](250) NOT NULL,
	[QuanHuyenTamTru] [nvarchar](250) NOT NULL,
	[ThanhPhoTamTru] [nvarchar](100) NOT NULL,
	[IdPB] [int] NULL,
	[IdCV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_Thong__B773C970CE603B85] PRIMARY KEY CLUSTERED 
(
	[IdNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinViTinh]    Script Date: 29/11/2023 5:09:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinViTinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BangCap] [nvarchar](100) NULL,
	[SoBang] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](250) NULL,
	[CheDoHoc] [nvarchar](100) NULL,
	[NgayCap] [date] NULL,
	[TuNgay] [date] NULL,
	[Denngay] [date] NULL,
	[KinhPhi] [money] NULL,
	[NguonKinhPhi] [nvarchar](150) NULL,
	[IdNV] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__tb_Thong__3214EC072EE3659B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DiemThanhCongCuaOKR] ON 

INSERT [dbo].[DiemThanhCongCuaOKR] ([Id], [Diem]) VALUES (1, 0.5)
SET IDENTITY_INSERT [dbo].[DiemThanhCongCuaOKR] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ChucVu] ON 

INSERT [dbo].[tb_ChucVu] ([IdCV], [TenChucVu], [IsDelete]) VALUES (1, N'Giám Đốc', 0)
SET IDENTITY_INSERT [dbo].[tb_ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_DiNuocNgoai] ON 

INSERT [dbo].[tb_DiNuocNgoai] ([Id], [NgayDi], [NgayVe], [ThoiGian], [QuocGiaDen], [MucDich], [IdNV], [IsDelete]) VALUES (1, CAST(N'2021-01-01' AS Date), CAST(N'2021-02-02' AS Date), N'1 tháng', N'Việt Nam', N'Du Lịch', 3, 1)
INSERT [dbo].[tb_DiNuocNgoai] ([Id], [NgayDi], [NgayVe], [ThoiGian], [QuocGiaDen], [MucDich], [IdNV], [IsDelete]) VALUES (2, CAST(N'2023-11-20' AS Date), CAST(N'2023-11-27' AS Date), N'1 tháng', N'Trung Quốc', N'Du Lịch', 7, 0)
INSERT [dbo].[tb_DiNuocNgoai] ([Id], [NgayDi], [NgayVe], [ThoiGian], [QuocGiaDen], [MucDich], [IdNV], [IsDelete]) VALUES (3, CAST(N'2023-11-27' AS Date), CAST(N'2023-11-28' AS Date), N'1 đêm', N'Vũng Tàu ', N'Hành Xác', 9, 0)
SET IDENTITY_INSERT [dbo].[tb_DiNuocNgoai] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_HoSo] ON 

INSERT [dbo].[tb_HoSo] ([Id], [IdNV], [TenHoSo], [TapTin], [LoaiHoSo], [IsDelete]) VALUES (1, 9, N'Bằng tốt nghiệp cao đẳng', N'VIDEO_DOWNLOAD_1688911546801_1689044596939.mp4', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_HoSo] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_KhenThuong_KyLuat] ON 

INSERT [dbo].[tb_KhenThuong_KyLuat] ([Id], [IdNV], [HinhThuc], [TuNgay], [DenNgay], [LyDo], [CapQuyetDinh], [SoQuyetDinh], [NguoiKy], [GhiChu], [DinhKem], [Loai], [IsDelete]) VALUES (1, 3, N'Test', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-01' AS Date), N'Test', N'Giám Đốc', N'Test-323', N'Test', N'Test', N'anh-the-dep-nu.jpg', 0, 1)
INSERT [dbo].[tb_KhenThuong_KyLuat] ([Id], [IdNV], [HinhThuc], [TuNgay], [DenNgay], [LyDo], [CapQuyetDinh], [SoQuyetDinh], [NguoiKy], [GhiChu], [DinhKem], [Loai], [IsDelete]) VALUES (2, 7, N'Tiền mặt và giấy khen', CAST(N'2023-11-26' AS Date), CAST(N'2023-11-26' AS Date), N'Hoàn thành công việc tốt', NULL, N'KT-001', N'Giám Đốc', NULL, N'OIP.jfif', 0, 1)
INSERT [dbo].[tb_KhenThuong_KyLuat] ([Id], [IdNV], [HinhThuc], [TuNgay], [DenNgay], [LyDo], [CapQuyetDinh], [SoQuyetDinh], [NguoiKy], [GhiChu], [DinhKem], [Loai], [IsDelete]) VALUES (3, 9, N'Giấy khen', CAST(N'2023-11-28' AS Date), CAST(N'2023-11-28' AS Date), N'Hoàn thành công việc', N'Giám đốc ', N'KT-001', N'Ngô Văn Quỳnh ', NULL, N'VIDEO_DOWNLOAD_1691504013571_1691504264940.mp4', 0, 0)
SET IDENTITY_INSERT [dbo].[tb_KhenThuong_KyLuat] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_LichSuBanThanNhanVien] ON 

INSERT [dbo].[tb_LichSuBanThanNhanVien] ([Id], [IdNV], [TuNgay], [DenNgay], [LamGi], [ODau], [IsDelete]) VALUES (1, 9, CAST(N'2009-11-28' AS Date), CAST(N'2014-11-28' AS Date), N'Học cấp 1', N'Phan Thiết Bình Thuận', 0)
SET IDENTITY_INSERT [dbo].[tb_LichSuBanThanNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OKR] ON 

INSERT [dbo].[tb_OKR] ([IdOkr], [Nam], [Quy], [TieuDe], [MoTa], [MucTieu], [KieuOkr], [LaKetQuaThenChot], [Diem], [PhongBan], [NhanVien], [ChuSoHuu], [KetQua], [TrongSo], [DiemThanhCong], [IsDelete]) VALUES (1, CAST(N'2023-11-20' AS Date), N'Q4', N'Gia tăng doanh số đạt 5 tỷ cuối năm', NULL, N'Công Ty', N'Cam Kết', NULL, 0.76, NULL, NULL, NULL, 0, NULL, NULL, 0)
INSERT [dbo].[tb_OKR] ([IdOkr], [Nam], [Quy], [TieuDe], [MoTa], [MucTieu], [KieuOkr], [LaKetQuaThenChot], [Diem], [PhongBan], [NhanVien], [ChuSoHuu], [KetQua], [TrongSo], [DiemThanhCong], [IsDelete]) VALUES (2, CAST(N'0202-11-22' AS Date), N'Q4', N'Doanh thu tăng 5% mõi tháng cho tới tháng 1 năm sau', NULL, N'Nhân Viên', N'Khát Vọng', 1, 1, NULL, 6, N'Ngô Văn Quỳnh', 1, CAST(20.00 AS Decimal(5, 2)), 1, 0)
INSERT [dbo].[tb_OKR] ([IdOkr], [Nam], [Quy], [TieuDe], [MoTa], [MucTieu], [KieuOkr], [LaKetQuaThenChot], [Diem], [PhongBan], [NhanVien], [ChuSoHuu], [KetQua], [TrongSo], [DiemThanhCong], [IsDelete]) VALUES (3, CAST(N'2023-11-28' AS Date), N'Q4', N'Tăng 5% doanh thu mõi tháng', NULL, N'Nhân Viên', N'Khát Vọng', 1, 0.6, 2, 7, N'Nguyễn  Thị Hà Giang', 1, CAST(30.00 AS Decimal(5, 2)), 1, 0)
INSERT [dbo].[tb_OKR] ([IdOkr], [Nam], [Quy], [TieuDe], [MoTa], [MucTieu], [KieuOkr], [LaKetQuaThenChot], [Diem], [PhongBan], [NhanVien], [ChuSoHuu], [KetQua], [TrongSo], [DiemThanhCong], [IsDelete]) VALUES (4, CAST(N'1285-07-21' AS Date), N'Q3', N'23', NULL, N'Công Ty', N'Khát Vọng', NULL, 0, NULL, NULL, NULL, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[tb_OKR] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_PhongBan] ON 

INSERT [dbo].[tb_PhongBan] ([IdPB], [TenPhongBan], [IsDelete], [QuanLy], [PhongBanCapTren]) VALUES (2, N'Phòng Kế Toán', 0, 7, NULL)
INSERT [dbo].[tb_PhongBan] ([IdPB], [TenPhongBan], [IsDelete], [QuanLy], [PhongBanCapTren]) VALUES (3, N'Phòng Marketting', 0, 3, NULL)
INSERT [dbo].[tb_PhongBan] ([IdPB], [TenPhongBan], [IsDelete], [QuanLy], [PhongBanCapTren]) VALUES (4, N'Phòng Nhân Sự', 0, 7, NULL)
SET IDENTITY_INSERT [dbo].[tb_PhongBan] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhCongTac] ON 

INSERT [dbo].[tb_QuaTrinhCongTac] ([Id], [IdNV], [TuNgay], [DenNgay], [TenCongTy], [TenPhongBan], [TenDoi], [ChucDanh], [LyDo], [DangHoatDong], [SoHDLD], [LoaiHDLD], [NgayQuyetDinh], [NgayHieuLuc], [SoQD], [NguoiKy], [FileQuyetDinh], [Loai], [IsDelete]) VALUES (1, 9, CAST(N'2023-11-28' AS Date), CAST(N'2023-11-30' AS Date), N'Alta Software ', N'Phòng Kế Toán', N'Chưa biết', N'Chưa biết', NULL, 1, N'HDLD-001', N'Ngắn hạn', CAST(N'2023-11-28' AS Date), CAST(N'2023-11-28' AS Date), N'CTNCT-001', N'Ngô Văn Quỳnh', N'VIDEO_DOWNLOAD_1691504013571_1691504264940.mp4', 0, 0)
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhCongTac] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhDaoTao] ON 

INSERT [dbo].[tb_QuaTrinhDaoTao] ([Id], [TuNam], [DenNam], [CheDoHoc], [LoaiDaoTao], [TruongDaoTao], [NganhDaoTao], [BangCap], [NoiDung], [KetQua], [ThoiGian], [ChuyenMon], [SoBang], [NgayCap], [QuocGia], [IdNV], [IsDelete]) VALUES (1, CAST(N'2020-01-01' AS Date), CAST(N'2020-01-01' AS Date), N'Chính Quy', N'Chưa biết', N'Cao Đẳng FPT', N'Ứng Dụng Phần Mềm', N'Giỏi', NULL, N'Giỏi', N'2 năm 4 tháng', N'UDPM', N'1', CAST(N'2024-01-01' AS Date), N'Việt Nam', 3, 1)
INSERT [dbo].[tb_QuaTrinhDaoTao] ([Id], [TuNam], [DenNam], [CheDoHoc], [LoaiDaoTao], [TruongDaoTao], [NganhDaoTao], [BangCap], [NoiDung], [KetQua], [ThoiGian], [ChuyenMon], [SoBang], [NgayCap], [QuocGia], [IdNV], [IsDelete]) VALUES (2, CAST(N'2020-01-01' AS Date), CAST(N'2020-01-01' AS Date), N'Chính Quy', N'Chưa biết', N'Cao Đẳng FPT', N'Ứng Dụng Phần Mềm', N'Giỏi', N'Thêm nội dung', N'Giỏi', N'2 năm 4 tháng', N'UDPM', N'1', CAST(N'2024-01-01' AS Date), N'Việt Nam', 3, 0)
INSERT [dbo].[tb_QuaTrinhDaoTao] ([Id], [TuNam], [DenNam], [CheDoHoc], [LoaiDaoTao], [TruongDaoTao], [NganhDaoTao], [BangCap], [NoiDung], [KetQua], [ThoiGian], [ChuyenMon], [SoBang], [NgayCap], [QuocGia], [IdNV], [IsDelete]) VALUES (3, CAST(N'2222-01-01' AS Date), CAST(N'0001-01-01' AS Date), N'Chính Quy', N'Chưa biết', N'Cao Đẳng FPT', N'UDPM', N'Giỏi', NULL, N'Giỏi', N'2 năm 4 tháng', N'UDPM', N'1', CAST(N'0001-01-01' AS Date), N'Việt Nam', 3, 1)
INSERT [dbo].[tb_QuaTrinhDaoTao] ([Id], [TuNam], [DenNam], [CheDoHoc], [LoaiDaoTao], [TruongDaoTao], [NganhDaoTao], [BangCap], [NoiDung], [KetQua], [ThoiGian], [ChuyenMon], [SoBang], [NgayCap], [QuocGia], [IdNV], [IsDelete]) VALUES (4, CAST(N'2021-11-28' AS Date), CAST(N'2023-12-25' AS Date), N'Cao Đẳng', N'Chính quy', N'Trường cao đẳng FPT Polytechnic', N'Ứng dụng phần mềm', N'Chính quy', NULL, N'Giỏi', N'2 năm 4 tháng', N'Ứng dụng phần mềm', N'1', CAST(N'2024-03-02' AS Date), N'Việt Nam', 10, 0)
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhDaoTao] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhDaoTaoCuMoi] ON 

INSERT [dbo].[tb_QuaTrinhDaoTaoCuMoi] ([Id], [KhoaHoc], [Truong_DonVi], [HoanTat], [NgayBatDau], [NgayKetThuc], [SoQuyetDinh], [HinhThuc], [TenBang], [SoBang], [DangBang], [NgayCap], [HetHan], [LoaiDaoTao], [GhiChu], [IdNV], [IsDelete]) VALUES (1, N'Test', N'Test', 1, CAST(N'2023-01-02' AS Date), CAST(N'2023-02-02' AS Date), N'Test-922', N'Test', N'Test', 1, N'Test', NULL, NULL, 0, N'Test', 3, 1)
INSERT [dbo].[tb_QuaTrinhDaoTaoCuMoi] ([Id], [KhoaHoc], [Truong_DonVi], [HoanTat], [NgayBatDau], [NgayKetThuc], [SoQuyetDinh], [HinhThuc], [TenBang], [SoBang], [DangBang], [NgayCap], [HetHan], [LoaiDaoTao], [GhiChu], [IdNV], [IsDelete]) VALUES (2, N'Lập Trình Backend Api C#', N'Alta Software ', 1, CAST(N'2023-11-28' AS Date), CAST(N'2023-12-01' AS Date), N'DT-001', N'Trung tâm', N'API C#', 1, N'Bổ túc', CAST(N'2023-11-30' AS Date), CAST(N'2023-12-31' AS Date), 1, NULL, 9, 0)
INSERT [dbo].[tb_QuaTrinhDaoTaoCuMoi] ([Id], [KhoaHoc], [Truong_DonVi], [HoanTat], [NgayBatDau], [NgayKetThuc], [SoQuyetDinh], [HinhThuc], [TenBang], [SoBang], [DangBang], [NgayCap], [HetHan], [LoaiDaoTao], [GhiChu], [IdNV], [IsDelete]) VALUES (3, N'Lập Trình Backend Api C#', N'Alta Software', 1, CAST(N'2023-11-28' AS Date), CAST(N'2023-11-30' AS Date), N'DTM-002', N'Trực tiếp', N'API C#', 1, N'Bổ túc', CAST(N'2023-11-29' AS Date), CAST(N'2023-12-01' AS Date), 0, NULL, 9, 0)
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhDaoTaoCuMoi] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhLamViecCuaThanNhan] ON 

INSERT [dbo].[tb_QuaTrinhLamViecCuaThanNhan] ([Id], [IdThanNhan], [TuNam], [DenNam], [CongViec], [DonVi], [CapBac], [ChucVu], [LoaiChucVu], [TrongNganh], [IsDelete]) VALUES (1, 1, CAST(N'2002-01-01' AS Date), CAST(N'2023-01-01' AS Date), N'Test', N'Test', N'Test', N'Test', N'Test', 1, 1)
INSERT [dbo].[tb_QuaTrinhLamViecCuaThanNhan] ([Id], [IdThanNhan], [TuNam], [DenNam], [CongViec], [DonVi], [CapBac], [ChucVu], [LoaiChucVu], [TrongNganh], [IsDelete]) VALUES (2, 2, CAST(N'1993-11-28' AS Date), CAST(N'2023-11-28' AS Date), N'Đánh cá biển khơi', N'Không có', N'Không có', N'Không có', N'Không có', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_QuaTrinhLamViecCuaThanNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_TaiKhoan] ON 

INSERT [dbo].[tb_TaiKhoan] ([Id], [Email], [PasswordHash], [PasswordSalt], [DateCreated], [Role], [IdNv]) VALUES (1, N'quynhngo@gmail.com', 0x7A1EBFA50BAA0DF914F6834A4DDF22C9CDF315981BB2CB084E9E4250D85DA94FCAF4545CE066A4BC36AF0EF0540A9A9DE83B7C51C264606E0EC04B23DF9D1AD6, 0xAE367AA90478D6462D6912B26E8B4077ABA0C35BDB9B9E26E2B74D3AC433BEEE92EB11C160202CB6672422C31229FEEBE3E20E0C365C0F618E7E4020C3A3C959FA176AF9E3F95DBBC4DE5707526DB0ECFD7CF44483CAE20D2F2CFA5231D62A64750E3059A864B14A619647A68A42A274A6600CB9C6CE5491A41FA1C663F2770E, CAST(N'2023-11-18T09:17:34.610' AS DateTime), N'Admin', 1)
INSERT [dbo].[tb_TaiKhoan] ([Id], [Email], [PasswordHash], [PasswordSalt], [DateCreated], [Role], [IdNv]) VALUES (3, N'quynhvan@gmail.com', 0x18E539000462AE4A2C78F6D501F2A34A425EDC5DCF6B3282A562B81F066F3930A7B7629E8CDE770B6E570EFD02CD312B4B2B194B4780B52AAA3815F28ABBBE3E, 0x5EDF0ABC3A617C63AAFAB12CDE9CA1A448819DA551BC7BB34661E46708D9E1B29EA44A4DF731E763776D7C0D3D969B3EAA0693270B34A54E47167A0BE0C131844AF880F279E27A7A61D81F5CE751FE2FE89B2C43D05D226266580409FA45B197ED4FC76F69BC686F635E31ECB8101EECB6D69E2B99578CF884DB4259CBE5687C, CAST(N'2023-11-22T09:12:48.923' AS DateTime), N'NhanVien', 6)
INSERT [dbo].[tb_TaiKhoan] ([Id], [Email], [PasswordHash], [PasswordSalt], [DateCreated], [Role], [IdNv]) VALUES (4, N'nhiemmedia@gmail.com', 0xBB06B5BD78E5B089F3AB2A586AD19585737655E14C2482A86F19D6CF08D6199290B0F3EFAE2CC298BDF848E6DC5C6EE771009DD287D87EE366D808157145F3C6, 0x5957FCB121A62AE68C650E7FFDE082299DB77ECCDF3723F76C093F89EB03F5E6354DD5FCFA39B5BBE406F3AD03765934A2E4BE5221871EC4E4CE4B5E30513A85DFFBAAC6F1FED942C6AF304A7D94D307A012200EB93891FC4111865610D27BD0495383B6D4692721A29F1B2095598D519A6CE99AA7D48D41E441E8C537ACACDE, CAST(N'2023-11-28T11:25:37.113' AS DateTime), N'Admin', 8)
INSERT [dbo].[tb_TaiKhoan] ([Id], [Email], [PasswordHash], [PasswordSalt], [DateCreated], [Role], [IdNv]) VALUES (5, N'giang@gmail.com', 0x378167AB2301C6FE4A507115B0B7FF871E46656DBDB0E7246401EB483F41122A6C5A4EF726E481E332407044B7790CB060E80E40450DF782F831D946C09CB101, 0x183CA33EABD5C744495EA2867F0BFADBD61C844548581F2EAFE275124B1D6BFA9DFF05F30B830CAC319767FC22B8BCBBB1599694F2254C9D3A7F6CB6DCFCD611D1935A4A5D6DA3C2ADD986E9B5A2F4E74B850A52692CA2983B0E62AF5FEF207AD662375E861915F9071E4DEC9E314B25C6F75DC6E7BF6F702A6C37112C063EBE, CAST(N'2023-11-28T20:59:25.807' AS DateTime), N'NhanVien', 7)
SET IDENTITY_INSERT [dbo].[tb_TaiKhoan] OFF
GO
INSERT [dbo].[tb_ThongTinDoanDang] ([IdNV], [SoTheDang], [NgayCapThe], [DaVaoDang], [NgayVaoDang1], [NgayChinhThuc1], [NgayVaoDang2], [NgayChinhThuc2], [NguoiThuNhat], [ChucVu1], [DiaChi1], [NguoiThuHai], [ChucVu2], [DiaChi2], [NgayVaoDoan], [DaVaoDoan], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [DanhHieuDuocPhong], [SoTruong]) VALUES (3, 73242477, CAST(N'2012-01-01' AS Date), 1, CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_ThongTinDoanDang] ([IdNV], [SoTheDang], [NgayCapThe], [DaVaoDang], [NgayVaoDang1], [NgayChinhThuc1], [NgayVaoDang2], [NgayChinhThuc2], [NguoiThuNhat], [ChucVu1], [DiaChi1], [NguoiThuHai], [ChucVu2], [DiaChi2], [NgayVaoDoan], [DaVaoDoan], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [DanhHieuDuocPhong], [SoTruong]) VALUES (7, 777888, CAST(N'2012-01-01' AS Date), 1, CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), N'Thái Dân', N'Chưa biết', N'Bến Tre', N'Lâm Quyền', N'Chưa biết', N'Lâm Quyền', CAST(N'2012-01-01' AS Date), 1, CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), N'Chưa biết', N'Không có ', N'Không có')
GO
SET IDENTITY_INSERT [dbo].[tb_ThongTinGiaDinh] ON 

INSERT [dbo].[tb_ThongTinGiaDinh] ([Id], [IdNV], [HoTen], [QuanHe], [NgaySinh], [DiaChi], [Phuong], [QuanHuyen], [TinhThanh], [ConSong], [IsDelete]) VALUES (1, 3, N'Test', N'Cha', CAST(N'1976-01-01' AS Date), N'Test', N'Test', N'Test', N'Test', 1, 1)
INSERT [dbo].[tb_ThongTinGiaDinh] ([Id], [IdNV], [HoTen], [QuanHe], [NgaySinh], [DiaChi], [Phuong], [QuanHuyen], [TinhThanh], [ConSong], [IsDelete]) VALUES (2, 9, N'Ngô Văn Linh', N'Cha', CAST(N'1977-11-28' AS Date), N'Phan Thiết Bình Thuận ', N'Phú Trinh', N'Lê Thị Hồng Gấm ', N'Bình Thuận ', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_ThongTinGiaDinh] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ThongTinHopDongLaoDong] ON 

INSERT [dbo].[tb_ThongTinHopDongLaoDong] ([Id], [IdNV], [SoHDLD], [LoaiHopDong], [ThoiHan], [ChucDanh], [BacLuong], [HeSoLuong], [NgayKy], [NguoiKy], [NgayThuViec], [NgayChinhThuc], [NgayHetHan], [NgayGiaHan], [FileQuyetDinh], [FileHDLD], [IsDelete]) VALUES (1, 9, N'HDLD-001', N'Ngắn hạn', N'1 năm', N'Quản lý trưởng', 1, 13, CAST(N'2023-11-28' AS Date), N'Ngô Văn Quỳnh', CAST(N'2023-11-28' AS Date), CAST(N'2023-11-28' AS Date), CAST(N'2024-02-29' AS Date), CAST(N'2024-03-01' AS Date), N'IMG_1688911546820_1689044605327.jpg', N'home_wallpaper.png', 0)
SET IDENTITY_INSERT [dbo].[tb_ThongTinHopDongLaoDong] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ThongTinNgoaiNgu] ON 

INSERT [dbo].[tb_ThongTinNgoaiNgu] ([Id], [NgoaiNgu], [BangCap], [KetQua], [NgayCap], [KinhPhi], [ChinhPhu], [NguonKinhPhi], [GhiChu], [IdNV], [IsDelete]) VALUES (1, N'Tiếng Anh', N'Chính Quy', NULL, CAST(N'2023-11-23' AS Date), NULL, 1, NULL, NULL, 3, 0)
INSERT [dbo].[tb_ThongTinNgoaiNgu] ([Id], [NgoaiNgu], [BangCap], [KetQua], [NgayCap], [KinhPhi], [ChinhPhu], [NguonKinhPhi], [GhiChu], [IdNV], [IsDelete]) VALUES (2, N'Tiếng Anh', N'Chính quy', N'Giỏi', CAST(N'2024-03-02' AS Date), 5000000.0000, 1, N'Tự lo', NULL, 10, 0)
SET IDENTITY_INSERT [dbo].[tb_ThongTinNgoaiNgu] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ThongTinNhanVien] ON 

INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (1, N'Ngô', N'string', N'Quỳnh', N'string', N'string', N'string', CAST(N'2023-11-18' AS Date), N'string', N'string', CAST(N'2023-11-18' AS Date), N'string', CAST(N'2023-11-18' AS Date), N'string', CAST(N'2023-11-18' AS Date), N'string', N'string', N'string', N'string', N'string', 0, N'string', N'string', N'string', 0, CAST(N'2023-11-18' AS Date), N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', NULL, NULL, 1)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (3, N'Ngô ', N'Ngô', N'Quỳnh', N'Quỳnh', N'Không', NULL, NULL, N'Hồ Chí Minh', N'0123', CAST(N'0001-01-01' AS Date), NULL, NULL, N'Nữ', CAST(N'0001-01-01' AS Date), N'97a14e0e-132a-4257-bac1-41b32f7b2234_anh-the-dep-nu.jpg', N'Việt Nam', N'Kinh', N'Không', N'1', 0, N'không', N'trưởng phòng', NULL, 1, NULL, NULL, N'Ho Chi Minh', N'Ho Chi Minh', N'Ho Chi Minh', N'0779686574', N'0911704240', N'quynhngo@gmail.com', N'Sài Gòn', N'Ho Chi Minh', N'Ho Chi Minh', N'Ho Chi Minh', N'Ho Chi Minh', N'Ho Chi Minh', N'Ho Chi Minh', N'Ho Chi Minh', 2, NULL, 0)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (4, N'Ngô', N'Ngô', N'Văn Quỳnh', N'Văn Quỳnh', N'Chưa có', N'324324324234', NULL, N'Phan Thết', N'32131212312', CAST(N'0001-01-01' AS Date), NULL, NULL, N'Nữ', CAST(N'0001-01-01' AS Date), N'602f1392-5eea-4588-a40e-3db7eab59ff7_anh-the-dep-nu.jpg', N'Việt Nam', N'Kinh', N'Không', N'Ngư Dân', 170, N'Chưa biết', NULL, NULL, NULL, NULL, NULL, N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'0779686574', N'0911704240', N'quynh@gmail.com', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', 2, 1, 1)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (5, N'Ngô', N'Ngô', N'Văn Quỳnh', N'Văn Quỳnh', N'Chưa có', N'324324324234', CAST(N'2018-01-01' AS Date), N'Phan Thết', N'32131212312', CAST(N'2021-01-01' AS Date), NULL, NULL, N'Nam', CAST(N'2003-01-01' AS Date), N'2efc7f34-7878-4b9b-bac5-b18627651ba8_anh-the-dep-nu.jpg', N'Việt Nam', N'Kinh', N'Không', N'Ngư Dân', 170, N'Chưa biết', NULL, NULL, NULL, NULL, NULL, N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'0779686574', N'0911704240', N'quynh@gmail.com', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', 2, 1, 1)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (6, N'Ngô', N'Ngô', N'Văn Quỳnh', N'Văn Quỳnh', N'Chưa có', N'134567876870', CAST(N'0001-01-01' AS Date), N'Phan Thết', N'32131212312', CAST(N'0001-01-01' AS Date), NULL, NULL, N'Nam', CAST(N'0001-01-01' AS Date), N'3371cc94-8b45-4166-851a-aa30af7082c4_anh-the-dep-nu.jpg', N'Việt Nam', N'kinh', N'Không', N'Ngư Dân', 170, N'Chưa biết', NULL, NULL, NULL, NULL, NULL, N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'0779686574', N'0911704240', N'quynhvan@gmail.com', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', N'Phan Thiết', NULL, NULL, 1)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (7, N'Nguyễn ', N'Nguyễn ', N'Thị Hà Giang', N'Thị Hà Giang', N'Chưa có', NULL, NULL, NULL, N'32131212312', CAST(N'2021-05-02' AS Date), NULL, NULL, N'Nữ', CAST(N'2003-05-05' AS Date), N'4063f5c0-eda7-42fe-9d64-bec28554d88f_OIP.jfif', N'Việt Nam', N'Kinh', N'Không', N'Nông Dân', 170, N'Chưa biết', NULL, NULL, NULL, NULL, NULL, N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'0779686574', N'0911704240', N'giang@gmail.com', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', N'Thành Phố Hồ Chí Minh', 2, NULL, 0)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (8, N'Huỳnh', N'Huỳnh', N'Thiên Nhiệm', N'Không', N'Không', NULL, CAST(N'2019-05-11' AS Date), NULL, N'12345678', CAST(N'2021-02-19' AS Date), N'5636387', NULL, N'Nam', CAST(N'2003-08-18' AS Date), N'b27aef09-bc00-4741-afb3-4e853c5b8252_chandunganhtrang.jpg', N'Việt nam', N'Kinh', N'Khong', N'không', 100, N'không', N'CEO', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'0976724656', N'nhiemmedia@gmail.com', N'Quang Ngai', N'Quang Ngai', N'Quang Ngai', N'Quang Ngai', N'Quang Ngai', N'Quang Ngai', N'Quang Ngai', N'Quang Ngai', 3, NULL, 0)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (9, N'Ngô', N'Ngô', N'Văn Quỳnh', N'Quỳnh', N'Không có', N'26155711712', CAST(N'2018-08-03' AS Date), N'Phan Thiết Bình Thuận ', N'21634948864', CAST(N'2021-05-01' AS Date), NULL, NULL, N'Nam', CAST(N'2003-05-02' AS Date), N'0ad66d2b-efe0-46b6-8fd0-bd7747bba2ab_1c97d03d797a9024c96b_1697866243065.jpg', N'Việt Nam', N'Kinh', N'Không', N'Ngư Dân', 170, N'Nốt ruồi ', NULL, NULL, NULL, NULL, NULL, N'Phú Trinh', N'Phú Trinh', N'Phan Thiết ', N'0911704240', N'0779686574', N'quynhngovan555@gmail.com', N'V27 Nguyễn Thị Định', N'Phú Tài', N'Văn Thánh 2', N'Phan Thiết', N'50 Trung Mỹ Tây', N'Trung Mỹ Tây', N'Quận 12', N'Hồ Chí Minh', 2, NULL, 0)
INSERT [dbo].[tb_ThongTinNhanVien] ([IdNV], [HoKhaiSinh], [HoThuongDung], [TenKhaiSinh], [TenThuongDung], [BiDanh], [CMND], [NgayCapCMND], [NoiCapCMND], [TheCanCuoc], [NgayCapTheCanCuoc], [SoHoChieu], [NgayCapHoChieu], [GioiTinh], [NgaySinh], [HinhAnh], [QuocTich], [DanToc], [TonGiao], [ThanhPhanGiaDinh], [ChieuCao], [NhanDang], [TenChucDanh], [MoTaCongViec], [BacLuong], [NgayNghiViec], [LyDoNghiViec], [QueQuanPhuongXa], [QueQuanQuanHuyen], [QueQuanThanhPho], [DienThoaiNha], [DTDD], [Email], [DiaChiThuongTru], [PhuongXaThuongTru], [QuanHuyenThuongTru], [ThanhPhoThuongTru], [DiaChiTamTru], [PhuongXaTamTru], [QuanHuyenTamTru], [ThanhPhoTamTru], [IdPB], [IdCV], [IsDelete]) VALUES (10, N'Lưu', N'Lưu', N'Đức Danh', N'Danh', N'Danh Kun', NULL, NULL, NULL, N'555555555', CAST(N'2021-11-28' AS Date), NULL, NULL, N'Nam', CAST(N'2002-11-28' AS Date), N'1f3b6792-0b9d-48b1-8b03-d0139db14e9a_IMG_1688911546820_1689044605327.jpg', N'Việt Nam ', N'Kinh', N'Không', N'Chưa biết', 165, NULL, NULL, NULL, NULL, NULL, NULL, N'Nha Trang', N'Nha Trang', N'Nha Trang', N'0911704240', N'0779686574', N'danh@gmail.com', N'Nha Trang', N'Nha Trang', N'Nha Trang', N'Nha Trang', N'Sài Gòn ', N'Sài Gòn', N'Sài Gòn', N'Sài Gòn', 4, NULL, 0)
SET IDENTITY_INSERT [dbo].[tb_ThongTinNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ThongTinViTinh] ON 

INSERT [dbo].[tb_ThongTinViTinh] ([Id], [BangCap], [SoBang], [NoiDung], [CheDoHoc], [NgayCap], [TuNgay], [Denngay], [KinhPhi], [NguonKinhPhi], [IdNV], [IsDelete]) VALUES (1, N'Giỏi', N'DH48409239', NULL, N'Cao đẳng', CAST(N'2000-11-11' AS Date), CAST(N'2000-01-01' AS Date), CAST(N'2000-11-10' AS Date), 5000000.0000, N'tài trợ', 3, 0)
SET IDENTITY_INSERT [dbo].[tb_ThongTinViTinh] OFF
GO
ALTER TABLE [dbo].[DiemThanhCongCuaOKR] ADD  DEFAULT ((0.5)) FOR [Diem]
GO
ALTER TABLE [dbo].[tb_ChucVu] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_DiNuocNgoai] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_HoSo] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_KhenThuong_KyLuat] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_LichSuBanThanNhanVien] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_OKR] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_PhongBan] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_QuaTrinhCongTac] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTao] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTaoCuMoi] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTaoMoi] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_QuaTrinhLamViecCuaThanNhan] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_TaiKhoan] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[tb_ThongTinChinhTri] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_ThongTinGiaDinh] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_ThongTinHopDongLaoDong] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_ThongTinNgoaiNgu] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_ThongTinNhanVien] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_ThongTinViTinh] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tb_DiNuocNgoai]  WITH CHECK ADD  CONSTRAINT [FK__tb_DiNuocN__IdNV__619B8048] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_DiNuocNgoai] CHECK CONSTRAINT [FK__tb_DiNuocN__IdNV__619B8048]
GO
ALTER TABLE [dbo].[tb_HoSo]  WITH CHECK ADD  CONSTRAINT [FK__tb_HoSo__IdNV__76969D2E] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_HoSo] CHECK CONSTRAINT [FK__tb_HoSo__IdNV__76969D2E]
GO
ALTER TABLE [dbo].[tb_KhenThuong_KyLuat]  WITH CHECK ADD  CONSTRAINT [FK__tb_KhenThu__IdNV__73BA3083] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_KhenThuong_KyLuat] CHECK CONSTRAINT [FK__tb_KhenThu__IdNV__73BA3083]
GO
ALTER TABLE [dbo].[tb_LichSuBanThanNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__tb_LichSuB__IdNV__7F2BE32F] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_LichSuBanThanNhanVien] CHECK CONSTRAINT [FK__tb_LichSuB__IdNV__7F2BE32F]
GO
ALTER TABLE [dbo].[tb_OKR]  WITH CHECK ADD  CONSTRAINT [FK__tb_OKR__DiemThan__6DCC4D03] FOREIGN KEY([DiemThanhCong])
REFERENCES [dbo].[DiemThanhCongCuaOKR] ([Id])
GO
ALTER TABLE [dbo].[tb_OKR] CHECK CONSTRAINT [FK__tb_OKR__DiemThan__6DCC4D03]
GO
ALTER TABLE [dbo].[tb_OKR]  WITH CHECK ADD  CONSTRAINT [FK__tb_OKR__LaKetQua__6AEFE058] FOREIGN KEY([LaKetQuaThenChot])
REFERENCES [dbo].[tb_OKR] ([IdOkr])
GO
ALTER TABLE [dbo].[tb_OKR] CHECK CONSTRAINT [FK__tb_OKR__LaKetQua__6AEFE058]
GO
ALTER TABLE [dbo].[tb_OKR]  WITH CHECK ADD  CONSTRAINT [FK__tb_OKR__NhanVien__6CD828CA] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_OKR] CHECK CONSTRAINT [FK__tb_OKR__NhanVien__6CD828CA]
GO
ALTER TABLE [dbo].[tb_OKR]  WITH CHECK ADD  CONSTRAINT [FK__tb_OKR__PhongBan__6BE40491] FOREIGN KEY([PhongBan])
REFERENCES [dbo].[tb_PhongBan] ([IdPB])
GO
ALTER TABLE [dbo].[tb_OKR] CHECK CONSTRAINT [FK__tb_OKR__PhongBan__6BE40491]
GO
ALTER TABLE [dbo].[tb_PhongBan]  WITH CHECK ADD  CONSTRAINT [FK__tb_PhongB__Phong__6166761E] FOREIGN KEY([PhongBanCapTren])
REFERENCES [dbo].[tb_PhongBan] ([IdPB])
GO
ALTER TABLE [dbo].[tb_PhongBan] CHECK CONSTRAINT [FK__tb_PhongB__Phong__6166761E]
GO
ALTER TABLE [dbo].[tb_PhongBan]  WITH CHECK ADD  CONSTRAINT [FK__tb_PhongB__QuanL__607251E5] FOREIGN KEY([QuanLy])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_PhongBan] CHECK CONSTRAINT [FK__tb_PhongB__QuanL__607251E5]
GO
ALTER TABLE [dbo].[tb_QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [FK__tb_QuaTrin__IdNV__17036CC0] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_QuaTrinhCongTac] CHECK CONSTRAINT [FK__tb_QuaTrin__IdNV__17036CC0]
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK__tb_QuaTrin__IdNV__3E52440B] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTao] CHECK CONSTRAINT [FK__tb_QuaTrin__IdNV__3E52440B]
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTaoCuMoi]  WITH CHECK ADD  CONSTRAINT [FK__tb_QuaTrin__IdNV__4F47C5E3] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTaoCuMoi] CHECK CONSTRAINT [FK__tb_QuaTrin__IdNV__4F47C5E3]
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTaoMoi]  WITH CHECK ADD  CONSTRAINT [FK__tb_QuaTrin__IdNV__6754599E] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_QuaTrinhDaoTaoMoi] CHECK CONSTRAINT [FK__tb_QuaTrin__IdNV__6754599E]
GO
ALTER TABLE [dbo].[tb_QuaTrinhLamViecCuaThanNhan]  WITH CHECK ADD  CONSTRAINT [FK__tb_QuaTri__IdTha__7C4F7684] FOREIGN KEY([IdThanNhan])
REFERENCES [dbo].[tb_ThongTinGiaDinh] ([Id])
GO
ALTER TABLE [dbo].[tb_QuaTrinhLamViecCuaThanNhan] CHECK CONSTRAINT [FK__tb_QuaTri__IdTha__7C4F7684]
GO
ALTER TABLE [dbo].[tb_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK__tb_TaiKhoa__IdNv__681373AD] FOREIGN KEY([IdNv])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_TaiKhoan] CHECK CONSTRAINT [FK__tb_TaiKhoa__IdNv__681373AD]
GO
ALTER TABLE [dbo].[tb_ThongTinChinhTri]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdNv__4F7CD00D] FOREIGN KEY([IdNv])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_ThongTinChinhTri] CHECK CONSTRAINT [FK__tb_ThongTi__IdNv__4F7CD00D]
GO
ALTER TABLE [dbo].[tb_ThongTinDoanDang]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdNV__29221CFB] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_ThongTinDoanDang] CHECK CONSTRAINT [FK__tb_ThongTi__IdNV__29221CFB]
GO
ALTER TABLE [dbo].[tb_ThongTinGiaDinh]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdNV__797309D9] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_ThongTinGiaDinh] CHECK CONSTRAINT [FK__tb_ThongTi__IdNV__797309D9]
GO
ALTER TABLE [dbo].[tb_ThongTinHopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdNV__02FC7413] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_ThongTinHopDongLaoDong] CHECK CONSTRAINT [FK__tb_ThongTi__IdNV__02FC7413]
GO
ALTER TABLE [dbo].[tb_ThongTinNgoaiNgu]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdNV__49C3F6B7] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_ThongTinNgoaiNgu] CHECK CONSTRAINT [FK__tb_ThongTi__IdNV__49C3F6B7]
GO
ALTER TABLE [dbo].[tb_ThongTinNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdCV__3B75D760] FOREIGN KEY([IdCV])
REFERENCES [dbo].[tb_ChucVu] ([IdCV])
GO
ALTER TABLE [dbo].[tb_ThongTinNhanVien] CHECK CONSTRAINT [FK__tb_ThongTi__IdCV__3B75D760]
GO
ALTER TABLE [dbo].[tb_ThongTinNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdPB__3A81B327] FOREIGN KEY([IdPB])
REFERENCES [dbo].[tb_PhongBan] ([IdPB])
GO
ALTER TABLE [dbo].[tb_ThongTinNhanVien] CHECK CONSTRAINT [FK__tb_ThongTi__IdPB__3A81B327]
GO
ALTER TABLE [dbo].[tb_ThongTinViTinh]  WITH CHECK ADD  CONSTRAINT [FK__tb_ThongTi__IdNV__4CA06362] FOREIGN KEY([IdNV])
REFERENCES [dbo].[tb_ThongTinNhanVien] ([IdNV])
GO
ALTER TABLE [dbo].[tb_ThongTinViTinh] CHECK CONSTRAINT [FK__tb_ThongTi__IdNV__4CA06362]
GO
