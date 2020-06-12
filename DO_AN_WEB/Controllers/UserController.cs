using DO_AN_WEB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DO_AN_WEB.Controllers
{
    public class UserController : Controller
    {
        DBAccessDataContext db = new DBAccessDataContext();
        // GET: User
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
       [HttpPost]
       public ActionResult Register(Register model)
        {
            var user = new NGUOIDUNG
            {
                EMAIL = model.Email,
                MATKHAU = model.MatKhau,
                TENND = model.TenND,
                SDT = model.Sdt,
                GIOITINH = model.GioiTinh,
                DIACHI = model.DiaChi
            };
            db.NGUOIDUNGs.InsertOnSubmit(user);
            db.SubmitChanges();
            return RedirectToAction("Register");
        }
        
        
    }
}