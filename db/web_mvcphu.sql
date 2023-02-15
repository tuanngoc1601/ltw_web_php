-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 17, 2019 lúc 04:13 AM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mvcphu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsum'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(14, 'TP-Link');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

-- INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
-- (1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
-- (2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
-- (3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
-- (4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
-- (8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
-- (9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
-- (13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
-- (14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
-- (18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
-- (19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(4, 'Desktop'),
(5, 'Mobile Phones'),
(6, 'Accessories'),
(7, 'Software'),
(15, 'Test'),
(16, 'Thiết bị thông minh'),
(17, 'Thiết bị mạng doanh nghiệp');

-- --------------------------------------------------------


--
-- Cấu trúc bảng cho bảng `tbl_comment`
--
CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customer_comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(7, 'Tuan Ngoc', '153 Hung Thanh, Hung Hoa B', 'Ho Chi Minh', 'Viet Nam', '700000', '0338597737', 'abc@gmail.com', '1f5bcd9d6f3df4a37d3026657301909d'),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

-- INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
-- (56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
-- (57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
-- (58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
-- (59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(6, 'Máy Tính Dell A503', 'MH1122', '50', '0', '50', 3, 10, '<p>M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503</p>', 1, '10000000', '6164cf5b58.jpg'),
(7, 'Điện Thoại samsung S10+', 'MH1123', '60', '0', '60', 5, 6, '<p><span>Với một chiếc m&aacute;y cao cấp như&nbsp;Samsung Galaxy S10+ th&igrave; việc đầu ti&ecirc;n cần c&oacute; l&agrave; m&aacute;y phải sở hữu một vẻ ngo&agrave;i &ldquo;lộng lẫy&rdquo;, thu h&uacute;t mọi &aacute;nh nh&igrave;n.&nbsp;<span>V&agrave; thậm ch&iacute;&nbsp;Samsung&nbsp;c&ograve;n l&agrave;m tốt hơn như thế khi&nbsp;Samsung Galaxy S10+ sở hữu thiết kế 2 mặt k&iacute;nh đẹp mắt c&ugrave;ng việc loại bỏ đi cảm biến v&acirc;n tay ở mặt lưng gi&uacute;p m&aacute;y liền mạch hơn.</span></span></p>', 1, '12000000', '366a3f042e.png'),
(8, 'Điện Thoại Huawei Pro', 'MH1124', '70', '1', '0', 5, 8, '<p>Nhắc đến điện thoại cao cấp của Huawei hầu hết mọi người đều nghĩ đến những chiếc m&aacute;y với loạt t&iacute;nh năng chụp ảnh chuy&ecirc;n nghiệp. Trong đ&oacute;, Huawei P50 Pro cũng kh&ocirc;ng ngoại lệ khi vừa ra đ&atilde; được xếp top 1 bảng xếp hạng điện thoại c&oacute; camera tốt nhất thế giới. Kh&ocirc;ng dừng tại đ&oacute;, P50 Pro c&ograve;n quy tụ nhiều t&iacute;nh năng tuyệt đỉnh hứa hẹn sẽ mang đến sự đột ph&aacute; mới cho người d&ugrave;ng</p>', 1, '5000000', '1e27d48822.jpg'),
(9, 'IPad Xsmax', 'MH1125', '100', '0', '100', 3, 7, '<p>Cuối c&ugrave;ng si&ecirc;u phẩm mới của Apple đ&atilde; ra mắt mang theo một phi&ecirc;n bản iPhone XSmax &ndash; sở hữu c&aacute;i t&ecirc;n kh&aacute;c biệt so với c&aacute;c thế hệ trước, trang bị tới 6.5 inch đầu ti&ecirc;n của h&atilde;ng c&ugrave;ng c&aacute;c thiết kế cao cấp hiện đại. M&agrave;n h&igrave;nh OLED chất lượng cao rộng 6.5 inch đầu ti&ecirc;n của Apple</p>', 1, '8000000', 'f5a5f89e42.jpg'),
(13, 'Đông Hồ Thông Minh Garmin Forerunner 245r', 'MH1126', '30', '1', '0', 16, 13, '<p><span>K&iacute;nh cường lực Corning Gorilla Glass 3, k&iacute;ch thước m&agrave;n h&igrave;nh(42.3 x 42.3), c&ocirc;ng ngh&ecirc;̣ MIP (b&ocirc;̣ nhớ trong từng đi&ecirc;̉m ảnh) ch&ocirc;́ng chói, bộ nhớ trong c&oacute; thể lưu trữ 500 b&agrave;i h&aacute;t,thời lượng pin 7 ng&agrave;y, chế dộ GPS 6 giờ v&agrave; GPS kh&ocirc;ng ph&aacute;t nhạc l&ecirc;n tới 24h, chuẩn chống nước 5ATM (50m),t&iacute;ch hợp GPS / GLONASS/GALILEO, Live track, VO2 max, bảo h&agrave;nh 1 năm</span></p>', 1, '4690000', 'bac03580db.png'),
(15, 'Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng', 'MH1127', '20', '0', '20', 7, 9, '<p><span>Bảo vệ chống lại c&aacute;c virus, phần mềm xấu, mối đe dọa tr&ecirc;n Internet,&nbsp;<span>Bảo vệ quyền ri&ecirc;ng tư của bạn v&agrave; ph&ograve;ng vệ trước h&agrave;nh vi trộm cắp danh t&iacute;nh,&nbsp;<span>Tăng th&ecirc;m lớp bảo mật cho hoạt động mua sắm &amp; ng&acirc;n h&agrave;ng trực tuyến,&nbsp;<span>Gi&uacute;p bạn giữ an to&agrave;n cho con trước c&aacute;c mối nguy hiểm từ Internet, v.v..</span></span></span></span></p>', 1, '195000', 'd892a2f1ef.jpg'),
(16, 'TP - Link TL- WN725N - USB Wifi Nano 150Mbps', 'MH1128', '90', '0', '90', 17, 14, '<p>Card mạng wifi USB TP-Link TL-WN725N Wireless N150Mbps, sử dụng chuẩn USB wifi phổ biến với mọi m&aacute;y t&iacute;nh PC v&agrave; laptop, tốc độ cao ch&iacute;nh h&atilde;ng. M&aacute;y t&iacute;nh Tiến T&acirc;n l&agrave; nh&agrave; ph&acirc;n phối sản phẩm TP-Link ch&iacute;nh h&atilde;ng gi&aacute; tốt nhất to&agrave;n quốc</p>', 1, '125000', 'b3bf9f71ac.jpg'),
(17, 'Ổ Cứng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - Hàng Nhập Khẩu', 'MH1129', '100', '0', '100', 7, 6, '<p><span>Ổ cứng SSD Samsung 860 EVO 250GB 2.5" SATA III&nbsp; mang đến hiệu suất đọc ghi đ&aacute;ng kinh ngạc c&ugrave;ng với c&ocirc;ng nghệ&nbsp;Intelligent TurboWrite được trang bị tr&ecirc;n ổ cứng gi&uacute;p n&acirc;ng cao hiệu quả trong c&ocirc;ng việc cũng như giải tr&iacute;. Với c&ocirc;ng nghệ mới n&agrave;y, hiệu suất&nbsp;Samsung 860 EVO 250GB 2.5" SATA III&nbsp; được tăng l&ecirc;n 1.9 lần so với 840 Evo</span></p>', 1, '1099000', 'ad0bfd7a5d.jpg'),
(18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 'MH1130', '120', '0', '120', 3, 10, '<p><span>Cỗ m&aacute;y chiến game Dell Inspiron 7588 được ra mắt với G5 v&agrave;o năm 2018. Ch&uacute;ng c&oacute; thiết kế gần như nhau, nhưng Dell Inspiron 7588 đi k&egrave;m với c&aacute;c t&iacute;nh năng tốt hơn. Hiệu suất của n&oacute; l&agrave; đ&aacute;ng kể so với Inspiron 15 7000 v&agrave; Dell G3 / G5 do bộ vi xử l&yacute; nhanh hơn v&agrave; phần cứng cực mạnh. Khung gầm bằng nhựa 99% nhưng b&ugrave; v&agrave;o đ&oacute; n&oacute; lại c&oacute; cấu tr&uacute;c b&ecirc;n trong độc đ&aacute;o. Một Backlit m&agrave;u xanh đ&atilde; gi&uacute;p Dell cho m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;y một c&aacute;i nh&igrave;n tốt hơn giống như ch&uacute;ng ta đ&atilde; thấy tr&ecirc;n Alienware R5 2018. M&agrave;n h&igrave;nh độc lập với g&oacute;c nh&igrave;n gi&uacute;p tăng cường trải nghiệm chơi game. T&ugrave;y chọn 4K UHD khả dụng nếu bạn chọn định cấu h&igrave;nh hoặc n&acirc;ng cấp.</span></p>', 1, '2589900', 'c3fb5d9a14.jpg'),
(19, 'Thiết Bị Thông Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', 'MH1140', '65', '0', '65', 16, 7, '<p><span>Apple Watch Series 4 l&agrave; chiếc Apple Watch c&oacute; m&agrave;n h&igrave;nh lớn nhất từ trước đến nay. Với những nỗ lực thu hẹp viền m&agrave;n h&igrave;nh, Apple Watch 4 c&oacute; m&agrave;n h&igrave;nh lớn hơn tới 30% trong khi đ&oacute; k&iacute;ch thước vẫn kh&ocirc;ng thay đổi đ&aacute;ng kể so với thế hệ cũ. M&agrave;n h&igrave;nh n&agrave;y c&ograve;n c&oacute; c&ocirc;ng nghệ hiển thị mới LTPO tiết kiệm điện năng hơn, cho ph&eacute;p bạn sử dụng thoải m&aacute;i cả ng&agrave;y chỉ sau một lần sạc.</span></p>', 1, '9700000', '06c0a18d5a.jpg'),
(20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 'MH1150', '70', '17', '-16', 17, 8, '<p>Huawei E3372s-325 l&agrave; USB 4G rất phổ biến tr&ecirc;n thị trường do c&aacute;ch hoạt&nbsp; động đơn gi&agrave;n " Cắm L&agrave; Chạy " kh&ocirc;ng cần c&agrave;i đặt th&ecirc;m phần mềm. Ngo&agrave;i ra Huawei E3372s-325 c&ograve;n c&oacute; thể hoạt động tốt với c&aacute;c router ph&aacute;t Wi-Fi gắn USB 4G để cấp internet hoặc Backup trong trường hợp mạng d&acirc;y bị trục trặc như Tp-Link, Draytek...</p>', 1, '1240000', '8481dc5b6c.jpg'),
(21, 'Apple New For Mysql Server', 'MH1115', '48', '0', '48', 17, 14, '<p>Apple New For Mysql Server</p>', 1, '50000', '7c78e0a3b0.jpg'),
(22, 'Apple New For Mysql Server', 'MH1111', '95', '31', '-30', 17, 14, '<p>Apple New For Mysql Server</p>', 1, '60000', '66128fbcdf.jpeg'),
(23, 'Máy tính HP1001', 'MT101', '100', '4', '-3', 3, 0, '<p>L&agrave; d&ograve;ng m&aacute;y t&iacute;nh cao cấp trong văn ph&ograve;ng, gi&uacute;p người sử dụng c&oacute; những trải nghiệm tốt nhất, hiện tại đ&acirc;y l&agrave; một trong những sản phẩm b&aacute;n chạy nhất b&ecirc;n cửa h&agrave;ng với những đ&aacute;nh gi&aacute; t&iacute;ch cực từ ph&iacute;a kh&aacute;ch h&agrave;ng</p>', 1, '15500000', 'e9709e5099.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 0),
(6, 'slider2', 'ff79579ac7.png', 0),
(7, 'slider3', 'a94222690e.png', 0),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);


--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);


--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;


--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
