using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbThongTinNgoaiNgu
{
    public int Id { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NgoaiNgu { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? BangCap { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? KetQua { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayCap { get; set; }

    [DisplayFormat(DataFormatString = "{0:0}")]
    public decimal? KinhPhi { get; set; }

    public bool? ChinhPhu { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NguonKinhPhi { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? GhiChu { get; set; }

    public int? IdNv { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
