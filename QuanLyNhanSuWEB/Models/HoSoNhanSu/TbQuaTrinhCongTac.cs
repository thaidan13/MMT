using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbQuaTrinhCongTac
{
    public int Id { get; set; }

    public int? IdNv { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? TuNgay { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? DenNgay { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TenCongTy { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TenPhongBan { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TenDoi { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? ChucDanh { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? LyDo { get; set; }

    public bool? DangHoatDong { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? SoHdld { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? LoaiHdld { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayQuyetDinh { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayHieuLuc { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? SoQd { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NguoiKy { get; set; }

    [MaxLength(500, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? FileQuyetDinh { get; set; }

    public bool? Loai { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
