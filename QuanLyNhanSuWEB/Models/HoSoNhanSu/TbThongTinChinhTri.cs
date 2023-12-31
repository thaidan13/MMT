﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbThongTinChinhTri
{
    public int Id { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TrinhDoChinhTri { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? CheDoHoc { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? TuNgay { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? DenNgay { get; set; }

    [DisplayFormat(DataFormatString = "{0:0}")]
    public decimal? KinhPhi { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NguonKinhPhi { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    public DateTime? NgayCap { get; set; }

    public int? IdNv { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
