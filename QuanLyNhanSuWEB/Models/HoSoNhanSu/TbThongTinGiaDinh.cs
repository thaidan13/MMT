using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbThongTinGiaDinh
{
    public int Id { get; set; }

    public int? IdNv { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? HoTen { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? QuanHe { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgaySinh { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? DiaChi { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? Phuong { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? QuanHuyen { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TinhThanh { get; set; }

    public bool? ConSong { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }

    public virtual ICollection<TbQuaTrinhLamViecCuaThanNhan> TbQuaTrinhLamViecCuaThanNhans { get; set; } = new List<TbQuaTrinhLamViecCuaThanNhan>();
}
