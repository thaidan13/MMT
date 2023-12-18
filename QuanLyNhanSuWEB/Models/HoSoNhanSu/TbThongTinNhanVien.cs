using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;
using Microsoft.AspNetCore.Mvc;

namespace QuanLyNhanSuAPI.Models.HoSoNhanSu;

public partial class TbThongTinNhanVien
{
    public int IdNv { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string HoKhaiSinh { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string HoThuongDung { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string TenKhaiSinh { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string TenThuongDung { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(150, ErrorMessage = "Không được quá 150 ký tự.")]
    public string BiDanh { get; set; } = null!;

    [RegularExpression("^[0-9]*$", ErrorMessage = "Chỉ được nhập số.")]
    public string? Cmnd { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    //[RegularExpression(@"^((19\d{2})|(20\d{2}))-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$",
    //    ErrorMessage = "Ngày không hợp lệ. Vui lòng nhập từ năm 1900 trở lên.")]
    public DateTime? NgayCapCmnd { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? NoiCapCmnd { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [RegularExpression("^[0-9]*$", ErrorMessage = "Chỉ được nhập số.")]
    public string TheCanCuoc { get; set; } = null!;

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    //[RegularExpression(@"^((19\d{2})|(20\d{2}))-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$",
    //    ErrorMessage = "Ngày không hợp lệ. Vui lòng nhập từ năm 1900 trở lên.")]
    public DateTime NgayCapTheCanCuoc { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? SoHoChieu { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    //[RegularExpression(@"^((19\d{2})|(20\d{2}))-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$",
    //    ErrorMessage = "Ngày không hợp lệ. Vui lòng nhập từ năm 1900 trở lên.")]
    public DateTime? NgayCapHoChieu { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    public string GioiTinh { get; set; } = null!;

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [DataType(DataType.Date)]
    //[RegularExpression(@"^((19\d{2})|(20\d{2}))-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$",
    //    ErrorMessage = "Ngày không hợp lệ. Vui lòng nhập từ năm 1900 trở lên.")]
    public DateTime NgaySinh { get; set; }

    //public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
    //{
    //    if (NgaySinh.Year < 1900)
    //    {
    //        yield return new ValidationResult("Ngày không hợp lệ. Vui lòng nhập từ năm 1900 trở lên.", new[] { nameof(NgaySinh) });
    //    }
    //}

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    public string HinhAnh { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string QuocTich { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string DanToc { get; set; } = null!;

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TonGiao { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string ThanhPhanGiaDinh { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    public int ChieuCao { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? NhanDang { get; set; }

    [MaxLength(100, ErrorMessage = "Không được quá 100 ký tự.")]
    public string? TenChucDanh { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? MoTaCongViec { get; set; }

    public double? BacLuong { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
    //[RegularExpression(@"^((19\d{2})|(20\d{2}))-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$",
    //    ErrorMessage = "Ngày không hợp lệ. Vui lòng nhập từ năm 1900 trở lên.")]
    public DateTime? NgayNghiViec { get; set; }

    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string? LyDoNghiViec { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 250 ký tự.")]
    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    public string? QueQuanPhuongXa { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 250 ký tự.")]
    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    public string? QueQuanQuanHuyen { get; set; }

    [MaxLength(150, ErrorMessage = "Không được quá 250 ký tự.")]
    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    public string? QueQuanThanhPho { get; set; }

    public string? DienThoaiNha { get; set; }

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [StringLength(15, MinimumLength = 10, ErrorMessage = "Độ dài từ 10 đến 15 ký tự.")]
    public string Dtdd { get; set; } = null!;

    //[Remote("CreateNhanVien", "ThongTinNhanVien", ErrorMessage = "Email đã được sử dụng.")]
    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [EmailAddress(ErrorMessage = "Định dạng email không đúng.")]
    //[Remote(action: "Create", controller: "ThongTinNhanVien", ErrorMessage = "Email đã tồn tại.")]
    public string Email { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string DiaChiThuongTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string PhuongXaThuongTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string QuanHuyenThuongTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string ThanhPhoThuongTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string DiaChiTamTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string PhuongXaTamTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string QuanHuyenTamTru { get; set; } = null!;

    [Required(ErrorMessage = "Không đươc bỏ trống!")]
    [MaxLength(250, ErrorMessage = "Không được quá 250 ký tự.")]
    public string ThanhPhoTamTru { get; set; } = null!;

    public int? IdPb { get; set; }

    public int? IdCv { get; set; }

    public bool? IsDelete { get; set; }

    
    public virtual TbChucVu? IdCvNavigation { get; set; }

    
    public virtual TbPhongBan? IdPbNavigation { get; set; }

    [JsonIgnore]
    public virtual ICollection<TbDiNuocNgoai> TbDiNuocNgoais { get; set; } = new List<TbDiNuocNgoai>();

    [JsonIgnore]
    public virtual ICollection<TbHoSo> TbHoSos { get; set; } = new List<TbHoSo>();

    [JsonIgnore]
    public virtual ICollection<TbKhenThuongKyLuat> TbKhenThuongKyLuats { get; set; } = new List<TbKhenThuongKyLuat>();

    [JsonIgnore]
    public virtual ICollection<TbLichSuBanThanNhanVien> TbLichSuBanThanNhanViens { get; set; } = new List<TbLichSuBanThanNhanVien>();

    [JsonIgnore]
    public virtual ICollection<TbOkr> TbOkrs { get; set; } = new List<TbOkr>();

    [JsonIgnore]
    public virtual ICollection<TbPhongBan> TbPhongBans { get; set; } = new List<TbPhongBan>();

    [JsonIgnore]
    public virtual ICollection<TbQuaTrinhCongTac> TbQuaTrinhCongTacs { get; set; } = new List<TbQuaTrinhCongTac>();

    [JsonIgnore]
    public virtual ICollection<TbQuaTrinhDaoTaoCuMoi> TbQuaTrinhDaoTaoCuMois { get; set; } = new List<TbQuaTrinhDaoTaoCuMoi>();

    [JsonIgnore]
    public virtual ICollection<TbQuaTrinhDaoTaoMoi> TbQuaTrinhDaoTaoMois { get; set; } = new List<TbQuaTrinhDaoTaoMoi>();

    [JsonIgnore]
    public virtual ICollection<TbQuaTrinhDaoTao> TbQuaTrinhDaoTaos { get; set; } = new List<TbQuaTrinhDaoTao>();

    [JsonIgnore]
    public virtual ICollection<TbTaiKhoan> TbTaiKhoans { get; set; } = new List<TbTaiKhoan>();

    [JsonIgnore]
    public virtual ICollection<TbThongTinChinhTri> TbThongTinChinhTris { get; set; } = new List<TbThongTinChinhTri>();

    [JsonIgnore]
    public virtual TbThongTinDoanDang? TbThongTinDoanDang { get; set; }

    [JsonIgnore]
    public virtual ICollection<TbThongTinGiaDinh> TbThongTinGiaDinhs { get; set; } = new List<TbThongTinGiaDinh>();

    [JsonIgnore]
    public virtual ICollection<TbThongTinHopDongLaoDong> TbThongTinHopDongLaoDongs { get; set; } = new List<TbThongTinHopDongLaoDong>();

    [JsonIgnore]
    public virtual ICollection<TbThongTinNgoaiNgu> TbThongTinNgoaiNgus { get; set; } = new List<TbThongTinNgoaiNgu>();

    [JsonIgnore]
    public virtual ICollection<TbThongTinViTinh> TbThongTinViTinhs { get; set; } = new List<TbThongTinViTinh>();
}
