-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2017 lúc 12:23 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `meditec2_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

CREATE TABLE `email` (
  `donvi` longtext CHARACTER SET utf8 NOT NULL,
  `email` longtext CHARACTER SET utf8 NOT NULL,
  `sapxep` int(4) NOT NULL,
  `stt` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats`
--

CREATE TABLE `stats` (
  `id` int(11) UNSIGNED NOT NULL,
  `s_id` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `s_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `available` int(11) DEFAULT NULL,
  `banner_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banner_id` int(11) NOT NULL,
  `banner_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banner_images_mobile` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banner_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banner_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banner_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banner_visited` int(11) NOT NULL DEFAULT '0',
  `date_added` date DEFAULT NULL,
  `expires_date` date DEFAULT NULL,
  `langcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_modify` date DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhchon`
--

CREATE TABLE `tbl_binhchon` (
  `binhchon_id` int(11) NOT NULL,
  `diembinhchon` int(11) NOT NULL DEFAULT '0',
  `langcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `tenbinhchon` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tieude` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_categories_group`
--

CREATE TABLE `tbl_categories_group` (
  `available` int(11) DEFAULT NULL,
  `catergories_group` varchar(255) DEFAULT NULL,
  `catergories_id` int(11) NOT NULL,
  `catergories_image` varchar(255) DEFAULT NULL,
  `catergories_name` varchar(255) DEFAULT NULL,
  `catergories_url` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `laguage_id` int(11) DEFAULT NULL,
  `langcode` varchar(50) DEFAULT NULL,
  `last_modify` datetime DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `subcatergories` int(11) DEFAULT NULL,
  `tab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_categories_quytrinh`
--

CREATE TABLE `tbl_categories_quytrinh` (
  `available` int(11) DEFAULT NULL,
  `catergories_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_id` int(11) NOT NULL,
  `catergories_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `laguage_id` int(11) DEFAULT NULL,
  `langcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_modify` datetime DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `showindex` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `subcatergories` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_categories_suport`
--

CREATE TABLE `tbl_categories_suport` (
  `available` int(11) NOT NULL DEFAULT '1',
  `catergories_id` int(11) DEFAULT NULL,
  `catergories_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `id_tt` int(11) UNSIGNED NOT NULL,
  `langcode` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `mota` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `sort_order` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_catergories`
--

CREATE TABLE `tbl_catergories` (
  `album_id` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `catergories_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_id` int(11) NOT NULL,
  `catergories_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_added` datetime DEFAULT NULL,
  `domain` varchar(255) NOT NULL DEFAULT '0',
  `images_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `laguage_id` int(11) NOT NULL,
  `langcode` varchar(50) DEFAULT NULL,
  `last_modify` datetime DEFAULT NULL,
  `page` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `parent_id2` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `subcatergories` int(11) DEFAULT NULL,
  `tab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_catergories_news`
--

CREATE TABLE `tbl_catergories_news` (
  `available` int(11) DEFAULT NULL,
  `bottom` int(2) DEFAULT NULL,
  `catergories_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_id` int(11) NOT NULL,
  `catergories_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_mota` longtext CHARACTER SET latin1 COLLATE latin1_general_ci,
  `catergories_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `catergories_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `laguage_id` int(11) DEFAULT NULL,
  `langcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_modify` datetime DEFAULT NULL,
  `linhvucdaotao` int(2) DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `service` int(2) DEFAULT NULL,
  `showindex` int(11) NOT NULL DEFAULT '0',
  `showindex2` int(2) NOT NULL DEFAULT '0',
  `showindex3` int(2) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `subcatergories` int(11) DEFAULT NULL,
  `tab` int(2) DEFAULT NULL,
  `tailieu` int(2) NOT NULL DEFAULT '0',
  `tieubieu` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_counter`
--

CREATE TABLE `tbl_counter` (
  `counter` int(11) DEFAULT NULL,
  `count_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_diachi`
--

CREATE TABLE `tbl_diachi` (
  `available` int(11) DEFAULT NULL,
  `catergories_id` int(11) DEFAULT NULL,
  `company_address` longtext CHARACTER SET latin1 COLLATE latin1_general_ci,
  `company_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_thongtin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `domain` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `langcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_emailqt`
--

CREATE TABLE `tbl_emailqt` (
  `hienthi` int(2) NOT NULL,
  `idsupport` int(11) NOT NULL,
  `matkhau` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nhom` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `supportgroup` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_login`
--

CREATE TABLE `tbl_login` (
  `datetimelogin` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `idlogin` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `iplogin` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `album_id` int(11) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `catergories_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `catergories_id` int(11) DEFAULT NULL,
  `duyet` int(2) NOT NULL DEFAULT '0',
  `id_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_cover` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ishot` int(11) DEFAULT NULL,
  `langcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `loai` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `news_added` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `news_content` longtext CHARACTER SET latin1 COLLATE latin1_general_ci,
  `news_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `news_id` int(11) NOT NULL,
  `news_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `news_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `news_sort` longtext CHARACTER SET latin1 COLLATE latin1_general_ci,
  `news_source` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `news_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `news_visited` int(11) NOT NULL DEFAULT '0',
  `ngaydang` int(11) DEFAULT NULL,
  `showindex` int(2) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `sukien` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tag` longtext CHARACTER SET latin1 COLLATE latin1_general_ci,
  `thongbao` int(2) NOT NULL DEFAULT '0',
  `nguoidang` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `anhnho` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `anhto` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `available` int(11) NOT NULL DEFAULT '1',
  `catergories_id` int(11) DEFAULT NULL,
  `idphoto` int(11) NOT NULL,
  `id_album` int(11) DEFAULT NULL,
  `ishot` int(11) NOT NULL DEFAULT '0',
  `mota` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `tenanh` text CHARACTER SET latin1 COLLATE latin1_german1_ci,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo_news`
--

CREATE TABLE `tbl_photo_news` (
  `available` int(2) NOT NULL DEFAULT '1',
  `catergories_id` int(11) NOT NULL,
  `catergories_url` varchar(255) DEFAULT NULL,
  `convert_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_setup`
--

CREATE TABLE `tbl_setup` (
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `langcode` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `noidung_mail_kick_hoat` longtext,
  `noi_dung_mail_dky_nhanthongtin` longtext,
  `page_description` text,
  `page_dichvu` int(11) NOT NULL DEFAULT '0',
  `page_keyword` text,
  `page_title` text,
  `page_vat` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `setup_giatri_donhang` int(11) DEFAULT NULL,
  `setup_noidung_donhang` text,
  `setup_uudai_donhang` int(11) DEFAULT NULL,
  `title_bottom` longtext,
  `title_dangky_mail` text,
  `title_send_mail` text,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`stt`);

--
-- Chỉ mục cho bảng `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `tbl_binhchon`
--
ALTER TABLE `tbl_binhchon`
  ADD PRIMARY KEY (`binhchon_id`);

--
-- Chỉ mục cho bảng `tbl_categories_group`
--
ALTER TABLE `tbl_categories_group`
  ADD PRIMARY KEY (`catergories_id`);

--
-- Chỉ mục cho bảng `tbl_categories_quytrinh`
--
ALTER TABLE `tbl_categories_quytrinh`
  ADD PRIMARY KEY (`catergories_id`);

--
-- Chỉ mục cho bảng `tbl_categories_suport`
--
ALTER TABLE `tbl_categories_suport`
  ADD PRIMARY KEY (`id_tt`);

--
-- Chỉ mục cho bảng `tbl_catergories`
--
ALTER TABLE `tbl_catergories`
  ADD PRIMARY KEY (`catergories_id`);

--
-- Chỉ mục cho bảng `tbl_catergories_news`
--
ALTER TABLE `tbl_catergories_news`
  ADD PRIMARY KEY (`catergories_id`);

--
-- Chỉ mục cho bảng `tbl_counter`
--
ALTER TABLE `tbl_counter`
  ADD PRIMARY KEY (`count_id`);

--
-- Chỉ mục cho bảng `tbl_diachi`
--
ALTER TABLE `tbl_diachi`
  ADD PRIMARY KEY (`company_id`);

--
-- Chỉ mục cho bảng `tbl_emailqt`
--
ALTER TABLE `tbl_emailqt`
  ADD PRIMARY KEY (`idsupport`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`idphoto`);

--
-- Chỉ mục cho bảng `tbl_photo_news`
--
ALTER TABLE `tbl_photo_news`
  ADD PRIMARY KEY (`catergories_id`);

--
-- Chỉ mục cho bảng `tbl_setup`
--
ALTER TABLE `tbl_setup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `email`
--
ALTER TABLE `email`
  MODIFY `stt` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_binhchon`
--
ALTER TABLE `tbl_binhchon`
  MODIFY `binhchon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_categories_group`
--
ALTER TABLE `tbl_categories_group`
  MODIFY `catergories_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_categories_quytrinh`
--
ALTER TABLE `tbl_categories_quytrinh`
  MODIFY `catergories_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_categories_suport`
--
ALTER TABLE `tbl_categories_suport`
  MODIFY `id_tt` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_catergories`
--
ALTER TABLE `tbl_catergories`
  MODIFY `catergories_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_catergories_news`
--
ALTER TABLE `tbl_catergories_news`
  MODIFY `catergories_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_counter`
--
ALTER TABLE `tbl_counter`
  MODIFY `count_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_diachi`
--
ALTER TABLE `tbl_diachi`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_emailqt`
--
ALTER TABLE `tbl_emailqt`
  MODIFY `idsupport` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `idphoto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_photo_news`
--
ALTER TABLE `tbl_photo_news`
  MODIFY `catergories_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_setup`
--
ALTER TABLE `tbl_setup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
