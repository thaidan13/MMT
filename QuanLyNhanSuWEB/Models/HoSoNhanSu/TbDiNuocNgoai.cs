using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbDiNuocNgoai
{
    public int Id { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayDi { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayVe { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? ThoiGian { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? QuocGiaDen { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? MucDich { get; set; }

    public int? IdNv { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
