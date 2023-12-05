-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2023 lúc 09:08 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phonemanagement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`attribute_id`, `attribute_name`, `created_at`, `updated_at`, `row_delete`) VALUES
(1, 'Color', '2023-12-03 23:27:04', '2023-12-03 23:27:04', 0),
(2, 'Version', '2023-12-03 23:27:10', '2023-12-03 23:27:10', 0),
(3, 'Color', '2023-12-03 23:35:02', '2023-12-03 23:35:02', 0),
(4, 'Version', '2023-12-03 23:35:05', '2023-12-03 23:35:05', 0),
(5, 'Color', '2023-12-05 00:24:43', '2023-12-05 00:24:43', 0),
(6, 'Version', '2023-12-05 00:24:46', '2023-12-05 00:24:46', 0),
(7, 'Color', '2023-12-05 00:27:55', '2023-12-05 00:27:55', 0),
(8, 'Version', '2023-12-05 00:27:58', '2023-12-05 00:27:58', 0),
(9, 'Color', '2023-12-05 00:29:48', '2023-12-05 00:29:48', 0),
(11, 'Color', '2023-12-05 00:33:08', '2023-12-05 00:33:08', 0),
(12, 'Color', '2023-12-05 00:34:00', '2023-12-05 00:34:00', 0),
(13, 'Version', '2023-12-05 00:34:03', '2023-12-05 00:34:03', 0),
(14, 'Color', '2023-12-05 00:35:40', '2023-12-05 00:35:40', 0),
(15, 'Color', '2023-12-05 00:37:01', '2023-12-05 00:37:01', 0),
(16, 'Color', '2023-12-05 00:38:05', '2023-12-05 00:38:05', 0),
(17, 'Version', '2023-12-05 00:38:08', '2023-12-05 00:38:08', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_value`
--

CREATE TABLE `attribute_value` (
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_name` varchar(255) NOT NULL,
  `price_in` decimal(10,0) NOT NULL,
  `price_out` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_value`
--

INSERT INTO `attribute_value` (`attribute_value_id`, `attribute_id`, `attribute_value_name`, `price_in`, `price_out`, `created_at`, `updated_at`, `row_delete`) VALUES
(1, 1, 'Gold', 25990, 28990, '2023-12-03 23:30:53', '2023-12-03 23:30:53', 0),
(2, 1, 'Deep Purple', 25990, 28990, '2023-12-03 23:33:16', '2023-12-03 23:33:16', 0),
(3, 1, 'Silver', 25990, 28990, '2023-12-03 23:33:38', '2023-12-03 23:33:38', 0),
(4, 1, 'Space Black', 25990, 28990, '2023-12-03 23:34:00', '2023-12-03 23:34:00', 0),
(5, 2, '128GB', 24190, 26190, '2023-12-03 23:34:29', '2023-12-03 23:34:29', 0),
(6, 2, '256GB', 25990, 28990, '2023-12-03 23:34:44', '2023-12-03 23:34:44', 0),
(7, 3, 'Titan Xanh', 36990, 38990, '2023-12-03 23:35:32', '2023-12-03 23:35:32', 0),
(8, 3, 'Titan Đen', 36990, 38990, '2023-12-03 23:36:02', '2023-12-03 23:36:02', 0),
(9, 3, 'Titan Tự Nhiên', 36990, 38990, '2023-12-03 23:36:19', '2023-12-03 23:36:19', 0),
(10, 3, 'Titan Trắng', 36990, 38990, '2023-12-03 23:36:30', '2023-12-03 23:36:30', 0),
(11, 4, '256GB', 30850, 32850, '2023-12-03 23:36:55', '2023-12-03 23:36:55', 0),
(12, 3, '512GB', 36990, 38990, '2023-12-03 23:37:17', '2023-12-03 23:56:51', 1),
(13, 4, '1TB', 42490, 44490, '2023-12-03 23:37:34', '2023-12-03 23:37:34', 0),
(14, 4, '512GB', 36990, 38990, '2023-12-03 23:57:20', '2023-12-03 23:57:20', 0),
(15, 5, 'Xanh', 37640, 39640, '2023-12-05 00:25:45', '2023-12-05 00:25:45', 0),
(16, 5, 'Đen', 37640, 39640, '2023-12-05 00:25:56', '2023-12-05 00:25:56', 0),
(17, 5, 'Kem', 37640, 39640, '2023-12-05 00:26:05', '2023-12-05 00:26:05', 0),
(18, 6, '12GB/256GB', 33760, 35760, '2023-12-05 00:26:44', '2023-12-05 00:26:44', 0),
(19, 6, '12GB/512GB', 37640, 39640, '2023-12-05 00:27:13', '2023-12-05 00:27:13', 0),
(20, 7, 'Đen', 23030, 25030, '2023-12-05 00:28:12', '2023-12-05 00:28:12', 0),
(21, 7, 'Xanh', 23030, 25030, '2023-12-05 00:28:24', '2023-12-05 00:28:24', 0),
(22, 7, 'Kem', 23030, 25030, '2023-12-05 00:28:34', '2023-12-05 00:28:34', 0),
(23, 7, 'Tím', 23030, 25030, '2023-12-05 00:28:44', '2023-12-05 00:28:44', 0),
(24, 8, '256GB', 23030, 25030, '2023-12-05 00:29:01', '2023-12-05 00:29:01', 0),
(25, 8, '512GB', 25819, 27819, '2023-12-05 00:29:16', '2023-12-05 00:29:16', 0),
(26, 8, '1TB', 42990, 44990, '2023-12-05 00:29:34', '2023-12-05 00:29:34', 0),
(27, 9, 'Xanh', 9490, 11490, '2023-12-05 00:31:13', '2023-12-05 00:31:13', 0),
(29, 9, 'Trắng', 9490, 11490, '2023-12-05 00:32:23', '2023-12-05 00:32:23', 0),
(30, 11, 'Vàng', 5490, 6490, '2023-12-05 00:33:24', '2023-12-05 00:33:24', 0),
(31, 11, 'Đen', 5490, 6490, '2023-12-05 00:33:32', '2023-12-05 00:33:32', 0),
(32, 12, 'Đen', 21990, 23990, '2023-12-05 00:34:21', '2023-12-05 00:34:21', 0),
(33, 12, 'Trắng', 21990, 23990, '2023-12-05 00:34:30', '2023-12-05 00:34:30', 0),
(34, 13, 'Xiaomi 13', 17990, 18990, '2023-12-05 00:34:50', '2023-12-05 00:34:50', 0),
(35, 12, 'Xiaomi 13 Lite', 7940, 9940, '2023-12-05 00:35:11', '2023-12-05 00:35:11', 0),
(36, 14, 'Xanh Dương', 10990, 11990, '2023-12-05 00:36:00', '2023-12-05 00:36:00', 0),
(37, 14, 'Xanh Lá', 10990, 11990, '2023-12-05 00:36:11', '2023-12-05 00:36:11', 0),
(38, 14, 'Đen', 10990, 11990, '2023-12-05 00:36:18', '2023-12-05 00:36:18', 0),
(39, 15, 'Đen', 42990, 44990, '2023-12-05 00:37:11', '2023-12-05 00:37:11', 0),
(40, 15, 'Vàng', 42990, 44990, '2023-12-05 00:37:24', '2023-12-05 00:37:24', 0),
(41, 16, 'Xanh Dươn', 8490, 9490, '2023-12-05 00:38:22', '2023-12-05 00:38:22', 0),
(42, 17, '128GB', 8490, 9490, '2023-12-05 00:38:41', '2023-12-05 00:38:41', 0),
(43, 17, '256GB', 9490, 10490, '2023-12-05 00:38:55', '2023-12-05 00:38:55', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `parentID` bigint(20) UNSIGNED DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `parentID`, `row_delete`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'Sản phẩm từ thương hiệu Apple', NULL, 0, NULL, NULL),
(2, 'Samsung', 'Sản phẩm từ thương hiệu Samsung', NULL, 0, NULL, NULL),
(3, 'Realme', 'Sản phẩm từ thương hiệu Realme', NULL, 0, NULL, NULL),
(4, 'Xiaomi', 'Sản phẩm từ thương hiệu Xiaomi', NULL, 0, NULL, NULL),
(5, 'Oppo', 'Sản phẩm từ thương hiệu Oppo', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `address`, `img`, `password`, `row_delete`, `created_at`, `updated_at`) VALUES
(1, 'Le', 'Nam', 'Anh', 'customer@gmail.com', '0969325914', 'HaNoi', 'Storage/8gyBwhKKTdPFzWAdfFv6o1sJT4AuUpWyGnJUUpcQ.jpg', '$2y$10$fmsWT.2rneDpoQ9pacjkHeK/5ZpKF.9t.tGaIwutt9xvKGpyrFzfK', 0, '2023-12-03 23:01:36', '2023-12-03 23:01:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_24_064554_create_customer', 1),
(3, '2023_10_24_064735_create_user_table', 1),
(4, '2023_10_24_065003_create_role_table', 1),
(5, '2023_10_24_065051_create_user_role_table', 1),
(6, '2023_10_24_065206_create_category_table', 1),
(7, '2023_10_24_065320_create_product_table', 1),
(8, '2023_10_24_065404_create_product_category_table', 1),
(9, '2023_10_24_065554_create_product_data_table', 1),
(10, '2023_10_24_065641_create_attribute_table', 1),
(11, '2023_10_24_065848_create_attribute_value_table', 1),
(12, '2023_10_24_070013_create_product_attribute_table', 1),
(13, '2023_10_24_070332_create_order_table', 1),
(14, '2023_10_24_070508_create_order_detail_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `order_total` decimal(10,0) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `description`, `order_total`, `status`, `created_at`, `updated_at`, `row_delete`) VALUES
(4, 1, 'Thanh toán bằng VNpay', 728400, 'Giao dịch thành công', '2023-12-04 22:31:11', '2023-12-04 22:59:45', 1),
(5, 1, 'Thanh toán bằng tiền mặt', 551800, 'Giao dịch thành công', '2023-12-04 23:00:20', '2023-12-04 23:01:18', 0),
(6, 1, 'Thanh toán bằng VNpay', 551800, 'Giao dịch thành công', '2023-12-04 23:15:26', '2023-12-04 23:15:26', 1),
(7, 1, 'Thanh toán bằng tiền mặt', 579800, 'Giao dịch thành công', '2023-12-04 23:19:59', '2023-12-04 23:22:49', 0),
(8, 1, 'Thanh toán bằng tiền mặt', 229800, 'Giao dịch thành công', '2023-12-05 00:54:54', '2023-12-05 00:55:19', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `description`, `created_at`, `updated_at`, `row_delete`) VALUES
(6, 4, 2, 2, 35920.00, 'Titan Xanh, 256GB', '2023-12-04 22:31:11', '2023-12-04 22:31:11', 1),
(7, 5, 1, 2, 27590.00, 'Gold, 128GB', '2023-12-04 23:00:20', '2023-12-04 23:00:20', 0),
(8, 6, 1, 2, 27590.00, 'Gold, 128GB', '2023-12-04 23:15:26', '2023-12-04 23:15:26', 1),
(9, 7, 1, 2, 28990.00, 'Gold, 256GB', '2023-12-04 23:19:59', '2023-12-04 23:19:59', 1),
(10, 8, 5, 2, 11490.00, 'Xanh, ', '2023-12-05 00:54:54', '2023-12-05 00:54:54', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `hot` tinyint(4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `hot`, `quantity`, `description`, `row_delete`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 14 promax', 0, 46, 'iPhone 14 Pro Max VN/A là dòng sản phẩm cao cấp nhất nằm trong thế hệ iPhone 14 Series mới vừa được ra mắt cùng với nhiều nâng cấp về ngoại hình và tính năng, hứa hẹn sẽ là dòng sản phẩm đột phá trong vài năm trở lại đây của Apple.\r\n\r\nPhá vỡ thiết kế notch cổ điển\r\nChiếc iPhone 14 Pro Max VN/A sở hữu màn hình Super Retina XDR mới với ProMotion có kích thước 6.7 inch. Tần số quét màn hình sẽ giảm xuống 1 Hz để tiết kiệm pin, trong khi hình nền được làm mờ. Màn hình tiên tiến cũng mang lại mức độ sáng HDR cao nhất tương tự như Pro Display XDR và ​​độ sáng đỉnh ngoài trời cao nhất trong điện thoại thông minh: lên đến 2000 nits, sáng gấp đôi so với người tiền nhiệm.\r\n\r\nMàn hình trước làm từ chất liệu Ceramic Shield - cứng hơn bất kỳ loại kính điện thoại thông minh nào - và được bảo vệ khỏi các sự cố tràn và tai nạn thông thường với khả năng chống nước và bụi.\r\n\r\nMàn hình Dynamic Island mới trên dòng iPhone 14 Pro được coi là ý tưởng thiết kế sáng tạo, đem đến trải nghiệm độc đáo. Apple đã thay thế phần notch trên dòng sản phẩm ‌iPhone 14 Pro‌ bằng lỗ khuyết viên thuốc và đục lỗ. Một chi tiết mới quan trọng của việc thay thế notch xuất hiện trong tuần này là khi thiết bị được sử dụng, các lỗ hình viên thuốc và lỗ đục lỗ sẽ hợp nhất bằng kỹ thuật số thành hình chữ i dài hơn. Phần cắt này được Apple dùng để hiển thị thông tin như các thông báo về quyền riêng tư của iOS và cụm cảm biến cho FaceID\r\n\r\nNgoài ra, iPhone 14 Pro Max VN/A còn có tính năng Always On Display hay màn hình luôn bật, đây là một trong những tính năng khá thú vị trên các dòng điện thoại hiện nay. Tính năng này không chỉ giúp bạn nhận được thông báo từ các ứng dụng như đồng hồ, lịch, tin nhắn, cuộc gọi nhỡ, ứng dụng,... kể cả khi màn hình điện thoại đã tắt mà còn giúp điện thoại tiết kiệm pin đáng kể.\r\n\r\nNâng cấp đáng kể về camera\r\nMột trong những nâng cấp mà người dùng trông đợi nhất từ dòng iPhone 14 đó chính là camera. Sau nhiều năm camera dặm chân ở con số 12MP, độ phân giải camera chính của iPhone 14 Pro Max VN/A đã được nâng cấp lên thành 48MP cùng điểm ảnh 1,4µm. Sự nâng cấp này cho phép camera thu được nhiều ánh sáng hơn khi chụp ảnh trong điều kiện ánh sáng yếu.\r\n\r\niPhone 14 Pro Max VN/A có nâng cấp đáng kể về camera\r\n\r\nNgoài ra, điện thoại còn hỗ trợ quay video 8K (ở tốc độ lên đến 60 khung hình/giây), không chỉ đem lại hình ảnh sắc nét hơn (như tăng chất lượng trên video YouTube) mà còn cho phép các nhà làm phim cắt, ổn định và điều chỉnh lại cảnh quay sau khi nó được quay.\r\n\r\n●     Máy ảnh chính được nâng cấp lên thành 48MP cùng điểm ảnh 1,4µm, đi kèm pixel-binning (kết hợp pixel với nhau) cho phép camera thu được nhiều ánh sáng hơn và giảm nhiễu\r\n\r\n●     Máy ảnh 12MP Ultra Wide mới với điểm ảnh 1,4 µm pixel, mang lại hình ảnh sắc nét hơn với nhiều chi tiết hơn, cải thiện khả năng chụp ảnh macro vốn đã mạnh mẽ.\r\n\r\n●     Máy ảnh tele cải tiến có khả năng zoom quang học 3x.\r\n\r\n●     Một camera TrueDepth phía trước mới với khẩu độ ƒ / 1.9 cho phép chụp ảnh và quay video trong điều kiện ánh sáng yếu tốt hơn. Sử dụng lấy nét tự động lần đầu tiên, nó có thể lấy nét nhanh hơn nữa trong điều kiện ánh sáng yếu và chụp ảnh nhóm từ xa hơn.\r\n\r\n●     Đèn flash True Tone thích ứng mới đã được thiết kế lại hoàn toàn với một dãy chín đèn LED thay đổi kiểu dựa trên độ dài tiêu cự đã chọn.\r\n\r\n●     Hỗ trợ chụp ảnh tiên tiến như Chế độ ban đêm, Smart HDR 4, Chế độ chân dung với Ánh sáng chân dung, Chế độ ban đêm Ảnh chân dung, Kiểu chụp ảnh để cá nhân hóa giao diện của mọi bức ảnh và Apple ProRAW.\r\n\r\n●     Chế độ Action mới cho video trông cực kỳ mượt mà có thể giảm độ rung, cho ra những khung hình mượt mà sống động\r\n\r\n●     Chế độ Cinematic, hiện có sẵn ở 4K ở tốc độ 30 khung hình / giây và 4K ở tốc độ 24 khung hình / giây.\r\n\r\n●     Tính năng định dạng video chuyên nghiệp, bao gồm ProRes3 và Dolby Vision HDR đầu cuối.\r\n\r\nBộ vi xử lý A16 cực xịn\r\niPhone 14 Pro Max VN/A sử dụng bộ vi xử lý Apple A16 Bionic được xử lý trên tiến trình 4nm. Với bộ xử lý neural 16 nhân trên chip này, bên cạnh bộ xử lý màn hình hoàn toàn mới để hỗ trợ đẩy tần số quét xuống 1Hz, xử lý tính năng always-on và giúp Dynamic Island hoạt động mượt mà.Thiết bị có RAM 6GB sử dụng công nghệ LPDDR5 cải tiến về tốc độ truyền và điện năng tiêu thụ.\r\nTính năng điện thoại vệ tinh\r\nĐiểm độc đáo trên thế hệ iPhone 14 Series chính là điện thoại vệ tinh hỗ trợ người dùng trong việc liên lạc bằng cách kết nối với các trạm vệ tinh xoay quanh quỹ đạo mà không cần sóng của nhà mạng.\r\n\r\niPhone 14 Pro Max VN/A có dung lượng 4.323 mAh – thấp hơn một chút so với mức 4.352 mAh của 13 Pro Max. Ngoài ra, thiết bị được trang bị sạc nhanh với công suất 30W, cao hơn đáng kể so với mức sạc 20W cũ.\r\n\r\niPhone 14 Pro Max VN/A hiện là chiếc flagship có trọng lượng nặng nhất trên thị trường với khối lượng 255 gram, cao hơn 15 gram so với thế hệ trước. Người dùng có tùy chọn các phiên bản dung lượng gồm 128 GB, 256 GB, 512 GB và 1TB. Thiết bị sử dụng phần khung titan thay vì thép không gỉ, mang đến một chiếc iPhone mạnh mẽ hơn, nhẹ hơn và chống trầy tốt hơn, dù làm tăng khối lượng.\r\n\r\niPhone 14 Pro Max VN/A sẽ có các lựa chọn màu sắc: xám than chì (Graphite), bạc (Silver), vàng (Gold), tím (Purple), nhưng không có phiên bản màu xanh Sierra Blue như năm ngoái.', 0, '2023-12-03 23:10:38', '2023-12-03 23:10:38'),
(2, 'Iphone 15 Promax', 1, 30, 'iPhone 15 Pro Max màu sắc sang chảnh, iFans cháy túi\r\n\r\niPhone 15 Pro Max đem đến cho người dùng đa dạng sự lựa chọn với ba phiên bản bộ nhớ trong lần lượt là 256GB/512GB/1TB và bốn lựa chọn màu gồm Titan Tự Nhiên/Titan Trắng/Titan Xanh/Titan Đen. Ngoài việc sử dụng chất liệu Titan mới, những cải tiến về cấu hình được Apple cập nhật và trang bị hứa hẹn đem đến trải nghiệm người dùng nâng cao hơn.\r\n\r\niPhone 15 Pro Max Màu Titan Tự Nhiên\r\n\r\nThiết kế khung viền titan nhẹ hơn, bền hơn\r\n\r\nĐối với iPhone 15 Pro Max, Apple đã quyết định loại bỏ lớp khung thép không gỉ truyền thống và chuyển sang sử dụng titan giúp thiết bị nhẹ hơn khoảng 10% so với các phiên bản trước đó. Ngoài đem đến trải nghiệm cầm nắm thuận tiện hơn, chất liệu titan có tính chất chống ăn mòn và chịu được va đập tốt sẽ mang lại độ bền cao hơn cho iPhone 15 Pro Max.\r\n\r\nWi-Fi 6E tốc độ kết nối mạng không dây nhanh gấp 2\r\n\r\niPhone 15 Pro Max có tốc độ kết nối mạng nhanh gấp đôi với cải tiến Wi-Fi 6E hoàn toàn mới, cung cấp kết nối ổn định và nhanh chóng, bạn hoàn toàn có thể tải xuống các tập tin nhanh như chớp. \r\n\r\n\r\niPhone 15 Pro Max Thiết kế\r\n\r\nKhả năng sửa chữa tiếp tục được nâng cấp trên iPhone 15 Pro Max trong việc sửa chữa màn hình. Apple tiếp tục triển khai việc sử dụng các linh kiện và mô-đun màn hình có thể được thay thế một cách dễ dàng hơn, mà không cần phải tháo rời nhiều phần khác nhau của thiết bị, giúp giảm thời gian và công sức cần thiết cho quá trình sửa chữa, đồng thời giảm nguy cơ gây hư hỏng hoặc tổn thất linh kiện khác.\r\n\r\nCamera được nâng cấp với ống kính tele độ phân giải lớn\r\n\r\nApple giữ nguyên cụm camera chính trên iPhone 15 Pro Max và trang bị thêm ống kính tele và ống kính siêu rộng, giúp người dùng có được những bức ảnh chất lượng cao hơn với đầy đủ các chi tiết và màu sắc trung thực.\r\n\r\niPhone 15 Pro Max Màu Sắc\r\n\r\nNgoài ra, Apple cũng đang phát triển camera Telephoto với ống kính thiết kế tetraprism mới cho iPhone 15 Pro Max. Ống kính này giúp tăng độ khả năng zoom quang học từ 3x lên 5x ở tiêu cự 120mm mà không làm giảm chất lượng ảnh với cảm biến lớn hơn 25% so với 14 Pro Max cùng khẩu độ f/2.8. Những cải tiến camera này hỗ trợ người dùng thực hiện chụp ảnh từ xa với độ chi tiết cao và khả năng ghi lại các chi tiết nhỏ hiệu quả hơn.\r\n\r\niPhone 15 Pro Max trang bị chip A17 Pro nâng cao hiệu suất và tiết kiệm pin\r\n\r\nChip Apple A17 Pro được trang bị cho iPhone 15 Pro Max là con chip được sản xuất trên tiến trình 3 nm mới nhất của TSMC. A17 Pro có khoảng 19 tỷ bóng bán dẫn gấp 1,5 lần bóng bán dẫn trong A16 Bionic.\r\n\r\niPhone 15 Pro Max Tin Nổi Bật\r\n\r\nVới tiến trình mới áp dụng trên A17 Pro, con chip này sẽ giúp iPhone 15 Pro Max cải thiện hiệu suất GPU lên đến 20% bên cạnh việc công nghệ dò tia dựa trên phần mềm nhanh hơn 4 lần so với con chip tiền nhiệm. Khi hiệu suất và mức tiêu thụ năng lượng được cải thiện, tuổi thị viên pin của  iPhone 15 Pro Max được đánh giá là sẽ bền bỉ hơn so với dòng sản phẩm cũ.\r\n\r\nThời lượng pin Pro\r\n\r\nDù được trang bị rất nhiều tính năng mới tiên tiến để phục vụ nhu cầu sử dụng cao của người dùng, iPhone 15 Pro vẫn mang đến cho chúng ta thời lượng pin dùng thoải mái cả ngày dài đầy ấn tượng. Dung lượng pin trên iPhone 15 Pro Max cho bạn thời gian xem video liên tục lên đến 29 giờ, dài hơn 9 giờ so với dung lượng pin trên iPhone 12 Pro Max. Bên cạnh đó, máy được hỗ trợ USB 3.0 đem đến cho người dùng trải nghiệm truyền và xử lý dữ liệu tốc độ nhanh gấp 20 lần.', 0, '2023-12-03 23:12:10', '2023-12-03 23:12:10'),
(3, 'Samsung Galaxy Z Fold5', 1, 20, 'Màn hình Samsung Galaxy Z Fold5 - Thiết kế Flex, không nếp gấp\r\nSo với đời máy trước, Samsung Galaxy Z Fold5 sẽ có bước tiến mạnh mẽ khi sở hữu màn hình chính 7.6 inch, thiết kế tràn viền cũng đem đến cho người dùng cảm giác màn siêu rộng. Đặc biệt, điện thoại được trang bị tấm nền Dynamic AMOLED 2X với độ phân giải 2176 x 1812 pixels và tần số quét 120Hz. Điều này góp phần nâng tầm chất lượng hiển thị, mang lại hình ảnh và màu sắc chân thực, chi tiết với độ sắc nét hoàn hảo nhất.\r\n\r\n\r\nMàn hình Samsung Galaxy Z Fold5\r\n\r\nSamsung đã đưa vào bản lề của chiếc Galaxy Z Fold5 với thiết kế Flex dạng rãnh kép, từ đó máy sẽ có thể gập lại mà không để lại khe hở, đồng thời giúp màn hình của Samsung Fold5 sẽ ít nhăn hơn 15% so với đời tiền nhiệm. Máy sở hữu những đường nét tinh xảo, chất lượng bản lề sẽ được tối ưu hóa sẽ khiến nếp gấp mờ hơn, màn hình hiển thị cũng mượt mà hơn. Ngoài ra, Samsung Z Fold5 còn được trang bị màn hình ngoài 6.2 inch với tấm nền Dynamic AMOLED 2X và độ phân giải 2316 x 904 pixels.\r\n\r\nBắt trọn khoảnh khắc cùng Samsung Galaxy Z Fold5 nhờ bộ 3 camera sắc nét\r\nSamsung Galaxy Z Fold5 sẽ được trang bị bộ 3 camera với cảm biến ISOCELL GN3, kèm theo các tính năng tiên tiến như Dual Pixel AF và chống rung quang học OIS. Trong đó bao gồm camera chính có độ phân giải 50MP, máy ảnh góc siêu rộng 12MP và camera tele 10MP. Nhờ hệ thống camera tân tiến, người dùng có thể bắt trọn từng khung hình với độ sắc nét, màu sắc và ánh sáng hài hòa nhất mà không cần thông qua chỉnh sửa.\r\n\r\nBắt trọn khoảnh khắc cùng Samsung Galaxy Z Fold5\r\n\r\n\r\nBên cạnh đó, điện thoại gập Samsung Galaxy đời thứ 5 cũng sẽ có camera selfie với độ phân giải 10MP ở màn hình ngoài và camera 4MP dưới màn hình trong. Nhờ vậy, người dùng có thể tự tạo cho mình những bức ảnh xinh lung linh và tham gia vào các cuộc gọi video sắc nét, thoải mái họp nhóm và tham dự các buổi hội nghị online.\r\n\r\n\r\nCấu hình hiện đại nhưng không hề hại điện\r\nVề cấu hình, điện thoại di động Samsung Galaxy Z Fold5 dự kiến được trang bị bộ xử lý Snapdragon 8 Gen 2 for Galaxy với hiệu suất hoạt động nhanh hơn 25%. Con chip hiện đại này hứa hẹn sẽ mang tới hiệu năng ổn định cho máy, đồng thời tối ưu về mặt nhiệt độ, cho phép người dùng sử dụng, chơi game thoải mái mà không lo bị giật lag hay gián đoạn.\r\n\r\nCấu hình Galaxy Z Fold5 hiện đại nhưng không hề hại điện\r\n\r\n\r\nĐặc biệt, cấu hình tân tiến này còn hỗ trợ Unreal Engine 5 Metahumans Framework, cho khả năng tiết kiệm điện năng lên đến 40%. Kết hợp với viên pin 4400mAh, máy sẽ có thời lượng sử dụng lâu hơn chỉ trong một lần sạc, đồng thời cũng tăng tuổi thọ máy đáng kể khi sở hữu nhiều tính năng hiện đại mà không hại điện.\r\n\r\nKhi nào Samsung Galaxy Z Fold5 ra mắt ?\r\nSamsung Galaxy Z Fold5 đã chính thức lộ diện tại sự kiện Galaxy Unpacked diễn ra ngày 26/7 vừa qua.\r\n\r\nSamsung Galaxy Z Fold5 ra mắt\r\n\r\n\r\nSamsung Fold5 có khả năng sẽ có 3 lựa chọn về màu sắc là Đen, Kem và Xanh. Đây đều là những màu sắc dễ nhìn và có sức hút lớn đối với khách hàng.', 0, '2023-12-03 23:13:12', '2023-12-03 23:13:12'),
(4, 'Samsung Galaxy S23 Ultra', 0, 90, 'Thiết kế thời thượng với màn hình cong 6.8 inch sắc nét\r\n\r\nĐiện thoại Galaxy S23 Ultra 8GB/256GB chính hãng sở hữu vẻ bề ngoài cao cấp với độ dày máy chỉ khoảng 8.9mm và trọng lượng 234 gram. Mặt lưng của máy thiết kế nguyên khối với các cụm camera lồi được sắp xếp hợp lý ở góc trên bên trái. Nhà sản xuất đã tạo nên những đường cong tinh tế, gọt các góc mềm mại để chiếc điện thoại trông nổi bật hơn từ mọi góc nhìn. Điện thoại Galaxy S23 Ultra 8GB/256GB chính hãng có phần mặt lưng đơn giản nhưng được kết hợp với các màu sắc trẻ trung: đen, kem, xanh và tím.\r\n\r\nMặt trước của Galaxy S23 Ultra 8GB/256GB chính hãng là màn hình cong quen thuộc. Tuy nhiên độ cong của màn hình đã được giảm xuống một chút để mang lại trải nghiệm hình ảnh tốt hơn. Với tấm nền Dynamic AMOLED 2X và độ phân giải Edge Quad HD+ (3088 x 1440 pixels), điện thoại có thể hiển thị các thông tin sắc nét, hình ảnh chi tiết rõ ràng nhất. Màn hình của Galaxy S23 Ultra 8GB/256GB chính hãng có kích thước lên tới 6.8 inch, lớn hơn so với hầu hết điện thoại Android trên thị trường. Tỷ lệ màn hình so với thân máy lên tới gần 90% và thiết kế notch đục lỗ giúp tối đa không gian hiển thị nội dung. Galaxy S23 Ultra 8GB/256GB chính hãng sẽ đáp ứng nhu cầu học tập, làm việc và giải trí đa dạng của người dùng.\r\n\r\nCamera siêu phân giải 200MP, dẫn đầu công nghệ chụp đêm\r\n\r\nKhông thể phủ nhận trong những năm gần đây các nhà sản xuất liên tục cạnh tranh về công nghệ máy ảnh. Và Samsung là một trong những “ông lớn” luôn dẫn đầu xu hướng. Năm nay, Galaxy S23 Ultra 8GB/256GB chính hãng là chiếc flagship đầu iên sở hữu cảm biến chính siêu độ phân giải 200MP. Cảm biến có độ phân giải lớn hơn cho khả năng chụp các hình ảnh chất lượng, sắc nét và chi tiết tốt. Ngoài ra điện thoại còn được trang bị thêm 1 camera góc rộng 12MP và 2 cảm biến 10MP. Với cụm camera sau này, Galaxy S23 Ultra 8GB/256GB chính hãng có thể chụp những bức ảnh chân thực, sắc nét với màu sắc tự nhiên nhất.\r\n\r\nKhông chỉ dừng lại ở đó, nhà sản xuất Samsung còn mang đến cho chiếc điện thoại này khả năng chụp đêm ấn tượng. Galaxy S23 Ultra 8GB/256GB chính hãng có bộ xử lý hình ảnh AI giúp nâng cao khả năng chụp đêm, bắt được nhiều ánh sáng hơn và giảm nhiễu đáng kể. Điện thoại có thể hỗ trợ chụp đa chế độ: HDR, chân dung, xóa phông,... và quay video chất lượng cao lên tới 8K vô cùng sắc nét. Ngoài ra, Galaxy S23 Ultra 8GB/256GB chính hãng còn được trang bị một camera selfie 12MP dưới notch màn hình. Nhà sản xuất đã nâng cấp công nghệ chống rung quang học, giúp những video được quay lại sắc nét trong mọi điều kiện ánh sáng. Nếu bạn là người thường xuyên sáng tạo nội dung qua ảnh chụp, thước phim thì Galaxy S23 Ultra 8GB/256GB chính hãng là sự lựa chọn rất tuyệt vời.\r\n\r\nHiệu năng đỉnh cao với Snadpragon 8 Gen 2\r\n\r\nNăm nay, nhà sản xuất đã trang bị cho chiếc Galaxy S23 Ultra 8GB/256GB chính hãng con chip Snapdragon 8 Gen 2 mạnh mẽ. Con chip này được sản xuất trên tiến trình 4nm để tối ưu hiệu năng. Nhờ đó Galaxy S23 Ultra 8GB/256GB chính hãng có thể xử lý đa tác vụ cực mượt. Với phiên bản này, điện thoại có RAM 8GB và dung lượng lưu trữ 256GB. Bạn có thể thoải mái lưu giữ các thông tin, tài liệu quan trọng và xử lý trên điện thoại bất cứ lúc nào.\r\n\r\nBên cạnh đó, Galaxy S23 Ultra 8GB/256GB chính hãng cũng được trang bị viên pin dung lượng khủng lên tới 5000mAh. Đây là dung lượng pin tối đa phổ biến trên những chiếc điện thoại Android. Nhờ phần mềm AI giúp quản lý năng lượng hiệu quả, thời lượng pin của Galaxy S23 Ultra 8GB/256GB chính hãng được tăng thêm 22% so với thế hệ cũ. Nhà sản xuất cũng trang bị công nghệ sạc nhanh 45W, giúp điện thoại có thể sạc đầy 65% pin chỉ trong 30 phút. Giờ đây bạn có thể yên tâm là chiếc Galaxy S23 Ultra 8GB/256GB chính hãng sẽ đồng hành trong suốt một ngày dài.', 0, '2023-12-03 23:18:47', '2023-12-03 23:18:47'),
(5, 'Realme 11 Pro', 1, 98, 'Thiết kế sang trọng\r\nĐiện thoại Realme 11 Pro nổi bật với thiết kế cụm camera hình tròn đặc biệt. Mặt trước của điện thoại là màn hình cong tràn viền và siêu mỏng. Kích thước màn hình có tỷ lệ 20:9 giúp điện thoại thon dài hơn cùng các cạnh cạnh cong mềm mại giúp người dùng dễ dàng cầm nắm.\r\n\r\nMột điểm cộng lớn dành cho điện thoại Realme 11 Pro đó là được trang bị jack tai nghe 3.5mm với âm thanh 24-bit/192kHz. Điều này mang đến sự tiện lợi khi kết nối âm thanh.\r\n\r\nBên cạnh đó, màu sắc của điện thoại cũng giúp cho sản phẩm tinh tế và sang trọng hơn. Các phiên bản màu vàng, xanh có mặt lưng được làm từ chất liệu da tổng hợp, đường chỉ chia đôi ở mặt lưng tạo điểm nhấn. Tất cả các sản phẩm đều có khung viền nhựa PC trùng với màu của điện thoại. Riêng bản màu vàng, khung viền được làm sáng bóng tạo ra hiệu ứng lấp lánh.\r\n\r\nMàn hình cong ấn tượng\r\nĐiện thoại Realme 11 Pro sở hữu màn hình AMOLED với khả năng hiển thị sắc nét, màu sắc tươi tắn. Tần số quét của màn hình lên tới 120Hz giúp người dùng thao tác vuốt, chạm mượt mà. Đồng thời, bạn cũng có thể chơi game, xem phim hành động gay cấn sắc nét, hình không bị nhoè.\r\n\r\nĐiểm đáng chú ý của màn hình Realme 11 Pro sở hữu kích thước lên tới 6,7 inch; độ phân giải full HD+. Điều này giúp hiển thị các chi tiết nhỏ sắc nét hơn, không có hiện tượng răng cưa.\r\n\r\nHiệu năng mạnh mẽ\r\nRealme 11 Pro được trang bị chip Dimensity 7050 5G sử dụng tiến trình sản xuất 6nm của TSMC. Từ đó, mang đến cho điện thoại sức mạnh xử lý vượt trội với 2 nhân Cortex-A78 tốc độ 2.6GHz và 4 nhân Cortex-A55 tốc độ 2.0GHz. Ngoài ra, GPU Arm Mali-G68 đảm bảo hiệu suất chơi game tốt, mượt mà.\r\n\r\nDung lượng lưu trữ lớn\r\nSản phẩm Realme 11 Pro gồm 02 tuỳ chọn bộ nhớ RAM 8GB và 12GB đều có khả năng đa nhiệm tốt, cho phép sử dụng nhiều ứng dụng cùng lúc. Hơn nữa, người dùng có thể mở rộng RAM ảo tối đa 8GB.\r\n\r\n\r\nBên cạnh đó, dung lượng lưu trữ điện thoại cũng khá nổi bật lên tới 256GB. Người dùng thoải mái lưu trữ hình ảnh, dữ liệu, video,... Nếu muốn dung lượng lưu trữ gấp đôi thì bạn có thể lựa chọn bản 512GB.\r\n\r\nCamera hình tròn độc đáo\r\nKhi mua điện thoại, người dùng cũng thường quan tâm tới chất lượng của camera. Realme 11 Pro gồm camera chính 100MP, cảm biến lớn, khẩu độ f/1.8 và tiêu cự 26mm giúp bạn thoải mái chụp các bức hình rõ nét. Hơn nữa, camera Realme 11 Pro còn có khả năng lấy nét tự động cao vào chống rung quang học OIS.\r\n\r\n\r\nCamera selfie có độ phân giải 16 MP khẩu độ f/2.5 cùng tiêu cự 25mm có khả năng thu ánh sáng tốt trong mọi điều kiện. Những hình ảnh chụp ra có độ nét, độ phân giải cao.\r\n\r\nCông nghệ sạc nhanh 67W\r\nĐiện thoại Realme 11 Pro trang bị viên pin có dung lượng lên đến 5000 mAh. Người dùng thoải mái sử dụng trong cả ngày mà không lo hết pin giữa chừng. Ngoài ra, điểm mạnh của chiếc điện thoại giá rẻ này đó là công nghệ sạc nhanh SuperVOOC 67W. Người dùng chỉ mất chưa đến 20 phút để sạc pin từ 0 đến 50%.', 0, '2023-12-03 23:20:12', '2023-12-03 23:20:12'),
(6, 'Realme 11', 0, 55, 'Đánh giá chi tiết về điện thoại Realme 11\r\nTuy thuộc phân khúc tầm trung nhưng Realme 11 vẫn sở hữu loạt tính năng hiện đại và cấu hình “khủng”. Hãy cùng khám phá xem các tính năng đó là gì trong phần đánh giá chi tiết sau đây nhé.\r\n\r\nCấu hình mạnh, hiệu năng cao với con chip MediaTek Helio G99\r\nRealme 11 được trang bị với chip 8 lõi MediaTek Helio G99, một bộ vi xử lý hiệu quả và mạnh mẽ với kích thước 6nm. Chip này không chỉ mang đến hiệu suất cao mà còn giảm thiểu độ trễ, cho phép máy hoạt động mượt mà, ngay cả khi chạy các trò chơi ở mức đồ họa cao nhất như Liên Quân Mobile, PUBG Mobile, Genshin Impact, …\r\n\r\nBên cạnh đó, Helio G99 trên điện thoại Realme 11 cũng giải quyết vấn đề kiểm soát nhiệt độ, giúp máy có thể hoạt động liên tục trong thời gian dài mà không gặp tình trạng giật lag hay nóng máy. Một tính năng nổi bật khác là khả năng hỗ trợ kết nối mạng di động 5G - một tính năng mà Realme 10 không có.\r\n\r\nNgoài ra, Realme 11 chạy trên hệ điều hành Android 13 và có 8GB RAM, cung cấp khả năng xử lý đa nhiệm mạnh mẽ. Với bộ nhớ trong 128-256GB, người dùng có thể lưu trữ nhiều dữ liệu và chạy nhiều ứng dụng cùng lúc mà không gặp phải vấn đề giật lag.\r\n\r\nĐiện thoại Realme 11 gây ấn tượng với thiết kế nổi bật\r\nRealme 11 được đánh giá là một biểu tượng mới về thiết kế trong phân khúc smartphone tầm trung. Điểm nhấn chính là kiểu dáng vuông vức, giúp người dùng cầm nắm máy một cách chắc chắn, tạo ra một cảm giác thoải mái và an tâm khi sử dụng.\r\n\r\nKhông chỉ vậy, màn hình của Realme 11 được thiết kế với kiểu “nốt ruồi”, tạo nên một trải nghiệm hiển thị gần như không viền mà giữ được vẻ đẹp tự nhiên, tinh tế. Màn hình nốt ruồi cũng giúp cho chiếc điện thoại này trở nên cao cấp và độc đáo hơn so với các sản phẩm khác trên thị trường.\r\n\r\nMàn hình Super AMOLED cao cấp với độ phân giải Full HD+\r\nChiếc điện thoại Realme 11 được trang bị một màn hình Super AMOLED 6.4 inch có độ phân giải Full HD+ (1080 x 2400 Pixels), đây được xem là màn hình chất lượng nhất trong phân khúc smartphone tầm trung ở thời điểm này. Tấm nền AMOLED cung cấp khả năng hiển thị màu sắc rực rỡ, độ tương phản cao và hình ảnh sắc nét, tạo nên những trải nghiệm hình ảnh chân thực và sống động.\r\n\r\nKhông chỉ dừng lại ở đó, màn hình của Realme 11 còn được hỗ trợ bởi tần số quét lên tới 90Hz. Với tần số quét cao này, các chuyển động trên màn hình sẽ trở nên mượt mà, mang lại trải nghiệm tốt hơn cho người dùng, đặc biệt khi chơi game hoặc xem video.\r\n\r\nĐiện thoại Realme 11 sở hữu PIN khủng, hỗ trợ sạc nhanh\r\nBên cạnh các nổi bật về màn hình và cấu hình, Realme 11 còn sở hữu viên pin với dung lượng lớn lên đến 5000 mAh. Điều này khiến cho nó phù hợp với những người thường xuyên thực hiện các hoạt động nặng như chơi game, xem video hoặc sử dụng nhiều ứng dụng cùng lúc.\r\n\r\nNgoài ra, Realme 11 còn hỗ trợ công nghệ sạc nhanh 67W, cho phép người dùng nhanh chóng nạp lại năng lượng cho điện thoại mà không cần phải chờ đợi lâu.\r\n\r\nNâng cấp hệ thống camera\r\nĐiện thoại Realme 11 được trang bị hệ thống camera tối ưu với 2 camera sau có độ phân giải lần lượt là 108 MP và 2 MP, cùng với camera trước có độ phân giải 16 MP. Vì vậy, đối với những ai yêu thích việc chụp ảnh, hệ thống camera này sẽ là một công cụ đắc lực.\r\n\r\nĐồng thời, khả năng quay video Full HD cũng là một điểm cộng thêm của chiếc smartphone này. Nó còn hỗ trợ các chế độ chụp ảnh khác nhau như chế độ chụp chuyên nghiệp, chế độ siêu độ phân giải, chế độ xóa phông và chế độ chụp ban đêm, cho phép người dùng tùy chỉnh và tạo ra những bức ảnh đẹp theo ý muốn.', 0, '2023-12-03 23:21:35', '2023-12-03 23:21:35'),
(7, 'Xiaomi 13 Pro', 0, 15, 'Thiết kế màn hình cong với camera tele 50MP ấn tượng\r\nXiaomi 13 Pro sở hữu thiết kế màn hình cong với các viền xung quanh rất thanh lịch và có phần cong hơn ở bên dưới. Điện thoại có 2 tùy chọn màu sắc như đen, trắng. Cả 2 phiên bản đều có mặt lưng bằng gốm.\r\n\r\nChất liệu gốm cho khả năng chống xước hiệu quả và đem đến sự độc lạ, sang trọng cho điện thoại. Nếu yêu thích sự độc đáo, sang trọng, tinh tế thì có thể tìm hiểu thêm về dòng điện thoại này. Thêm vào đó, điện thoại có kích thước 162.9 x 74.6 x 8.38mm và nặng 229g. Bên cạnh đó, điện thoại Xiaomi 13 Pro cũng nhận được chứng nhận IP68 với khả năng chống bụi và chống nước đáng kể.\r\n\r\nCụm camera của Xiaomi 13 Pro gây ấn tượng cực mạnh bởi được trang bị như 1 khối lớn ở phía sau với khung kim loại nổi bật. Khác với Xiaomi 13, Xiaomi 13 Pro có camera chính 50MP f/1.9 với OIS. Kích thước cảm biến lên đến 1 inch cho khả năng chụp ảnh chất lượng cao hơn cả so với hầu hết các cảm biến điện thoại thông minh khác cùng phân khúc trên thị trường.\r\n\r\nNgoài camera chính, điện thoại còn có 1 camera tele 50MP f/2.0 và một camera siêu rộng 50MP f/2.2, có thể chụp ảnh macro và có góc nhìn 115 độ. Camera trước được trang bị cảm biến 32MP đục lỗ, cho khả năng chụp ảnh selfie cực kì ấn tượng.\r\n\r\nMàn hình AMOLED 6.73 inch cùng độ sáng tối đa lên đến 1.900 nits\r\nĐiện thoại Xiaomi 13 Pro sở hữu màn hình AMOLED 6.73 inch 1440 x 3200 với tần số quét lên đến 120Hz, hỗ trợ HDR10+ và độ sáng tối đa lên đến 1.900 nits. Cùng với đó, màn hình cũng được trang bị công nghệ LTPO hiện đại giúp đem đến cho người dùng sự mãn nhãn khi thực hiện các tác vụ yêu thích như xem phim, chơi game hay thưởng thức các MV ca nhạc.\r\n\r\nHiệu năng ấn tượng với chipset Snapdragon 8 Gen 2 cùng sạc có dây 120W ấn tượng\r\nXiaomi 13 Pro sử dụng chip Snapdragon 8 Gen 2 - con chip Snapdragon hàng đầu đem đến hiệu năng tốt, trải nghiệm mượt mà cho người dùng. Máy hỗ trợ  5G và chạy trên Android 13 (với giao diện MIUI 14 của Xiaomi). Cùng với đó, điện thoại cũng có hệ thống loa âm thanh Dolby Atmos cực kì nổi bật, giúp trải nghiệm nghe - nhìn của người dùng trở nên hoàn hảo hơn.\r\n\r\nĐặc biệt, điện thoại Xiaomi 13 Pro sở hữu viên pin dung lượng lên tới 4.820mAh cùng bộ sạc có dây 120W cùng sạc không dây 50W và sạc không dây ngược 10W cực kì ấn tượng. Do vậy mà người dùng có thể thoải mái sử dụng điện thoại mà không lo phải sạc nhiều lần và người dùng cũng sẽ không phải đợi lâu khi sạc điện thoại.', 0, '2023-12-03 23:22:43', '2023-12-03 23:22:43'),
(8, 'Xiaomi 13T', 0, 20, 'Xiaomi 13T được trang bị bộ vi xử lý mạnh mẽ, dung lượng lưu trữ hào phóng\r\nSức mạnh của chiếc smartphone này đến từ bộ vi xử lý hàng đầu MediaTek Dimensity 8200-Ultra đi cùng GPU Immortalis-G715 MC11, tạo nên một bộ đôi hoàn hảo cho những trải nghiệm đồ họa siêu mượt.\r\n\r\nXiaomi 13T được trang bị bộ vi xử lý mạnh mẽ, dung lượng lưu trữ hào phóng\r\n\r\nThiết bị này còn sở hữu khả năng đa nhiệm xuất sắc với RAM 12GB, cho phép bạn vận hành nhiều ứng dụng cùng một lúc mà không hề gặp phải vấn đề giật lag. Về dung lượng lưu trữ, sản phẩm được trrang bị bộ nhớ trong lên tới 256GB, giúp người dùng thoải mái lưu trữ dữ liệu mà không lo đầy bộ nhớ. Tất cả đều được hỗ trợ bởi bộ nhớ chuẩn UFS 4.0, giúp tăng tốc độ truy xuất dữ liệu.\r\n\r\nNgoài ra, thiết bị có thể kết nối đa dạng với Android 13, USB-C, Wi-Fi 7, Bluetooth 5.4 và NFC, có khả năng chống nước IP68 và tích hợp đầu đọc dấu vân tay.\r\n\r\nMàn hình AMOLED với chất lượng hiển thị sắc nét trên Xiaomi 13T\r\nThiết bị sở hữu tấm nền AMOLED kích thước 6.67 inch với chất lượng hiển thị sống động, rực rỡ. Bên cạnh đó, với độ phân giải 1,5K ở 2712 x 1220 pixel, mỗi chi tiết trên màn hình xuất hiện rõ ràng và sắc nét, tạo nên trải nghiệm xem đẳng cấp với mật độ điểm ảnh 446ppi. Nó còn có tốc độ làm mới cao 144Hz, mang đến chuyển động mượt mà, không gây chậm trễ, thích hợp cho việc giải trí và chơi game.\r\n\r\nMột đặc điểm nổi bật khác là khả năng chiếu sáng ấn tượng của màn hình: từ mức sáng cơ bản 500 nits, tăng lên 1200 nits trong Chế độ độ sáng cao (HBM), và tiến xa hơn đến đỉnh điểm 2600 nits. Nhờ đó, thiết bị có thể hiển thị nội dung rõ ràng trên màn hình ngay cả dưới ánh sáng mặt trời chói lọi.\r\n\r\nCamera ấn tượng, thích hợp cho người đam mê nhiếp ảnh\r\nXiaomi 13T được trang bị một bộ ba ống kính phía sau có khả năng nắm bắt mọi khung hình một cách sắc nét và rõ ràng với cảm biến chính 50MP, camera tele 50MP và camera góc siêu rộng 12MP. Với khẩu độ f/1.9, tiêu cự 24mm, kích thước 1/1.67\" và độ độ lớn điểm ảnh 0.64µm, cảm biến này không chỉ hỗ trợ góc chụp rộng mà còn giúp thu sáng tối ưu.\r\n\r\nTính năng PDAF cùng OIS trên thiết bị cũng làm tăng khả năng lấy nét một cách nhanh chóng, đồng thời giảm thiểu rung lắc trong quá trình quay hay chụp. Hơn nữa, cụm camera hình vuông ở phía sau với 3 cảm biến và đèn LED trợ sáng tạo nên sự tương đồng với thiết kế của Xiaomi 13.\r\n\r\nXiaomi 13T với thiết kế tinh tế, viên PIN khủng\r\nBên cạnh hiệu năng mạnh cùng cụm camera ấn tượng, 13T còn sở hữu thiết kế tinh tế và hiện đại. Màn hình đục lỗ được bao quanh bởi viền siêu mỏng trên cả 4 cạnh, mang đến cảm giác không gian vô tận và trải nghiệm thị giác tuyệt vời.\r\n\r\nMẫu điện thoại này từ nhà Xiaomi còn được trang bị với viên pin dung lượng 5000mAh, đảm bảo thời gian sử dụng dài lâu. Nó còn được hỗ trợ bởi công nghệ sạc nhanh 67W Mi Turbo Charge, cho phép người dùng nhanh chóng trở lại với chiếc smartphone của mình trong mỗi lần sạc.', 0, '2023-12-03 23:23:57', '2023-12-03 23:23:57'),
(9, 'OPPO Find N3', 0, 35, 'OPPO Find N3 - Cải tiến vượt trội với nhiều tính năng ấn tượng\r\n\r\nOPPO là thương hiệu công nghệ nổi tiếng đến từ Trung Quốc. Sở hữu thế mạnh trong lĩnh vực smartphone, OPPO đã cho ra mắt nhiều sản phẩm công nghệ tiên tiến với giá cả phải chăng. Bắt kịp với xu hướng thời đại, gần đây thương hiệu vừa trình làng một siêu phẩm điện thoại mới mang tên OPPO Find N3. Là sản phẩm nâng cấp so với dòng OPPO Find N2, sản phẩm sở hữu nhiều cải tiến vượt trội từ thiết kế, cấu hình và tính năng. Chiếc smartphone mới nhà OPPO chắc chắn sẽ thu hút đông đảo sự yêu thích từ cộng đồng, đồng thời mang đến những trải nghiệm độc đáo cho người dùng.\r\n\r\nTrải nghiệm hiệu năng cực đỉnh cùng OPPO Find N3\r\nVới dòng siêu phẩm cực mới, OPPO đã trang bị bộ xử lý cực khủng cho điện thoại OPPO Find N3 - chipset Snapdragon 8 Gen 2 thế hệ mới từ Qualcomm. Đây là con chip 8 nhân được xây dựng trên tiến trình 4nm tiên tiến, cung cấp sức mạnh đáng ấn tượng cho thiết bị. Khi kết hợp cùng bộ RAM 12GB, sản phẩm hứa hẹn mang đến hiệu năng cực khủng và vượt trội hơn bao giờ hết. Người dùng sẽ được trải nghiệm khả năng đa nhiệm hoàn chỉnh, cùng các thao tác mượt mà và tốc độ nhanh chóng.\r\n\r\nChưa dừng lại ở đó, dòng smartphone này còn được tích hợp bộ nhớ lên tới 512GB/1TB. Với dung lượng lớn chưa từng có so với các dòng điện thoại gập khác. Nhờ vậy, tốc độ xử lý của máy không những được cải thiện, mà còn cung cấp không gian lưu trữ rộng lớn, cho phép người dùng thoải mái lưu lại các dữ liệu quan trọng cùng vô vàn hình ảnh, video chất lượng.\r\n\r\nNâng tầm chất lượng hình ảnh cùng màn hình 120Hz\r\nOPPO Find N3 sở hữu màn hình gập với kích thước 8 inch và thiết kế tràn viền độc đáo, mang đến không gian hiển thị mở rộng ấn tượng. Màn hình này được trang bị tấm nền OLED hiện đại, mang đến độ phân giải 2K+ cực đã. Đặc biệt, sản phẩm còn có tần số quét lên đến 120Hz, cùng khả năng điều chỉnh tự động tần số quét phù hợp với nội dung hiển thị. Nhờ vậy, người dùng sẽ được trải nghiệm từng khung hình mãn nhãn nhất với từng chuyển động mượt mà, hình ảnh sắc nét và màu sắc chân thực, sống động.\r\n\r\nCũng giống với thế hệ tiền nhiệm, OPPO Find N3 cũng được trang bị màn hình phụ bên ngoài với kích thước 6.5 inch, cho hình ảnh với độ phân giải Full HD. Tấm nền phụ này cũng có tần số quét 120Hz, không những tối đa hóa trải nghiệm người dùng, mà còn tiết kiệm năng lượng và nâng cao hiệu quả sử dụng với tính năng điều chỉnh tự động tần số phù hợp với các tác vụ.\r\n\r\nThoải mái chụp ảnh cùng hệ thống camera xịn sò của OPPO Find N3\r\nNhằm mang đến trải nghiệm hài lòng nhất cho khách hàng thông qua các tính năng hiện đại, OPPO Find N3 được tích hợp bộ 3 camera với các công nghệ tiên tiến. Hệ thống camera của thiết bị bao gồm camera chính với độ phân giải 50MP, camera góc siêu rộng và một ống kính tiềm vọng có khả năng zoom quang học 3X. Nhờ vậy, sản phẩm có khả năng lấy nét từ xa cực chuẩn, mang đến những tấm hình chân thực và bắt mắt nhất, thu trọn từng khoảnh khắc đáng nhớ của người dùng.\r\n\r\nBên cạnh đó, cụm camera này còn sở hữu khả năng chống rung quang học OIS và các thuật toán hiện đại đến từ thương hiệu máy ảnh danh tiếng thế giới. Do đó, khả năng chụp hình trên máy được đánh giá khá cao với những chi tiết sắc nét, khung hình ổn định với những màu sắc hài hòa, chân thực nhất.', 0, '2023-12-03 23:25:19', '2023-12-03 23:25:19'),
(10, 'OPPO Reno10', 0, 40, 'Thiết kế độc đáo vẻ đẹp lung linh cho OPPO Reno10\r\n\r\nOPPO Reno 10 được đầu tư bản thiết kế cải tiến cao cấp hơn, với hai tùy chọn màu sắc bắt mắt là Ice Blue – màu xanh lấp lánh với hiệu ứng OPPO Glow đặc trưng và Silvery Grey – màu xám bạc bề mặt nhám mịn hiện đại, mỗi phiên bản đem lại những đặc trưng độc đáo. \r\n\r\nThiết kế đặc trưng OPPO Glow -  OPPO Reno 10\r\n\r\nThiết kế đường cong 3D cho Reno10 5G đường nét mượt mà, bên cạnh đó giúp cho màn hình có độ cong nhẹ, tạo ra một trải nghiệm trực quan và thú vị hơn cho người dùng. Với trọng lượng chỉ 185g và độ dày khoảng 7,99mm, điện thoại Reno10 có thiết kế mỏng nhẹ, giúp bạn dễ dàng mang theo bên mình ở bất kỳ đâu.\r\n\r\nThoả sức chụp chân dung chuyên nghiệp cùng OPPO Reno10\r\n\r\nReno10 sở hữu hệ thống camera chất lượng đặc biệt là camera chân dung Tele 32MP, được trang bị cảm biến Sony IMX 709 hàng đầu. Với khả năng thu nạp ánh sáng lên đến 60% và giảm tiếng ồn xuống còn 35%, chiếc camera này sẽ giúp bạn tạo ra những tấm ảnh có phông nền rõ nét và làm nổi bật chủ thể một cách tuyệt vời. \r\n\r\nCamera Tele 32MP - OPPO Reno10 \r\n\r\nOPPO Reno 10 được trang bị hệ thống camera đa dạng, bao gồm camera chính siêu rõ nét với độ phân giải 64MP, camera góc rộng siêu rộng với góc nhìn lên đến 112° và camera selfie siêu rõ nét với độ phân giải 32MP. Mỗi camera đem đến những trải nghiệm riêng khiến cho Reno 10 5G trở thành một lựa chọn tuyệt vời cho những ai yêu thích chụp ảnh.\r\n\r\nSạc nhanh 67W SUPER VOOC được trang bị trên Reno10\r\n\r\nOPPO Reno 10 được trang bị công nghệ sạc nhanh 67W SUPER VOOC với  tốc độ sạc vượt trội, giúp người dùng tiết kiệm rất nhiều thời gian chỉ với 30 phút sạc. Công nghệ sạc nhanh đến từ OPPO còn được trang bị các tính năng và cơ chế bảo vệ khi quá nhiệt và quá điện áp.\r\n\r\nSạc nhanh 67W SUPER VOOC - OPPO Reno 10 \r\n\r\nChip xử lý mạnh mẽ đến từ MediaTek và cấu hình mạnh mẽ\r\n\r\nReno 10 sở hữu SoC MediaTek Dimensity 7050 6nm mạnh mẽ hỗ trợ người dùng dễ dàng chuyển đổi giữa các tác vụ với tốc độ cao. Không gian lưu trữ rộng lớn hơn với bộ nhớ trong lên đến 256GB và khả năng mở rộng RAM 8GB thêm lên đến 8GB.\r\n\r\nMediaTek Dimensity 7050 6nm - OPPO Reno 10 \r\n\r\nTiện ích hơn với tính năng kết nối đa màn hình\r\n\r\nTính năng Kết nối đa màn hình đã được tích hợp trên OPPO Reno 10 . Tính năng này cho phép người dùng kết nối các thiết bị khác nhau như PC, thiết bị di động và OPPO Pad để chia sẻ thông tin và nội dung một cách dễ dàng hơn từ đó nâng cao hiệu suất học tập và làm việc.\r\n\r\nKết nối đa màn hình - OPPO Reno10 \r\n\r\nTính năng Điều khiển từ xa IR OPPO đã được tích hợp trên Reno10 giúp người dùng có thể điều khiển các thiết bị thông minh khác trong nhà một cách thuận tiện hơn chỉ với vài thao tác đơn giản trên điện thoại của mình. Tính năng này cho phép người dùng điều khiển hầu hết các thiết bị thông minh như máy lạnh, TV, đèn chiếu sáng và các thiết bị gia dụng khác một cách thuận tiện.', 0, '2023-12-03 23:26:49', '2023-12-03 23:26:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attribute`
--

CREATE TABLE `product_attribute` (
  `product_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_attribute`
--

INSERT INTO `product_attribute` (`product_attribute_id`, `product_id`, `attribute_id`, `row_delete`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 2, 3, 0),
(4, 2, 4, 0),
(5, 3, 5, 0),
(6, 3, 6, 0),
(7, 4, 7, 0),
(8, 4, 8, 0),
(9, 5, 9, 0),
(11, 6, 11, 0),
(12, 7, 12, 0),
(13, 7, 13, 0),
(14, 8, 14, 0),
(15, 9, 15, 0),
(16, 10, 16, 0),
(17, 10, 17, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_id`, `category_id`, `created_at`, `updated_at`, `row_delete`) VALUES
(1, 1, 1, '2023-12-03 23:10:38', '2023-12-03 23:10:38', 0),
(2, 2, 1, '2023-12-03 23:12:10', '2023-12-03 23:12:10', 0),
(3, 3, 2, '2023-12-03 23:13:12', '2023-12-03 23:13:12', 0),
(4, 4, 2, '2023-12-03 23:18:47', '2023-12-03 23:18:47', 0),
(5, 5, 3, '2023-12-03 23:20:12', '2023-12-03 23:20:12', 0),
(6, 6, 3, '2023-12-03 23:21:35', '2023-12-04 06:10:52', 0),
(7, 7, 4, '2023-12-03 23:22:43', '2023-12-03 23:22:43', 0),
(8, 8, 4, '2023-12-03 23:23:57', '2023-12-04 06:11:02', 0),
(9, 9, 5, '2023-12-03 23:25:19', '2023-12-03 23:25:19', 0),
(10, 10, 5, '2023-12-03 23:26:49', '2023-12-04 06:11:10', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_data`
--

CREATE TABLE `product_data` (
  `product_data_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `URL` varchar(255) NOT NULL,
  `Loai_URL` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_data`
--

INSERT INTO `product_data` (`product_data_id`, `product_id`, `URL`, `Loai_URL`, `created_at`, `updated_at`, `row_delete`) VALUES
(1, 1, 'uploads/PvtJmnQxXCSRe7600HYJViWSEMRW3CdatxqXxxwg.webp', 'img', '2023-12-03 23:10:38', '2023-12-03 23:10:38', 0),
(2, 2, 'uploads/6TZIDKvlHHrKPOpz4tp3tvOT7kB9pHNNWJ5rizwk.webp', 'img', '2023-12-03 23:12:10', '2023-12-03 23:12:10', 0),
(3, 3, 'uploads/spK1l7NykNG8ZEI8sY7kphqvKVMQPGBK0a0XLwWm.webp', 'img', '2023-12-03 23:13:12', '2023-12-03 23:13:12', 0),
(4, 4, 'uploads/MjQ8JUJPcODz20uquodaMoWmQGq23IislZ4DbM15.webp', 'img', '2023-12-03 23:18:47', '2023-12-03 23:18:47', 0),
(5, 5, 'uploads/TOsCppj4QsvJQ0Tpxb1ebqwEKd82FZnEVgecKT9c.webp', 'img', '2023-12-03 23:20:12', '2023-12-03 23:20:12', 0),
(6, 6, 'uploads/SRLydkGwIrrxsl72wsmMVTRduNE32tigmpQNWurQ.webp', 'img', '2023-12-03 23:21:35', '2023-12-03 23:21:35', 0),
(7, 7, 'uploads/GoSxeg6UY2SuV5j6FpG7hpWmCxwxQhl4fVfpq0bb.webp', 'img', '2023-12-03 23:22:43', '2023-12-03 23:22:43', 0),
(8, 8, 'uploads/eob4daFarRXMVrWZMBw0KBnqiS4OcILNET66GRLD.webp', 'img', '2023-12-03 23:23:57', '2023-12-03 23:23:57', 0),
(9, 9, 'uploads/B5SW8B9D37Lbm1MLKJhhYcmmjirguWaZGlOehg6o.webp', 'img', '2023-12-03 23:25:19', '2023-12-03 23:25:19', 0),
(10, 10, 'uploads/IoaRoWocbjB9sjimL4tbvGqRqZqYllac5VSdHNyd.webp', 'img', '2023-12-03 23:26:49', '2023-12-03 23:26:49', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `row_delete`, `created_at`, `updated_at`) VALUES
(1, 'admin', 0, '2023-12-04 06:03:39', '2023-12-04 06:03:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `middlename`, `lastname`, `email`, `img`, `password`, `row_delete`, `created_at`, `updated_at`) VALUES
(1, 'Le', 'Nam', 'Anh', 'admin@gmail.com', NULL, '$2y$10$fmsWT.2rneDpoQ9pacjkHeK/5ZpKF.9t.tGaIwutt9xvKGpyrFzfK', 0, '2023-12-04 06:03:00', '2023-12-04 06:03:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `row_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`user_role_id`, `user_id`, `role_id`, `created_at`, `updated_at`, `row_delete`) VALUES
(1, 1, 1, '2023-12-04 06:03:52', '2023-12-04 06:03:52', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Chỉ mục cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`attribute_value_id`),
  ADD KEY `attribute_value_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_detail_order_id_foreign` (`order_id`),
  ADD KEY `order_detail_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`product_attribute_id`),
  ADD KEY `product_attribute_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`),
  ADD KEY `product_category_product_id_foreign` (`product_id`),
  ADD KEY `product_category_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_data`
--
ALTER TABLE `product_data`
  ADD PRIMARY KEY (`product_data_id`),
  ADD KEY `product_data_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `attribute_value_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `product_attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_data`
--
ALTER TABLE `product_data`
  MODIFY `product_data_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `user_role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD CONSTRAINT `attribute_value_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`attribute_id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `order_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD CONSTRAINT `product_attribute_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`attribute_id`),
  ADD CONSTRAINT `product_attribute_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_data`
--
ALTER TABLE `product_data`
  ADD CONSTRAINT `product_data_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
