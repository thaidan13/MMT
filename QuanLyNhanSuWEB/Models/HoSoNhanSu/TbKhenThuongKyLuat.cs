using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbKhenThuongKyLuat
{
    public int Id { get; set; }

    public int? IdNv { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string? HinhThuc { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? TuNgay { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? DenNgay { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? LyDo { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string? CapQuyetDinh { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? SoQuyetDinh { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string? NguoiKy { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? GhiChu { get; set; }

    [MaxLength(500, ErrorMessage = "Không được quá 500 ký tự.")]
    public string? DinhKem { get; set; }

    public bool? Loai { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
