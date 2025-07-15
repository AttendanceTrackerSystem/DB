-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 15, 2025 at 07:06 PM
-- Server version: 8.0.36
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_records`
--

DROP TABLE IF EXISTS `attendance_records`;
CREATE TABLE IF NOT EXISTS `attendance_records` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint UNSIGNED NOT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT '1',
  `rating` tinyint DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendance_records_student_id_foreign` (`student_id`),
  KEY `attendance_records_class_id_foreign` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_records`
--

INSERT INTO `attendance_records` (`id`, `student_id`, `class_id`, `is_present`, `rating`, `comment`, `date`, `created_at`, `updated_at`) VALUES
(1, 'GAHDSE24.1F-101', 23, 1, 5, 'Good', '2025-07-15', '2025-07-15 07:37:18', '2025-07-15 07:37:18'),
(3, 'GAHDSE24.1F-001', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 03:35:12', '2025-07-15 03:35:12'),
(4, 'GAHDSE24.1F-002', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 03:45:45', '2025-07-15 03:45:45'),
(5, 'GAHDSE24.1F-003', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 03:55:33', '2025-07-15 03:55:33'),
(6, 'GAHDSE24.1F-004', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 04:05:29', '2025-07-15 04:05:29'),
(7, 'GAHDSE24.1F-005', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 04:12:10', '2025-07-15 04:12:10'),
(8, 'GAHDSE24.1F-006', 23, 1, 5, 'Well explained', '2025-07-15', '2025-07-15 04:20:55', '2025-07-15 04:20:55'),
(9, 'GAHDSE24.1F-007', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:30:12', '2025-07-15 04:30:12'),
(10, 'GAHDSE24.1F-008', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 04:35:47', '2025-07-15 04:35:47'),
(11, 'GAHDSE24.1F-009', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 04:40:30', '2025-07-15 04:40:30'),
(12, 'GAHDSE24.1F-010', 23, 1, 5, 'Great examples', '2025-07-15', '2025-07-15 04:45:22', '2025-07-15 04:45:22'),
(13, 'GAHDSE24.1F-011', 23, 1, 2, 'Not clear', '2025-07-15', '2025-07-15 04:50:08', '2025-07-15 04:50:08'),
(14, 'GAHDSE24.1F-012', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:55:59', '2025-07-15 04:55:59'),
(15, 'GAHDSE24.1F-013', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 05:00:41', '2025-07-15 05:00:41'),
(16, 'GAHDSE24.1F-014', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 05:05:15', '2025-07-15 05:05:15'),
(17, 'GAHDSE24.1F-015', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 05:10:53', '2025-07-15 05:10:53'),
(18, 'GAHDSE24.1F-016', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:15:44', '2025-07-15 05:15:44'),
(19, 'GAHDSE24.1F-017', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 05:20:32', '2025-07-15 05:20:32'),
(20, 'GAHDSE24.1F-018', 23, 1, 5, 'Well explained', '2025-07-15', '2025-07-15 05:25:10', '2025-07-15 05:25:10'),
(21, 'GAHDSE24.1F-019', 23, 1, 4, 'Great examples', '2025-07-15', '2025-07-15 05:30:01', '2025-07-15 05:30:01'),
(22, 'GAHDSE24.1F-020', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:35:23', '2025-07-15 05:35:23'),
(23, 'GAHDSE24.1F-021', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 05:40:12', '2025-07-15 05:40:12'),
(24, 'GAHDSE24.1F-022', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 05:45:40', '2025-07-15 05:45:40'),
(25, 'GAHDSE24.1F-023', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 05:50:05', '2025-07-15 05:50:05'),
(26, 'GAHDSE24.1F-024', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:55:17', '2025-07-15 05:55:17'),
(27, 'GAHDSE24.1F-025', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 06:00:38', '2025-07-15 06:00:38'),
(28, 'GAHDSE24.1F-026', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 06:05:40', '2025-07-15 06:05:40'),
(29, 'GAHDSE24.1F-027', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 06:10:10', '2025-07-15 06:10:10'),
(30, 'GAHDSE24.1F-028', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 06:15:27', '2025-07-15 06:15:27'),
(31, 'GAHDSE24.1F-029', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 06:20:45', '2025-07-15 06:20:45'),
(32, 'GAHDSE24.1F-030', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 06:25:12', '2025-07-15 06:25:12'),
(33, 'GAHDSE24.1F-031', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 06:30:23', '2025-07-15 06:30:23'),
(34, 'GAHDSE24.1F-032', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 06:35:40', '2025-07-15 06:35:40'),
(35, 'GAHDSE24.1F-033', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 06:40:12', '2025-07-15 06:40:12'),
(36, 'GAHDSE24.1F-034', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 06:45:55', '2025-07-15 06:45:55'),
(37, 'GAHDSE24.1F-035', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 06:50:44', '2025-07-15 06:50:44'),
(38, 'GAHDSE24.1F-036', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 06:55:30', '2025-07-15 06:55:30'),
(39, 'GAHDSE24.1F-037', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 07:00:17', '2025-07-15 07:00:17'),
(40, 'GAHDSE24.1F-038', 23, 1, 4, 'Well explained', '2025-07-15', '2025-07-15 07:05:05', '2025-07-15 07:05:05'),
(41, 'GAHDSE24.1F-039', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 07:10:23', '2025-07-15 07:10:23'),
(42, 'GAHDSE24.1F-040', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 07:15:11', '2025-07-15 07:15:11'),
(43, 'GAHDSE24.1F-041', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 07:20:40', '2025-07-15 07:20:40'),
(44, 'GAHDSE24.1F-042', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 07:25:03', '2025-07-15 07:25:03'),
(45, 'GAHDSE24.1F-043', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 07:30:20', '2025-07-15 07:30:20'),
(46, 'GAHDSE24.1F-044', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 07:35:11', '2025-07-15 07:35:11'),
(47, 'GAHDSE24.1F-045', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 07:40:27', '2025-07-15 07:40:27'),
(48, 'GAHDSE24.1F-046', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 07:45:39', '2025-07-15 07:45:39'),
(49, 'GAHDSE24.1F-047', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 07:50:55', '2025-07-15 07:50:55'),
(50, 'GAHDSE24.1F-048', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 07:55:12', '2025-07-15 07:55:12'),
(51, 'GAHDSE24.1F-049', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 08:00:10', '2025-07-15 08:00:10'),
(52, 'GAHDSE24.1F-050', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 08:05:19', '2025-07-15 08:05:19'),
(53, 'GAHDSE24.1F-001', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 03:35:12', '2025-07-15 03:35:12'),
(54, 'GAHDSE24.1F-002', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 03:45:45', '2025-07-15 03:45:45'),
(55, 'GAHDSE24.1F-003', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 03:55:33', '2025-07-15 03:55:33'),
(56, 'GAHDSE24.1F-004', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 04:05:29', '2025-07-15 04:05:29'),
(57, 'GAHDSE24.1F-005', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 04:12:10', '2025-07-15 04:12:10'),
(58, 'GAHDSE24.1F-006', 23, 1, 5, 'Well explained', '2025-07-15', '2025-07-15 04:20:55', '2025-07-15 04:20:55'),
(59, 'GAHDSE24.1F-007', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:30:12', '2025-07-15 04:30:12'),
(60, 'GAHDSE24.1F-008', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 04:35:47', '2025-07-15 04:35:47'),
(61, 'GAHDSE24.1F-009', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 04:40:30', '2025-07-15 04:40:30'),
(62, 'GAHDSE24.1F-010', 23, 1, 5, 'Great examples', '2025-07-15', '2025-07-15 04:45:22', '2025-07-15 04:45:22'),
(63, 'GAHDSE24.1F-011', 23, 1, 2, 'Not clear', '2025-07-15', '2025-07-15 04:50:08', '2025-07-15 04:50:08'),
(64, 'GAHDSE24.1F-012', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:55:59', '2025-07-15 04:55:59'),
(65, 'GAHDSE24.1F-013', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 05:00:41', '2025-07-15 05:00:41'),
(66, 'GAHDSE24.1F-014', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 05:05:15', '2025-07-15 05:05:15'),
(67, 'GAHDSE24.1F-015', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 05:10:53', '2025-07-15 05:10:53'),
(68, 'GAHDSE24.1F-016', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:15:44', '2025-07-15 05:15:44'),
(69, 'GAHDSE24.1F-017', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 05:20:32', '2025-07-15 05:20:32'),
(70, 'GAHDSE24.1F-018', 23, 1, 5, 'Well explained', '2025-07-15', '2025-07-15 05:25:10', '2025-07-15 05:25:10'),
(71, 'GAHDSE24.1F-019', 23, 1, 4, 'Great examples', '2025-07-15', '2025-07-15 05:30:01', '2025-07-15 05:30:01'),
(72, 'GAHDSE24.1F-020', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:35:23', '2025-07-15 05:35:23'),
(73, 'GAHDSE24.1F-021', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 05:40:12', '2025-07-15 05:40:12'),
(74, 'GAHDSE24.1F-022', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 05:45:40', '2025-07-15 05:45:40'),
(75, 'GAHDSE24.1F-023', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 05:50:05', '2025-07-15 05:50:05'),
(76, 'GAHDSE24.1F-024', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:55:17', '2025-07-15 05:55:17'),
(77, 'GAHDSE24.1F-025', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 06:00:38', '2025-07-15 06:00:38'),
(78, 'GAHDSE24.1F-026', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 06:05:40', '2025-07-15 06:05:40'),
(79, 'GAHDSE24.1F-027', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 06:10:10', '2025-07-15 06:10:10'),
(80, 'GAHDSE24.1F-028', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 06:15:27', '2025-07-15 06:15:27'),
(81, 'GAHDSE24.1F-029', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 06:20:45', '2025-07-15 06:20:45'),
(82, 'GAHDSE24.1F-030', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 06:25:12', '2025-07-15 06:25:12'),
(83, 'GAHDSE24.1F-031', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 06:30:23', '2025-07-15 06:30:23'),
(84, 'GAHDSE24.1F-032', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 06:35:40', '2025-07-15 06:35:40'),
(85, 'GAHDSE24.1F-033', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 06:40:12', '2025-07-15 06:40:12'),
(86, 'GAHDSE24.1F-034', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 06:45:55', '2025-07-15 06:45:55'),
(87, 'GAHDSE24.1F-035', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 06:50:44', '2025-07-15 06:50:44'),
(88, 'GAHDSE24.1F-036', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 06:55:30', '2025-07-15 06:55:30'),
(89, 'GAHDSE24.1F-037', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 07:00:17', '2025-07-15 07:00:17'),
(90, 'GAHDSE24.1F-038', 23, 1, 4, 'Well explained', '2025-07-15', '2025-07-15 07:05:05', '2025-07-15 07:05:05'),
(91, 'GAHDSE24.1F-039', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 07:10:23', '2025-07-15 07:10:23'),
(92, 'GAHDSE24.1F-040', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 07:15:11', '2025-07-15 07:15:11'),
(93, 'GAHDSE24.1F-041', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 07:20:40', '2025-07-15 07:20:40'),
(94, 'GAHDSE24.1F-042', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 07:25:03', '2025-07-15 07:25:03'),
(95, 'GAHDSE24.1F-043', 23, 1, 5, 'Loved the session', '2025-07-15', '2025-07-15 07:30:20', '2025-07-15 07:30:20'),
(96, 'GAHDSE24.1F-044', 23, 1, 4, 'Good', '2025-07-15', '2025-07-15 07:35:11', '2025-07-15 07:35:11'),
(97, 'GAHDSE24.1F-045', 23, 1, 3, 'Could be better', '2025-07-15', '2025-07-15 07:40:27', '2025-07-15 07:40:27'),
(98, 'GAHDSE24.1F-046', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 07:45:39', '2025-07-15 07:45:39'),
(99, 'GAHDSE24.1F-047', 23, 1, 5, 'Excellent lecture', '2025-07-15', '2025-07-15 07:50:55', '2025-07-15 07:50:55'),
(100, 'GAHDSE24.1F-048', 23, 1, 4, 'Very informative', '2025-07-15', '2025-07-15 07:55:12', '2025-07-15 07:55:12'),
(101, 'GAHDSE24.1F-049', 23, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 08:00:10', '2025-07-15 08:00:10'),
(102, 'GAHDSE24.1F-050', 23, 1, 3, 'Average', '2025-07-15', '2025-07-15 08:05:19', '2025-07-15 08:05:19'),
(103, 'GAHDSE23.1F-001', 24, 1, 5, 'Excellent session', '2025-07-15', '2025-07-15 03:35:12', '2025-07-15 03:35:12'),
(104, 'GAHDSE23.1F-002', 24, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 03:40:25', '2025-07-15 03:40:25'),
(105, 'GAHDSE23.1F-003', 24, 1, 4, 'Very useful', '2025-07-15', '2025-07-15 03:45:45', '2025-07-15 03:45:45'),
(106, 'GAHDSE23.1F-004', 24, 1, 3, 'Average lecture', '2025-07-15', '2025-07-15 03:52:33', '2025-07-15 03:52:33'),
(107, 'GAHDSE23.1F-005', 24, 1, 5, 'Great examples', '2025-07-15', '2025-07-15 03:57:10', '2025-07-15 03:57:10'),
(108, 'GAHDSE23.1F-006', 24, 1, 4, 'Good explanations', '2025-07-15', '2025-07-15 04:03:05', '2025-07-15 04:03:05'),
(109, 'GAHDSE23.1F-007', 24, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:10:20', '2025-07-15 04:10:20'),
(110, 'GAHDSE23.1F-008', 24, 1, 3, 'Could improve', '2025-07-15', '2025-07-15 04:15:40', '2025-07-15 04:15:40'),
(111, 'GAHDSE23.1F-009', 24, 1, 4, 'Informative', '2025-07-15', '2025-07-15 04:20:33', '2025-07-15 04:20:33'),
(112, 'GAHDSE23.1F-010', 24, 1, 5, 'Loved it', '2025-07-15', '2025-07-15 04:25:12', '2025-07-15 04:25:12'),
(113, 'GAHDSE23.1F-011', 24, 1, 2, 'Not clear', '2025-07-15', '2025-07-15 04:30:44', '2025-07-15 04:30:44'),
(114, 'GAHDSE23.1F-012', 24, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:35:19', '2025-07-15 04:35:19'),
(115, 'GAHDSE23.1F-013', 24, 1, 4, 'Well explained', '2025-07-15', '2025-07-15 04:40:27', '2025-07-15 04:40:27'),
(116, 'GAHDSE23.1F-014', 24, 1, 5, 'Excellent session', '2025-07-15', '2025-07-15 04:45:55', '2025-07-15 04:45:55'),
(117, 'GAHDSE23.1F-015', 24, 1, 3, 'Good effort', '2025-07-15', '2025-07-15 04:50:12', '2025-07-15 04:50:12'),
(118, 'GAHDSE23.1F-016', 24, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 04:55:38', '2025-07-15 04:55:38'),
(119, 'GAHDSE23.1F-017', 24, 1, 4, 'Nice explanations', '2025-07-15', '2025-07-15 05:00:59', '2025-07-15 05:00:59'),
(120, 'GAHDSE23.1F-018', 24, 1, 5, 'Very helpful', '2025-07-15', '2025-07-15 05:05:41', '2025-07-15 05:05:41'),
(121, 'GAHDSE23.1F-019', 24, 1, 4, 'Good examples', '2025-07-15', '2025-07-15 05:10:21', '2025-07-15 05:10:21'),
(122, 'GAHDSE23.1F-020', 24, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:15:18', '2025-07-15 05:15:18'),
(123, 'GAHDSE23.1F-021', 24, 1, 3, 'Average', '2025-07-15', '2025-07-15 05:20:12', '2025-07-15 05:20:12'),
(124, 'GAHDSE23.1F-022', 24, 1, 4, 'Informative', '2025-07-15', '2025-07-15 05:25:34', '2025-07-15 05:25:34'),
(125, 'GAHDSE23.1F-023', 24, 1, 5, 'Great session', '2025-07-15', '2025-07-15 05:30:47', '2025-07-15 05:30:47'),
(126, 'GAHDSE23.1F-024', 24, 0, NULL, 'Absent', '2025-07-15', '2025-07-15 05:35:22', '2025-07-15 05:35:22'),
(127, 'GAHDSE23.1F-025', 24, 1, 4, 'Very helpful', '2025-07-15', '2025-07-15 05:40:18', '2025-07-15 05:40:18'),
(128, 'GAHDSE24.1F-102', 24, 1, 5, 'good', '2025-07-15', '2025-07-15 08:27:12', '2025-07-15 08:27:12'),
(129, 'GAHDSE23.1F-055', 24, 1, 4, 'good', '2025-07-15', '2025-07-15 08:36:06', '2025-07-15 08:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hall_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classes_department_id_foreign` (`department_id`),
  KEY `classes_subject_id_foreign` (`subject_id`),
  KEY `classes_teacher_id_foreign` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `department_id`, `subject_id`, `teacher_id`, `class_name`, `hall_number`, `date`, `day`, `start_time`, `end_time`, `week`, `description`, `created_at`, `updated_at`) VALUES
