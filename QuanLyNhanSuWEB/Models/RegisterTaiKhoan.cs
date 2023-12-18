using System.ComponentModel.DataAnnotations;

namespace QuanLyNhanSuWEB.Models
{
    public class RegisterTaiKhoan
    {
        [Required]
        public int IdNv { get; set; }
        [Required, EmailAddress]
        public string Email { get; set; } = string.Empty;
        [Required(ErrorMessage = "Không đươc bỏ trống!"), StringLength(100, MinimumLength = 6, ErrorMessage = "Mật khẩu phải là một chuỗi có độ dài tối thiểu là 6 và độ dài tối đa là 100.")]
        public string Password { get; set; } = string.Empty;

        [Required(ErrorMessage = "Không đươc bỏ trống!")]
        [Compare("Password", ErrorMessage = "Không Hợp Lệ.")]
        public string ConfirmPassword { get; set; } = string.Empty;
        [Required]
        public string Role { get; set; } = null!;
    }
}
