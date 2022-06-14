-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-11 14:04:13
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `web`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add news', 7, 'add_news'),
(26, 'Can change news', 7, 'change_news'),
(27, 'Can delete news', 7, 'delete_news'),
(28, 'Can view news', 7, 'view_news'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add photo', 11, 'add_photo'),
(42, 'Can change photo', 11, 'change_photo'),
(43, 'Can delete photo', 11, 'delete_photo'),
(44, 'Can view photo', 11, 'view_photo');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$ugfUNC0JrdJNY0R4sBI0c6$8EkrU7c6Cg27Au0sOiqdx/ftulRe9PXu+KtntgTcMjw=', '2022-05-28 15:35:50.216287', 1, 'admin', '', '', 'admin@good.com.tw', 1, 1, '2022-01-10 11:34:37.140494');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `cart_detailmodel`
--

CREATE TABLE `cart_detailmodel` (
  `id` bigint(20) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dtotal` int(11) NOT NULL,
  `dorder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `cart_ordersmodel`
--

CREATE TABLE `cart_ordersmodel` (
  `id` bigint(20) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `grandtotal` int(11) NOT NULL,
  `customname` varchar(100) NOT NULL,
  `customemail` varchar(100) NOT NULL,
  `customphone` varchar(20) NOT NULL,
  `customaddress` varchar(200) NOT NULL,
  `paytype` varchar(30) NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `content`, `create_date`) VALUES
(1, 'John', 'Taipei', '101 office?', 'ans??', '2022-02-09 12:30:46.319172'),
(2, 'watson', '0.', '....', '我要測試', '2022-05-11 03:42:29.837689'),
(3, 'wan@gmail.com', '0.', '....', '0000', '2022-05-11 03:45:37.207555');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`id`, `name`, `sex`, `birthday`, `email`, `phone`, `address`, `password`, `create_date`) VALUES
(1, '陳大明', 'M', '1988-01-01', '', '', '', '123', '2022-01-10 13:25:33.348161'),
(2, '王小明', 'F', '1990-01-01', 'wang@gmail.com', '048888888', '台中市火車站1號', '9999', '2022-01-19 13:50:05.463529');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-10 12:21:10.202162', '1', 'News object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-01-10 13:25:33.370157', '1', 'Customer object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-01-12 13:39:27.997644', '2', 'News object (2)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-05-13 08:00:40.660327', '5', 'Contact object (5)', 3, '', 10, 1),
(5, '2022-05-13 08:00:44.506964', '4', 'Contact object (4)', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'contact', 'contact'),
(5, 'contenttypes', 'contenttype'),
(8, 'customer', 'customer'),
(7, 'news', 'news'),
(11, 'photos', 'photo'),
(9, 'product', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-10 11:24:24.205086'),
(2, 'auth', '0001_initial', '2022-01-10 11:24:24.829921'),
(3, 'admin', '0001_initial', '2022-01-10 11:24:25.064233'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-10 11:24:25.079854'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-10 11:24:25.079854'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-10 11:24:25.204821'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-10 11:24:25.282925'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-10 11:24:25.361030'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-10 11:24:25.361030'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-10 11:24:25.423614'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-10 11:24:25.439139'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-10 11:24:25.439139'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-10 11:24:25.501622'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-10 11:24:25.579722'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-10 11:24:25.642205'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-10 11:24:25.657827'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-10 11:24:25.735930'),
(18, 'sessions', '0001_initial', '2022-01-10 11:24:25.782793'),
(19, 'news', '0001_initial', '2022-01-10 12:12:46.922540'),
(20, 'customer', '0001_initial', '2022-01-10 13:15:54.613287'),
(21, 'product', '0001_initial', '2022-01-17 11:38:17.570273'),
(22, 'contact', '0001_initial', '2022-02-09 11:24:49.688149'),
(23, 'photos', '0001_initial', '2022-02-11 10:35:26.313103');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3lbadta8d0swxsjhj8u7s8va66ql5j15', 'eyJVbG9naW5lZCI6dHJ1ZX0:1nIPG1:8NX7EfyVLLvTFHemlaHyyPrjBvixc9fVOR8nk5VIHP4', '2022-02-25 06:18:13.534058'),
('6rccv24cfwswlkvwmp6nvmr8amdijf1n', '.eJxVjDsOwjAQBe_iGlmJ8ZeSPmew1t5dHEC2FCcV4u4QKQW0b2beS0TY1hK3TkucUVzEKE6_W4L8oLoDvEO9NZlbXZc5yV2RB-1yakjP6-H-HRTo5Vsb8tmNhHlUqNiDGVICDk4lZ11AYjae2BqvlQWGwWQc2CJC1kkHPov3Bw26OTM:1n7bFL:Tim11BZXhuDobGsWusifNBPM6gOwviRuUNDMbA2ror8', '2022-01-26 10:52:51.578631'),
('ammm8uv7bku4qkxq6eck0okj8fsy81jb', '.eJxVjDsOwjAQRO_iGln-xTaU9JzB2vVucADZUpxUiLuTSCmgmWLem3mLBOtS0tp5ThOJi9Di9Nsh5CfXHdAD6r3J3OoyTyh3RR60y1sjfl0P9--gQC_b2tsQlYme2FvCIWN0UTttnYPokc2gTGBksuHMaJCBXRhH2lIhac7i8wXSIThl:1nuyTm:KZfk6pANW84_JIfQ9uTq4tbL14up87Mu-P7jc0cF-hU', '2022-06-11 15:35:50.229953'),
('jgtp6bypq7iif7vxaoa0rm9n6h7rgh4i', '.eJxVjDsOwjAQBe_iGlmJ8ZeSPmew1t5dHEC2FCcV4u4QKQW0b2beS0TY1hK3TkucUVzEKE6_W4L8oLoDvEO9NZlbXZc5yV2RB-1yakjP6-H-HRTo5Vsb8tmNhHlUqNiDGVICDk4lZ11AYjae2BqvlQWGwWQc2CJC1kkHPov3Bw26OTM:1n6t6o:ymL3PwOwSi1xv59HpaDgtPpDRa-28nU7X0h46BzCJh4', '2022-01-24 11:45:06.337113'),
('n6a2si50zza1h4iqrv9mn2mt01klytza', '.eJxVjDsOgzAQRO-ydWThD7ZDmT4niCK0610CCQIJmyrK3QMSDc0U897MFxIuZRxygebxvECLa-nbNcvSDgwNaDh1hOkj0w74jdNrVmmeyjKQ2hV10KzuM8t4O9zTQY-539behliZ6Fm8ZaoTRRe109Y5jJ7E1JUJQsI2XIUMCYoLXcdbVsRaEvz-K0w9LQ:1nodOY:cBYKFXQ5kK-A03NBsHtSjIdlf-RoWri_cGnbku1i2aw', '2022-05-25 03:52:14.395712'),
('utqjmj2sjwab65y9zyaz3ps2iizoe9bb', '.eJxVjrkOwjAQRP_FdWQlJj5ChZAoKamjtXedGBJbyiEKxL9jSxRQ7s7M03uxHvZt7PeVlj4gO7KGVb8_C-5BsQR4hzgk7lLclmB5qfBvuvJrQprO3-4fYIR1zGtJxumG0DUChTcga2vBd1pYrXSH5L005JU0rVDgoZYOa68QwbW27fwhQ29TGkKk7LItO1Ws4C8zhCnjn9ntNJQjC87s_QF5zEjN:1nJat9:EuQAwpgK5ezTxmGxuPBEjGIDG8njcstDWgjN2Dk50tA', '2022-02-28 12:55:31.505083'),
('ys6ukzmygavtxosurktx89c3ta6y33z5', '.eJxVjrkOwjAQRP_FNbIcEx-hpE9Jba29u0kgsqUcFeLfcaQU0M6beZq3CLBvY9hXWsKE4iYacfnNIqQX5QPgE_JQZCp5W6Yoj4o86Sr7gjTfz-6fYIR1rGtDPrmGMDUaNXswKkbgzunorOuQmI0ntsa32gKDMgkVW0RIbWw7vlbpYy7DlKl-2ZadPl_LqD7U:1nIV6K:sCVg2-wuaUi7ygMkUr2Jqujd_SjOKQUC0QJGFhRFo8M', '2022-02-25 12:32:36.351653');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '標題',
  `content` longtext NOT NULL,
  `photo_file` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `photo_file`, `video_url`, `create_date`) VALUES
(1, '內政部強化防疫 宗教場所全程戴口罩 餐會不得逐桌敬酒', '中央流行疫情指揮中心昨天宣布，維持二級警戒至1月24日，並調整部分防疫措施。\r\n\r\n內政部表示，為防堵疫情擴散，即日起加強宗教場所及宗教集會活動相關防疫措施，除須配合指揮中心防疫指引，全程配戴口罩、落實實聯制、量體溫外，欲辦理繞境、遊行及其他大型宗教活動者，都須提報防疫計畫，並經地方政府同意後辦理。\r\n\r\n內政部指出，10日起宗教團體神職人員主持宗教儀式或講道，必須全程配戴口罩。如果有舉辦餐會、宴席等飲食活動，不得逐桌敬酒、敬茶，並建議參與者維持適當社交距離。此外，如有提供住宿的場所，除同住家人外，以1人1室為限。\r\n\r\n內政部強調，為維護宗教團體內部人員自身及信眾安全，宗教團體應提供洗手設備或消毒用品，並定時清潔宗教場所、設備及用具；另外，宗教團體務必備有充足的人力落實防疫措施，並隨時注意疫情變化，維持勤洗手、戴口罩、保持社交距離，保護自己也保護家人。', '001.jpg', 'https://www.youtube.com/watch?v=8MG--WuNW1Y', '2022-01-10'),
(2, '成員今成兩派 王少偉：懷念奮鬥時光', '昔日男子天團「5566」是許多人的青春回憶，當時討厭他們的人怒罵「醜又台」但至今依然有眾多支持者敲碗合體，但成員如今壁壘分明，孫協志、王仁甫及許孟哲嗨玩《飢餓遊戲》，王少偉則在《綜藝3國智》撐起一片天，王少偉雖自認不會懷念過去，仍坦言：「很想念團體共同奮鬥的時候。」', 'news001.jpg', 'youtube', '2022-01-12');

-- --------------------------------------------------------

--
-- 資料表結構 `photos_photo`
--

CREATE TABLE `photos_photo` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `photos_photo`
--

INSERT INTO `photos_photo` (`id`, `image`, `upload_date`) VALUES
(1, 'image/chart-download.jpg', '2022-02-11'),
(2, 'image/AI蚊子辨識.drawio.png', '2022-02-11'),
(3, 'image/光敏電阻.drawio.png', '2022-02-11'),
(4, 'image/1935025.png', '2022-02-11'),
(5, 'image/220214184843/backicon.png', '2022-02-14'),
(6, 'image/220214184935.jpg/范仲維手繪圖_-_范小強.jpg', '2022-02-14'),
(7, 'image/大魔王.png', '2022-02-14'),
(8, 'image/螢幕擷取畫面_2021-12-18_095017.png', '2022-02-14'),
(9, 'image/92009688.jpg', '2022-04-27'),
(10, 'image/e7b35fbc4a8591a0.png', '2022-05-24'),
(11, 'image/282622605_704513150666671_7263619244549828825_n.jpg', '2022-05-25');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` decimal(4,1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `discount` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `brand`, `name`, `size`, `color`, `price`, `photo_url`, `discount`) VALUES
(1, 'Nike', 'NIKE RYZ 365 II 女休閒鞋-白-CU4874100', '0.0', '', 1928, 'https://s.yimg.com/zp/MerchandiseImages/5DAEC0E983-SP-9528026.jpg', '0.00'),
(2, 'Nike', 'Nike 休閒鞋 TC 7900 運動 女鞋 基本款 厚底 舒適 簡約 穿搭 反光 米白 白 DD9682100', '0.0', '', 3932, 'https://s.yimg.com/zp/MerchandiseImages/FA23366512-SP-9474821.jpg', '0.00'),
(3, 'Nike', 'NIKE 慢跑鞋 AIR ZOOM TEMPO NEXT% FK 灰黑 編織 男 (布魯克林) CI9923-006', '0.0', '', 2701, 'https://s.yimg.com/ut/api/res/1.2/g9X4aSVjq9KLo41Box1HtQ--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/f014/item/p0373233048828-item-8bf1xf4x1000x1000-m.jpg', '0.00'),
(4, 'Nike', 'NIKE AIR FORCE 1 07 LV8男復古休閒運動鞋 -白綠-DO5220131', '0.0', '', 3024, 'https://s.yimg.com/zp/MerchandiseImages/C43CDCB9D0-SP-10539773.jpg', '0.00'),
(5, 'Nike', 'NIKE KD Trey 5 VII EP 男鞋 籃球 避震 包覆 耐磨 黑 紅【運動世界】CK2089-002', '0.0', '', 1852, 'https://s.yimg.com/ut/api/res/1.2/BL4uat8RMy_a4vykXh8aFg--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/95c2/item/p0268209274919-item-e218xf4x1000x1000-m.jpg', '0.00'),
(6, 'Nike', 'Nike 慢跑鞋 Flyknit Trainer 男鞋', '0.0', '', 2504, 'https://s.yimg.com/zp/images/7D868D0F67AB673DECFB6665C670579F2098B0AD', '0.00'),
(7, 'Nike', 'NIKE 運動鞋 運動 健身 慢跑  男鞋 黑 CD4371012 REACT INFINITY RUN FK', '0.0', '', 3869, 'https://s.yimg.com/zp/MerchandiseImages/CA1F1559F1-SP-8971248.jpg', '0.00'),
(8, 'Nike', 'Nike 休閒鞋 Air Max 90 SE 運動 女鞋 經典款 氣墊 舒適 簡約 球鞋 穿搭 白 灰 CV8824100', '0.0', '', 2924, 'https://s.yimg.com/zp/MerchandiseImages/15086A68BA-SP-9553390.jpg', '0.00'),
(9, 'Nike', 'NIKE NIKE REVOLUTION 6 NN  男 慢跑鞋-DC3728001', '0.0', '', 1253, 'https://s.yimg.com/zp/MerchandiseImages/B5247EF062-SP-10797241.jpg', '0.00'),
(10, 'Nike', 'Nike 休閒鞋 W  Air Zoom Type 女鞋 奶茶 網美 舒適 氣墊 球鞋 米白 粉 CZ1151101', '0.0', '', 3092, 'https://s.yimg.com/zp/MerchandiseImages/6F9F8826C2-Product-27323654.jpg', '0.00'),
(11, 'Nike', 'Nike 休閒鞋 Wearallday WNTR 運動 男鞋 輕量 舒適 避震 簡約 球鞋 穿搭 黑 白 CT1729001', '0.0', '', 1328, 'https://s.yimg.com/zp/MerchandiseImages/6A2DB10B80-SP-8881204.jpg', '0.00'),
(12, 'Nike', 'Nike Air Jordan 11代 Retro 男鞋 Cool Grey 喬丹 AJ11 酷灰 灰 白 CT8012005', '0.0', '', 6704, 'https://s.yimg.com/zp/MerchandiseImages/B940C9D185-SP-10727411.jpg', '0.00'),
(13, 'Nike', 'Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001', '0.0', '', 3176, 'https://s.yimg.com/zp/MerchandiseImages/2310ecf57b-Gd-9698318.jpg', '0.00'),
(14, 'Nike', 'Nike 休閒鞋 RYZ 365 II 運動 女鞋 厚底 舒適 增高 球鞋 穿搭 簡約 黑 白 CU4874001', '0.0', '', 2084, 'https://s.yimg.com/zp/MerchandiseImages/6903FFF764-SP-9258062.jpg', '0.00'),
(15, 'Nike', 'NIKE 休閒鞋  運動鞋 男鞋 粉白 DC4831002 AF1 AF1 CRATER FLYKNIT', '0.0', '', 2470, 'https://s.yimg.com/zp/MerchandiseImages/06364C453C-SP-10544511.jpg', '0.00');

-- --------------------------------------------------------

--
-- 資料表結構 `travel`
--

CREATE TABLE `travel` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `travel`
--

INSERT INTO `travel` (`id`, `title`, `price`, `discount`, `photo_url`, `content`, `create_date`) VALUES
(21, '【2022澎湖花火節】台灣澎湖隘門 | BBQ燒烤吃到飽 & 水上活動嗨翻天  | 隘門陽光沙灘', 350, 345, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_100868/20200612061632_Z1PaM/jpg', '澎湖隘門沙灘，BBQ烤肉吃到飽放鬆享受、水上活動休憩之餘體驗沙灘烤肉樂趣、望著海浪與長達三公里的金黃色沙灘，三五好友享用美食BBQ烤肉最歡樂，水上活動嗨翻天：水上摩托車、歡樂香蕉船、無敵海戰車，親子同樂歡樂刺激，澎湖歡樂回憶帶著走，KKday立即下訂隘門沙灘最愜意。', '2022-03-27 15:13:29'),
(22, '【2022澎湖花火節】早鳥68折｜澎湖秘境一日遊 | 南方四島＆藍洞＆環遊七美島＆島上獨木舟 | 自選遊覽車或機車環島', 1450, 990, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_22180/20200527102239_q2oZh/jpg', '台灣澎湖秘境景點－藍洞，行程中將巡航至西吉嶼，船長將以船隻近距離靠近藍洞，但不會進入藍洞內，天氣好的話將有機會看到陽光從上傾瀉而下，映照在清澈海水，把整個洞穴染成夢幻的翠藍色，快來捕捉這難得的夢幻景觀！不管有沒有去過澎湖，藍洞絕對是你不可以錯過的景點！行程可自選島上交通工具，暢遊澎湖更加地便利！', '2022-03-27 15:13:29'),
(23, '【2022澎湖花火節】台灣澎湖租機車 | 騎車輕鬆環島遊澎湖（24/48/72/96小時）', 400, 330, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_22163/20200528113446_p8M5Q/jpg', '來澎湖騎機車最方便，開車深入澎湖探訪各個角落，行程不受大眾交通工具限制，輕鬆又便利，澎湖有著眾多的自然與人文景觀，古厝聚落歷史古蹟、豐富的自然景觀，並有許多特色美食，為夏季的旅遊度假勝地。', '2022-03-27 15:13:29'),
(24, '【2022澎湖花火節】澎湖吉貝一日遊｜暢玩水上活動｜來回船票 & 島上機車 & 目斗嶼登島｜赤崁碼頭出發', 400, 221, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101369/20200715095654_5Ze05/jpg', '澎湖水上活動吉貝島最刺激、多方案任選，船票機車一次備齊、立即預約澎湖在地深度旅遊吉貝島水上活動！前往北海遊客服務中心，航向澎湖北方最美島嶼吉貝島，無限暢玩水上活動，體驗海釣、澎湖特有的潮間帶抱墩樂趣！', '2022-03-27 15:13:29'),
(25, '【2022澎湖花火節】台灣澎湖跳島一日遊 | 探索浪漫七美＆絕美藍洞＆南方四島＆雙心石滬等 | 自選遊覽車或機車環島', 1500, 1400, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_23914/20200527033729_5jYWr/jpg', '在 KKday 事先預訂澎湖南方四島＋七美一日遊，走訪被時間遺忘的島嶼－東吉嶼，遊覽東吉燈塔、八卦山無敵海景等，再帶你前往西吉嶼知名藍洞，親睹神秘且令人嚮往的藍色仙境，接著前進七美島有著小臺灣及雙心石滬等人氣景點，最後巡航東嶼坪、西嶼坪、南鐵砧嶼、頭巾嶼、虎井、桶盤，結束一日充實且難忘的澎湖網美秘境之旅。', '2022-03-27 15:13:29'),
(26, '【2022澎湖花火節】台灣澎湖｜水上活動推薦｜隘門沙灘透明獨木舟・ SUP 體驗・透明 SUP 體驗', 1000, 789, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_24870/20200521092542_dVxxA/jpg', '現在訂購隘門沙灘透明獨木舟 / SUP 體驗，限定夏日活動，跳過人潮立即體驗！由專業教練帶領體驗，不怕現場沒設備可用，與親朋好友一同划著透明獨木舟，輕鬆欣賞海面下的景色，亦或是站在SUP上，享受海風吹拂的愜意感，來到澎湖的你不可錯過！', '2022-03-27 15:13:29'),
(27, '【2022澎湖花火節】澎湖福朋喜來登海鮮吃到飽｜宜客樂海港百匯自助晚餐（免收服務費）', 965, 960, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_21440/20210107100551_ScSzk/jpg', '即訂即用澎湖福朋喜來登宜客樂海港百匯餐券，透過 KKday 購買立即省下10%服務費，優於現場價格，僅需以手機出示電子憑證！盡情體驗無國界料理、日式生魚片及自助吃到飽！\n澎湖福朋喜來登的宜客樂海港百匯自助餐廳，以挑高水波紋天花板搭配帆船造型餐檯 設計，營造置身大海懷抱，你可以在開放式廚房盡情享用中西風味冷盤、熱食餐點、 輕食小品、甜點與水果，暢飲各類沁涼飲品，自助 Buffet 晚餐吃到飽方案，遊澎湖也能盡享新鮮的中外美食。', '2022-03-27 15:13:29'),
(28, '【2022澎湖花火節】限時76折｜台灣澎湖｜海洋牧場・鮮蚵炭烤｜澎湖海上牧場垂釣樂（海鮮粥吃到飽）', 600, 459, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_22087/20190306070500_dQ5zj/jpg', '立即預約澎湖在地深度旅遊海洋牧場垂釣樂、炭烤鮮蚵吃到飽！前往澎湖海上牧場享受釣魚的刺激與樂趣，體驗討海人生並品嚐最新鮮的牡蠣、海鮮粥的美味！', '2022-03-27 15:13:29'),
(29, '【2022澎湖花火節】台灣澎湖租車 | 自駕環島遊澎湖 | 多點接客接送取車', 2000, 1300, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101547/20200907073605_eD5LQ/jpg', '機場、馬公港、彭南、西嶼貼心多點接客接送取車，澎湖旅遊自駕最方便，深入澎湖探訪各個角落，行程不受天氣影響，輕鬆便利，澎湖自然與人文景觀，古厝聚落歷史古蹟、豐富的自然景觀特色美食旅遊度假勝地，KKgift 立即下訂預留備車離島旅遊最安心！', '2022-03-27 15:13:29'),
(30, '澎湖水族館門票 | 單人門票&雙人優惠套票 | 電子票券', 300, 300, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101299/20200702090808_qvOAK/png', '今年夏天最夯的新景點！2019 全新翻修，重新開幕！好拍、好玩、好涼、好精彩的水族館奇幻之旅，來澎湖絕對不能錯過的景點！', '2022-03-27 15:13:29'),
(31, '金門租機車｜金門機場取車', 359, 359, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101856/20200728024904_zfPJa/jpg', '透過KKday輕鬆預約金門租機車，下飛機即可快速取車，讓你抵達後即可輕鬆展開便捷的金門自由行！', '2022-03-27 15:13:50'),
(32, '【2022藍眼淚季節】限時買三送一｜金門秘境導覽/海上夜尋藍眼淚｜夜探藍眼淚 x 水頭聚落 x 金色寧境 （可選至住宿地點接送）', 499, 374, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_115783/20220221030209_voyMl/png', '春天到夏天交接的季節，就正是金門藍眼淚好發的時節，這種藻類大規模聚集、撞擊後，就會發出漂亮的藍光，所以在岸邊浪花陣陣的地方特別容易出現；讓專業導遊沿途分享金門故事給您。一同來金門旅遊，在最富歷史文化故事及戰事遺址的金門，不同於一般觀光路線，KKday 獨家邀請你在夜晚時探索關於這片土地上各式各樣的光怪陸離。特別邀約膽子大的你，跟隨導遊的腳步在金門夜遊。', '2022-03-27 15:13:50'),
(33, '金門租車/租機車｜租車自駕遊金門｜金門機場碼頭取件', 360, 360, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_105317/20201221031905_quiQF/jpg', '金門冠城租車為來訪金門的遊客提供各式汽車、機車租賃服務，提供最齊全的車種和最優質專業服務。不管是要去翟山坑道或清金門鎮總兵署、欣賞金門建築莒光樓、山后民俗文化村，到特色景點走訪太武山、擎天，感受金門在地文化特色，自行租車玩金門輕鬆自在又便利，開心自駕暢遊各大金門必去景點', '2022-03-27 15:13:50'),
(34, '金門烈嶼營區射擊體驗 | 營區水彈槍射擊', 420, 420, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101753/20201027021007_1Hk8I/jpg', '現在訂購金門烈嶼營區射擊體驗，在教練的帶領之下，我們一起穿上裝備進入營區，在烈嶼的寬闊的真實營區與前線設施享受激烈的對戰。不僅考驗你的體力，也是結合智慧與團結的一項運動喔。來金門必訪戰爭遺跡，過去只能用聽故事的方式了解戰爭，現在開始跟我們一起換上裝備進入營區享受激烈的對戰。使用WBG生存槍枝、防彈背心、護目鏡、識別帶，全副武裝進入營區展開激烈對戰，模擬國軍守備台灣的英勇戰術，體驗據點空間特殊的氛圍，最道地的離島玩樂方式。', '2022-03-27 15:13:50'),
(35, '【2022藍眼淚季節】金門三天兩夜自由行｜來回機票+飯店｜台北/ 台中/ 高雄出發｜可加訂信源海產＆金湖湖光餐廳 BUFFET', 635, 635, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_102949/20220221030344_e88kK/jpg', '透過 KKday 預訂限時金門自由行優惠，機加酒三天兩夜方案超值優惠的價格。台北/台中/高雄 皆可出發\n自行規劃行程，暢遊台灣富含文化背景的離島金門，觀賞具歷史價值的建築以及深入了解金門抗戰歷史，沿路欣賞秋日金門高粱田。更可以加購金湖特色 Buffet 以及金門名店信源海產店，帶你品嚐最道地的高粱嗆蟹，一嚐金門特色美味！', '2022-03-27 15:13:50'),
(36, '金門｜烈嶼文化深度一日遊｜百年風獅爺＆沙溪堡＆紅土溝等可選半日遊 (水頭碼頭出發)', 600, 600, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_22147/20190314031759_a2WbE/jpg', '立即訂購 KKday 烈嶼(小金門)半日遊/ 一日遊方案，在專業領隊帶領下，導覽群島的歷史與自然文化，包含戰爭前線的陽山毋忘再莒、湖井頭戰史館、紅土溝據點等，再帶你找尋百年風獅爺，探索烈嶼文化館典藏的資產，感受這座充滿各式風情的島嶼！', '2022-03-27 15:13:50'),
(37, '金門手作 DIY｜陽翟老街｜金門風獅爺療癒盆栽手作課程＆金門特色絹印帆布袋', 200, 200, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_103617/20200922042119_uWQKu/jpg', '位於金門旅遊必去陽翟老街上，在復古風格的店內，由金門在地特色建築為主軸，帶您體驗各種不同類型手作體驗帶來的樂趣，搭配綠色多肉植物自行製作充滿療癒的小物。這裡更有金門特色絹印帆布袋，水獺、鱟、仙人掌、金門地圖多種金門在地特色圖片供您選擇，最適合親子大小一同來體驗手作的樂趣', '2022-03-27 15:13:50'),
(38, '【限時八折優惠】金門租車｜不挑款五人座車＆T6 九人座車｜金門機場碼頭取件', 1450, 1450, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_102651/20211012083456_6TSPb/png', '在 KKgift 租車，可於金門機場或是水頭碼頭取車，車輛定期檢修維護狀態良好。來到這個充滿戰事與古城氣息的金門您絕對要到神祕特別的翟山坑道以及清金門鎮總兵署、莒光樓、山后民俗文化村、太武山、擎天廳等景點走訪，感受在地文化特色與生活的美好，自行租車玩金門輕鬆自在又便利，開心自駕暢遊各大金門必去景點。', '2022-03-27 15:13:50'),
(39, '【2022藍眼淚季節】限時八折｜金門包車一日遊｜自選景點私人包車 8 小時', 5000, 4000, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101418/20211012083709_BBPw0/png', '現在訂購 KKday 金門私人包車服務，專業司機服務與空調專車，帶您金門本島熱門景點走透透。私人包車讓您更彈性的安排路線，提前在 KKday 預訂私人包車服務，輕鬆展開金門一日遊。', '2022-03-27 15:13:50'),
(40, '台灣金門汽車租借 | 自駕便利暢遊金門 | 金門租汽車', 1500, 1500, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101903/20200728014938_xHhJn/jpg', '現在訂購金門汽車租借，由金豐租車提供汽車租借服務，讓您自駕便利暢遊金門，駕駛舒適空調汽車，環遊金門這個島嶼，不受大眾交通工具限制，方便又輕鬆。金門擁有有著許多的自然景觀與豐富歷史景點，古厝聚落、歷史古蹟，當然更少不了的是當地特色美食。現在就訂，自由行當地交通免煩惱。', '2022-03-27 15:13:50'),
(51, '【限時早鳥優惠】台東石雨傘 | 混水摸魚基地 | 獨木舟 & 跳水 & 潮間帶生態探索 & 火山泥', 1500, 1300, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101759/20200727033652_N9enE/jpg', '現在預訂台東石雨傘水上活動體驗獨木舟、跳水、探索潮間帶生態及天然火山泥，跟著三立旅遊實境節目 - 「上山下海過一夜」一起滑獨木舟欣賞三仙台、到石雨傘探索火山泥秘境！在專業教練帶領下從海上欣賞東海岸自然之美，滑著輕巧的獨木舟在還上追逐日出、夕陽，體驗跳水的刺激、認識潮間帶生態的奧秘，還有最天然的火山泥讓你玩樂同時護膚，在 KKday 預定即可一次體驗 4 種豐富水上活動！', '2022-03-27 15:14:44'),
(52, '台東露營｜海邊舟舟曉晴星空露營地｜免搭帳星空露營', 3500, 3500, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_119330/20210507101338_NymzZ/jpg', '即刻於 KKday 下訂曉晴星空露營地的免搭帳星空露營，欣賞太平洋的日出破曉，感受夜晚月光海的浪漫，與大自然零距離接觸，享受無空汙的清新空氣，感受沒有光害的東海岸，暢通身心的循環，一起在台東踏入自然。', '2022-03-27 15:14:44'),
(53, '台東知本老爺酒店｜船歌餐廳午餐＋泡湯｜須自行電話訂位', 563, 450, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_23638/20201030043907_e27eK/jpg', '五星級台東知本老爺酒位於台東知本溫泉區內，擁有青翠杉林環繞，享受南洋風情的美味佳餚與室內外的溫泉 SPA 的完美饗宴，體驗知本老爺貼心真誠的優質服務。透過 KKday 線上購買泡湯券與餐券，並在在現場用手機出示電子憑證，便可以優惠價格舒服泡湯。', '2022-03-27 15:14:44'),
(54, '台東租機車｜台東旅遊通（台東火車站取車）', 350, 350, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_38824/20200325044052_zveSi/jpg', 'KKgift 提供優惠的租車方案有多種車型可供選擇，台東火車站旁取車，快速又方便！讓您騎機車穿越台東市區大街小巷，台東森林公園、伯朗大道感受一覽無遺的稻田景緻及自然田園風光。', '2022-03-27 15:14:44'),
(55, '【野餐召集令】專屬優惠85折起｜台東初鹿牧場半日體驗｜門票＆動物互動體驗', 340, 300, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_114427/20201218061825_t8qQd/jpg', '立即訂購，初鹿牧場半日體驗行程，位在台東縱谷裡的高海拔台地上的初鹿牧場，是台灣最大的坡地牧場。牧場內有放牧區、可愛動物園區、森林浴...等等區域，在大片草地盡情享受縱谷美景，並且體驗滑草，以及與乳牛等等動物近距離互動。現在就在KKday下訂，共度好時光！', '2022-03-27 15:14:44'),
(56, '【季節限定】台東野溪溫泉｜栗松野溪溫泉秘境探索', 1800, 1800, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_105727/20210407071718_4hS9P/jpg', '立即下訂 KKday 栗松野溪溫泉秘境探索一日遊，由台東在地部落青年專業嚮導，帶領您深入走訪深藏在山中的五彩溫泉秘境，聆聽深山叢林的聲音，午餐就地食用特色原住民風味餐，並浸潤在天然瀑布溫泉中，讓您身處世外桃源，在寒冬中感受大自然溫柔的懷抱。', '2022-03-27 15:14:44'),
(57, '【買一送一】台灣台東｜知本國家森林遊樂區門票｜平假日均可使用', 80, 80, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_100565/20200529063153_CNViO/jpg', '有一片彷彿熱帶雨林般的魔幻森林，巨大鳳蝶飛舞於白榕之間，深藏台東著名知本溫泉的盡頭，它就是「知本國家森林遊樂區」。到知本泡湯之餘，千萬別錯過來這裡享受熱帶森林生態之旅。', '2022-03-27 15:14:44'),
(58, '台東｜知本金聯世紀酒店住宿｜一泊二食｜來趣泡湯・贈送腳踏車 3 小時', 5300, 5300, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_100677/20201109022036_8NF0p/jpg', '現在預訂知本金聯世紀酒店住宿，輕鬆搞定台東住宿！台東知本金聯世紀酒店 (Century Hotel) 位於台東卑南鄉龍泉路，附近就是知本國家森林公園，四周環境優美，自然植被完整，空氣清新自然。酒店出自名設計師吳宗岳之手，簡潔的設計，蘊藏著現代極簡的建築巧思，建築物本身就是一個景點。', '2022-03-27 15:14:44'),
(59, '台東知本老爺酒店｜那魯灣餐廳晚餐・泡湯｜須自行電話訂位', 783, 450, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_23631/20190502083125_VZw5k/jpg', '台東知本老爺酒店臨近知本森林遊樂園區，擁有各式室內外溫泉浴場。舒適泡湯後可到飯店內「那魯灣餐廳」，寬敞明亮的用餐空間，供應中、西、日式等各國料理百匯，豐富的菜色提供您多重的選擇，各式的特色佳餚完美呈現，讓您在台東留下最難忘的美食經驗。', '2022-03-27 15:14:44'),
(60, '台東租機車｜阿亮機車出租｜台東火車站取車', 400, 400, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_104385/20210924091823_cZZxI/jpg', '現在訂購台東機車租借，台東火車站步行約 3 分鐘取車，享受在台東騎機車的悠閒感受，騎乘機車深入台東的風光明媚，不受大眾交通工具限制，輕鬆又便利，享受台東輕旅行。', '2022-03-27 15:14:44'),
(61, '【獨家下殺 / 限定船次 75 折優惠】台灣綠島船票 | 台東富岡漁港往返綠島交通-離島船票', 1200, 1, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_115576/20210127031402_nhKeA/png', '立即線上訂購綠島船票，從台東富岡漁港出發往返綠島，享受沿途的海景風光。搭乘綠島之星約1小時可抵達綠島，網路下訂現場輕鬆取票！讓KKday最方便、最快速、最省時為你解決離島交通。', '2022-04-24 12:32:09'),
(62, '【買一送一】台灣台東｜知本國家森林遊樂區門票｜平假日均可使用', 80, 80, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_100565/20200529063153_CNViO/jpg', '有一片彷彿熱帶雨林般的魔幻森林，巨大鳳蝶飛舞於白榕之間，深藏台東著名知本溫泉的盡頭，它就是「知本國家森林遊樂區」。到知本泡湯之餘，千萬別錯過來這裡享受熱帶森林生態之旅。', '2022-04-24 12:32:09'),
(63, '台東租機車｜阿亮機車出租｜台東火車站取車', 400, 400, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_104385/20210924091823_cZZxI/jpg', '現在訂購台東機車租借，台東火車站步行約 3 分鐘取車，享受在台東騎機車的悠閒感受，騎乘機車深入台東的風光明媚，不受大眾交通工具限制，輕鬆又便利，享受台東輕旅行。', '2022-04-24 12:32:09'),
(64, '台東都蘭 SUP 立槳 | SUP DAILY 都蘭東海岸巡航', 2500, 2500, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_39475/20200413015230_Y7X5C/jpg', '立即預訂SUP DAILY 台東立槳基地，輕鬆前往都蘭東海岸體驗SUP立槳！走進都蘭聖山大自然環抱，選擇日出場次跟著專業教練，划著SUP感受日出晨曦變幻多端的美麗', '2022-04-24 12:32:09'),
(65, '台東露營｜海邊舟舟曉晴星空露營地｜免搭帳星空露營', 1680, 1680, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_119330/20210507101338_NymzZ/jpg', '即刻於 KKday 下訂曉晴星空露營地的免搭帳星空露營，欣賞太平洋的日出破曉，感受夜晚月光海的浪漫，與大自然零距離接觸，享受無空汙的清新空氣，感受沒有光害的東海岸，暢通身心的循環，一起在台東踏入自然。', '2022-04-24 12:32:09'),
(66, '【台東包車自由行】台東 8 小時包車一日接駁', 4111, 4111, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_10304/20161109091738_WDpsj/jpeg', '台東幅員廣大，如果只有一天的時間，想要去縱谷線鹿野高台、伯朗大道、天堂路等地，也想去海岸線的三仙台、小野柳的話，交通時間就會佔掉寶貴的旅遊時間，如果你選擇台東8小時包車，景點任你選，一天滿足你所有想去的景點！', '2022-04-24 12:32:09'),
(67, '台東知本老爺酒店｜那魯灣餐廳晚餐・泡湯｜須自行電話訂位', 783, 450, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_23631/20190502083125_VZw5k/jpg', '台東知本老爺酒店臨近知本森林遊樂園區，擁有各式室內外溫泉浴場。舒適泡湯後可到飯店內「那魯灣餐廳」，寬敞明亮的用餐空間，供應中、西、日式等各國料理百匯，豐富的菜色提供您多重的選擇，各式的特色佳餚完美呈現，讓您在台東留下最難忘的美食經驗。', '2022-04-24 12:32:09'),
(68, '【振興 45 折】知本溫泉｜台東知本老爺酒店住宿券｜須自行電話訂房', 11220, 5500, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_24917/20201109024651_BMmnP/jpg', '現在下訂知本老爺酒店住宿，立享振興價 45 折優惠！青山環繞的幽靜環境，備有室內外溫泉浴場、健身房與兒童遊戲等完善的設施，是你度假的最佳首選！', '2022-04-24 12:32:09'),
(69, '台東一日遊 | 三仙台＆比西里岸＆伽路蘭＆富山護魚區 | 台東市區出發', 1888, 1888, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_39082/20200402064319_xJ5ja/jpg', '即刻在 KKday 訂購台東一日遊，專車帶你走訪東海岸台  11  線熱門打卡景點。兩人成行即可成行，伽路蘭、三仙台、阿美族民俗村音樂表演、富山護漁區、比西里岸部落、新東糖廠文化園區等豐富景點。提供台東市區民宿、台東火車站或台東機場的多點接駁，現在就下訂 KKday 訂購台東東海岸一日遊。', '2022-04-24 12:32:09'),
(70, '【限時早鳥優惠】台東石雨傘 | 混水摸魚基地 | 獨木舟 & 跳水 & 潮間帶生態探索 & 火山泥', 1500, 1300, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_101759/20200727033652_N9enE/jpg', '現在預訂台東石雨傘水上活動體驗獨木舟、跳水、探索潮間帶生態及天然火山泥，跟著三立旅遊實境節目 - 「上山下海過一夜」一起滑獨木舟欣賞三仙台、到石雨傘探索火山泥秘境！在專業教練帶領下從海上欣賞東海岸自然之美，滑著輕巧的獨木舟在還上追逐日出、夕陽，體驗跳水的刺激、認識潮間帶生態的奧秘，還有最天然的火山泥讓你玩樂同時護膚，在 KKday 預定即可一次體驗 4 種豐富水上活動！', '2022-04-24 12:32:09'),
(71, '【買一送一】台灣宜蘭｜太平山國家森林遊樂區門票 ｜平假日均可使用', 150, 150, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_100467/20200526023453_uxMdW/png', '來到宜蘭太平山，可以觀賞櫻花、賞槭樹與欣賞森林自然之美，多種動植物生態以及美麗的自然景觀，像是健行環山步道，欣賞全台最大的高山翠峰湖，漫步於CNNCNN評比全球最美 28 條小路之一的見晴懷古步道，讓雲霧飄渺的美景環繞於眼前，最後還可以到鳩之澤溫泉，山明水秀的絕景洗滌一身疲憊，快來宜蘭踏踏青，體驗台北近郊這個森林秘境。', '2022-04-27 16:41:04'),
(72, '【限時75折】宜蘭龜山島登島半日遊｜登島・環島・賞鯨', 1200, 900, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_5297/20220328063623_v471Y/jpg', '現在預訂宜蘭賞鯨龜山島登島半日遊，4 小時內搭船賞鯨、環島、登島！龜山島登島由專業嚮導帶領，帶你從烏石港搭船輕鬆出發，登上太平洋上的神秘仙島—龜山島，一覽龜山島八景！另可選擇每日限量名額 401 高地攻頂挑戰，帶你登上台灣離島第二高山。', '2022-04-27 16:41:04'),
(73, '【復刻・傳藝九折優惠】台灣宜蘭｜國立傳統藝術中心｜門票、遊程體驗', 150, 135, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_24308/20220331033644_QYBCM/jpg', '疫情微解封之際，已抵擋不住出遊的渴望，宜蘭傳藝園區提供你安心安全的戶外場域空間，在 24 公頃的園區內盡情探索遊玩！現在購買立即使用宜蘭傳藝中心門票，不必排隊購票，持 QR Code 輕鬆入場！在 KKday 預訂比現場買還便宜，另有 DIY 體驗方案適合親子活動，一同探索台灣古早戲劇與民俗技藝。', '2022-04-27 16:41:04'),
(74, '兩人同行一人半價｜宜蘭太平山一日遊｜翠峰湖＆環山步道＆太平山國家森林遊樂區', 1600, 1099, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_34/20210111102319_TOLH2/jpg', '立即預訂宜蘭太平山國家森林遊樂區一日遊，自由選擇台北火車站、宜蘭火車站上下車！專業導覽帶你走訪翠峰湖、環山步道、見晴雲海，初次使用政府森林遊樂園振興方案立即省更多', '2022-04-27 16:41:04'),
(75, '【KKday線上獨家優惠】台灣宜蘭｜溪和水產觀光工廠門票｜普通票・優待票（即買即用）', 48, 48, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_127208/20220301034928_FWVOZ/jpg', '現在透過 KKday 預訂宜蘭溪和水產觀光工廠入場門票，輕鬆享受宜蘭自然生態之旅！一起到好吃又好玩的溪和觀光工廠品嚐新鮮美味的魚產品，了解水產小知識，給你充滿歡笑、收穫滿滿的美好假期！', '2022-04-27 16:41:04'),
(76, '台灣宜蘭｜水上活動推薦｜彩石沙灘－賊仔澳秘境 SUP 立槳體驗', 1800, 1600, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_25014/20190601022806_GcALg/jpg', '現在訂購宜蘭賊仔澳立槳 SUP 探索之旅，全台最受歡迎立槳體驗行程！宜蘭水行者俱樂部提供立槳 SUP 帶領玩家一同踏入浩瀚的太平洋，前往失落多年的海賊聚集地 「賊仔澳」，旅程中將會欣賞到台灣東海岸壯闊的山海景色、海蝕天險、礁岩生態以及全台獨一無二的彩石沙灘', '2022-04-27 16:41:04'),
(77, '【宜蘭東澳戶外活動】露境東岳 · ATV沙灘車體驗', 880, 880, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_24915/20190606032733_1FwZG/jpg', '我們口中的沙灘車，其實這種車其名為 All Terrain Vehicle，是一種全地形越野車。【露境東岳】已將它設計為一項安全且符合親子共乘的越野活動，全程將依循專業的帶隊教練指示，專業領隊帶領你騎乘 ATV 沙灘車，客製化行程導覽解說東澳美景。粉鳥林秘境沙灘、東岳湧泉、長達 3.5 公里叢林探險，行程豐富多元。', '2022-04-27 16:41:04'),
(78, '宜蘭｜綠舞日式主題園區｜門票・DIY＋飲料・浴衣/抹茶體驗任選', 300, 285, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_35648/20210427083959_KHO6q/jpg', '宜蘭綠舞座落於宜蘭五結，交界蘭陽平原，鄰近蘭陽溪、宜蘭河及冬山河，更可觀望龜山島海景，為全台唯一兼具景觀、人文藝術、生態與休閒遊憩的日式庭園渡假園區。透過 KKday 預訂浴衣與抹茶體驗，無論大人小孩不用到日本也能在這感受濃濃的日式風情', '2022-04-27 16:41:04'),
(79, '【獨家優惠82折】台灣兩天一夜｜宜蘭三富休閒農場住宿方案｜雙人 or 四人', 2000, 1650, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_122966/20210914091949_bifKW/jpg', '立即預訂台灣兩天一夜：宜蘭三富休閒農場住宿方案，緊鄰仁山植物園及新寮瀑布、占地14公頃，提供採清水模簡約設計建築之紫屋館 / 欒樹館（四人），以及2019年甫完工的森林館（雙人），更擁有得天獨厚的自然環境及豐富的生態景觀，在四季展現不同風情，獨享整座山頭！', '2022-04-27 16:41:04'),
(80, '宜蘭｜煙波花時間 宜蘭傳藝｜住宿加贈綠舞日式主題園區體驗套票', 4450, 4450, 'https://image.kkday.com/v2/image/get/w_600%2Cc_fit/s1.kkday.com/product_127336/20220304023833_A8Axw/jpg', '現在預訂煙波花時間 宜蘭傳藝住宿，輕鬆搞定宜蘭住宿！「煙波花時間 宜蘭傳藝」位於宜蘭縣五結鄉，住宿區就在宜蘭傳藝中心裡，引領旅人深入探索台灣文化，發掘藏在時間裡的傳統藝術軌跡。多元樣貌的台灣傳統藝術，在傳藝園區大放色彩，住宿區的閩南式建築，磨石子地、迴廊與池塘，閩南早期建築特色比比皆是。夜宿蘭陽藝城 漫遊古味巷陌，體驗動靜皆宜的人文旅宿。', '2022-04-27 16:41:04');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `cart_detailmodel`
--
ALTER TABLE `cart_detailmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_detailmodel_dorder_id_4a34f87f_fk_cart_ordersmodel_id` (`dorder_id`);

--
-- 資料表索引 `cart_ordersmodel`
--
ALTER TABLE `cart_ordersmodel`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `photos_photo`
--
ALTER TABLE `photos_photo`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_detailmodel`
--
ALTER TABLE `cart_detailmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_ordersmodel`
--
ALTER TABLE `cart_ordersmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `photos_photo`
--
ALTER TABLE `photos_photo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `travel`
--
ALTER TABLE `travel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `cart_detailmodel`
--
ALTER TABLE `cart_detailmodel`
  ADD CONSTRAINT `cart_detailmodel_dorder_id_4a34f87f_fk_cart_ordersmodel_id` FOREIGN KEY (`dorder_id`) REFERENCES `cart_ordersmodel` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