(21, 1, 1, 'Tea001', 'Week 01 Lecture', 'H-101', '2025-07-20', 'Monday', '09:00:00', '10:30:00', 'Week 01', 'Introduction to Programming', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(22, 1, 2, 'Tea002', 'Week 01 Lecture', 'H-102', '2025-07-21', 'Tuesday', '11:00:00', '12:30:00', 'Week 01', 'Programming Basics', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(23, 1, 3, 'Tea007', 'Week 01 Lecture', 'H-103', '2025-07-15', 'Wednesday', '09:00:00', '10:30:00', 'Week 01', 'Machine Learning Intro', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(24, 2, 3, 'Tea003', 'Week 01 Lecture', 'H-201', '2025-07-15', 'Thursday', '10:00:00', '11:30:00', 'Week 01', 'Advanced Machine Learning', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(25, 2, 4, 'Tea004', 'Week 01 Lecture', 'H-202', '2025-07-24', 'Friday', '09:00:00', '10:30:00', 'Week 01', 'Data Structures Overview', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(26, 2, 2, 'Tea008', 'Week 01 Lecture', 'H-203', '2025-07-25', 'Saturday', '13:00:00', '14:30:00', 'Week 01', 'ML Applications', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(27, 3, 5, 'Tea005', 'Week 01 Lecture', 'H-301', '2025-07-26', 'Sunday', '08:30:00', '10:00:00', 'Week 01', 'Web Development Basics', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(28, 3, 1, 'Tea006', 'Week 01 Lecture', 'H-302', '2025-07-27', 'Monday', '09:00:00', '10:30:00', 'Week 01', 'Programming Fundamentals', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(29, 3, 4, 'Tea009', 'Week 01 Lecture', 'H-303', '2025-07-28', 'Tuesday', '11:00:00', '12:30:00', 'Week 01', 'Data Structures Deep Dive', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(30, 1, 1, 'Tea001', 'Week 02 Lecture', 'H-101', '2025-07-14', 'Monday', '09:00:00', '10:30:00', 'Week 02', 'Data Types and Variables', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(31, 1, 2, 'Tea002', 'Week 02 Lecture', 'H-102', '2025-07-28', 'Tuesday', '11:00:00', '12:30:00', 'Week 02', 'Control Flow in Programming', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(32, 1, 3, 'Tea007', 'Week 02 Lecture', 'H-103', '2025-07-29', 'Wednesday', '09:00:00', '10:30:00', 'Week 02', 'Supervised Learning', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(33, 2, 3, 'Tea003', 'Week 02 Lecture', 'H-201', '2025-07-30', 'Thursday', '10:00:00', '11:30:00', 'Week 02', 'ML Algorithms', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(34, 2, 4, 'Tea004', 'Week 02 Lecture', 'H-202', '2025-07-31', 'Friday', '09:00:00', '10:30:00', 'Week 02', 'Trees and Graphs', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(35, 2, 2, 'Tea008', 'Week 02 Lecture', 'H-203', '2025-08-01', 'Saturday', '13:00:00', '14:30:00', 'Week 02', 'Unsupervised Learning', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(36, 3, 5, 'Tea005', 'Week 02 Lecture', 'H-301', '2025-08-02', 'Sunday', '08:30:00', '10:00:00', 'Week 02', 'CSS & HTML', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(37, 3, 1, 'Tea006', 'Week 02 Lecture', 'H-302', '2025-08-03', 'Monday', '09:00:00', '10:30:00', 'Week 02', 'Loops and Functions', '2025-07-15 08:00:16', '2025-07-15 08:00:16'),
(38, 3, 4, 'Tea009', 'Week 02 Lecture', 'H-303', '2025-08-04', 'Tuesday', '11:00:00', '12:30:00', 'Week 02', 'Linked Lists and Stacks', '2025-07-15 08:00:16', '2025-07-15 08:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Computer Science', '2025-07-15 01:43:29', '2025-07-15 01:43:29'),
(2, 'Mechanical Engineering', '2025-07-15 01:43:29', '2025-07-15 01:43:29'),
(3, 'Software Engineering', '2025-07-15 01:43:29', '2025-07-15 01:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `department_subject`
--

DROP TABLE IF EXISTS `department_subject`;
CREATE TABLE IF NOT EXISTS `department_subject` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_subject_department_id_subject_id_unique` (`department_id`,`subject_id`),
  KEY `department_subject_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_subject`
--

INSERT INTO `department_subject` (`id`, `department_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(7, 1, 1, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(8, 1, 2, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(9, 1, 3, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(10, 2, 1, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(11, 2, 3, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(12, 2, 4, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(13, 3, 1, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(14, 3, 2, '2025-07-15 03:48:39', '2025-07-15 03:48:39'),
(15, 3, 5, '2025-07-15 03:48:39', '2025-07-15 03:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2025_07_15_013759_create_departments_table', 1),
(5, '2025_07_15_013901_create_students_table', 1),
(6, '2025_07_15_032545_create_subjects_table', 2),
(7, '2025_07_15_032858_create_department_subject_table', 3),
(8, '2025_07_15_040517_create_teachers_table', 4),
(10, '2025_07_15_040842_create_classes_table', 5),
(11, '2025_07_15_043120_create_teachers_table', 6),
(12, '2025_07_15_043440_create_classes_table', 7),
(13, '2025_07_15_051759_create_teachers_table', 8),
(14, '2025_07_15_052403_create_classes_table', 9),
(15, '2025_07_15_055806_create_teachers_table', 10),
(16, '2025_07_15_075038_create_classes_table', 11),
(17, '2025_07_15_125457_create_attendance_records_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`student_number`),
  UNIQUE KEY `students_email_unique` (`email`),
  KEY `students_dept_id_foreign` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_number`, `full_name`, `email`, `password`, `dept_id`, `created_at`, `updated_at`) VALUES
('GAHDSE23.1F-001', 'Nimali Jayasinghe', 'nimali.jayasinghe01@example.com', 'pw001', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-002', 'Kasun Wickramasinghe', 'kasun.wickramasinghe02@example.com', 'pw002', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-003', 'Dilani Hettiarachchi', 'dilani.hettiarachchi03@example.com', 'pw003', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-004', 'Amila Rathnayake', 'amila.rathnayake04@example.com', 'pw004', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-005', 'Piumi Senanayake', 'piumi.senanayake05@example.com', 'pw005', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-006', 'Sanjaya Fernando', 'sanjaya.fernando06@example.com', 'pw006', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-007', 'Dilshan Perera', 'dilshan.perera07@example.com', 'pw007', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-008', 'Nadeesha Kumari', 'nadeesha.kumari08@example.com', 'pw008', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-009', 'Roshan Jayawardena', 'roshan.jayawardena09@example.com', 'pw009', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-010', 'Chamila Gunawardena', 'chamila.gunawardena10@example.com', 'pw010', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-011', 'Tharindu Silva', 'tharindu.silva11@example.com', 'pw011', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-012', 'Hiruni Fernando', 'hiruni.fernando12@example.com', 'pw012', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-013', 'Niranjala Rajapaksa', 'niranjala.rajapaksa13@example.com', 'pw013', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-014', 'Saman Kumara', 'saman.kumara14@example.com', 'pw014', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-015', 'Chandana Silva', 'chandana.silva15@example.com', 'pw015', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-016', 'Malsha Perera', 'malsha.perera16@example.com', 'pw016', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-017', 'Ruwantha Dias', 'ruwantha.dias17@example.com', 'pw017', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-018', 'Kavindi Jayasuriya', 'kavindi.jayasuriya18@example.com', 'pw018', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-019', 'Nishantha Ekanayake', 'nishantha.ekanayake19@example.com', 'pw019', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-020', 'Ramya Wickramasinghe', 'ramya.wickramasinghe20@example.com', 'pw020', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-021', 'Sajith Perera', 'sajith.perera21@example.com', 'pw021', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-022', 'Dinithi Kumari', 'dinithi.kumari22@example.com', 'pw022', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-023', 'Thilini Jayawardena', 'thilini.jayawardena23@example.com', 'pw023', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-024', 'Ravindra Fernando', 'ravindra.fernando24@example.com', 'pw024', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-025', 'Lakshan Dias', 'lakshan.dias25@example.com', 'pw025', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-026', 'Nadeesha Wijesinghe', 'nadeesha.wijesinghe26@example.com', 'pw026', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-027', 'Sahan Jayasuriya', 'sahan.jayasuriya27@example.com', 'pw027', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-028', 'Ramani Perera', 'ramani.perera28@example.com', 'pw028', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-029', 'Isuru Silva', 'isuru.silva29@example.com', 'pw029', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-030', 'Sachini Fernando', 'sachini.fernando30@example.com', 'pw030', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-031', 'Chandrika Kumari', 'chandrika.kumari31@example.com', 'pw031', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-032', 'Sampath Perera', 'sampath.perera32@example.com', 'pw032', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-033', 'Nimal Jayawardena', 'nimal.jayawardena33@example.com', 'pw033', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-034', 'Amal Senanayake', 'amal.senanayake34@example.com', 'pw034', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-035', 'Pavithra Silva', 'pavithra.silva35@example.com', 'pw035', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-036', 'Roshan Fernando', 'roshan.fernando36@example.com', 'pw036', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-037', 'Thushara Kumari', 'thushara.kumari37@example.com', 'pw037', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-038', 'Kasun Perera', 'kasun.perera38@example.com', 'pw038', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-039', 'Nishantha Silva', 'nishantha.silva39@example.com', 'pw039', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-040', 'Chandima Jayasinghe', 'chandima.jayasinghe40@example.com', 'pw040', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-041', 'Madhawa Fernando', 'madhawa.fernando41@example.com', 'pw041', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-042', 'Harsha Kumara', 'harsha.kumara42@example.com', 'pw042', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-043', 'Kavindi Perera', 'kavindi.perera43@example.com', 'pw043', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-044', 'Sewwandi Kumari', 'sewwandi.kumari44@example.com', 'pw044', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-045', 'Saman Silva', 'saman.silva45@example.com', 'pw045', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-046', 'Dileepa Jayasuriya', 'dileepa.jayasuriya46@example.com', 'pw046', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-047', 'Chamath Fernando', 'chamath.fernando47@example.com', 'pw047', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-048', 'Pavithra Perera', 'pavithra.perera48@example.com', 'pw048', 3, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-049', 'Nimal Kumara', 'nimal.kumara49@example.com', 'pw049', 1, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-050', 'Sunil Jayawardena', 'sunil.jayawardena50@example.com', 'pw050', 2, '2025-07-15 13:27:39', '2025-07-15 13:27:39'),
('GAHDSE23.1F-051', 'Kasuni Jayawardena', 'kasuni.jayasuriya51@example.com', 'pw051', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-052', 'Amal Silva', 'amal.silva52@example.com', 'pw052', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-053', 'Shanuka Perera', 'shanuka.perera53@example.com', 'pw053', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-054', 'Nirmala Kumari', 'nirmala.kumari54@example.com', 'pw054', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-055', 'Ruwan Fernando', 'ruwan.fernando55@example.com', 'pw055', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-056', 'Samanthi Jayasuriya', 'samanthi.jayasuriya56@example.com', 'pw056', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-057', 'Praveen Senanayake', 'praveen.senanayake57@example.com', 'pw057', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-058', 'Madhavi Kumari', 'madhavi.kumari58@example.com', 'pw058', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-059', 'Chamara Silva', 'chamara.silva59@example.com', 'pw059', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-060', 'Roshantha Perera', 'roshantha.perera60@example.com', 'pw060', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-061', 'Thilini Fernando', 'thilini.fernando61@example.com', 'pw061', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-062', 'Isuru Jayawardena', 'isuru.jayawardena62@example.com', 'pw062', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-063', 'Nadeesha Kumari', 'nadeesha.kumari63@example.com', 'pw063', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-064', 'Kasun Madushanka', 'kasun.madushanka64@example.com', 'pw064', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-065', 'Sewwandi Perera', 'sewwandi.perera65@example.com', 'pw065', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-066', 'Dinesh Fernando', 'dinesh.fernando66@example.com', 'pw066', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-067', 'Chathurika Kumari', 'chathurika.kumari67@example.com', 'pw067', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-068', 'Sahan Jayasuriya', 'sahan.jayasuriya68@example.com', 'pw068', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-069', 'Ramya Perera', 'ramya.perera69@example.com', 'pw069', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-070', 'Nimal Silva', 'nimal.silva70@example.com', 'pw070', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-071', 'Saman Kumara', 'saman.kumara71@example.com', 'pw071', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-072', 'Piumi Fernando', 'piumi.fernando72@example.com', 'pw072', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-073', 'Harsha Kumari', 'harsha.kumari73@example.com', 'pw073', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-074', 'Lakshan Perera', 'lakshan.perera74@example.com', 'pw074', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-075', 'Kasuni Jayawardena', 'kasuni.jayawardena75@example.com', 'pw075', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-076', 'Isuru Silva', 'isuru.silva76@example.com', 'pw076', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-077', 'Tharindu Kumara', 'tharindu.kumara77@example.com', 'pw077', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-078', 'Roshantha Fernando', 'roshantha.fernando78@example.com', 'pw078', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-079', 'Nimali Kumari', 'nimali.kumari79@example.com', 'pw079', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-080', 'Dileepa Jayasuriya', 'dileepa.jayasuriya80@example.com', 'pw080', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-081', 'Chandika Perera', 'chandika.perera81@example.com', 'pw081', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-082', 'Samanthi Silva', 'samanthi.silva82@example.com', 'pw082', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-083', 'Nishantha Kumara', 'nishantha.kumara83@example.com', 'pw083', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-084', 'Madhawa Fernando', 'madhawa.fernando84@example.com', 'pw084', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-085', 'Thilini Perera', 'thilini.perera85@example.com', 'pw085', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-086', 'Kavindi Jayawardena', 'kavindi.jayawardena86@example.com', 'pw086', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-087', 'Lasith Silva', 'lasith.silva87@example.com', 'pw087', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-088', 'Sewwandi Kumari', 'sewwandi.kumari88@example.com', 'pw088', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-089', 'Ruwan Perera', 'ruwan.perera89@example.com', 'pw089', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-090', 'Sunil Fernando', 'sunil.fernando90@example.com', 'pw090', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-091', 'Thushara Kumari', 'thushara.kumari91@example.com', 'pw091', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-092', 'Isuru Jayasuriya', 'isuru.jayasuriya92@example.com', 'pw092', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-093', 'Saman Perera', 'saman.perera93@example.com', 'pw093', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-094', 'Nadeesha Silva', 'nadeesha.silva94@example.com', 'pw094', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-095', 'Chamath Kumara', 'chamath.kumara95@example.com', 'pw095', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-096', 'Pavithra Fernando', 'pavithra.fernando96@example.com', 'pw096', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-097', 'Ravindu Kumari', 'ravindu.kumari97@example.com', 'pw097', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-098', 'Nishantha Jayawardena', 'nishantha.jayawardena98@example.com', 'pw098', 3, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-099', 'Kavindi Silva', 'kavindi.silva99@example.com', 'pw099', 1, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE23.1F-100', 'Sajeewa Perera', 'sajeewa.perera100@example.com', 'pw100', 2, '2025-07-15 13:23:55', '2025-07-15 13:23:55'),
('GAHDSE24.1F-001', 'Nimali Perera', 'nimali.perera@example.com', 'pw001', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-002', 'Kasun Fernando', 'kasun.fernando@example.com', 'pw002', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-003', 'Dilani Weerasinghe', 'dilani.weerasinghe@example.com', 'pw003', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-004', 'Tharindu Jayasuriya', 'tharindu.jayasuriya@example.com', 'pw004', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-005', 'Sajani Silva', 'sajani.silva@example.com', 'pw005', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-006', 'Chathura Dissanayake', 'chathura.d@example.com', 'pw006', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-007', 'Isuru Abeysekera', 'isuru.abey@example.com', 'pw007', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-008', 'Harshani Kumari', 'harshani.k@example.com', 'pw008', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-009', 'Ravindu Ranasinghe', 'ravindu.r@example.com', 'pw009', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-010', 'Nadeesha Madushani', 'nadeesha.m@example.com', 'pw010', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-011', 'Lakshan Perera', 'lakshan.p@example.com', 'pw011', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-012', 'Sahan Gunasekara', 'sahan.g@example.com', 'pw012', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-013', 'Chamodi Herath', 'chamodi.h@example.com', 'pw013', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-014', 'Dulaj Wickramasinghe', 'dulaj.w@example.com', 'pw014', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-015', 'Nuwani Jayawardena', 'nuwani.j@example.com', 'pw015', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-016', 'Kavindu Rajapaksha', 'kavindu.r@example.com', 'pw016', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-017', 'Minoli De Silva', 'minoli.ds@example.com', 'pw017', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-018', 'Sewwandi Bandara', 'sewwandi.b@example.com', 'pw018', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-019', 'Himasha Ekanayake', 'himasha.e@example.com', 'pw019', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-020', 'Thilina Rathnayake', 'thilina.r@example.com', 'pw020', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-021', 'Ishara Senanayake', 'ishara.s@example.com', 'pw021', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-022', 'Madara Pathirana', 'madara.p@example.com', 'pw022', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-023', 'Dineth Jayasekara', 'dineth.j@example.com', 'pw023', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-024', 'Ruwani Karunaratne', 'ruwani.k@example.com', 'pw024', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-025', 'Pasindu Gunarathna', 'pasindu.g@example.com', 'pw025', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-026', 'Shanika Weerakoon', 'shanika.w@example.com', 'pw026', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-027', 'Navodhi Kumuduni', 'navodhi.k@example.com', 'pw027', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-028', 'Sasindu Alwis', 'sasindu.a@example.com', 'pw028', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-029', 'Malki Samarakoon', 'malki.s@example.com', 'pw029', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-030', 'Ishanka Rathnayaka', 'ishanka.r@example.com', 'pw030', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-031', 'Dinara Dilrukshi', 'dinara.d@example.com', 'pw031', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-032', 'Lakshitha Prabodha', 'lakshitha.p@example.com', 'pw032', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-033', 'Shavindra Mihiranga', 'shavindra.m@example.com', 'pw033', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-034', 'Thamali Rodrigo', 'thamali.r@example.com', 'pw034', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-035', 'Hirantha Jayalath', 'hirantha.j@example.com', 'pw035', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-036', 'Yashoda Samarasinghe', 'yashoda.s@example.com', 'pw036', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-037', 'Ravindi Gamage', 'ravindi.g@example.com', 'pw037', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-038', 'Praveen Abeykoon', 'praveen.a@example.com', 'pw038', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-039', 'Kavisha Perera', 'kavisha.p@example.com', 'pw039', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-040', 'Chameera Ranathunga', 'chameera.r@example.com', 'pw040', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-041', 'Nimashi Edirisinghe', 'nimashi.e@example.com', 'pw041', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-042', 'Nimesh Madushan', 'nimesh.m@example.com', 'pw042', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-043', 'Sachini Gunawardena', 'sachini.g@example.com', 'pw043', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-044', 'Pubudu Bandara', 'pubudu.b@example.com', 'pw044', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-045', 'Yohani Dilrukshi', 'yohani.d@example.com', 'pw045', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-046', 'Kalana Senarath', 'kalana.s@example.com', 'pw046', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-047', 'Hansani Ranasinghe', 'hansani.r@example.com', 'pw047', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-048', 'Sandun Perera', 'sandun.p@example.com', 'pw048', 3, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-049', 'Dilumi Nanayakkara', 'dilumi.n@example.com', 'pw049', 1, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-050', 'Ramesh Wickrama', 'ramesh.w@example.com', 'pw050', 2, '2025-07-15 13:16:00', '2025-07-15 13:16:00'),
('GAHDSE24.1F-051', 'Amila Jayasuriya', 'amila.jayasuriya@example.com', 'pw051', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-052', 'Piumi Rathnayake', 'piumi.rathnayake@example.com', 'pw052', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-053', 'Sanjaya Senanayake', 'sanjaya.senanayake@example.com', 'pw053', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-054', 'Dilshan Perera', 'dilshan.perera@example.com', 'pw054', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-055', 'Nadeesha Kumari', 'nadeesha.kumari@example.com', 'pw055', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-056', 'Roshan Fernando', 'roshan.fernando@example.com', 'pw056', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-057', 'Himali Silva', 'himali.silva@example.com', 'pw057', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-058', 'Kasuni Bandara', 'kasuni.bandara@example.com', 'pw058', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-059', 'Chathura Abeysekera', 'chathura.abeysekera@example.com', 'pw059', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-060', 'Nirmala Jayawardena', 'nirmala.jayawardena@example.com', 'pw060', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-061', 'Tharindu Rajapaksha', 'tharindu.rajapaksha@example.com', 'pw061', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-062', 'Madhawa Gunasekara', 'madhawa.gunasekara@example.com', 'pw062', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-063', 'Ishani Perera', 'ishani.perera@example.com', 'pw063', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-064', 'Lakshan Wijesinghe', 'lakshan.wijesinghe@example.com', 'pw064', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-065', 'Dilani Kumari', 'dilani.kumari@example.com', 'pw065', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-066', 'Sahan Madushanka', 'sahan.madushanka@example.com', 'pw066', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-067', 'Shanika Perera', 'shanika.perera@example.com', 'pw067', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-068', 'Ravindu Silva', 'ravindu.silva@example.com', 'pw068', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-069', 'Nadeesha Kumari', 'nadeesha.kumari2@example.com', 'pw069', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-070', 'Kavindi Jayasuriya', 'kavindi.jayasuriya@example.com', 'pw070', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-071', 'Roshan Abeywardena', 'roshan.abeywardena@example.com', 'pw071', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-072', 'Madusha Dissanayake', 'madusha.dissanayake@example.com', 'pw072', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-073', 'Saman Kumara', 'saman.kumara@example.com', 'pw073', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-074', 'Nimali Fernando', 'nimali.fernando@example.com', 'pw074', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-075', 'Chamara Perera', 'chamara.perera@example.com', 'pw075', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-076', 'Pradeep Jayasekara', 'pradeep.jayasekara@example.com', 'pw076', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-077', 'Sanduni Bandara', 'sanduni.bandara@example.com', 'pw077', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-078', 'Kasun Ekanayake', 'kasun.ekanayake@example.com', 'pw078', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-079', 'Ishara Perera', 'ishara.perera@example.com', 'pw079', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-080', 'Sewwandi Silva', 'sewwandi.silva@example.com', 'pw080', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-081', 'Nishantha Kumara', 'nishantha.kumara@example.com', 'pw081', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-082', 'Samantha Jayawardena', 'samantha.jayawardena@example.com', 'pw082', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-083', 'Thilini Fernando', 'thilini.fernando@example.com', 'pw083', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-084', 'Harsha Perera', 'harsha.perera@example.com', 'pw084', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-085', 'Dilusha Senanayake', 'dilusha.senanayake@example.com', 'pw085', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-086', 'Kasuni Silva', 'kasuni.silva@example.com', 'pw086', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-087', 'Ruwan Madushanka', 'ruwan.madushanka@example.com', 'pw087', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-088', 'Nuwan Wickramasinghe', 'nuwan.wickramasinghe@example.com', 'pw088', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-089', 'Isuru Jayalath', 'isuru.jayalath@example.com', 'pw089', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-090', 'Madhavi Perera', 'madhavi.perera@example.com', 'pw090', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-091', 'Chinthaka Kumara', 'chinthaka.kumara@example.com', 'pw091', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-092', 'Roshani Jayasinghe', 'roshani.jayasinghe@example.com', 'pw092', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-093', 'Nirosha Silva', 'nirosha.silva@example.com', 'pw093', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-094', 'Sunil Perera', 'sunil.perera@example.com', 'pw094', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-095', 'Samantha Rajapaksha', 'samantha.rajapaksha@example.com', 'pw095', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-096', 'Sanduni Kumari', 'sanduni.kumari@example.com', 'pw096', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-097', 'Lasith Fernando', 'lasith.fernando@example.com', 'pw097', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-098', 'Prabath Silva', 'prabath.silva@example.com', 'pw098', 3, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-099', 'Nisansala Perera', 'nisansala.perera@example.com', 'pw099', 1, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-100', 'Kavinda Jayawardena', 'kavinda.jayawardena@example.com', 'pw100', 2, '2025-07-15 13:17:49', '2025-07-15 13:17:49'),
('GAHDSE24.1F-101', 'Alice Perera', 'alice@example.com', 'pw101', 1, '2025-07-15 01:43:56', '2025-07-15 01:43:56'),
('GAHDSE24.1F-102', 'Nimal Jayasuriya', 'nimal@example.com', 'pw102', 2, '2025-07-15 01:43:56', '2025-07-15 01:43:56'),
('GAHDSE24.1F-103', 'Kamal Fernando', 'kamal@example.com', 'pw103', 3, '2025-07-15 01:43:56', '2025-07-15 01:43:56'),
('GAHDSE24.1F-104', 'Sajini Weerasinghe', 'sajini@example.com', 'pw104', 1, '2025-07-15 01:43:56', '2025-07-15 01:43:56'),
('GAHDSE24.1F-105', 'Tharindu Silva', 'tharindu@example.com', 'pw105', 2, '2025-07-15 01:43:56', '2025-07-15 01:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subjects_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mathematics', '2025-07-15 03:33:21', '2025-07-15 03:33:21'),
(2, 'Programming', '2025-07-15 03:33:21', '2025-07-15 03:33:21'),
(3, 'Machine Learning', '2025-07-15 03:33:21', '2025-07-15 03:33:21'),
(4, 'Data Structures', '2025-07-15 03:36:49', '2025-07-15 03:36:49'),
(5, 'Web Development', '2025-07-15 03:36:49', '2025-07-15 03:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teachers_email_unique` (`email`),
  KEY `teachers_department_id_foreign` (`department_id`),
  KEY `teachers_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`, `email`, `phone_number`, `password`, `department_id`, `subject_id`, `created_at`, `updated_at`) VALUES
('Tea001', 'Nimal Perera', 'nimal.perera@example.lk', '0712345001', 'pwtc001', 1, 1, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea002', 'Kumari Fernando', 'kumari.fernando@example.lk', '0712345002', 'pwtc002', 1, 2, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea003', 'Sunil Jayasinghe', 'sunil.jayasinghe@example.lk', '0712345003', 'pwtc003', 2, 3, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea004', 'Samanthi de Silva', 'samanthi.desilva@example.lk', '0712345004', 'pwtc004', 2, 4, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea005', 'Rajitha Silva', 'rajitha.silva@example.lk', '0712345005', 'pwtc005', 3, 5, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea006', 'Anusha Perera', 'anusha.perera@example.lk', '0712345006', 'pwtc006', 3, 1, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea007', 'Chamara Bandara', 'chamara.bandara@example.lk', '0712345007', 'pwtc007', 1, 3, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea008', 'Rashmi Kumari', 'rashmi.kumari@example.lk', '0712345008', 'pwtc008', 2, 2, '2025-07-15 06:03:05', '2025-07-15 06:03:05'),
('Tea009', 'Niroshan Jayawardena', 'niroshan.jayawardena@example.lk', '0712345009', 'pwtc009', 3, 4, '2025-07-15 06:03:05', '2025-07-15 06:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_records`
--
ALTER TABLE `attendance_records`
  ADD CONSTRAINT `attendance_records_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_number`) ON DELETE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classes_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE;

--
-- Constraints for table `department_subject`
--
ALTER TABLE `department_subject`
  ADD CONSTRAINT `department_subject_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `department_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teachers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
