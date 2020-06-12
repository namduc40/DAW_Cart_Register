using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DO_AN_WEB.Models
{
    public class CartItem
    {
        public string Hinh { get; set; }
        public string SanPhamID { get; set; }
        public string TenSanPham { get; set; }
        public Decimal? DonGia { get; set; }
        public int SoLuong { get; set; }
        public Decimal? ThanhTien
        {
            get
            {
                return SoLuong * DonGia;
            }
        }
    }
}