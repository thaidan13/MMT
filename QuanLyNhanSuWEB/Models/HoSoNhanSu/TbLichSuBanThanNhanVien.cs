using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbLichSuBanThanNhanVien
{
    public int Id { get; set; }

    public int? IdNv { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? TuNgay { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? DenNgay { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? LamGi { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? Odau { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
