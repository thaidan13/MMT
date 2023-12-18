using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbQuaTrinhLamViecCuaThanNhan
{
    public int Id { get; set; }

    public int? IdThanNhan { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? TuNam { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? DenNam { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string? CongViec { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string? DonVi { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? CapBac { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? ChucVu { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? LoaiChucVu { get; set; }

    public bool? TrongNganh { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinGiaDinh? IdThanNhanNavigation { get; set; }
}
