using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbTaiKhoan
{
    public int Id { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string Email { get; set; } = null!;

    public byte[] PasswordHash { get; set; } = null!;

    public byte[] PasswordSalt { get; set; } = null!;

    public DateTime? DateCreated { get; set; }

    public string? Role { get; set; }

    public int? IdNv { get; set; }

    public virtual TbThongTinNhanVien? IdNvNavigation { get; set; }
}
