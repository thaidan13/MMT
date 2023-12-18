using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbThongTinHopDongLaoDong
{
    public int Id { get; set; }

    public int? IdNv { get; set; }

    [MaxLength(50, ErrorMessage = "Không được quá 50 ký tự.")]
    public string? SoHdld { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? LoaiHopDong { get; set; }

    [MaxLength(50, ErrorMessage = "Không được quá 50 ký tự.")]
    public string? ThoiHan { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? ChucDanh { get; set; }

    public double? BacLuong { get; set; }

    public double? HeSoLuong { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayKy { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NguoiKy { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayThuViec { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayChinhThuc { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayHetHan { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayGiaHan { get; set; }

    [MaxLength(500, ErrorMessage = "Không được quá 500 ký tự.")]
    public string? FileQuyetDinh { get; set; }

    [MaxLength(500, ErrorMessage = "Không được quá 500 ký tự.")]
    public string? FileHdld { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
