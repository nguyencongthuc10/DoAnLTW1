-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 09, 2018 lúc 09:40 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL COMMENT 'Ma hang',
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ten hang',
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HInh anh hang',
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1001, 'Apple', 'apple.jpg'),
(1002, 'Samsung', 'Samsung.jpg'),
(1003, 'Huawei', 'huawei.jpg'),
(1004, 'Nokia', 'Nokia.jpg'),
(1005, 'Oppo', 'oppo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ma san pham',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ten san pham',
  `price` int(11) NOT NULL COMMENT 'Gia san pham',
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hinh san pham',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mo ta san pham',
  `manu_ID` int(11) NOT NULL COMMENT 'Ma hang san xuat cua san pham',
  `type_ID` int(11) NOT NULL COMMENT 'Ma loai san pham',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(1, 'Iphone 5s', 2500000, 'iphone5.jpg', 'iPhone 5S là sản phẩm điện thoại Apple iPhone thông minh đầu tiên được trang bị chip xử lý 64 bit. Theo công bố của Apple, dòng chip Apple A7 sẽ giúp iPhone 5S mạnh gấp hai lần iPhone 5. Xa hơn nữa, iPhone 5S sẽ mạnh hơn iPhone đời đầu 40 lần về khả năng xử lý và 56 lần về khả năng đồ họa. Đây là sản phẩm với chip xử lý tiên tiến nhất của Apple tính đến thời điểm hiện tại.', 1001, 111),
(2, 'Iphone 6', 3000000, 'iphone6.jpg', 'IPhone 6 là một trong những smartphone được yêu thích nhất của Apple. Lắng nghe nhu cầu về thiết kế, khả năng lưu trữ và giá cả, iPhone 6 32GB được chính thức phân phối chính hãng tại Việt Nam hứa hẹn sẽ là một sản phẩm rất \"Hot\".', 1001, 111),
(3, 'Iphone 6 plus', 3500000, 'iphone6plus.jpg', 'Quá quen thuộc với màn hình khá nhỏ của các thiết bị iPhone cũ, iPhone 6 Plus là một thay đổi lớn về màn hình điện thoại khi đây là thiết bị đầu tiên của Apple có kích thước lên đến 5.5”. Điều mà bắt gặp ở các thế hệ iPhone trước như iPhone 5, iPhone 5S chỉ đạt kích thước màn hình tối đa là 4”. Về thiết kế, nếu như trong 4 thế hệ iPhone liên tiếp các thiết bị iPhone 4, iPhone 4S, iPhone 5, iPhone 5S sở hữu thiết kế vuông vức chắc chắn, bộ đôi iPhone 6 và iPhone 6 Plus cũng là thiết bị đầu tiên thay đổi thiết kế theo hướng bo cong, tạo cảm giác cầm nắm tốt cho người dùng.', 1001, 111),
(4, 'Iphone 6s', 4000000, 'iphone6s.jpg', 'Nhìn chung iPhone 6S 16GB Quốc Tế cũ là những chiếc điện thoại xách tay có khả năng hoạt động tốt và bền. Giá bán iPhone 6S 16GB Quốc Tế cũ rất phù hợp với nhiều đối tượng, vì vậy mua iPhone 6S 16GB là sự lựa chọn hợp lý.', 1001, 111),
(5, 'Iphone XS Max', 40000000, 'iphonexsmax.jpg', 'iPhone XS Max có màn hình 6,5 inch, kích thước lớn nhất từ trước đến nay trên một chiếc smartphone của “táo khuyết”. Tuy vậy, máy vẫn cho tổng thể gọn gàng', 1001, 111),
(6, 'Samsung Galaxy J8', 6290000, 'samsunggalaxyj8.jpg', 'Sau nhiều thông tin rò rỉ thì Samsung Galaxy J8 đã chính thức được ra mắt với nhiều trang bị cao cấp với màn hình tràn viền, camera kép xóa phông cùng một hiệu năng ổn định.', 1002, 111),
(7, 'Samsung Galaxy Note 8', 19990000, 'samsunggalaxynote8.jpg', 'Galaxy Note 8 là niềm hy vọng vực lại dòng Note danh tiếng của điện thoại Samsung với diện mạo nam tính, sang trọng. Máy trang bị camera kép xóa phông thời thượng, màn hình vô cực như trên S8 Plus, bút S Pen cùng nhiều tính năng mới và nhiều công nghệ được ưu ái.', 1002, 111),
(8, 'Samsung Galaxy Note 9', 22990000, 'samsunggalaxynote9.jpg', 'Mang lại sự cải tiến đặc biệt trong cây bút S-Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.', 1002, 111),
(9, 'Samsung Galaxy S9+', 23490000, 'samsunggalaxys9plus.jpg', 'Xứng đáng là một trong những smartphone siêu phẩm trên thế giới, Samsung Galaxy S9 Plus bản 64 GB sở hữu nhiều tính năng vượt trội mà khó có chiếc điện thoại nào sánh bằng.', 1002, 111),
(10, 'Samsung Galaxy A8 Star', 13990000, 'samsunggalaxya8star.jpg', 'Samsung Galaxy A8 Star là một biến thể mới của dòng A trong gia đình Samsung với sự nâng cấp vượt trội về camera cũng như thay đổi trong thiết kế.', 1002, 111),
(11, 'Huawei P20 Pro', 16990000, 'huaweip20pro.jpg', 'Thiết kế tai thỏ thời thượng, cấu hình khủng và đặc biệt nhất là bộ 3 camera là những gì mà người ta ấn tượng kể từ khi chiếc điện thoại Huawei P20 Pro ra mắt.', 1003, 111),
(12, 'Huawei Nova 3', 11900000, 'huaweinova3.jpg', 'Nếu như bạn là một người yêu thích thiết kế của siêu phẩm Huawei P20 Pro nhưng cần một mức giá dễ chịu hơn thì Huawei Nova 3 sẽ là một sự lựa chọn phải chăng dành cho bạn.\r\n', 1003, 111),
(13, 'Huawei Y7 Pro', 3990000, 'huaweiy7pro.jpg', 'Huawei Y7 Pro (2018) là sản phẩm tầm trung với đầy đủ những trang bị của một chiếc smartphone theo xu thế của năm 2018.', 1003, 111),
(14, 'Huawei Nova 3e', 5990000, 'huaweinova3e.jpg', 'Huawei Nova 3e là phiên bản kế nhiệm hoàn hảo của chiếc Nova 2i vốn đã đạt được nhiều thành công tại thị trường Việt Nam với màn hình tràn viền \"tai thỏ\" mới và nhiều tính năng cao cấp.', 1003, 111),
(15, 'Huawei Y3 2017', 1790000, 'huaweiy32017.jpg', 'Huawei Y3 2017 là thiết bị mới được Huawei cho ra mắt để thay thế cho chiếc Huawei Y3 đã ra mắt từ năm ngoái với một thiết kế mới mẻ cùng giá bán hấp dẫn.', 1003, 111),
(16, 'Nokia 7 plus', 8990000, 'nokia7plus.jpg', 'Nokia 7 Plus là chiếc smartphone đầu tiên đánh dấu bước đi đầu tiên của Nokia vào thế giới màn hình tỉ lệ 18:9.', 1004, 111),
(17, 'Nokia 6.1 Plus', 6590000, 'nokia61plus.jpg', 'Nokia 6.1 Plus (hoặc tên khác Nokia X6) đã khiến người dùng trở nên phấn khích khi lột xác hoàn toàn trong thiết kế đến từ chiếc tai thỏ phá cách cũng như hiệu năng được cải tiến vượt bậc so với các đối thủ của nó.', 1004, 111),
(18, 'Nokia 6.1', 5390000, 'nokia61.jpg', 'Sau nhiều rò rỉ thì cuối cùng chiếc Nokia 6.1 (Nokia 6 new) cũng đã chính thức ra mắt với một thiết kế sang trọng nhưng vẫn có gì đó đáng tiếc cho một chiếc smartphone ra mắt vào năm 2018.', 1004, 111),
(19, 'Nokia 3.1', 3990000, 'nokia31.jpg', 'Nokia 3.1 là chiếc smartphone giá rẻ kế thừa sự thành công của mẫu Nokia 3 - chiếc smartphone bán chạy nhất của hãng trong năm ngoái.', 1004, 111),
(20, 'Nokia 8110 4G', 1680000, 'nokia88104g.jpg', 'Sẽ là những kí ức khó quên với những ai đã từng sở hữu những điện thoại \"vang danh một thời\" đến từ Nokia. Vì thế HMD đã mang đến người dùng một sự bất ngờ lớn khi hồi sinh điện thoại Nokia 8810 với tên gọi Nokia 8110 4G cùng nhiều tính năng mới.', 1004, 111),
(21, 'OPPO Find X', 20990000, 'oppofindx.jpg', 'OPPO Find X tạo nên một cú hích lớn trong làng smartphone hiện nay khi mang trong mình nhiều tính năng đột phá mà nổi bật nhất đến từ thiết kế sáng tạo và một hiệu năng đỉnh cao.', 1005, 111),
(22, 'OPPO F7', 8990000, 'oppof7.jpg', 'Tiếp nối sự thành công của OPPO F5 thì OPPO tiếp tục giới thiệu OPPO F7 128GB với mức giá tương đương nhưng mang trong mình thiết kế hoàn toàn mới cũng nhiều cải tiến đáng giá.', 1005, 111),
(23, 'OPPO F9 6GB', 8490000, 'oppof9.jpg', 'Là chiếc điện thoại OPPO được nâng cấp cấu hình, cụ thể là RAM lên tới 6 GB, OPPO F9 6GB còn trang bị nhiều tính năng đột phá như sở hữu công nghệ sạc VOOC mới nhất, mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.\r\n', 1005, 111),
(24, 'OPPO A3s', 4990000, 'oppoa3s.jpg', 'OPPO A3s 32GB là một chiếc smartphone mới của OPPO sở hữu giá rẻ hiếm hoi nhưng vẫn được trang bị màn hình tai thỏ và camera kép xu thế của năm 2018.', 1005, 111),
(25, 'OPPO A83', 3490000, 'oppoa83.jpg', 'OPPO A83 2018 (bản không tai nghe) là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.', 1005, 111),
(28, 'Loa thanh soundbar Samsung 2.1', 3290000, 'loathanhsamsung.jpg', 'Loa siêu trầm với âm bass mạnh mẽ. Kết hợp hoàn hảo với TV màn hình phẳng 43 inch. Trải nghiệm âm thanh vòng chân thật, sống động.', 1002, 113),
(29, 'Tai nghe Bluetooth AirPods Apple', 5000000, 'tainghebluetoothairpods.jpg', 'Tai nghe Bluetooth AirPods Apple MMEF2 Tối giản trong thiết kế, nhỏ gọn đẹp mắt', 1001, 114),
(30, 'Máy tính bảng Huawei MediaPad M3', 5990000, 'huaweimediapadm3.jpg', 'Huawei MediaPad M3 8.0 là mẫu máy tính bảng chủ lực của Huawei trong năm 2017 với điểm nhấn là cấu hình mạnh mẽ cùng hệ thống âm thanh được đầu tư kỹ lưỡng.', 1003, 115),
(26, 'Apple Macbook Pro', 44000000, 'macbookpro.jpg', 'Apple đã cho ra mắt phiên bản Macbook Pro Touch 2018 vẫn là vẻ ngoài sang trọng, thiết kế Unibody quen thuộc của dòng máy tính xách tay cao cấp đến từ thương hiệu \"Táo Khuyết\". Sự khác biệt của Macbook Pro Touch so với phiên bản cũ phải nói đến sự nâng cấp cũng như có nhiều cải tiến mới mẻ đến từ bên trong với một cấu hình mạnh mẽ hơn.laptop', 1001, 112);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(111, 'Dien thoai', 'dienthoai.jpg'),
(112, 'Laptop', 'laptop.jpg'),
(113, 'Loa', 'loa.jpg'),
(114, 'Tai nghe', 'tainghe.jpg'),
(115, 'Tablet', 'tablet.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
