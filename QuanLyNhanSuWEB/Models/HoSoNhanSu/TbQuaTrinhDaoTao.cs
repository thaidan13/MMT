using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbQuaTrinhDaoTao
{
    public int Id { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime TuNam { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? DenNam { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string CheDoHoc { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string LoaiDaoTao { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string TruongDaoTao { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NganhDaoTao { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? BangCap { get; set; }

    [MaxLength(500, ErrorMessage = "Không được quá 500 ký tự.")]
    public string? NoiDung { get; set; }

    [MaxLength(50, ErrorMessage = "Không được quá 50 ký tự.")]
    public string? KetQua { get; set; }

    [MaxLength(50, ErrorMessage = "Không được quá 50 ký tự.")]
    public string? ThoiGian { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? ChuyenMon { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? SoBang { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayCap { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? QuocGia { get; set; }

    public int? IdNv { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
