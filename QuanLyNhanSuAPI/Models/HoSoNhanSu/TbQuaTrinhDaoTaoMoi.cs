﻿using System;
using System.Collections.Generic;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbQuaTrinhDaoTaoMoi
{
    public int Id { get; set; }

    public string? KhoaHoc { get; set; }

    public string? TruongDonVi { get; set; }

    public bool? HoanTat { get; set; }

    public DateTime? NgayBatDau { get; set; }

    public DateTime? NgayKetThuc { get; set; }

    public string? SoQuyetDinh { get; set; }

    public string? HinhThuc { get; set; }

    public string? TenBang { get; set; }

    public int? SoBang { get; set; }

    public string? DangBang { get; set; }

    public DateTime? NgayCap { get; set; }

    public bool? HetHan { get; set; }

    public string? KetQua { get; set; }

    public string? DiaDiem { get; set; }

    public string? GhiChu { get; set; }

    public int? IdNv { get; set; }

    public bool? IsDelete { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
