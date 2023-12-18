using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuWEB.Models
{
    public class DoiMatKhau
    {
        public string Email { get; set; }

        [Required(ErrorMessage = "Không đươc bỏ trống!")]
        [StringLength(50, ErrorMessage = "Không được quá 0 ký tự!")]
        public string matkhaucu { get; set; }

        [Required(ErrorMessage = "Không đươc bỏ trống!")]
        [StringLength(50, ErrorMessage = "Không được quá 0 ký tự!")]
        public string newPassword { get; set; }
    }
}
