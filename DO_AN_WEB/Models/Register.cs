using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DO_AN_WEB.Models
{
    public class Register
    {       
        [Display(Name = "Email")]
        [Required(ErrorMessage ="Yêu cầu nhập Email")]
        public string Email { get; set; }

        [Display(Name = "Mật khẩu")]
        [StringLength(20,MinimumLength =5,ErrorMessage ="Độ dài mật khẩu phải có ít nhất 6 ký tự")]
        [Required(ErrorMessage = "Yêu cầu nhập mật khẩu")]
        public string MatKhau { get; set; }

        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("MATKHAU",ErrorMessage ="Mật khẩu xác nhận không đúng")]
        public string XacNhanMK { get; set; }

        [Display(Name = "Tên người dùng")]
        [Required(ErrorMessage = "Yêu cầu nhập tên người dùng")]
        public string TenND { get; set; }

        [Display(Name = "Giới tính")]
        [Required(ErrorMessage = "Yêu cầu nhập giới tính")]
        public string GioiTinh { get; set; }

        [Display(Name = "Số điện thoại")]
        [Required(ErrorMessage = "Yêu cầu nhập số điện thoại")]
        public string Sdt { get; set; }

        [Display(Name = "Địa chỉ")]
        [Required(ErrorMessage = "Yêu cầu nhập địa chỉ")]
        public string DiaChi { get; set; }
    }
}