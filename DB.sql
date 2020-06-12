/*
Created		6/9/2020
Modified		6/9/2020
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/
create database DOANWEB
go
use DOANWEB
go
Create table [NGUOIDUNG]
(
	[MAND] Char(10) NOT NULL,
	[TENND] Nvarchar(255) NULL,
	[GIOITINH] Nvarchar(255) NULL,
	[SDT] Char(12) NULL,
	[DIACHI] Nvarchar(255) NULL,
	[EMAIL] Nvarchar(255) NULL,
	[MATKHAU] Varchar(255) NULL,
	[LEVEL] Char(10) NULL,
Primary Key ([MAND])
) 
go

Create table [DANHMUC]
(
	[MADM] Char(10) NOT NULL,
	[TENDM] Nvarchar(255) NULL,
Primary Key ([MADM])
) 
go

Create table [SANPHAM]
(
	[MASP] Char(10) NOT NULL,
	[MADM] Char(10) NOT NULL,
	[TENSP] Nvarchar(255) NULL,
	[SOLUONG] Integer NULL,
	[DONGIA] Money NULL,
	[HINHANH] Nvarchar(255) NULL,
	[BAOHANH] Nvarchar(255) NULL,
	[TINHTRANG] Char(1) NULL,
	[KHUYENMAI] Nvarchar(255) NULL,
	[MOTA] Text NULL,
	[NOIBAT] Char(1) NULL,
Primary Key ([MASP])
) 
go

Create table [HOADON]
(
	[MAHD] Char(10) NOT NULL,
	[TENNGUOINHAN] Nvarchar(255) NULL,
	[NGAYLAP] Datetime NULL,
	[SDT] Char(12) NULL,
	[DIACHI] Nvarchar(255) NULL,
	[PTTT] Nvarchar(255) NULL,
	[TRANGTHAI] Char(1) NULL,
	[MAND] Char(10) NOT NULL,
Primary Key ([MAHD])
) 
go

Create table [CHITIETHOADON]
(
	[MASP] Char(10) NOT NULL,
	[MAHD] Char(10) NOT NULL,
	[SOLUONG] Integer NULL,
	[TONGTIEN] Money NULL,
Primary Key ([MASP],[MAHD])
) 
go


Alter table [HOADON] add  foreign key([MAND]) references [NGUOIDUNG] ([MAND])  on update no action on delete no action 
go
Alter table [SANPHAM] add  foreign key([MADM]) references [DANHMUC] ([MADM])  on update no action on delete no action 
go
Alter table [CHITIETHOADON] add  foreign key([MASP]) references [SANPHAM] ([MASP])  on update no action on delete no action 
go
Alter table [CHITIETHOADON] add  foreign key([MAHD]) references [HOADON] ([MAHD])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


/* Roles permissions */


/* Users permissions */


