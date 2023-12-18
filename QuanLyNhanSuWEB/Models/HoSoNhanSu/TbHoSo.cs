using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbHoSo
{
    public int Id { get; set; }

    public int? IdNv { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string? TenHoSo { get; set; }

    [MaxLength(500, ErrorMessage = "Không được quá 500 ký tự.")]
    public string? TapTin { get; set; }

    public bool? LoaiHoSo { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
