-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 23, 2024 lúc 09:49 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slot` int NOT NULL DEFAULT '10',
  `price` int NOT NULL DEFAULT '0',
  `hot` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `decs` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idtype` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`id`, `name`, `code`, `time`, `slot`, `price`, `hot`, `image`, `decs`, `idtype`) VALUES
(1, 'Du Lịch Miền Bắc: Hà Nội - Ninh Bình - Hạ Long Tuyệt Tình Cốc - Bái Đính', 'DLMBHN1001', '2024-10-10 14:41:33', 10, 10900000, 1, 'https://benthanhtourist.com/uploads/images/ha-long/5c21a96c34c2d.jpg', 'Hành trình khám phá tuyệt vời các danh lam thắng cảnh nổi tiếng miền Bắc như Hà Nội, Ninh Bình, và Hạ Long. Chinh phục Tuyệt Tình Cốc và tham quan chùa Bái Đính linh thiêng.', 1),
(2, 'Du Lịch Hà Nội - Tuyệt Tình Cốc - Bái Đính - Tràng An Hạ Long - Yên Tử', 'DLHNTTC1002', '2024-10-16 14:44:38', 30, 12000000, 0, 'https://benthanhtourist.com/uploads/images/ninh-binh/new/du-lich-ninh-binh-3.jpg', 'Trải nghiệm không gian tĩnh lặng và cổ kính của Yên Tử, khám phá cảnh đẹp hùng vĩ của Tràng An và kỳ quan thế giới Vịnh Hạ Long.', 1),
(3, 'Du Lịch Nha Trang: Vin Wonders - Thiên Đường Biển Xanh', 'DLNTVB1006', '2024-10-24 14:45:44', 55, 40000000, 1, 'https://benthanhtourist.com/uploads/images/nha-trang/6171464fbb4db.jpg', 'Tham quan Vin Wonders và tận hưởng vẻ đẹp biển xanh của Nha Trang với các hoạt động giải trí đa dạng và không gian thiên nhiên tuyệt vời.', 2),
(4, 'Du Lịch Phan Thiết: Thanh Minh Tự - Bàu Trắng Làng Chài Xưa', 'DLPTTC1007', '2024-10-27 14:47:01', 10, 60000000, 1, 'https://benthanhtourist.com/uploads/images/phan-thiet/61724da549003.jpg', 'Khám phá Phan Thiết với những danh thắng nổi tiếng như Thanh Minh Tự, Bàu Trắng và trải nghiệm văn hóa làng chài xưa.', 2),
(5, 'Du Lịch Phú Quốc: Sunset Sanato - Safari - Grand World', 'PQ1024SUNSAFGR', '2025-08-22 14:47:54', 25, 45000000, 1, 'https://benthanhtourist.com/uploads/images/phu-quoc/sunset-sanato-resort/sunset-sanato-1.jpg', 'Khám phá thiên đường du lịch Phú Quốc, ngắm hoàng hôn tại Sunset Sanato và khám phá Safari, Grand World.', 3),
(6, 'Du Lịch Vườn Quốc Gia Nam Cát Tiên - KDL Suối Mơ', 'NCT1024SUMO', '2025-04-17 14:49:07', 36, 10000000, 0, 'https://benthanhtourist.com/uploads/images/dong-nai/nam-cat-tien-1.jpg', 'Trải nghiệm vẻ đẹp thiên nhiên hùng vĩ của Vườn Quốc Gia Nam Cát Tiên và thư giãn tại KDL Suối Mơ.', 3),
(7, 'Du Lịch Dubai: Dubai - Abu Dhabi - Global Village 5N4Đ', 'DB1024GV5N4D', '2024-10-25 14:49:58', 20, 99000000, 1, 'https://benthanhtourist.com/uploads/images/dubai/5c0df028e1058.jpg', 'Trải nghiệm sự xa hoa của Dubai và Abu Dhabi, tham quan Global Village trong chuyến đi 5 ngày 4 đêm.', 4),
(8, 'Du Lịch Hong Kong: Đỉnh Núi Thái Bình - Vịnh Nước Cạn - Đại Lộ Ngôi Sao', 'HK1024THBVNC', '2024-10-17 14:51:03', 25, 15000000, 0, 'https://benthanhtourist.com/uploads/images/hong-kong/5c17491446366.jpg', 'Tham quan những địa danh nổi tiếng tại Hong Kong: Đỉnh Thái Bình, Vịnh Nước Cạn, Đại Lộ Ngôi Sao.', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Du Lịch Miền Bắc'),
(2, 'Du Lịch Miền Trung'),
(3, 'Du Lịch Miền Nam'),
(4, 'Du Lịch Châu Á'),
(5, 'Du Lịch Châu Âu'),
(6, 'Du Lịch Châu Mỹ'),
(7, 'Du Lịch Châu Phi'),
(8, 'Du Lịch Tây Nguyên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `bod` date DEFAULT NULL,
  `gender` enum('nam','nu','khac','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `address`, `role`, `bod`, `gender`) VALUES
(1, 'Ameo', 'ameo@gmail.com', '82eeec044fdbedf4d0e4c42cb6b06c73', 'Trai Dat', 1, '2014-10-14', 'nam'),
(2, 'Tuyen', 'Tuyen@gmail.com', '82eeec044fdbedf4d0e4c42cb6b06c73', 'Sao Hoa', 0, '2014-10-05', 'nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_type` (`idtype`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `type`
--
ALTER TABLE `type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`idtype`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
