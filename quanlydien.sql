-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2021 at 04:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlydien`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dpm_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dpm_name`) VALUES
(1, 'Admin'),
(2, 'Lãnh Đạo'),
(3, 'Quản Lí'),
(4, 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `detail_exports`
--

CREATE TABLE `detail_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `de_amount` int(11) NOT NULL,
  `de_price` decimal(15,0) NOT NULL,
  `de_into_money` decimal(20,0) NOT NULL,
  `sup_id` bigint(20) UNSIGNED NOT NULL,
  `exp_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_exports`
--

INSERT INTO `detail_exports` (`id`, `de_amount`, `de_price`, `de_into_money`, `sup_id`, `exp_id`) VALUES
(1, 100, '3000', '300000', 1, 1),
(2, 200, '3500', '700000', 2, 1),
(3, 200, '12500', '2500000', 7, 2),
(4, 200, '9000', '1800000', 5, 2),
(5, 20, '4005000', '80100000', 12, 3),
(6, 20, '2500000', '50000000', 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_imports`
--

CREATE TABLE `detail_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `di_amount` int(11) NOT NULL,
  `di_price` decimal(15,0) NOT NULL,
  `di_into_money` decimal(20,0) DEFAULT NULL,
  `sup_id` bigint(20) UNSIGNED NOT NULL,
  `imp_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `qua_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_imports`
--

INSERT INTO `detail_imports` (`id`, `di_amount`, `di_price`, `di_into_money`, `sup_id`, `imp_id`, `pro_id`, `qua_id`) VALUES
(1, 5000, '3000', '15000000', 1, 1, 1, 1),
(2, 5000, '3200', '16000000', 2, 1, 1, 1),
(3, 5000, '2500', '12500000', 3, 1, 1, 1),
(4, 5000, '2000', '10000000', 5, 1, 1, 2),
(5, 7000, '4000', '28000000', 6, 1, 1, 2),
(6, 20000, '9000', '180000000', 7, 1, 1, 2),
(7, 100, '6750000', '675000000', 8, 2, 4, 1),
(8, 50, '13000000', '650000000', 9, 2, 4, 1),
(9, 50, '92400000', '4620000000', 10, 2, 2, 1),
(10, 500, '1850000', '925000000', 11, 3, 3, 3),
(11, 500, '3625000', '1812500000', 12, 3, 3, 1),
(12, 200, '450000', '90000000', 13, 4, 5, 2),
(13, 200, '550000', '110000000', 14, 4, 7, 1),
(14, 300, '670000', '201000000', 15, 4, 3, 1),
(15, 300, '670000', '201000000', 15, 5, 3, 1),
(16, 500, '7650000', '3825000000', 19, 6, 7, 1),
(17, 500, '6650000', '3325000000', 19, 6, 5, 2),
(18, 500, '7150000', '3575000000', 20, 6, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dis_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `dis_name`) VALUES
(1, 'Tây Bắc Bộ'),
(2, 'Đông Bắc Bộ'),
(3, 'Bắc Trung Bộ'),
(4, 'Nam Trung Bộ'),
(5, 'Tây Nguyên'),
(6, 'Tây Nam Bộ'),
(7, 'Đông Nam Bộ');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exp_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_date` date NOT NULL,
  `exp_total` decimal(20,0) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exports`
--

INSERT INTO `exports` (`id`, `exp_code`, `exp_date`, `exp_total`, `user_id`) VALUES
(1, '1XK12061', '2021-04-20', '1000000', 1),
(2, '1XK12062', '2021-04-25', '4300000', 1),
(3, '1XK12063', '2021-05-30', '130100000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imp_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imp_date` date NOT NULL,
  `imp_total` decimal(20,0) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `imp_code`, `imp_date`, `imp_total`, `user_id`) VALUES
(1, '1NK12061', '2021-04-12', '261500000', 1),
(2, '1NK12062', '2021-05-10', '5945000000', 1),
(3, '1NK12063', '2021-05-27', '2737500000', 1),
(4, '1NK12064', '2021-06-12', '401000000', 1),
(5, '1NK12065', '2021-06-12', '388500000', 1),
(6, '1NK12066', '2021-05-30', '10725000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inf_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inf_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inf_phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inf_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inf_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(351, '2014_10_12_100000_create_password_resets_table', 1),
(352, '2019_08_19_000000_create_failed_jobs_table', 1),
(353, '2021_05_21_020906_create_information_table', 1),
(354, '2021_05_21_020934_create_districts_table', 1),
(355, '2021_05_21_020952_create_departments_table', 1),
(356, '2021_05_21_021112_create_users_table', 1),
(357, '2021_05_21_021131_create_producers_table', 1),
(358, '2021_05_21_021147_create_qualities_table', 1),
(359, '2021_05_21_021157_create_units_table', 1),
(360, '2021_05_21_021215_create_supplies_table', 1),
(361, '2021_05_21_021230_create_imports_table', 1),
(362, '2021_05_21_021238_create_exports_table', 1),
(363, '2021_05_21_021320_create_detail_imports_table', 1),
(364, '2021_05_21_021340_create_detail_exports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_phone` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_employee` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `pro_name`, `pro_address`, `pro_phone`, `pro_email`, `pro_employee`, `dis_id`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Sandy Gutkowski', 'Andorra', '0681337692', 'aroberts@cartwright.net', 'Faye Bradtke', 3, NULL, NULL),
(2, 'Prof. Anastacio Fahey DDS', 'Benin', '0906615417', 'patsy.hane@kunze.com', 'Dina Schultz DDS', 1, NULL, NULL),
(3, 'Karlee Beier Sr.', 'Senegal', '0488870815', 'pouros.taylor@gmail.com', 'Dr. Bella Dickens', 6, NULL, NULL),
(4, 'Anika Douglas', 'United Kingdom', '0974211355', 'omer67@yahoo.com', 'Mike Hill', 5, NULL, NULL),
(5, 'Kathryne Bogisich', 'Jordan', '0511735444', 'werner47@durgan.com', 'Jonatan Breitenberg', 3, NULL, NULL),
(6, 'Alexandra Johns Sr.', 'Tanzania', '0472831120', 'rrau@ziemann.org', 'Dr. Terrill Barrows MD', 2, NULL, NULL),
(7, 'Joe VonRueden', 'Armenia', '0746593019', 'orlando.oreilly@schimmel.org', 'Prof. Gilbert Quigley', 7, NULL, NULL),
(8, 'Alexys Crist', 'Micronesia', '0814174780', 'xaltenwerth@gmail.com', 'Miss Carmen Cassin DDS', 7, NULL, NULL),
(9, 'Dr. Jaylin Botsford DDS', 'Saint Kitts and Nevis', '0630569784', 'tkautzer@yahoo.com', 'Lesley Von I', 4, NULL, NULL),
(10, 'Madison Howell', 'Guinea', '0404215159', 'alivia62@yahoo.com', 'Lauriane Wehner', 7, NULL, NULL),
(11, 'Mr. Leonardo Stracke I', 'Philippines', '0362510510', 'colt31@schiller.org', 'Mr. Dustin Von', 5, NULL, NULL),
(12, 'Jamal Schuster', 'Solomon Islands', '0922585313', 'earmstrong@spinka.net', 'Douglas Kilback', 3, NULL, NULL),
(13, 'Prof. Hiram Koch PhD', 'Gabon', '0991581328', 'jayda.koss@mayert.info', 'Ms. Beverly Jakubowski II', 7, NULL, NULL),
(14, 'Maria Kunde I', 'French Southern Territories', '0411197929', 'lynch.ova@yahoo.com', 'Sandrine Schiller', 3, NULL, NULL),
(15, 'Dana Effertz Jr.', 'Martinique', '0171478615', 'rschulist@casper.com', 'Dr. Javier Bailey DVM', 6, NULL, NULL),
(16, 'Dr. Dan Tremblay', 'Iran', '0175309973', 'dasia.buckridge@jacobs.org', 'Mr. Manuel Zieme Jr.', 3, NULL, NULL),
(17, 'Clare Beahan', 'French Southern Territories', '0323774778', 'emitchell@jerde.com', 'Destini Strosin', 6, NULL, NULL),
(18, 'Prof. Mathew Carter MD', 'Togo', '0462351851', 'dereck52@lang.org', 'Lexie Rath', 2, NULL, NULL),
(19, 'Mireille Reichert DVM', 'Slovakia (Slovak Republic)', '0447511384', 'wwolff@walker.com', 'Pierce Kovacek IV', 6, NULL, NULL),
(20, 'Ewell Waters', 'Spain', '0476031201', 'kozey.teresa@hotmail.com', 'Mr. Hollis Brakus', 7, NULL, NULL),
(21, 'Eve McLaughlin', 'Argentina', '0707738084', 'abigale46@rodriguez.org', 'Savannah Sporer', 4, NULL, NULL),
(22, 'Martina Bahringer', 'Italy', '0148691243', 'zfay@kautzer.com', 'Mrs. Kylie Rodriguez DDS', 6, NULL, NULL),
(23, 'Elmore Parisian DDS', 'Czech Republic', '0807068630', 'kgoldner@weber.net', 'Selena Block', 1, NULL, NULL),
(24, 'Orie Quigley', 'Norfolk Island', '0447702250', 'justice05@klocko.com', 'Kaylin Crist', 1, NULL, NULL),
(25, 'Harley Jacobson', 'Venezuela', '0777990250', 'robb.johnston@kohler.info', 'Luisa Thiel', 4, NULL, NULL),
(26, 'Earline Heidenreich', 'Jersey', '0450533714', 'bechtelar.makenzie@leffler.com', 'Paxton Sipes', 5, NULL, NULL),
(27, 'Ms. Nyah Ernser', 'Ethiopia', '0973375850', 'meaghan.schuppe@yahoo.com', 'Monroe Stamm', 7, NULL, NULL),
(28, 'Prof. Lester Christiansen', 'Slovakia (Slovak Republic)', '0511569123', 'anais18@russel.com', 'Jesus D\'Amore', 4, NULL, NULL),
(29, 'Prof. Vanessa Skiles Sr.', 'Montenegro', '0402321106', 'doyle32@powlowski.com', 'Dr. Dixie Bins Sr.', 3, NULL, NULL),
(30, 'Danielle Keeling I', 'Kenya', '0155183123', 'kcrona@yahoo.com', 'Prof. Letitia Lubowitz', 6, NULL, NULL),
(31, 'Nia Deckow', 'Holy See (Vatican City State)', '0951018710', 'giovani.bailey@wilderman.biz', 'Janis Renner', 2, NULL, NULL),
(32, 'Prof. Kailee Thompson', 'Faroe Islands', '0888783527', 'delbert.weimann@fritsch.com', 'Meggie Boyer', 5, NULL, NULL),
(33, 'Prof. Jaiden Lemke Sr.', 'Northern Mariana Islands', '0551007889', 'jay46@spinka.com', 'Jamarcus Murazik', 2, NULL, NULL),
(34, 'Steve Buckridge', 'Faroe Islands', '0847498851', 'zola34@hotmail.com', 'Freddy Rau PhD', 5, NULL, NULL),
(35, 'Kiley Okuneva DDS', 'Trinidad and Tobago', '0902381988', 'gkoch@hodkiewicz.net', 'Noemie Cartwright', 3, NULL, NULL),
(36, 'Merle Roob PhD', 'French Southern Territories', '0537515551', 'jaron.langosh@yahoo.com', 'Oren Buckridge I', 7, NULL, NULL),
(37, 'Rodger Dibbert', 'Rwanda', '0261968405', 'metz.rick@gmail.com', 'Myra Lueilwitz IV', 4, NULL, NULL),
(38, 'Prof. Eve Funk IV', 'Cape Verde', '0529999053', 'liam72@stark.com', 'Idella Stracke V', 4, NULL, NULL),
(39, 'Sienna Abbott', 'Guyana', '0466040934', 'buckridge.jazlyn@pfeffer.com', 'Vita Anderson', 6, NULL, NULL),
(40, 'Lizzie Torp', 'Rwanda', '0143054324', 'anderson52@yahoo.com', 'Morgan Homenick', 3, NULL, NULL),
(41, 'Mr. Steve Mraz I', 'Nepal', '0508547187', 'gardner93@kulas.com', 'Cara Klocko', 3, NULL, NULL),
(42, 'Jarod Becker', 'United Arab Emirates', '0489674038', 'amitchell@hotmail.com', 'Tara Howe III', 1, NULL, NULL),
(43, 'Nella Ward', 'Iraq', '0679426435', 'jennie.kassulke@simonis.info', 'Brandt Dickens', 6, NULL, NULL),
(44, 'Myrl Smitham DVM', 'Kiribati', '0541179164', 'leonardo76@beer.com', 'Damien Moen', 4, NULL, NULL),
(45, 'Mr. Murl Streich', 'Senegal', '0619510212', 'dfahey@hotmail.com', 'Lonzo Lakin MD', 2, NULL, NULL),
(46, 'Mrs. Alvena Abbott II', 'Burundi', '0635339887', 'edach@reichel.org', 'Nikki Feest', 4, NULL, NULL),
(47, 'Zane Veum', 'Malta', '0434148047', 'eward@oconnell.com', 'Brook Cruickshank', 4, NULL, NULL),
(48, 'Jed Klein', 'Vanuatu', '0622111044', 'ofeil@nolan.com', 'Ephraim Lemke', 5, NULL, NULL),
(49, 'Dane Lowe', 'Colombia', '0582427943', 'quinton.orn@hotmail.com', 'Gabriella Cremin', 6, NULL, NULL),
(50, 'Larue Lehner', 'Kiribati', '0906833592', 'stephany82@wunsch.com', 'Brenda Renner IV', 2, NULL, NULL),
(51, 'Deonte Rath', 'Bolivia', '0118250924', 'esteban70@gutkowski.com', 'Retha Beahan', 6, NULL, NULL),
(52, 'Jamir Kunze MD', 'Estonia', '0295063113', 'ggoodwin@gulgowski.info', 'Prof. Zion Smith', 2, NULL, NULL),
(53, 'Prof. Demario Zieme Jr.', 'Grenada', '0819174520', 'astamm@gmail.com', 'Ms. Hilda Haag IV', 2, NULL, NULL),
(54, 'Phyllis Gleichner Jr.', 'Argentina', '0299720492', 'ddibbert@lueilwitz.net', 'Dallas Lueilwitz', 1, NULL, NULL),
(55, 'Mrs. Pearl Koch DVM', 'Nauru', '0864804058', 'legros.tyrique@hotmail.com', 'Tina Bailey', 6, NULL, NULL),
(56, 'Osvaldo Schinner', 'Angola', '0298086501', 'petra.osinski@gmail.com', 'Julia Koepp', 5, NULL, NULL),
(57, 'Prof. Nathanial Lind MD', 'Mexico', '0645736743', 'greenfelder.lenore@yahoo.com', 'Dr. Zena Carroll DDS', 5, NULL, NULL),
(58, 'Eliane Jakubowski', 'Guatemala', '0722646183', 'alessia27@price.org', 'Prof. Timmothy Herman', 2, NULL, NULL),
(59, 'Alison Schinner', 'Jordan', '0709223692', 'feeney.shanon@hotmail.com', 'Raven Feest', 6, NULL, NULL),
(60, 'Gracie Fisher', 'Heard Island and McDonald Islands', '0929594323', 'elena96@reilly.com', 'Cara Cassin', 3, NULL, NULL),
(61, 'Mrs. Jena Schowalter V', 'Brunei Darussalam', '0326724687', 'jordy95@abbott.com', 'Ole Braun DVM', 6, NULL, NULL),
(62, 'Dr. Adelbert Bins', 'Heard Island and McDonald Islands', '0833112192', 'fcrist@wiza.com', 'Marcelina Ryan V', 4, NULL, NULL),
(63, 'Zena Murray I', 'Bolivia', '0791001044', 'pietro.sanford@hotmail.com', 'Duane Greenfelder', 1, NULL, NULL),
(64, 'Margie Gaylord Sr.', 'Brunei Darussalam', '0266427602', 'grussel@yahoo.com', 'Kobe Romaguera', 6, NULL, NULL),
(65, 'Murphy West', 'Lao People\'s Democratic Republic', '0600291117', 'justice.lehner@hagenes.com', 'Mrs. Helga Lockman', 5, NULL, NULL),
(66, 'Prof. Walker Dickens', 'Nepal', '0620711387', 'mokuneva@rolfson.org', 'Prof. Gudrun Reilly V', 2, NULL, NULL),
(67, 'Renee Kreiger', 'Belarus', '0695988177', 'mable82@yahoo.com', 'Hayden Kassulke', 2, NULL, NULL),
(68, 'Emanuel Gaylord II', 'Ethiopia', '0988059508', 'olaf63@koss.com', 'Christy Prosacco DDS', 1, NULL, NULL),
(69, 'Conor Morissette', 'Hungary', '0312810359', 'wreichel@yahoo.com', 'Darrick Hermann II', 2, NULL, NULL),
(70, 'Leda Murphy', 'Vietnam', '0286540201', 'reagan.luettgen@lebsack.info', 'Genoveva Lehner', 3, NULL, NULL),
(71, 'Alden Heller', 'Ethiopia', '0492718044', 'kling.kylie@hotmail.com', 'Ms. Kaitlyn Nader', 3, NULL, NULL),
(72, 'Lavinia Koelpin', 'Liberia', '0474053858', 'beatrice.funk@hotmail.com', 'Kristian Goyette', 1, NULL, NULL),
(73, 'Harvey Kub', 'Seychelles', '0949379990', 'frances82@tremblay.net', 'Sabina Friesen', 7, NULL, NULL),
(74, 'Brad Hand', 'Netherlands', '0186109991', 'jaren60@yahoo.com', 'Cyril Schuster', 4, NULL, NULL),
(75, 'Ellen Wisozk', 'Lebanon', '0701335081', 'royce.turcotte@bailey.com', 'Lazaro Oberbrunner', 5, NULL, NULL),
(76, 'Janessa Donnelly', 'United Kingdom', '0305258136', 'jovany.dickens@hotmail.com', 'Mr. Ahmed Rolfson', 1, NULL, NULL),
(77, 'Abelardo Bailey', 'Namibia', '0436790418', 'tomasa.oconner@smith.net', 'Giovanna Deckow', 3, NULL, NULL),
(78, 'Faye Reynolds', 'Spain', '0264754984', 'ova64@abshire.com', 'Dixie Ernser', 2, NULL, NULL),
(79, 'Tia Gislason', 'Moldova', '0694480686', 'haleigh.tromp@hotmail.com', 'Dr. Austyn Stoltenberg', 4, NULL, NULL),
(80, 'Granville Macejkovic', 'Tuvalu', '0204752763', 'wconsidine@hotmail.com', 'Wilmer Boyer', 1, NULL, NULL),
(81, 'Mr. Jake Feest Jr.', 'Tunisia', '0163509799', 'amie.mraz@gmail.com', 'Herta Rempel', 7, NULL, NULL),
(82, 'Missouri Feeney', 'Cote d\'Ivoire', '0381670717', 'sven14@gmail.com', 'Katrine Beer V', 6, NULL, NULL),
(83, 'Judge Gulgowski', 'Micronesia', '0822551602', 'uweimann@gmail.com', 'Keven Douglas', 7, NULL, NULL),
(84, 'Bettie Brown', 'Hungary', '0192388436', 'sheldon.koch@yahoo.com', 'Ewald Hayes PhD', 6, NULL, NULL),
(85, 'Jack Price', 'Niue', '0673855202', 'kmcglynn@mills.com', 'Ms. Cassie Weimann III', 6, NULL, NULL),
(86, 'Raul Bahringer Jr.', 'Solomon Islands', '0709422323', 'eliane.hettinger@green.info', 'Catharine Reilly', 2, NULL, NULL),
(87, 'Meda Mraz', 'Madagascar', '0953624409', 'kiel.stark@bergstrom.org', 'Jasmin Roob', 4, NULL, NULL),
(88, 'Raul Quigley', 'Senegal', '0717261025', 'joesph.bayer@gmail.com', 'Hermina Ortiz', 7, NULL, NULL),
(89, 'Dr. Eric Bartell PhD', 'United States Virgin Islands', '0213063449', 'jarrell.larkin@hotmail.com', 'Willy Bashirian', 6, NULL, NULL),
(90, 'Katelin Monahan MD', 'Angola', '0699598803', 'mikayla48@boyer.net', 'Imelda Kunde', 7, NULL, NULL),
(91, 'Prof. Jacey Quitzon', 'Saint Pierre and Miquelon', '0809014116', 'smccullough@hotmail.com', 'Mrs. Rachael Nienow III', 1, NULL, NULL),
(92, 'Vanessa Shields PhD', 'Mauritania', '0889536898', 'ledner.edmund@beer.net', 'Wilfredo Langosh', 6, NULL, NULL),
(93, 'Justice Kiehn', 'Sri Lanka', '0341618047', 'xwilkinson@walter.com', 'Thad Runolfsdottir', 3, NULL, NULL),
(94, 'Kelli Lakin', 'Uganda', '0105653335', 'hudson.carolyne@hotmail.com', 'Margot Marvin', 3, NULL, NULL),
(95, 'Thelma Gulgowski', 'Netherlands Antilles', '0207169876', 'rahsaan94@gibson.info', 'Elisha Gleichner', 7, NULL, NULL),
(96, 'Trent Brown', 'Tanzania', '0297524847', 'ernie68@yahoo.com', 'Mrs. Elta Connelly IV', 1, NULL, NULL),
(97, 'Prof. Tito Rodriguez II', 'Paraguay', '0608139505', 'ayla96@durgan.com', 'Ryleigh Schmeler', 7, NULL, NULL),
(98, 'Moshe Powlowski DVM', 'Holy See (Vatican City State)', '0887636659', 'kameron.bartell@yahoo.com', 'Dr. Tremaine Streich DDS', 1, NULL, NULL),
(99, 'Leslie Zulauf', 'Kenya', '0972803668', 'cierra89@yahoo.com', 'Mrs. Brisa Hackett PhD', 7, NULL, NULL),
(100, 'Ms. Amelie Adams', 'Chad', '0487317764', 'troy.terry@yahoo.com', 'Prof. Mavis Orn II', 2, NULL, NULL),
(101, 'Quinten McDermott Sr.', 'Isle of Man', '0878312670', 'bruen.buford@gmail.com', 'Prof. Harmony Mills DVM', 7, NULL, NULL),
(102, 'Mr. Dean Murray', 'Djibouti', '0184196680', 'feeney.freida@nolan.com', 'Carolanne Rath', 6, NULL, NULL),
(103, 'Dr. Shad Monahan I', 'Isle of Man', '0990242368', 'ivory05@gmail.com', 'Jerod Cruickshank', 5, NULL, NULL),
(104, 'Jermaine Lindgren', 'Anguilla', '0802850667', 'mosciski.johnnie@hotmail.com', 'Iva Spencer', 5, NULL, NULL),
(105, 'Corrine Zemlak', 'Norfolk Island', '0388311559', 'klarkin@gmail.com', 'Jaleel Lakin', 7, NULL, NULL),
(106, 'Paolo O\'Reilly', 'Grenada', '0827258540', 'wgrant@bauch.com', 'Mr. Diego Koepp I', 5, NULL, NULL),
(107, 'Elizabeth Donnelly', 'Algeria', '0279969017', 'stephany.bode@gmail.com', 'Hettie Walter', 2, NULL, NULL),
(108, 'Dr. Guy McKenzie PhD', 'Honduras', '0168122519', 'clement83@cartwright.com', 'Jerad Gleichner', 3, NULL, NULL),
(109, 'Adrianna Emmerich', 'Luxembourg', '0448594358', 'lucius.greenfelder@gmail.com', 'Raina Sporer', 2, NULL, NULL),
(110, 'Ms. Lilla Ankunding', 'Uganda', '0730091222', 'ohowell@hotmail.com', 'Dock Jenkins DVM', 5, NULL, NULL),
(111, 'Prof. Cortney Homenick', 'Moldova', '0224253151', 'stiedemann.kailee@schuppe.com', 'Misty Morar', 3, NULL, NULL),
(112, 'Kevin Schimmel', 'Brunei Darussalam', '0252512041', 'angie.walsh@gmail.com', 'Mr. Nicholas Powlowski', 5, NULL, NULL),
(113, 'Zelda Crist', 'Jersey', '0658610207', 'gerson.vandervort@gmail.com', 'Karley Kunde MD', 1, NULL, NULL),
(114, 'Bradley McClure', 'Australia', '0318732119', 'jonatan.bogan@russel.com', 'Ms. Roberta Rippin', 5, NULL, NULL),
(115, 'Iliana Kirlin', 'Macao', '0193132981', 'qbarrows@hotmail.com', 'Emilie Hamill', 2, NULL, NULL),
(116, 'Prof. Chaz Breitenberg', 'Suriname', '0309622059', 'maude82@yahoo.com', 'Rodrigo Luettgen I', 7, NULL, NULL),
(117, 'Hilda Stiedemann', 'Botswana', '0314554532', 'gayle94@gmail.com', 'Mr. Al Kemmer III', 3, NULL, NULL),
(118, 'Ernie Rempel', 'Burkina Faso', '0884815842', 'gwen92@yahoo.com', 'Merlin Jerde', 6, NULL, NULL),
(119, 'Joey Gusikowski Sr.', 'Gibraltar', '0451158800', 'hmitchell@raynor.com', 'Prof. Catalina Kling IV', 5, NULL, NULL),
(120, 'Ms. Aubrey Blick Sr.', 'Bahrain', '0274287501', 'olin71@greenholt.com', 'Jordon Sipes', 3, NULL, NULL),
(121, 'Eileen Grady', 'Comoros', '0256749618', 'hyatt.jameson@hotmail.com', 'Mallory Smitham', 6, NULL, NULL),
(122, 'Prof. Emerson Daugherty', 'Tonga', '0648069502', 'halvorson.imani@hotmail.com', 'Dr. Alec Pouros MD', 6, NULL, NULL),
(123, 'Emmet Cummings', 'Papua New Guinea', '0268567594', 'tgusikowski@yahoo.com', 'Jazmin Bednar', 1, NULL, NULL),
(124, 'Alanis Schiller', 'Sweden', '0573589348', 'tbeer@lubowitz.com', 'Jermaine Larson MD', 2, NULL, NULL),
(125, 'Mr. Isaiah Prosacco', 'Guinea-Bissau', '0909732570', 'marvin.pasquale@hotmail.com', 'Sonny Kuvalis', 3, NULL, NULL),
(126, 'Margarete Runolfsdottir', 'Isle of Man', '0901987746', 'casper.daron@hettinger.com', 'April Corkery', 3, NULL, NULL),
(127, 'Prof. Talia Marvin IV', 'Dominican Republic', '0546343887', 'boyer.tyrique@hotmail.com', 'Mrs. Opal Reilly', 1, NULL, NULL),
(128, 'Mr. Ubaldo Smith', 'Kuwait', '0233021490', 'claudie.kshlerin@gmail.com', 'Dr. Alexandro Murazik PhD', 3, NULL, NULL),
(129, 'Roy Funk', 'Bolivia', '0171330780', 'leffler.omer@hotmail.com', 'Lisa Hermiston', 3, NULL, NULL),
(130, 'Narciso Smith DVM', 'Nicaragua', '0128500319', 'adonis.lehner@friesen.com', 'Ms. Ella Emmerich', 1, NULL, NULL),
(131, 'Doug Daugherty', 'Gambia', '0172317487', 'garrison52@hotmail.com', 'Ms. Dixie West', 6, NULL, NULL),
(132, 'Matilde Kunze II', 'Macao', '0121586849', 'eheathcote@yahoo.com', 'Lempi Hirthe', 2, NULL, NULL),
(133, 'Nico Hoeger', 'Chile', '0994712431', 'flatley.rowan@yahoo.com', 'Felicia McCullough', 7, NULL, NULL),
(134, 'Litzy Lesch PhD', 'Turkey', '0213661871', 'vprosacco@hotmail.com', 'Lorenz Grimes', 4, NULL, NULL),
(135, 'Kyler Halvorson', 'Luxembourg', '0919455298', 'georgianna27@hotmail.com', 'Ali Will', 7, NULL, NULL),
(136, 'Rogelio Greenfelder', 'Haiti', '0745406197', 'xbernhard@zboncak.net', 'Justine Barton', 2, NULL, NULL),
(137, 'Ms. Eleanore Herzog I', 'Mauritius', '0349685763', 'paolo98@haley.com', 'Evans Oberbrunner', 4, NULL, NULL),
(138, 'Prof. Christelle Stoltenberg', 'Bhutan', '0412769131', 'armstrong.victor@boyle.info', 'Dr. Rosella Erdman IV', 4, NULL, NULL),
(139, 'Mrs. Catherine Marks MD', 'Poland', '0914730108', 'effertz.gayle@bashirian.com', 'Mr. Hadley Torphy Jr.', 4, NULL, NULL),
(140, 'Dr. Jaclyn Grant', 'Holy See (Vatican City State)', '0543165778', 'loyal23@rodriguez.com', 'Prof. Angel Swaniawski IV', 3, NULL, NULL),
(141, 'Darrion Kuhlman', 'Malawi', '0906012684', 'gdooley@hartmann.com', 'Prof. Pattie Reichel', 3, NULL, NULL),
(142, 'Mr. Troy Cronin IV', 'United States Virgin Islands', '0520653567', 'tmills@gmail.com', 'Stephon Bergnaum', 6, NULL, NULL),
(143, 'Adan Ratke', 'Pitcairn Islands', '0861804470', 'ernser.torrance@rolfson.com', 'Joelle King', 2, NULL, NULL),
(144, 'Benedict Sawayn', 'Iran', '0560479760', 'wbode@lockman.com', 'Kristofer Gleason', 6, NULL, NULL),
(145, 'Miss Isabel Harber', 'Iran', '0918117322', 'lindgren.kathleen@yahoo.com', 'Maynard Gusikowski V', 7, NULL, NULL),
(146, 'Florida Kovacek', 'Poland', '0660294148', 'darius35@schamberger.info', 'Kayla Gleason', 6, NULL, NULL),
(147, 'Hunter Rath III', 'Pitcairn Islands', '0177177863', 'yadira41@gmail.com', 'Dagmar Ledner', 7, NULL, NULL),
(148, 'Dr. Alfonzo Waelchi I', 'Thailand', '0247307604', 'sziemann@gmail.com', 'Rosalyn Hill', 7, NULL, NULL),
(149, 'Prof. Trent Metz DVM', 'United States Minor Outlying Islands', '0857078466', 'dale.keeling@yahoo.com', 'Kristian D\'Amore', 3, NULL, NULL),
(150, 'Mr. Dagmar Kautzer', 'Costa Rica', '0688343099', 'hand.josiane@spencer.net', 'Aileen Reilly III', 3, NULL, NULL),
(151, 'Dr. Ettie Lemke', 'Antigua and Barbuda', '0399087534', 'cassin.coralie@yahoo.com', 'Leland Kuhlman', 4, NULL, NULL),
(152, 'Dianna Schumm DVM', 'Bahrain', '0231219055', 'sammy73@fadel.biz', 'Lorena Beier', 3, NULL, NULL),
(153, 'Clement Rippin', 'Palau', '0987396826', 'tjacobs@herzog.com', 'Anika Crist', 1, NULL, NULL),
(154, 'Miss Clementina Keeling III', 'Bhutan', '0234578722', 'lawson14@yahoo.com', 'Mr. Garland Adams MD', 5, NULL, NULL),
(155, 'General Mayert', 'Solomon Islands', '0351506823', 'evans.eichmann@hotmail.com', 'Amina Simonis II', 7, NULL, NULL),
(156, 'Emerald Balistreri', 'Vanuatu', '0462802148', 'jnolan@shields.org', 'Prof. Lizzie Bailey', 2, NULL, NULL),
(157, 'Karianne Lockman', 'Armenia', '0999076339', 'rath.brandt@yahoo.com', 'Roselyn Gulgowski Sr.', 1, NULL, NULL),
(158, 'Mr. Anastacio Bergstrom', 'Tanzania', '0319481555', 'daisha.bins@hotmail.com', 'Pearline Raynor', 2, NULL, NULL),
(159, 'Dr. Cornelius Ledner PhD', 'Guinea-Bissau', '0594062329', 'marcos.cremin@mayer.com', 'Ms. Karen Bogisich', 1, NULL, NULL),
(160, 'Orville Kulas', 'Dominican Republic', '0255291280', 'mante.jacinto@yahoo.com', 'Winifred Toy', 5, NULL, NULL),
(161, 'Sage Hand', 'Jamaica', '0880312415', 'nelda.franecki@yahoo.com', 'Ms. Janet Hauck Jr.', 3, NULL, NULL),
(162, 'Dr. Gerda Lynch', 'Cote d\'Ivoire', '0617683450', 'wilhelm73@shanahan.com', 'Dorothea Orn', 3, NULL, NULL),
(163, 'Prof. Deshawn Mayer', 'Angola', '0679680162', 'yrenner@walter.org', 'Electa Beer', 2, NULL, NULL),
(164, 'Brooklyn Roberts', 'Guam', '0283938498', 'cheyanne58@hotmail.com', 'Cassidy Runolfsson', 5, NULL, NULL),
(165, 'Prof. Schuyler McGlynn', 'Hungary', '0936814694', 'lennie25@heller.com', 'Mr. Gunner Quitzon', 6, NULL, NULL),
(166, 'Miss Bethel Hammes II', 'Guatemala', '0799672438', 'rutherford.laisha@cremin.com', 'Evans Bahringer', 2, NULL, NULL),
(167, 'Dr. Rudolph Feest', 'Andorra', '0363693325', 'walter.demetrius@stanton.net', 'Mrs. Linnea Zieme', 7, NULL, NULL),
(168, 'Kody Rodriguez', 'Venezuela', '0741528289', 'amparo.senger@wilkinson.biz', 'Alexander Rutherford', 1, NULL, NULL),
(169, 'Skylar Blick', 'Aruba', '0221034625', 'eduardo41@beer.com', 'Jackeline Mann', 4, NULL, NULL),
(170, 'Dr. Garrison Wolf', 'Botswana', '0445035070', 'maureen.schowalter@sauer.org', 'Anais Christiansen', 7, NULL, NULL),
(171, 'Miss Eveline Pollich DVM', 'Burkina Faso', '0168941468', 'katherine.mcglynn@braun.com', 'Vladimir Johns', 6, NULL, NULL),
(172, 'Mr. Brooks Grimes DDS', 'United States Virgin Islands', '0584091863', 'jsenger@gmail.com', 'Dee Bartell', 4, NULL, NULL),
(173, 'Dr. Richard Bernier MD', 'Mozambique', '0472587158', 'delores12@gmail.com', 'Gillian Erdman', 7, NULL, NULL),
(174, 'Yesenia Pfannerstill', 'Malawi', '0473176890', 'deshaun45@stamm.com', 'Jeramie Volkman', 5, NULL, NULL),
(175, 'Lamar Schinner', 'Morocco', '0417934090', 'wava.blick@mclaughlin.com', 'Prof. Cathrine Franecki DVM', 6, NULL, NULL),
(176, 'Cesar Weber', 'Tuvalu', '0933734719', 'celine.connelly@gmail.com', 'Millie Kessler', 5, NULL, NULL),
(177, 'Prof. Philip Metz', 'Denmark', '0938750709', 'ocollier@frami.com', 'Remington Larson', 6, NULL, NULL),
(178, 'Mrs. Melba Kris PhD', 'Slovenia', '0252205294', 'oberbrunner.keyon@gmail.com', 'Ezra Gerlach', 2, NULL, NULL),
(179, 'Pascale Morar', 'Martinique', '0128110939', 'mark.kuphal@yahoo.com', 'Prof. Maxime Dietrich III', 4, NULL, NULL),
(180, 'Mr. Hunter Kilback V', 'Anguilla', '0358300062', 'miller.branson@jerde.info', 'Prof. Holden Blanda Jr.', 3, NULL, NULL),
(181, 'Clifford Lueilwitz', 'Puerto Rico', '0675266532', 'jwest@hotmail.com', 'Mrs. Tiana Ratke V', 6, NULL, NULL),
(182, 'Lempi Pollich Sr.', 'Congo', '0764352086', 'tyshawn.green@yahoo.com', 'Miss Aliza Harber DVM', 4, NULL, NULL),
(183, 'Mr. Laverne Quitzon', 'Morocco', '0266457439', 'jakayla.abshire@gmail.com', 'Hilda Mertz', 2, NULL, NULL),
(184, 'Nathanael Beatty', 'Bermuda', '0879716102', 'shaina41@zieme.info', 'Prof. Randall Windler IV', 3, NULL, NULL),
(185, 'Asa Collins', 'Mali', '0297544081', 'ckoss@hotmail.com', 'Jammie Ullrich', 6, NULL, NULL),
(186, 'Daniela Sauer', 'Guinea-Bissau', '0886537629', 'ora.upton@bernhard.net', 'Lottie Hills', 6, NULL, NULL),
(187, 'Cassidy Mueller', 'Austria', '0563487977', 'xkuhlman@yahoo.com', 'Jonathon Brekke', 4, NULL, NULL),
(188, 'Marcia Reinger', 'Brazil', '0285280002', 'dakota89@schimmel.com', 'Casey Oberbrunner', 3, NULL, NULL),
(189, 'Dr. Kayley Marquardt', 'Central African Republic', '0944418422', 'alena.mohr@yahoo.com', 'Brook Oberbrunner', 1, NULL, NULL),
(190, 'Prof. Ines Feeney', 'Andorra', '0970434408', 'blockman@hotmail.com', 'Eleazar Hirthe', 5, NULL, NULL),
(191, 'Prof. Meaghan Koepp', 'Saint Vincent and the Grenadines', '0830135601', 'george.williamson@hotmail.com', 'Elissa Hudson', 2, NULL, NULL),
(192, 'Emmanuel Rippin', 'Taiwan', '0141301734', 'laverna23@keeling.org', 'Marquis Hegmann', 4, NULL, NULL),
(193, 'Prof. Carleton Strosin', 'Bulgaria', '0480510087', 'johnpaul.schmitt@hahn.info', 'Mr. Dock Lindgren', 4, NULL, NULL),
(194, 'Tre Kuhlman', 'Libyan Arab Jamahiriya', '0129010280', 'rempel.samantha@gmail.com', 'Isom Schiller', 2, NULL, NULL),
(195, 'Miss Rowena Kris Sr.', 'Turks and Caicos Islands', '0318082761', 'powlowski.kaci@barrows.com', 'Miss Talia Greenholt', 4, NULL, NULL),
(196, 'Sheridan Kutch', 'Indonesia', '0378034372', 'russel.leonel@hotmail.com', 'Prof. Brandi Cummings II', 4, NULL, NULL),
(197, 'Claud Reichert DVM', 'Svalbard & Jan Mayen Islands', '0591153350', 'simonis.kade@heidenreich.info', 'Ubaldo Stamm', 2, NULL, NULL),
(198, 'Kristopher Harris III', 'Western Sahara', '0960657712', 'beth.kshlerin@gmail.com', 'Dr. Chester Wilkinson', 5, NULL, NULL),
(199, 'Dr. Isidro Mitchell MD', 'Peru', '0544541024', 'sjaskolski@hotmail.com', 'Mr. Devon Bednar', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualities`
--

CREATE TABLE `qualities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qua_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualities`
--

INSERT INTO `qualities` (`id`, `qua_name`, `created_at`, `updated_at`) VALUES
(1, 'Cao', NULL, NULL),
(2, 'Tốt', NULL, NULL),
(3, 'Trung Bình', NULL, NULL),
(4, 'Xấu', NULL, NULL),
(5, 'Kém', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sup_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_amount` int(11) NOT NULL,
  `sup_total` decimal(15,0) DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `sup_name`, `sup_amount`, `sup_total`, `unit_id`) VALUES
(1, 'Dây điện đơn cứng', 4900, '14700000', 1),
(2, 'Dây điện đơn mềm', 4800, '15300000', 1),
(3, 'Dây điện đôi mềm dệp', 5000, '12500000', 1),
(4, 'Dây điện xoắn mềm', 0, NULL, 1),
(5, 'Dây điện cáp thường', 4800, '8200000', 1),
(6, 'Dây cáp điện bọp giáp', 7000, '28000000', 1),
(7, 'Dây cáp điện ngầm 3 pha', 19800, '177500000', 1),
(8, 'Ổn áp', 100, '675000000', 2),
(9, 'Máy biến áp 3 pha', 50, '650000000', 2),
(10, 'Máy biến áp 2 pha', 50, '4620000000', 2),
(11, 'Bóng đèn đường', 480, '875000000', 2),
(12, 'Cột điện BTLT 6m - 3,5 kN', 480, '1732400000', 5),
(13, 'Cầu dao điện thông thường', 200, '90000000', 2),
(14, 'Cầu dao điện chống giật', 200, '110000000', 2),
(15, 'Cầu dao điện dòng rò', 600, '402000000', 2),
(16, 'Sứ cách điện thủy tinh', 0, NULL, 2),
(17, 'Sứ cách điện polymer', 0, NULL, 2),
(18, 'Sứ cách điện gốm', 0, NULL, 2),
(19, 'Cột điện BTLT 6,5m - 3,0 kN', 1000, '7150000000', 5),
(20, 'Cột điện BTLT 8,0m - 3,0 kN', 500, '3575000000', 5),
(21, 'Cột điện BTLT 9,0m - 3,5 kN', 0, NULL, 5),
(22, 'Cột điện BTLT 10m - 5,0 kN', 0, NULL, 5),
(23, 'Chống sét van 6kV Cantor', 0, NULL, 2),
(24, 'Chống sét van 9kv Cantor', 0, NULL, 2),
(25, 'Chống sét van 9kv Cantor', 0, NULL, 2),
(26, 'Chống sét van Cooper 9kV', 0, NULL, 2),
(27, 'Chống sét van Cooper 12kV', 0, NULL, 2),
(28, 'CẦU DAO PHỤ TẢI 24-35KV NGOÀI TRỜI HỘP DẬP KHÍ', 0, NULL, 2),
(29, 'CẦU DAO PHỤ TẢI 24-35KV TRONG NHÀ HỘP DẬP KHÍ', 0, NULL, 2),
(30, 'Cầu dao phụ tải liên cầu chì trong nhà 24-35kV', 0, NULL, 2),
(31, 'Cầu dao cách ly ngoài trời 24kV, 35kV', 0, NULL, 2),
(32, 'Cầu dao cách ly trong nhà 24kV, 35kV', 0, NULL, 2),
(33, 'Cầu chì tự rơi 15KV, 24kV, 35kV sứ gốm', 0, NULL, 2),
(34, 'Cầu chì tự rơi Polyme loại 24kV, 35KV', 0, NULL, 2),
(35, 'Cầu chì ống lắp liền cầu dao loại 24kv, 35kv', 0, NULL, 2),
(36, 'Cầu chì tự rơi cắt tải loại 24kv, 35kv', 0, NULL, 2),
(37, 'Biến dòng điện 22kV ngâm dầu 1 mạch-Emic', 0, NULL, 2),
(38, 'Biến dòng điện 22kV ngâm dầu 2 mạch-Emic', 0, NULL, 2),
(39, 'Biến dòng điện 35kV ngâm dầu 1 mạch-Emic', 0, NULL, 2),
(40, 'Biến dòng điện 35kV ngâm dầu 2 mạch-Emic', 0, NULL, 2),
(41, 'Tủ cầu dao phụ tải 24kV, 35kV', 0, NULL, 2),
(42, 'Tủ máy cắt trung thế 24kV, 35kV', 0, NULL, 2),
(43, 'Tủ cầu dao phụ tải 24kv, 35kv kèm chì ống', 0, NULL, 2),
(44, 'Cáp ngầm trung thế 3 pha 35(40,5)KV hãng LS-ViNa', 0, NULL, 6),
(45, 'Cáp ngầm trung thế 1 pha 35(40,5)KV hãng LS-VINA', 0, NULL, 6),
(46, 'Cáp 0,6/1KV 2 lõi cách điện PVC hãng LS ViNa', 0, NULL, 6),
(47, 'Cáp 0,6/1KV loại 1 lõi cách điện XLPE hãng LS ViNa', 0, NULL, 6),
(48, 'Cáp 0,6/1kV loại 3 lõi cách điện PVC hãng LS-ViNa', 0, NULL, 6),
(49, 'Cáp 0,6/1kV loại 4 lõi cách điện PVC hãng LS-ViNa', 0, NULL, 6),
(50, 'Ống nhựa HDPE', 0, NULL, 1),
(51, 'Máy cắt không khí ACB', 0, NULL, 2),
(52, 'Xà sắt mạ kẽm nhúng nóng', 0, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_simplify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `unit_simplify`, `created_at`, `updated_at`) VALUES
(1, 'Mét', 'm', NULL, NULL),
(2, 'Cái', NULL, NULL, NULL),
(3, 'Kilogram', 'kg', NULL, NULL),
(4, 'Tấn', NULL, NULL, NULL),
(5, 'Cột', NULL, NULL, NULL),
(6, 'Cuộn', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nam',
  `birth` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identification` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining` date NOT NULL,
  `dpm_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `gender`, `birth`, `address`, `identification`, `phone`, `email`, `joining`, `dpm_id`, `remember_token`) VALUES
(1, 'admin', '$2y$10$GJ3k.Etj0b0lCVl/HrPCdOjlIpDLhv.x28VWZ1pbxZBeazr.epoUO', 'Duy Danh', 'Nam', '2000-01-01', 'Nha Trang', '197400910', '0337136172', '0974619741', '2000-01-01', 1, NULL),
(2, 'repellat0', '$2y$10$RF0QZU15jbdnrdeUxnD9jeCotv7NINYbry65FBmlnucJthHivElQK', 'Prof. Davin Heathcote DVM', 'Nam', '1970-10-20', 'Gambia', '5507002217', '0570073754', 'june.larson@gmail.com', '1987-01-08', 3, NULL),
(3, 'aspernatur1', '$2y$10$eY8nHg6YXf/iHrMR1J8vluZ3hb8s5459N9hsIjDAqEDJ/Cz0W5Oai', 'Niko Schmitt I', 'Nam', '1990-04-27', 'Albania', '1714906603', '0374185677', 'brian68@gmail.com', '1999-03-13', 2, NULL),
(4, 'aliquid2', '$2y$10$bz5UUbjQ285n3uUC/yQ4beGHTVH5BqkWEzW.Ph4dk8Dkg7bnOXMoi', 'Lisa Herzog III', 'Nam', '1988-07-23', 'Benin', '2688454512', '0254238378', 'chase57@hotmail.com', '1973-10-13', 4, NULL),
(5, 'aut3', '$2y$10$SNl08vsjWxhtCFcLktQOLO5ISMkweFxCcUIur5cQlh2JWw7EOOcnW', 'Anissa Jaskolski', 'Nam', '1970-06-18', 'Lao People\'s Democratic Republic', '9385470388', '0202733627', 'giles.keeling@goyette.com', '1994-11-29', 4, NULL),
(6, 'est4', '$2y$10$9S0AHW1/3ZHK0bem5CORi.nzXSfO4Z6/kKeL2ZY.A3DiQ/BhxHwhy', 'Prof. Arne Schuster DVM', 'Nam', '1972-08-15', 'Niger', '3367908269', '0787212250', 'mueller.bartholome@rolfson.biz', '2021-03-31', 4, NULL),
(7, 'provident5', '$2y$10$QttiU7OTlNnHYk7XKlfSl..YaCKdxetkukPAwWa5/V0GWExAelVr.', 'Malachi Torphy', 'Nam', '1972-11-22', 'Montenegro', '4777761098', '0853164656', 'rodriguez.eino@ferry.net', '1989-11-06', 4, NULL),
(8, 'ut6', '$2y$10$4t9YAJokfZwBNhElI0M1oOXBSDpVJm9srXWxWZv50b.msMuj3HN8K', 'Brandy Harris', 'Nam', '2000-06-15', 'United States of America', '6311338513', '0314249515', 'efarrell@monahan.com', '2000-10-11', 1, NULL),
(9, 'aspernatur7', '$2y$10$qr95lNovxYSzGgXPoVxj6uVxZ2gMhuRrnQCGJw7Ivx/Qcx7hCm79.', 'Ms. Oleta Heidenreich V', 'Nam', '2001-01-08', 'Guatemala', '4276149613', '0643206313', 'conn.stephan@waelchi.net', '2011-05-01', 3, NULL),
(10, 'dolorem8', '$2y$10$kwzyQGGMXWHwFNDSaEsNNulaMTFYhpGGGCNOwPjTIz.DQUIwS1u6.', 'Esmeralda Paucek', 'Nam', '1984-08-28', 'Lithuania', '9480182181', '0340893990', 'connor68@smith.com', '2012-01-16', 4, NULL),
(11, 'nulla9', '$2y$10$Hh6Rlv4YHopBz6qu61WYJOdZeTsUU8uG0.hkvIN2/Yo4CIeafXc6y', 'Madonna Borer IV', 'Nam', '1996-02-29', 'Netherlands Antilles', '3752095492', '0881624116', 'tbeatty@price.com', '1996-03-18', 1, NULL),
(12, 'repellat10', '$2y$10$.VZgAcHslcqwDZDaZFDDmuoqO192rwxE998gtA8xfDAVh95M./cSC', 'Jan Romaguera', 'Nam', '1993-12-16', 'Georgia', '3821852769', '0187870565', 'elda.tremblay@will.com', '2010-02-21', 1, NULL),
(13, 'et11', '$2y$10$MgickNAeplvULZmoj4ZcJefjVNkZ4fXPDHmFLonwvHZJ8oJAhIY2W', 'Delores Gibson', 'Nam', '1972-06-03', 'Hungary', '7509929072', '0571617549', 'julianne91@hotmail.com', '1970-06-29', 1, NULL),
(14, 'maiores12', '$2y$10$Yxiyaz1cEztyKJ5Rmx1ABOWUS37DUqNoqh8vIZX661DDcBb7vWM4i', 'Miss Verda Kertzmann', 'Nam', '1988-09-04', 'Guatemala', '1160226113', '0516536277', 'corkery.dameon@hotmail.com', '2004-01-12', 2, NULL),
(15, 'dolore13', '$2y$10$17tDbplFqj1L9VFkbhaYEuL1bJd5g.i6yGmTs1cceOYWqtZZG3.L.', 'Dallas Lesch', 'Nam', '1995-09-21', 'Bahrain', '9996027423', '0958383934', 'hettie69@greenfelder.com', '1983-02-18', 3, NULL),
(16, 'velit14', '$2y$10$wfKQUq/cq4SxS6EVbpbGhOtVjw5l0gjfVwTiNwULTUf5wxQWltrjm', 'Toney Williamson', 'Nam', '1973-06-14', 'Bahamas', '9547435642', '0880626115', 'leatha.deckow@hotmail.com', '2020-04-21', 3, NULL),
(17, 'itaque15', '$2y$10$ZWNOoZPnp/iLg8KLNqd4kugkbEZi6J2BDk079wuNXRjJ2LGQq1gWm', 'Dr. London Kling II', 'Nam', '1999-06-24', 'Latvia', '1624273798', '0751909346', 'ykuhn@orn.com', '1985-07-07', 3, NULL),
(18, 'qui16', '$2y$10$cvPln3yFcDHHw7irSXeZ6OU4kCo/Oc4k104N6h/KoqbKcTBJGyVVK', 'Lavern Schneider', 'Nam', '1977-11-23', 'Cambodia', '6218362299', '0516469956', 'orn.timmothy@considine.biz', '1984-10-10', 3, NULL),
(19, 'atque17', '$2y$10$.35VcnRSaQXKMMZiSzpuE./MJCau4NBzRYfWMfw9UHdQzp1soI.am', 'Edd Walsh', 'Nam', '1981-02-13', 'Turks and Caicos Islands', '9399365531', '0499658722', 'arielle24@yahoo.com', '2001-02-28', 2, NULL),
(20, 'quos18', '$2y$10$MlEgjoFplilgNMmG3xcB8urkDFNM6DMFNFtnSaOzvcXp9AE1zXfFm', 'Miss Kattie Koepp DVM', 'Nam', '1989-06-11', 'Angola', '1284667825', '0661114032', 'wilfrid.carroll@bartoletti.com', '1983-02-25', 4, NULL),
(21, 'ullam19', '$2y$10$PwaCMEaeUp06mPi50W/wYuMMDxZih5NIkgwBD.CowcuWbI0n/8cG2', 'Prof. Bria Graham', 'Nam', '1976-07-20', 'Saint Helena', '1124340583', '0281338341', 'angelita15@gmail.com', '1972-12-24', 4, NULL),
(22, 'perspiciatis20', '$2y$10$pADRkZoombyjXjeEnnajjuCo4q.xPfDXym8OshGOK8nsS9pQJWrOm', 'Priscilla Cummings', 'Nam', '1978-10-21', 'Burundi', '4200633223', '0247386595', 'markus55@hotmail.com', '2008-02-08', 4, NULL),
(23, 'aperiam21', '$2y$10$tziZ1fuaNAFfEmjSuMMTlurBtSKYD/kMEa4NetvI5jd0NPRrPq14q', 'Orie Hessel', 'Nam', '1998-12-16', 'Jordan', '1197801391', '0419095188', 'earnest84@price.com', '1975-03-15', 3, NULL),
(24, 'odio22', '$2y$10$6wG68LAlE92jvso04d7zAucrQFvKF0DYCLqNwlmCVvNizk2Zr94mO', 'Margarita Nikolaus DVM', 'Nam', '1983-01-20', 'Iceland', '5950462814', '0674943346', 'wblick@hotmail.com', '2001-01-21', 2, NULL),
(25, 'doloremque23', '$2y$10$6d7Ypb3PRz94NPNXvct6Vu3cPMQbZjug6B0ss5erJwLpd.HB/44zS', 'Janelle Hyatt', 'Nam', '1993-04-01', 'Myanmar', '8309942706', '0903052145', 'qgoyette@gmail.com', '2016-05-17', 1, NULL),
(26, 'beatae24', '$2y$10$8ElJ9M5FbSnkVbeZGeiA2..e4MjdYWjnAnPLcB7nYfhbSen7iCjo.', 'Marlene Wilderman', 'Nam', '1991-03-12', 'Bouvet Island (Bouvetoya)', '9566946646', '0971261077', 'william.wiza@yahoo.com', '2010-12-28', 2, NULL),
(27, 'ut25', '$2y$10$9Ia08AioVgDkD8Fsa5Tu0eZAYhdxdjzecFwr9zD1QozBYTG9WijSu', 'Oscar Feest DVM', 'Nam', '1995-07-26', 'Kenya', '9743836961', '0346237750', 'khalil06@yahoo.com', '2006-10-19', 4, NULL),
(28, 'quo26', '$2y$10$fuhJ3./r.sjC7LUKSxwQ1.u9bt3fdgvLdDY/fdZchTk1UT1bJh3m2', 'Miss Sophie Rowe', 'Nam', '1992-01-05', 'Faroe Islands', '2411470106', '0809086005', 'tkeeling@hettinger.com', '2005-11-12', 1, NULL),
(29, 'ipsa27', '$2y$10$M.lAJr00bX5LZ3thHZwrzurgS5EsAAxwFuVVphgSk3wtXK/af9kie', 'Mary Stiedemann', 'Nam', '1972-05-22', 'Macedonia', '9149695483', '0967170287', 'dax.trantow@mueller.org', '1973-10-04', 3, NULL),
(30, 'maiores28', '$2y$10$mM22gr8a5L5amGl9K1..JeIO2QefkveZ/QmPovWJMvo2Ckdm55j2O', 'Dusty Oberbrunner', 'Nam', '1973-07-20', 'Lithuania', '3025922241', '0797200223', 'agustina.borer@predovic.com', '2002-05-07', 1, NULL),
(31, 'non29', '$2y$10$3IHj0xMzlcvEycXVwjTL3ObmJtVdbAqp9Cq3khNMZuV5z12HWbJOG', 'Mr. Conner Nader I', 'Nam', '1995-06-23', 'Myanmar', '4781106417', '0459655477', 'jerde.efren@yahoo.com', '2006-12-29', 4, NULL),
(32, 'eos30', '$2y$10$Fv3PTumrSuwQZDREngRje.NnrjCF8wV5CoI.WV25dEqhlucRmCZk.', 'Hyman Wyman', 'Nam', '1973-03-22', 'Mexico', '6133810562', '0173365369', 'arnaldo23@gmail.com', '1973-02-04', 4, NULL),
(33, 'recusandae31', '$2y$10$WMIIwRQqhWoJbuMxRtODQuBcJEK3HXJZO6CO0xb27Alcd0qm7zeP2', 'Jeanette Goodwin', 'Nam', '1976-06-10', 'Turkmenistan', '2205996007', '0831632133', 'fay.maxwell@gmail.com', '1975-06-24', 3, NULL),
(34, 'minima32', '$2y$10$Dx3QL9fakDlvsfV/TSkOQOAyRukJrZ7NWv4pMtAQDj7kB3zLw7OKm', 'Marie Hoppe', 'Nam', '1996-05-12', 'Egypt', '9347282171', '0979453379', 'marlene18@gmail.com', '2000-07-19', 3, NULL),
(35, 'iure33', '$2y$10$P77PKB27ZwqXyexPB.k2C.Vlaj43AyUR.A0ezTzLcAYfIrdTgP8Ia', 'Betty Towne', 'Nam', '2001-06-07', 'Niger', '7852555335', '0306930345', 'fjaskolski@rice.com', '1986-03-11', 2, NULL),
(36, 'consequatur34', '$2y$10$D8yJxUFFFWAxzHwq/bYoiuJjVVDzWCjEOCxR4rTWVMMbxNMHroprS', 'Prof. Aron Gulgowski I', 'Nam', '1980-06-06', 'Tunisia', '6713758613', '0851754953', 'cormier.alfonso@hotmail.com', '2003-09-17', 2, NULL),
(37, 'dolores35', '$2y$10$gxQ9Rv7Qwz.4rOxUV/v20.7APRKswqO4Mgo0Kqa59Jc6sslufOBL.', 'Alexandrine McCullough Jr.', 'Nam', '2000-04-11', 'Madagascar', '3896319747', '0679522431', 'lavinia.sauer@gmail.com', '1992-04-03', 3, NULL),
(38, 'atque36', '$2y$10$LNdglcGUsOONYKEolZ683.hcXcD.dPd9o8PQ2rARFGudlKkh3c/yW', 'Mr. Collin Larson IV', 'Nam', '1989-02-13', 'Saint Pierre and Miquelon', '1748018902', '0974556438', 'jaskolski.trever@gmail.com', '1979-10-14', 4, NULL),
(39, 'quis37', '$2y$10$BYxQ/aBtNUP/ymiGHkuBpu6GMtLoX1Ae8EbdsgXgQ15mDWDlWZ5X6', 'Brenden Sporer', 'Nam', '1977-12-13', 'United Kingdom', '5072842441', '0362642546', 'lockman.hyman@gmail.com', '2013-05-23', 3, NULL),
(40, 'consequatur38', '$2y$10$70itTU34ztkG.RLuGcnvRuiTGa7Hs0QCn1qgJhDHxkLj.fXGDOpKm', 'Princess Durgan IV', 'Nam', '1993-05-08', 'Latvia', '4050088016', '0391101767', 'bgoldner@hotmail.com', '2006-03-30', 2, NULL),
(41, 'cumque39', '$2y$10$2ljBUVas6OAW8m7F0ckHRusZyBu7O/jcvrwfhATu6xgvWmvfiQScW', 'Mr. Titus Stanton PhD', 'Nam', '1976-09-29', 'Japan', '8810518336', '0368260307', 'estelle02@hotmail.com', '2009-05-18', 1, NULL),
(42, 'dicta40', '$2y$10$qzTh0UOpbMjHTJKjINHqP.M.66dPo20sBcNAczRwGFXhVsiZgK1um', 'Miss Orie Senger', 'Nam', '1984-12-12', 'Palestinian Territories', '2156124996', '0800876966', 'kareem.wyman@hotmail.com', '2004-11-23', 4, NULL),
(43, 'velit41', '$2y$10$Y1j4GHIR19z9sTwjOA7hae9lQ06iCBjmyHVt5SKQV8E8ZfrTIN6Pm', 'Jamir Bernier IV', 'Nam', '1970-07-20', 'Haiti', '4297461163', '0364486144', 'thompson.clinton@gmail.com', '1989-12-19', 1, NULL),
(44, 'placeat42', '$2y$10$2/030cC2IrkTXBKlZI0UHeKDeTTJUrh4XcUc5xXO/rCbwT88qPzR6', 'Orval Ledner', 'Nam', '1996-09-04', 'Pakistan', '9536016516', '0837075867', 'rice.cicero@gmail.com', '2002-10-19', 2, NULL),
(45, 'quibusdam43', '$2y$10$pgA4Rk.TFjDK4RpkayJoAe066O5mfTEghBbMPrlfdu5UzqW5wFZGq', 'Sedrick Morissette V', 'Nam', '1971-04-22', 'Costa Rica', '8737669935', '0342163314', 'llesch@hegmann.com', '1997-11-02', 3, NULL),
(46, 'soluta44', '$2y$10$vY8JvfajvxKRg1lJt2fHb.JT8JuSsE7Wu.hEmrc9fC/r2bQpVZ222', 'Mrs. Delfina Altenwerth V', 'Nam', '1978-01-18', 'Belarus', '3903333800', '0791994447', 'yvette51@hettinger.biz', '1970-12-31', 3, NULL),
(47, 'ut45', '$2y$10$VcmPdQmwHmCeJyDPnkmTxO0PSv4P5kCw.Uj8M8xUBJ6MRFv9IDvpu', 'Miss Kaitlin Strosin I', 'Nam', '1979-09-01', 'Reunion', '5613318255', '0393903610', 'ledner.jerry@tillman.net', '2003-11-11', 4, NULL),
(48, 'beatae46', '$2y$10$16HaQd0jXOTl7Nn/F7xwUeTj0u1SjW.zfQp2rRzFWrqbUlG2L7F52', 'Mabel Walsh', 'Nam', '1996-02-20', 'Turks and Caicos Islands', '5661375735', '0576953716', 'yreichert@hotmail.com', '2017-11-23', 4, NULL),
(49, 'doloremque47', '$2y$10$yNuiV6/VK4X/ni0OlGnu/.yy6tnRY.XR8fXpaXKLTKlSdvSaqH48G', 'Joan Gulgowski', 'Nam', '1987-11-13', 'France', '2051890369', '0275122938', 'gladyce.becker@zieme.com', '1992-01-01', 1, NULL),
(50, 'voluptate48', '$2y$10$1NTI/XeWZPvdWNQ/jJv0tekg/5jy7PYrPw0L0A0qZbuo6s0y/GAfi', 'Zoie Feil', 'Nam', '1999-01-09', 'Turks and Caicos Islands', '9349001973', '0828994090', 'demetris41@yahoo.com', '1975-05-22', 2, NULL),
(51, 'nulla49', '$2y$10$FfVER926TBGOw20994nAv.K.PjGXgl4ja0PoSOqBFA1zCol1V1mye', 'Prof. Fermin Mertz DDS', 'Nam', '1975-11-30', 'Samoa', '2573332214', '0689660120', 'talia84@gmail.com', '1976-10-01', 3, NULL),
(52, 'quis50', '$2y$10$CjatfneP/sbLcg01AkxW6e0vDF/ud7BbSLgYZdXpEm7xdcx1dq1RC', 'Jacinthe Turcotte', 'Nam', '1987-08-12', 'Cook Islands', '1550350074', '0107049582', 'josiane.mueller@schmeler.info', '2020-01-14', 4, NULL),
(53, 'asperiores51', '$2y$10$1zl9dikh2Ev5.UdROTjFvuug2sKcC9j/WVm.BnuGgKIoIJqgTAoI2', 'Mr. Ansel Renner', 'Nam', '2000-01-18', 'Togo', '9161966762', '0166670529', 'tshields@yahoo.com', '2003-08-26', 4, NULL),
(54, 'vitae52', '$2y$10$ytX5FxTrlmY6VsJZEgkXkuy14xJorIYVbMNsMaFc5T6V6vaf46F3W', 'Justus Boehm MD', 'Nam', '1972-11-27', 'Eritrea', '3102472087', '0232850762', 'mina74@yahoo.com', '2011-04-01', 1, NULL),
(55, 'iure53', '$2y$10$uXPt3aeU.0zdFOlffnkM0.AY6kmnhCkDuHWc/mYswGycRSmck3Gqa', 'Ms. Rae Schuppe', 'Nam', '1974-11-14', 'Gabon', '5354675989', '0402892839', 'tmiller@yahoo.com', '1971-07-09', 2, NULL),
(56, 'placeat54', '$2y$10$I0W7bT3zrSiRpHLhlJ8FcOsAxvBZz64cvZZF3dffQTObe3m9mAhHW', 'Jalen Durgan', 'Nam', '1975-12-29', 'Djibouti', '7220821032', '0279785808', 'susie69@haley.com', '2006-01-17', 2, NULL),
(57, 'sit55', '$2y$10$h.ahQgZBE7QZvnQAG0kllOKxprACDDjYkJ6yBNTPKoJixaAyGhVEO', 'Elouise Hagenes', 'Nam', '1977-12-22', 'Liberia', '8284732712', '0896029153', 'hmckenzie@yahoo.com', '2007-01-17', 2, NULL),
(58, 'similique56', '$2y$10$bzRWevcuYfcB7UsSob1Vgu2Af5USgif00YjIR3zH9LVlaILN1FPSC', 'Marcelino Wuckert', 'Nam', '1984-04-26', 'Holy See (Vatican City State)', '7653773090', '0810283334', 'lynch.lexie@cronin.org', '1996-10-11', 1, NULL),
(59, 'consequuntur57', '$2y$10$x6/pJf.bHz155f.5SJqfKOm/6nccxjYjkPDGuZgHYstE7xuARU4pS', 'Tristin Beer V', 'Nam', '1977-08-06', 'Korea', '5411567871', '0445901718', 'kreiger.lyla@hills.com', '2019-09-01', 2, NULL),
(60, 'soluta58', '$2y$10$hOBTZ8KGAzrn9TF2ugXISufIcZ516IFY8eL3jVj9TP2wcJJN9RyaS', 'Judy Beier', 'Nam', '1991-11-07', 'Tonga', '4799906446', '0280699120', 'leo.leffler@kuhic.com', '2011-07-23', 4, NULL),
(61, 'ut59', '$2y$10$Zg64OoeuvxJRYFYCovA9Aev7W2ErUz9.PKkie2aNpUB0obiKyjy0i', 'Mr. Rickey Bergstrom', 'Nam', '1993-04-01', 'Cocos (Keeling) Islands', '2795997366', '0175060826', 'imann@bergstrom.com', '2008-02-01', 1, NULL),
(62, 'porro60', '$2y$10$Mvxfd7AmWGoSDA6.bhzc0.7dcoBJ8tKp36qp74m7Di1z57t1y7S.6', 'Janelle Daugherty II', 'Nam', '1993-10-16', 'Tonga', '2985328548', '0134533626', 'freddie58@gibson.net', '2014-03-01', 1, NULL),
(63, 'in61', '$2y$10$5NZr4EOBtUOcHDCqMoqvg.VOREC3aUoBw54WHH36w.TzHuc44/zIi', 'Mr. Kristian Fadel MD', 'Nam', '1970-03-14', 'Hong Kong', '7834773335', '0881713182', 'uterry@kuhic.biz', '1989-12-12', 2, NULL),
(64, 'repudiandae62', '$2y$10$Ls/ANAmOSUvgYx7Gi6KWBeXkhqxRe7eujVrZbl30EaZQcNZkoRPoC', 'Margret Abernathy', 'Nam', '1984-07-29', 'Gabon', '6631578663', '0674014568', 'emilio07@hotmail.com', '2011-02-19', 4, NULL),
(65, 'eum63', '$2y$10$Y408tytwgWC1GaSa6yr1EerpHG/AWyC9I26V8wZ9ddkPj0SxiWQ.i', 'Dr. Amari Ward DVM', 'Nam', '1981-10-20', 'United States of America', '9708542102', '0971647588', 'zpollich@konopelski.net', '2019-06-08', 1, NULL),
(66, 'sit64', '$2y$10$vUN.pk6nr09AKA8YiKimc.CpGJc9UUNsDIpk0lyZUfVm3KXRZtwyy', 'Kylie Johnson', 'Nam', '1984-12-24', 'Sri Lanka', '1208167022', '0230777255', 'cormier.mckenna@lindgren.com', '1972-06-26', 2, NULL),
(67, 'animi65', '$2y$10$yhpwAvICDtDEuWACkCo7muGWep4X.qAK9/9dtJzGrN5Sn.zdMMj5e', 'Dr. Lois Sawayn II', 'Nam', '1991-08-20', 'Mauritius', '8589703492', '0169960412', 'kendrick53@stamm.com', '2011-09-17', 2, NULL),
(68, 'perspiciatis66', '$2y$10$wVzp0108FsUHhA7XhSRx7.98mYgqJ91F38.Cw22Ts12LVSLY3f8RO', 'Lonny Casper', 'Nam', '1984-06-11', 'Andorra', '3781620688', '0971508046', 'jnitzsche@mertz.org', '1982-09-01', 2, NULL),
(69, 'quae67', '$2y$10$NVsDi2MrRZcJLuEe6hdFzuPNld9j4ZoDk2NIYtM7GmwLyDYdROrM.', 'Prof. Daniella Carroll V', 'Nam', '1984-12-08', 'Algeria', '2569341177', '0800383166', 'leannon.cathrine@swift.com', '2000-05-21', 3, NULL),
(70, 'sint68', '$2y$10$FicfdT3oO8xWsvZ3mX97..BLhTCBirTBppykBjxTl0ktHCdiGlFT2', 'Chelsea Christiansen', 'Nam', '1984-01-26', 'Bahrain', '5400578584', '0813832568', 'usenger@yahoo.com', '1998-11-12', 1, NULL),
(71, 'saepe69', '$2y$10$tSiomDzmgemhxbaDMumGFO/Lw502UcuqKodNv7dC/lASTfynQi77S', 'Cleora Parisian Jr.', 'Nam', '1977-04-05', 'Turkey', '8598292965', '0529927003', 'clarson@gmail.com', '2000-08-12', 3, NULL),
(72, 'sint70', '$2y$10$kJGU4bJRXb3h3uov3jqwEOz2TQMITtZXpx9ELsrwG6VgbQ5oyKVgi', 'Aurore Hyatt', 'Nam', '1974-11-21', 'South Africa', '4736453980', '0122775638', 'moses94@hotmail.com', '2015-12-25', 1, NULL),
(73, 'voluptatem71', '$2y$10$PH6I.uZjJInuwSfWEgz2qOgALbFU5wmxYNnod3mVS8Wz5.s3WWEKO', 'Billy Sawayn', 'Nam', '1997-05-01', 'Grenada', '5967705439', '0137980766', 'vallie14@heller.com', '1970-07-30', 4, NULL),
(74, 'minus72', '$2y$10$PTh614lOZAiQRGPF7WlVueV3hJp04v4x1WauZcqBttQaT7s8TtHsW', 'Mrs. Jadyn Stiedemann PhD', 'Nam', '1986-01-21', 'Taiwan', '2947794575', '0138189529', 'considine.moises@west.com', '2006-11-28', 2, NULL),
(75, 'magnam73', '$2y$10$fw0AoNzUoP.5rDqmvtZHMuWsPxPWHJj7FtcBLKZoHZ0WsfSMY6jvS', 'Brent Ondricka', 'Nam', '1999-05-18', 'Chad', '9069741254', '0598107991', 'leland.koelpin@gmail.com', '1999-06-29', 4, NULL),
(76, 'incidunt74', '$2y$10$DnLT8CQqu1YPoqW7rrmxDOYoxz/wz9AcBi3nfnTD9wgtJokZG4AgS', 'Dr. Toby Heller', 'Nam', '1996-03-04', 'American Samoa', '1365346651', '0564977701', 'chaz92@gmail.com', '2011-07-07', 1, NULL),
(77, 'dolores75', '$2y$10$iQ9GFcCGNEmktD4HsF2yFeDggPsc9wIVM9wWDcuiUYqm8BX5PCY9i', 'Jazmyne Tremblay', 'Nam', '1994-07-13', 'Myanmar', '6057131821', '0131664285', 'asenger@kutch.com', '1975-03-30', 3, NULL),
(78, 'eum76', '$2y$10$5/O.wUM4cyFpgPDGsYxoNe.CFHiNd36LgxLNip70pE63BEqlPRUBa', 'Thora Daugherty', 'Nam', '1970-01-06', 'Mexico', '7380947805', '0964140527', 'braeden24@hotmail.com', '1972-11-12', 4, NULL),
(79, 'exercitationem77', '$2y$10$i2ciPmVWK3cmhc.m3fs1lOEdzU6VO33GPNr/a7rNLaVyNg3p5ZiQu', 'Alanna Kiehn', 'Nam', '1982-04-29', 'Comoros', '1738118481', '0485665878', 'noemie.morar@yahoo.com', '1985-06-19', 2, NULL),
(80, 'aliquid78', '$2y$10$fjovQqa9pYTxryxXBOYYGOeSjE9dNFPcdY7fM/v.f.ti3q7NxpLmm', 'Dr. Julie Crona', 'Nam', '1994-03-25', 'Israel', '5676634674', '0928856733', 'dagmar85@raynor.com', '1986-05-01', 2, NULL),
(81, 'et79', '$2y$10$ihQ3PXlhKUIemD9Cjt2fRulFV20m0LC68zWq/2ULeblCNjas1R/Xa', 'Amie Lakin', 'Nam', '1993-12-17', 'United States Minor Outlying Islands', '4516655377', '0378977145', 'tyrel.okon@fisher.org', '1994-01-24', 3, NULL),
(82, 'totam80', '$2y$10$dDBV.gedim0Dm2Mc12EoV.dbkxwBI5EpO2XJArSqM4oQ..0Ghs5NC', 'Genevieve Kunze Jr.', 'Nam', '1987-12-17', 'Russian Federation', '8873727921', '0549161562', 'madelynn71@torphy.com', '1978-08-29', 1, NULL),
(83, 'nisi81', '$2y$10$twZ8RqMusRP/cpvI0NOq3eyORVW4urNFX764z1Wobt3yxrIg6u9qG', 'Obie Beier II', 'Nam', '1993-04-08', 'Morocco', '8368891566', '0862776588', 'jessica10@hotmail.com', '1970-03-13', 4, NULL),
(84, 'nihil82', '$2y$10$42KuWXNdWwQXV7q00VHWsOWd1BD5sEa0my17QG9imGakpZc2xgJBO', 'Camryn Hirthe', 'Nam', '1970-05-11', 'Macedonia', '2101443004', '0490421011', 'lang.osborne@cremin.com', '1987-03-18', 3, NULL),
(85, 'eaque83', '$2y$10$EkGZayDYqVJFhDwWcVAG6.YUt89Xhy4jffvAYqXBlpCS7ICd8caC2', 'Camden Oberbrunner IV', 'Nam', '1996-12-28', 'Kyrgyz Republic', '8436252900', '0882558155', 'nico35@gmail.com', '1994-02-24', 4, NULL),
(86, 'voluptas84', '$2y$10$jVifqkc3rNceVJGwVzDgTuU3L3si.tygIdlDb9JKrnEdYKLbS1ueC', 'Mr. Kris Nitzsche', 'Nam', '1975-10-31', 'Ireland', '9625910410', '0836958585', 'yblock@tromp.com', '2015-06-29', 3, NULL),
(87, 'est85', '$2y$10$V0qeEDEj./RXUXYLEO/KsOd14.48fCQ29gUXxwq9LSay80xBrrAmy', 'Rosalind Luettgen', 'Nam', '1987-01-26', 'Swaziland', '3853697356', '0850661105', 'schaefer.keyon@lang.com', '2007-05-28', 3, NULL),
(88, 'mollitia86', '$2y$10$PMpR5Ab95RyfrpwcKL06I.wXBBLfxVzPGfIZjz8QzRiv3IVbt6i66', 'Eugenia Eichmann', 'Nam', '1998-01-27', 'Brazil', '9301554063', '0687687274', 'nestor11@hotmail.com', '2010-02-05', 2, NULL),
(89, 'at87', '$2y$10$WiHYzqGoMKV2ApWdQtqXR.VLoPACi8n0.VtQU60b.I/lOeqEHb.di', 'Madyson Casper', 'Nam', '1988-05-21', 'Egypt', '8338330257', '0348828402', 'niko19@hotmail.com', '1980-05-01', 3, NULL),
(90, 'unde88', '$2y$10$/MfHYeZwx0wLFwIbcSIOK.rJWqQcPv27ngRRi8ERGDpFm2Vr5gfzu', 'Jeffry Cremin', 'Nam', '1998-01-23', 'New Caledonia', '3296240513', '0499552999', 'bquitzon@hegmann.com', '2018-11-07', 4, NULL),
(91, 'porro89', '$2y$10$w6QYhixWTFtmnlAhW9rkWeeKLzgZ3DQ8U3yT.CCRRS/.17TBZYPwq', 'Ms. Marian Corwin', 'Nam', '1971-02-14', 'Ireland', '8272986705', '0978839361', 'reynolds.electa@yahoo.com', '1974-03-26', 3, NULL),
(92, 'nesciunt90', '$2y$10$eY9aYKclW5IY7g/aKlsNlOs87xgKWqByKMYTpLXjV8aFMS.cjBLpO', 'Dr. Dane Greenfelder', 'Nam', '1977-03-13', 'Guatemala', '2163555535', '0161434191', 'jayne.langosh@hotmail.com', '1988-11-12', 1, NULL),
(93, 'ad91', '$2y$10$wWttNrFCfRS6pq2/JOQVd.Z/8rFRao0HZQJ8ZtVbjbPuoavyRrPpC', 'Guiseppe Moen', 'Nam', '1970-02-22', 'Angola', '2901282197', '0677180771', 'rick.olson@schinner.com', '2000-03-08', 2, NULL),
(94, 'laboriosam92', '$2y$10$.q.INziM0AECRQSi/rClcu21.P9UiWznQXgRz2XT8/UEhZGi0If66', 'Prof. Kayden Lesch III', 'Nam', '1990-07-17', 'Central African Republic', '7928316772', '0781004432', 'stoltenberg.loy@carroll.net', '1986-08-12', 2, NULL),
(95, 'et93', '$2y$10$8zWq4Jtk5plhjDWxOwxPSe.YGBufuvZ6JiWaXlev.IrtUa3HK6w1i', 'Nikki Rath', 'Nam', '1989-02-28', 'Senegal', '3612426283', '0442452836', 'rafaela77@kilback.com', '1970-04-21', 2, NULL),
(96, 'et94', '$2y$10$4/.MC9zPNTQ2hKz7.b6/quoYhQ2.BQ9WaPlOdfAWZ1hi/6hNWZ21y', 'Fatima Haley', 'Nam', '1976-07-16', 'Cook Islands', '4108795372', '0832494178', 'jane.yost@hodkiewicz.com', '1979-09-10', 2, NULL),
(97, 'laborum95', '$2y$10$gAdygBZ1nG94ddXJcdDvt.r/BImAMycAdw47FEtknPgDF1/X8xMRS', 'Rigoberto Dibbert', 'Nam', '1995-01-11', 'Benin', '7406394038', '0891662981', 'fay34@boyer.com', '2011-05-17', 4, NULL),
(98, 'omnis96', '$2y$10$7/Er1jAddGutixaA0bsRQezECtZ.Z7NUTbQswS7j4hfBtmEB//tae', 'Ms. Anita Windler', 'Nam', '1976-05-09', 'Yemen', '1613026940', '0365144155', 'lorenz.kub@hotmail.com', '1986-09-05', 1, NULL),
(99, 'ab97', '$2y$10$ebhvbhlPYJc/WN89t5As7OOXGURTDvOt2AnIQ0wJFIKNrmxUGM2CK', 'Oliver Corkery', 'Nam', '1987-02-12', 'Guyana', '1809169832', '0375909855', 'hwilliamson@yahoo.com', '1980-01-24', 3, NULL),
(100, 'eveniet98', '$2y$10$zSc1vp0L.UmIqXXy4S7vJuPdBYGw/mSWDg18VEU7kvv2Wwt9Q9Jwe', 'Mr. Frankie Fritsch II', 'Nam', '1976-07-15', 'Mexico', '1860037021', '0140163953', 'ella60@hotmail.com', '1972-04-02', 2, NULL),
(101, 'repudiandae99', '$2y$10$fXHxSesWYvyBSnkgPphavuobAvcDP257In/oMuMNh9BansL.dcd96', 'Richie Bradtke', 'Nam', '1986-05-29', 'Ecuador', '3942680688', '0464569452', 'lemke.alexandrine@borer.org', '1975-09-12', 1, NULL),
(102, 'exercitationem100', '$2y$10$SC5aiYt75WqC3RnOMvBDVeFEowFIXxP7ovLxKxc.bqPAk4cpySNx2', 'Annabel Weber', 'Nam', '1992-03-16', 'Niger', '5219052278', '0853894572', 'treilly@vandervort.com', '1989-07-14', 2, NULL),
(103, 'consequatur101', '$2y$10$4P2GbqKbaWgsCldaUc7DbusOqBa62na13AvLbTMiqxxAMHBARUU6m', 'Mrs. Amiya Johnston', 'Nam', '1991-03-15', 'Thailand', '3083941982', '0462033288', 'noah28@wehner.biz', '2020-08-02', 1, NULL),
(104, 'quia102', '$2y$10$u3Hi.Q.2eOL5J7PgoZo.R.HJWu7OrC71qkQZKRO9cfo1mJSN2tSyu', 'Ron Willms', 'Nam', '1999-07-19', 'Jersey', '8074236447', '0538227740', 'idella.klocko@schumm.com', '1974-08-30', 3, NULL),
(105, 'sunt103', '$2y$10$GUyShiuHZXpYJk5XOEL.4..yIZBmROeY6kcaLFK3F.v3xoH0QxiDC', 'Melany Leuschke', 'Nam', '1996-04-13', 'Paraguay', '2274980139', '0764081798', 'feest.izaiah@yahoo.com', '1980-05-21', 1, NULL),
(106, 'molestias104', '$2y$10$LiuYsc0ZMy3ClAtlkm/tDuaKGWLIXnsRTS6SmXpaoX9HV3NJewFsa', 'Mr. Cordell Kunze I', 'Nam', '1980-01-26', 'Yemen', '1998921179', '0412381459', 'frederic.senger@barrows.com', '2019-05-01', 4, NULL),
(107, 'ea105', '$2y$10$n3deU3PcVFCAogDrDzCUGuYoggc//FsUldMduFgB1ZI43znoqGJTy', 'Aurelio King', 'Nam', '2000-11-25', 'Anguilla', '5195579030', '0476079050', 'adonis.renner@gmail.com', '1993-09-09', 2, NULL),
(108, 'error106', '$2y$10$hJ9X8D7ZbyqIzDcZe4I13eQlulSaKsDrS54BRJ08dA1lolQcWkc6O', 'Zechariah Corkery', 'Nam', '1980-07-07', 'Jamaica', '3846130724', '0413607125', 'hillary48@waters.com', '1979-06-30', 1, NULL),
(109, 'excepturi107', '$2y$10$hqkzjVJeoMzjqqjnF1il4uyKzzFNJC5krIKXtNJtcHUKHNksfc7fG', 'Ms. Kailyn Fay', 'Nam', '1981-10-12', 'Germany', '1522316878', '0485995340', 'ron94@gmail.com', '2002-12-22', 2, NULL),
(110, 'ut108', '$2y$10$Tg1BVrYhGYRYEiXTQz/PDuNj34xS/y5zkS8/iOxYwrmmjLoc3kvSS', 'Walter Haag MD', 'Nam', '2001-06-04', 'Korea', '5622246358', '0399440218', 'stracke.jerome@hotmail.com', '1999-04-30', 1, NULL),
(111, 'maxime109', '$2y$10$3lcukAduTuU1D/GX0XNJeOO9W6sRwndgY9JB0jnMKV/.cu9GmsifO', 'Yasmeen Daugherty', 'Nam', '1986-09-15', 'Seychelles', '7609044602', '0952456232', 'skye15@heaney.biz', '1992-03-06', 2, NULL),
(112, 'voluptatibus110', '$2y$10$bs1tExX9Zaf9wKP35ogxe.QhPM.1HkkiQiShwXCbGS7rWaoYYKEx6', 'Dante Schuppe', 'Nam', '1987-04-05', 'Rwanda', '5161282225', '0404481262', 'howe.tina@lubowitz.com', '2013-02-20', 3, NULL),
(113, 'recusandae111', '$2y$10$jzLfzN6Ia2.GW44g6dgoa.OGWJiuOEknZOxHqSY3ptxexezjA7Slq', 'Eugene Hickle I', 'Nam', '1997-08-14', 'Costa Rica', '3487825365', '0831617500', 'giovanny.larkin@weber.com', '2014-01-06', 4, NULL),
(114, 'incidunt112', '$2y$10$NK8yca3eNKizE.swzGL6neoNvQFILuqsnYN7t8yufOcZ4Nofov.Wy', 'Mabel Herzog I', 'Nam', '1988-02-01', 'Madagascar', '3141916962', '0461447614', 'cristian45@yahoo.com', '1980-03-28', 1, NULL),
(115, 'accusantium113', '$2y$10$3lssNetpuE7XickR1w0HSuqyP20TKaXDJvmyxD03kf.qd7yZ9W6Fa', 'Idell Gottlieb', 'Nam', '1984-04-09', 'Guinea-Bissau', '9377250080', '0358722511', 'tia.gulgowski@mayert.com', '1990-08-28', 4, NULL),
(116, 'quasi114', '$2y$10$aaZAhQ4Hb2mPOAe7z.FVrOo/ULCz/EKAlUc3yaG9LTerYMTBcUxEy', 'Trent Purdy', 'Nam', '1973-01-23', 'Guam', '1063442465', '0449008285', 'ben85@gmail.com', '2010-06-04', 2, NULL),
(117, 'illo115', '$2y$10$o.Wk3G4gS.nLG6UMT2GR4uGPDIp2Os9nvoCOCOk4hg/W8GzOm8qvK', 'Mrs. Eve Kreiger', 'Nam', '1979-06-23', 'Egypt', '3811723141', '0447320716', 'morar.celestine@gmail.com', '2002-05-27', 1, NULL),
(118, 'officiis116', '$2y$10$oxiumoiYmE6FIjKIFX49qeu22lYUonn0gCx5gcip2Z8dECd2o1PYe', 'Claire Thompson', 'Nam', '2000-08-02', 'Macao', '9191775394', '0209174934', 'layne.cruickshank@emard.com', '1977-02-24', 4, NULL),
(119, 'ut117', '$2y$10$bGE.vTQ5k.9kBIHVB1PMb.6lNEekYcjvsmzu49n.JplJRoKRT03F2', 'Prof. Catherine Bogisich II', 'Nam', '1977-07-06', 'French Polynesia', '2971174128', '0362316418', 'tschimmel@yahoo.com', '1983-08-26', 3, NULL),
(120, 'id118', '$2y$10$OusujkCNwBvMwycm4gI4nO5QUXoplGNBeDNlX58weC3s9Hc66KqTG', 'Dr. Albin Wolff DVM', 'Nam', '1987-12-24', 'Guatemala', '1389815702', '0897737595', 'sarina93@rowe.com', '2017-09-06', 1, NULL),
(121, 'qui119', '$2y$10$XzYlnlw.9s5umfyiN5WHJujQFB2ELD3BJzZSESMmSeYA9zjfFKUPC', 'Laverna Trantow DDS', 'Nam', '1996-05-20', 'Nepal', '6359071706', '0204068363', 'bstroman@yahoo.com', '1972-04-14', 2, NULL),
(122, 'voluptas120', '$2y$10$qexoi..bpLTvGj4QzzOOfO498/8fKJtKXyhhf.rQkbb9gzEPMvpfu', 'Edgardo Rogahn PhD', 'Nam', '1983-06-16', 'Luxembourg', '3125692384', '0434024779', 'maudie31@hotmail.com', '1985-03-17', 3, NULL),
(123, 'ut121', '$2y$10$PSMvtNO9EiufaYbrrEhI1uos898faWY5a/F/5s.6AscsBvkYuqdZK', 'Alexandra Herman', 'Nam', '1985-08-07', 'Brunei Darussalam', '2174386938', '0811291979', 'krajcik.aiden@yahoo.com', '2012-02-06', 1, NULL),
(124, 'animi122', '$2y$10$CtlYE02Cxlpb.Txn8z29VOcCh7Xh8LcJr6LY/6c60oGeU9M5WrTsm', 'Hermina Zulauf', 'Nam', '1996-09-23', 'Austria', '5369779701', '0566106208', 'luella.keebler@feil.net', '1991-09-21', 2, NULL),
(125, 'temporibus123', '$2y$10$vBplnzSdiTOd6v0UDYx.xOd8hxNdtFQHCS9BbxyZiKbW7hqqTZj3S', 'Prof. Edyth VonRueden', 'Nam', '1982-08-07', 'Comoros', '4090924628', '0273773173', 'vidal61@hotmail.com', '1993-06-13', 3, NULL),
(126, 'est124', '$2y$10$Kx/3zU0.Z50M/zGe4UmEWez6.U8zCXa8pvT4NZd43fVSK0NgVDYde', 'Lesly Bashirian', 'Nam', '1991-05-22', 'Uruguay', '2450614666', '0668194022', 'bennie.mills@botsford.com', '1988-06-11', 4, NULL),
(127, 'hic125', '$2y$10$GzoonQQrbr01uVn2B7er2u7DVTvapz8o8sFJMdxVqX7wiAAr4wAF6', 'Mrs. Tressa Stroman', 'Nam', '1974-12-31', 'Saint Pierre and Miquelon', '1368948790', '0214150748', 'armstrong.orlo@dickinson.net', '1988-09-25', 4, NULL),
(128, 'impedit126', '$2y$10$k4iPs6UjsFsSEZ/Or5H97edFNFGaRgscbQIWSBMWBJgiexfMa/ltq', 'Brayan Muller', 'Nam', '1988-12-23', 'Bolivia', '3940424893', '0697827573', 'sofia86@gmail.com', '1979-09-11', 2, NULL),
(129, 'et127', '$2y$10$0LllawR6nXCbTinxWDxvHea02Hi1dB4lHF./xFfLq.mf1p.aB5s.u', 'Mr. Mikel Beer PhD', 'Nam', '1981-06-17', 'Armenia', '8491061091', '0559767363', 'letha68@yahoo.com', '1998-11-14', 3, NULL),
(130, 'ut128', '$2y$10$bUkQ4rahXQ5rMMPGCH2aNuGklpQIAT2kGN0kaUaPw/k1DDjHqstO.', 'Devyn Hettinger PhD', 'Nam', '1985-01-24', 'Latvia', '2393962824', '0867041917', 'henderson.zieme@gmail.com', '1981-09-28', 4, NULL),
(131, 'sequi129', '$2y$10$JwTWUmU7h4rGMBHq9MMDz.pBdcOuyxMMD2Os57qnhhvPFI0WnvjOa', 'Moriah Considine', 'Nam', '1986-08-24', 'Cameroon', '5236679801', '0211556984', 'darren.lehner@prosacco.com', '1977-08-07', 3, NULL),
(132, 'eveniet130', '$2y$10$9mnBkOIjx.NrT4ARgYnhVuJt5p/0MV3jXeubSlcvyaYBvtF8h0ui6', 'Earnest Morissette', 'Nam', '1970-10-02', 'Monaco', '5927284909', '0901423601', 'vandervort.keven@yahoo.com', '1979-01-03', 1, NULL),
(133, 'aut131', '$2y$10$Tg1xQXs4GkASP..DfVxm.uR5V3n59ldSoYeVZgm4ASJFLFsBGvvuS', 'Melba Watsica', 'Nam', '1976-01-09', 'Vanuatu', '3605960906', '0792251083', 'maudie.schiller@bauch.org', '1998-10-02', 1, NULL),
(134, 'facilis132', '$2y$10$FEjNKR2tnvwgO4FhaD7jLu3U8vMBLXblvDwsQQ2qjYrcww7enUPCu', 'Blaze Runolfsson II', 'Nam', '2000-02-01', 'Northern Mariana Islands', '5889757240', '0682470637', 'tobin.walter@hotmail.com', '1978-02-25', 3, NULL),
(135, 'cum133', '$2y$10$20Q3dHIaIB9zE.N6/ZIObO7m.JZaZcu9RXsCndxJIjizjS.Knz4EK', 'Bud Huel', 'Nam', '1983-10-04', 'Saint Helena', '3289460916', '0978970691', 'white.madelyn@kutch.net', '1997-06-26', 2, NULL),
(136, 'asperiores134', '$2y$10$0atE7QHacDI0mvZa4l8IIeQjOwI8WctnWL6nTGoyRO9j.zEbvwPA.', 'Prof. Cruz Bruen', 'Nam', '1987-05-09', 'Kiribati', '1727541711', '0568620702', 'cleveland.rodriguez@daugherty.biz', '2005-11-12', 2, NULL),
(137, 'sequi135', '$2y$10$JiTs7Y/RBB2IDzNLDhGXMe3RdVpmRFmCmAg2qXbsi.9hKcd5arpsS', 'Yasmin Wiegand PhD', 'Nam', '1974-02-25', 'Aruba', '5432500048', '0888423689', 'jacey.rutherford@yahoo.com', '2011-05-30', 1, NULL),
(138, 'voluptatum136', '$2y$10$dSbLz4uW3r7/wd95CtA43O.d/NLcGJQETsm/EjxuwzJB2zJF1TOme', 'Prof. Ignacio Upton', 'Nam', '1987-08-01', 'Costa Rica', '2441941962', '0394824837', 'sherman25@prosacco.org', '2013-05-19', 2, NULL),
(139, 'vel137', '$2y$10$4yL1o6MRmO.YrXMyeBV50evZOBxKoPO/edsB86POroeQncnU2vmnm', 'Mrs. Susanna Zieme', 'Nam', '1988-03-10', 'Armenia', '4846695167', '0758364274', 'cesar.dibbert@yahoo.com', '1973-06-28', 1, NULL),
(140, 'vel138', '$2y$10$w6HgZ7HbtGYHA3d2YSKJpOQuvZW1WrkGAJmp6oRlkVFCxVl/3xk2a', 'Aric Weimann PhD', 'Nam', '1972-09-26', 'Cote d\'Ivoire', '6323752068', '0995164471', 'america.leannon@huel.com', '1997-09-19', 2, NULL),
(141, 'et139', '$2y$10$QEFGl0hl/BPXd9W5KuKtMewzt24nwv0cVpkiDWJqy/I05FVHchm4C', 'Beulah Gerhold', 'Nam', '1994-04-29', 'France', '9732379619', '0616600748', 'reyes75@yahoo.com', '2007-06-26', 4, NULL),
(142, 'dolor140', '$2y$10$3aH4HtkxSa04QX7cd3rcCOql8A/uPbwWtapxpAqMqmKOU1awlbmGC', 'Yasmeen Wintheiser', 'Nam', '1978-07-01', 'Andorra', '1434430992', '0817248691', 'ewill@yahoo.com', '2021-04-10', 1, NULL),
(143, 'aliquam141', '$2y$10$uErg14.y6/juAoQ3vQM/KekLKdBACwVE6/keq0Ck3OwB4Za4vRm/K', 'Marcel Grady', 'Nam', '1981-09-07', 'China', '4001857541', '0615248585', 'tess.goodwin@hotmail.com', '1994-04-24', 2, NULL),
(144, 'quam142', '$2y$10$a62zGjS33XOu2JFDHX1Ovu6c3gQGJ9n0Fl4wmWp2r8KzVtMnLUDV6', 'Monte Bailey', 'Nam', '1990-12-01', 'Qatar', '6991884338', '0180568265', 'brendan08@hotmail.com', '1999-09-21', 4, NULL),
(145, 'at143', '$2y$10$SEhLAFfEz5m99KJI6JJ2Mu0Brf1t7N6L.1JXlZqlPfkVbXZJAF4ce', 'Dr. Denis Sipes V', 'Nam', '1982-03-08', 'Zimbabwe', '5223863960', '0910813631', 'herman.adolph@yahoo.com', '1982-01-27', 4, NULL),
(146, 'unde144', '$2y$10$iv3v4TahQlbp.zCos8LdCekC4cOk/0bhkBVaIVqHckRng/Qz6VawK', 'Ms. Pearl Doyle II', 'Nam', '1991-01-19', 'Korea', '9597573157', '0620715635', 'shannon04@yahoo.com', '2012-09-04', 1, NULL),
(147, 'eos145', '$2y$10$WFfQYjEWd0SelwPtYM3G8uvwaYVLbMn.zJsGagvIRQk1liXchRNSG', 'Liliana Koss', 'Nam', '1991-09-06', 'Trinidad and Tobago', '3794723785', '0739093437', 'bbalistreri@yahoo.com', '2014-03-14', 4, NULL),
(148, 'qui146', '$2y$10$Wb8CItqVZ39lzwFSYJaePOp28x/o8JPeBZ96vu.Ar6NVhDDLrYFwa', 'Brock Osinski', 'Nam', '1982-01-14', 'Tonga', '6479353732', '0654396487', 'wlebsack@gmail.com', '2010-04-27', 1, NULL),
(149, 'eveniet147', '$2y$10$IjPuyvmIBzr.UXA54QUdZO6wZHoD37IQszUCPCzHUBYxDTwJjqgCW', 'Deonte Prosacco IV', 'Nam', '1976-04-07', 'Saint Barthelemy', '2699157261', '0531894967', 'josephine30@yahoo.com', '2015-02-24', 1, NULL),
(150, 'blanditiis148', '$2y$10$jskKZewgGu/pUEuC5QrFluVSZOJ/yZ2KIvZFur4tQhU6DmLguP0wW', 'Prof. Ashleigh Armstrong II', 'Nam', '1989-03-19', 'Togo', '7686906185', '0392110411', 'stremblay@yahoo.com', '1991-09-18', 2, NULL),
(151, 'labore149', '$2y$10$owzeMjl2vIEqo7VHNYHRh.bKgAcSdz28eWRXsiyri7.6MV2fGFc7u', 'Astrid Hahn', 'Nam', '1976-08-24', 'Tonga', '9085404484', '0415374797', 'brant53@hotmail.com', '1995-01-15', 2, NULL),
(152, 'quas150', '$2y$10$qW5NQUz1vJEgS8OHRkTsUe4/Tvv.cIRuF2f1nnMVCje6QhosiXAe2', 'Rodrick Harris V', 'Nam', '1974-09-26', 'Greece', '1455761804', '0825934338', 'reanna33@hotmail.com', '1985-08-24', 2, NULL),
(153, 'eveniet151', '$2y$10$DRjLmt1h.P4PGfVqx8AHPeAS9uWT/jbj8qd1UWNcuptvsDHOj3BCe', 'Dominique Gorczany', 'Nam', '1982-02-16', 'Bolivia', '5541754551', '0776302335', 'ashleigh.larkin@wilderman.com', '2013-12-06', 2, NULL),
(154, 'nobis152', '$2y$10$idlWTNmvhfMAkPzDjcpTpejaxxA100Tde8HAnIaJ48AJlfcCGDk.O', 'Dashawn Kshlerin III', 'Nam', '1972-09-11', 'Cocos (Keeling) Islands', '5544642937', '0289758772', 'otho.wyman@hotmail.com', '2008-04-14', 4, NULL),
(155, 'omnis153', '$2y$10$MnTCmj3m3r6ovqJWDSH28eYj6LXkjB6ozZ7gpdoxfY7VhQI7pWQM2', 'Prof. Alexandrea Jast DVM', 'Nam', '1979-08-29', 'Malawi', '1926411506', '0138270414', 'brigitte.bode@yahoo.com', '2012-08-08', 2, NULL),
(156, 'asperiores154', '$2y$10$TESyKM5hCk8JaI5FaKc35.3EQ10RhQ.VNqoIfWtt0TTI.L2ZoIrbe', 'Jordyn Harvey', 'Nam', '1983-07-28', 'British Indian Ocean Territory (Chagos Archipelago)', '8593314168', '0167953188', 'yshanahan@collins.info', '1991-07-17', 1, NULL),
(157, 'nulla155', '$2y$10$.oUPyUo2u0S5cXjbviTbPOLlMuGCqbxnp.zW8N/AY.0tkBUp70V7.', 'Deven Goodwin', 'Nam', '1983-01-04', 'Latvia', '2380489908', '0788619625', 'damore.asia@walsh.com', '2006-12-11', 1, NULL),
(158, 'saepe156', '$2y$10$.HbaKKBYsj3RK3QmhXjWWuvHbgeDFVMcaGXj3J1fgfOTww10lGiU6', 'Prof. Felicita Ferry II', 'Nam', '2002-02-06', 'Oman', '3067958625', '0910224404', 'era39@gmail.com', '1984-01-16', 4, NULL),
(159, 'eum157', '$2y$10$VUcB9O7WE2WKXf1gSXDvSO.hx/eAWzm5dVEyPoYtM3NPdaskqH2JS', 'Ellie Rosenbaum IV', 'Nam', '1982-12-06', 'Swaziland', '2003080483', '0119304508', 'mohr.orrin@hotmail.com', '2004-02-26', 4, NULL),
(160, 'pariatur158', '$2y$10$n8O0Js8ZvZvtmhQqsGu7ku/WK/C4PD0aqavSynIURrdoOmZd12Kwm', 'Dr. Percy Harber DDS', 'Nam', '1972-10-02', 'Yemen', '6822459914', '0707029283', 'kailee59@hoppe.com', '1977-03-16', 4, NULL),
(161, 'expedita159', '$2y$10$qeq6mu5fop7rJCnS7n/NtOpAKbuRK/aYqNGzd4K/YkQh/DuN6FTjG', 'Juvenal Tillman', 'Nam', '1985-12-09', 'Congo', '5752564993', '0419794482', 'leonard.kuhn@hotmail.com', '1989-06-07', 3, NULL),
(162, 'similique160', '$2y$10$mDW5JuWg9eyGVTPyE5fthOWXOIbBvD7rPnSo1E09cspfgPknL5koy', 'Dr. Godfrey Purdy II', 'Nam', '1996-12-09', 'Paraguay', '9227402273', '0894829798', 'anibal.cruickshank@hotmail.com', '1997-12-05', 1, NULL),
(163, 'corrupti161', '$2y$10$7fmreWgoBuO/NTQDo9ZnWumUNJCFYblCFnlSun0R1/ozIbPqUbBVC', 'Ms. Angelina Leffler', 'Nam', '2000-02-28', 'Romania', '3945368642', '0172777511', 'electa94@bashirian.com', '1986-11-02', 4, NULL),
(164, 'fuga162', '$2y$10$l157aOVPDCjCK2aaLnvJguzI1PkDJJrNpT7iGk8.jO0UwpCD/XojS', 'Dr. Ricky Walsh II', 'Nam', '1972-07-23', 'Central African Republic', '7457033194', '0827200169', 'general.davis@hotmail.com', '2002-07-11', 1, NULL),
(165, 'commodi163', '$2y$10$WxKGB9L29vrcEd0oquvZrOn8ZJ/r0FV3ZPwUPo1twAvv8zTJo0seq', 'Eusebio Lockman', 'Nam', '1989-07-06', 'British Indian Ocean Territory (Chagos Archipelago)', '2271580873', '0745968308', 'barton.donna@hintz.com', '1985-08-21', 3, NULL),
(166, 'voluptas164', '$2y$10$zwy0SRagOpDGxlhBtK71K.hwYvr.6pcrcIVkPWJpNgaM1zkDsOTPW', 'Otilia Kiehn', 'Nam', '1975-11-05', 'Yemen', '9821322245', '0894274042', 'eusebio.prosacco@harvey.com', '1984-04-10', 4, NULL),
(167, 'nobis165', '$2y$10$beCJC3m3Sjq1Q39ycjZ9h.w3p.dtquatnm1FQFnZZTqXd4HAPOOwS', 'Eula Hayes', 'Nam', '1998-03-31', 'Ethiopia', '1823786215', '0455969016', 'hkutch@larkin.info', '1996-09-28', 1, NULL),
(168, 'voluptas166', '$2y$10$hCyIdEhEo3TTsrEJlYCxq.Vf3jpnnkZZCmxh.W5vEZJ3M2PkR/QCi', 'Helga Schmidt', 'Nam', '1975-09-11', 'Saint Lucia', '8151363784', '0276041671', 'jasmin.kreiger@mueller.com', '1989-02-18', 3, NULL),
(169, 'dolores167', '$2y$10$XnAhctIguulo6g8wJbwfKu/3EPbHkyVot9SF3oySiTEX0AJ4H982K', 'Mr. Kenyon Gorczany II', 'Nam', '1993-09-25', 'Afghanistan', '2925276297', '0933762292', 'ewintheiser@welch.biz', '1980-08-09', 1, NULL),
(170, 'aliquid168', '$2y$10$1TFC2W0txTCXEwM8eBBFhOIfjVFzg8Uzs/tMnUp6BpwJTZSi95mwi', 'Mrs. Brandy Fisher Jr.', 'Nam', '1980-07-05', 'Iceland', '5544603706', '0770090020', 'adietrich@yahoo.com', '2016-05-24', 1, NULL),
(171, 'est169', '$2y$10$75dJx03zTPuJr.pgD0E5HuusnxlnaGiPB0Ey3HeNDtZ/Zne4.a.Pm', 'Lonie Haley', 'Nam', '1980-11-23', 'Mali', '7329942894', '0290111143', 'chauncey30@gerhold.com', '1993-12-24', 1, NULL),
(172, 'in170', '$2y$10$MTPelSoypQHOE/VPFA0s2O8V5NY5trCXtMIWIe409tdaEOm4XPFB.', 'Torrey Stokes', 'Nam', '1987-06-12', 'Peru', '5787882208', '0592684054', 'mertz.henry@hotmail.com', '1993-12-19', 1, NULL),
(173, 'facilis171', '$2y$10$iffc0phyN5b5bGq4IODpKOES72XP27EPeslFTqOTRfeWo5a/uK4b2', 'Reymundo Beahan', 'Nam', '1989-03-03', 'Hong Kong', '5477369311', '0376342963', 'bbatz@hotmail.com', '1985-09-28', 4, NULL),
(174, 'repellat172', '$2y$10$j4Hwasqouy24lt8uERzGhOJm1qsP3Y4jbuPaziBtLf/7NSMnBLOE.', 'Ruthe Goodwin', 'Nam', '1981-08-04', 'Palau', '6429559387', '0263166214', 'nick.koss@yahoo.com', '1972-02-04', 3, NULL),
(175, 'et173', '$2y$10$grlOjMEVaL1MDWyUEsgVe.sB1GdNGr/zN/5Io8Fd/zOl5pJ8urC.6', 'Isobel Maggio Sr.', 'Nam', '1987-11-08', 'Guyana', '6896836207', '0340987987', 'jgreenfelder@gmail.com', '2012-07-22', 1, NULL),
(176, 'vitae174', '$2y$10$mLOaBzhiAHp7NpomNh.IueTuRKg4DebLidwKhBLRiIc.6hgvJRNiC', 'Eileen Bartell', 'Nam', '1998-11-24', 'New Zealand', '1989508366', '0974375288', 'hupton@feeney.com', '1987-11-27', 1, NULL),
(177, 'ullam175', '$2y$10$Vl5Rx7UbxkVPaWlzC9x2kuA.hBwCZjSA2uqOSMQNk1q6s2sLiETtq', 'Charles Ullrich', 'Nam', '1995-07-09', 'Lao People\'s Democratic Republic', '5979189777', '0821039632', 'yundt.kade@erdman.net', '1992-10-19', 1, NULL),
(178, 'quidem176', '$2y$10$eD25vkbLCObZMlghm4mLD.NidEEIbfBxAfmkSExQt3RWa6sBttX7W', 'Gus Ward', 'Nam', '1978-12-11', 'Cook Islands', '6757479113', '0918626042', 'asha47@cassin.com', '1985-03-26', 1, NULL),
(179, 'voluptates177', '$2y$10$IYa94kUEx5OXUzl91gudW./0R5j.I6Bi58Wj2PLy/HCu1MktPpCx6', 'Adalberto Smitham', 'Nam', '1991-11-25', 'Senegal', '9848779896', '0220277513', 'ebert.katlynn@moore.biz', '1973-02-08', 2, NULL),
(180, 'quia178', '$2y$10$zm4xnVRtQYN5oNyPFepEuucuPeVWvW60nBF/Eb2aQr312YR4RnKKC', 'Earnestine Bruen', 'Nam', '2000-02-23', 'Burundi', '9823786347', '0355792369', 'schiller.melody@gmail.com', '1970-09-20', 2, NULL),
(181, 'dolore179', '$2y$10$mZpgYrx.Fe5K.4Z/vsSl9OZZ.DzWoiIBjky0AlJANQR.1By/mw2RO', 'Gunner Kuhic', 'Nam', '1982-10-06', 'Saint Martin', '9002169538', '0750710773', 'tremblay.lilly@hamill.net', '2014-08-09', 4, NULL),
(182, 'sed180', '$2y$10$3H3LORkIYPnjdcycHTKiaunEKh5BjvIyFM4M/.rGENs5OtfMCjOwu', 'Wilhelm Kirlin', 'Nam', '2000-12-21', 'American Samoa', '2452590644', '0392299712', 'swaniawski.mohammed@yahoo.com', '1971-01-08', 3, NULL),
(183, 'magni181', '$2y$10$qbn91NHrknKF/IJgioeUGeszpTZS4yWkYN.tN7ryIqfiXOjnVZpa.', 'Nettie Gusikowski IV', 'Nam', '1982-09-20', 'Saint Lucia', '6207524168', '0208006286', 'funk.hayden@rohan.com', '1992-12-12', 1, NULL),
(184, 'provident182', '$2y$10$HLlJtggM.62r.zCHB.wADOvoHTLKwYbKe7arSPa.8sKz4SqPma7J6', 'Jeanie Kuhic', 'Nam', '1987-12-25', 'Somalia', '4660970791', '0716868605', 'shana.rempel@gmail.com', '1987-05-19', 2, NULL),
(185, 'quibusdam183', '$2y$10$hTzJ92NcLxLfiCv2V87nleYRCU3cOEeRz/fRV3ZatM124N2BUU0my', 'Keyshawn Maggio', 'Nam', '1984-05-22', 'Rwanda', '8124796135', '0597477043', 'jacobi.florence@yahoo.com', '1990-04-07', 2, NULL),
(186, 'magnam184', '$2y$10$iSZGPO30Q.uWPMQmR/ln5eZZtCgpqJsVmo448a3xgoLIFaqr7OTP6', 'Mr. Lenny Goodwin IV', 'Nam', '1985-08-24', 'Bolivia', '7096380326', '0911111896', 'larkin.margarete@yahoo.com', '1995-11-02', 1, NULL),
(187, 'et185', '$2y$10$FnDZFcNyaHsu8fAxxbDsuOvEe2ge73FSDxrEWAC.JjilLYw7q8gVa', 'Elise Leannon', 'Nam', '1974-06-18', 'Romania', '3861620234', '0260428199', 'lbartoletti@tromp.info', '1977-05-02', 4, NULL),
(188, 'deserunt186', '$2y$10$CVpX9EFa9/LH/z6SNPKOCO/Td5JUlfzn9IBLWRv0oBKre9SqwaNeS', 'Grayson Renner', 'Nam', '1981-04-10', 'Iran', '2785166965', '0383471168', 'wiegand.freeman@wisozk.com', '2006-08-22', 1, NULL),
(189, 'rem187', '$2y$10$OHkemqsZHOq7gUU2C0pd2uVHYaCM65HJ5fw4MUBgISsWckFoyc4AO', 'Mr. Roscoe Macejkovic II', 'Nam', '1980-01-31', 'Ukraine', '7929031860', '0690889353', 'leon79@gmail.com', '1985-07-04', 4, NULL),
(190, 'autem188', '$2y$10$FF1Vu2j/eW9EJ0QBaJpYSer7F7NMVFNRF0FQ.Ne831Fxjy/SYICM6', 'Lexie Tillman', 'Nam', '1987-09-26', 'Guatemala', '9346856709', '0221183320', 'clement.turner@yahoo.com', '1994-09-12', 4, NULL),
(191, 'et189', '$2y$10$zXLy0zKCmeplOqAWNMoqF..lD1Ld60DeIKOXeuJTkXlY.TemJxnve', 'Prof. Eliezer Nolan', 'Nam', '1975-08-25', 'Angola', '2045419768', '0982368998', 'nschimmel@simonis.biz', '1971-01-30', 3, NULL),
(192, 'ea190', '$2y$10$dluVVLB/j8NGC2lo/NtEZeRQlSibXFiZ9F6gEDg85LjJ3PQk9hva6', 'Lucio Bartell', 'Nam', '1975-10-26', 'Thailand', '2536420657', '0888667849', 'glenna66@johnson.com', '1993-02-02', 4, NULL),
(193, 'temporibus191', '$2y$10$T.jZ43xEqjuyNKUVKasHeuqwIaKSZFBddUkxWt7ZwaQ3k.Pu9d6n2', 'Dr. Joel Bergstrom MD', 'Nam', '1980-09-18', 'Hong Kong', '5938565809', '0388982687', 'wjacobs@jacobs.com', '1986-05-26', 2, NULL),
(194, 'molestiae192', '$2y$10$L116MPPEbwKpoUsOqP5D2evYryIWZ2m61Q/IqC3QIW3iPMk94oTkW', 'Carolanne Larkin', 'Nam', '1988-01-23', 'Montserrat', '9489390212', '0886467629', 'yessenia73@weber.info', '1980-04-03', 1, NULL),
(195, 'beatae193', '$2y$10$1MIO7b1y0tmCf.ytzJmYbOQzlci9kQfzB02BCJ97ZgdaTykOIrafq', 'Rory Cartwright', 'Nam', '1994-03-12', 'Canada', '9441656130', '0437942225', 'jettie.gerlach@romaguera.com', '2014-08-25', 2, NULL),
(196, 'est194', '$2y$10$022JWrgI8lhcRjj9z3B02OC4LSu6V42OfBU0HU920rCumiBnkaF7G', 'Mrs. Krista Abshire', 'Nam', '1988-12-08', 'Israel', '7690358460', '0297933580', 'damore.ivy@yahoo.com', '1980-09-04', 3, NULL),
(197, 'perspiciatis195', '$2y$10$blkh3McF.zrN/OdI0TnxyOscvKF7ZQqV3n0OQ34O3Ytu1xNsFjChC', 'Rachelle Okuneva', 'Nam', '1999-12-04', 'Bulgaria', '2448407415', '0413947834', 'christiana.champlin@yahoo.com', '2018-11-20', 1, NULL),
(198, 'nobis196', '$2y$10$/TxEkkfvthkPqDp4ZTkgne3Ih0tpbR7AvT5iXz5xISNr.niPiaaTK', 'Dasia McKenzie', 'Nam', '1986-06-05', 'Lebanon', '4056549338', '0962535893', 'alexane01@yahoo.com', '2000-01-29', 1, NULL),
(199, 'vel197', '$2y$10$/x7WfqsqR/fJcqRvH612..R2eRzU18y9oc1mvcCfI98.XATFRRRhK', 'Hal Crist', 'Nam', '1984-07-26', 'Korea', '8819257464', '0455761300', 'nhaag@kutch.com', '2013-02-05', 3, NULL),
(200, 'labore198', '$2y$10$CgiiowBXNPnKjry17DoyVeVnty8zLWX/Kn/ooGQcCQ7lXiBZcSsu2', 'Stephanie Moen DVM', 'Nam', '1973-11-24', 'Sri Lanka', '2619049916', '0441624889', 'amira.strosin@hotmail.com', '1998-02-21', 3, NULL),
(201, 'placeat199', '$2y$10$KOzHDddJM8KyjeMq3UeZGeuWDcmLw7uSZHpu1AfpwGV6TAKA9lnoG', 'Fausto Shanahan I', 'Nam', '1983-06-14', 'Switzerland', '4952464198', '0950462874', 'pjones@leuschke.net', '1971-02-03', 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_exports`
--
ALTER TABLE `detail_exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_exports_sup_id_foreign` (`sup_id`),
  ADD KEY `detail_exports_exp_id_foreign` (`exp_id`);

--
-- Indexes for table `detail_imports`
--
ALTER TABLE `detail_imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_imports_sup_id_foreign` (`sup_id`),
  ADD KEY `detail_imports_imp_id_foreign` (`imp_id`),
  ADD KEY `detail_imports_pro_id_foreign` (`pro_id`),
  ADD KEY `detail_imports_qua_id_foreign` (`qua_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producers_dis_id_foreign` (`dis_id`);

--
-- Indexes for table `qualities`
--
ALTER TABLE `qualities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplies_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_dpm_id_foreign` (`dpm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_exports`
--
ALTER TABLE `detail_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_imports`
--
ALTER TABLE `detail_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `qualities`
--
ALTER TABLE `qualities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_exports`
--
ALTER TABLE `detail_exports`
  ADD CONSTRAINT `detail_exports_exp_id_foreign` FOREIGN KEY (`exp_id`) REFERENCES `exports` (`id`),
  ADD CONSTRAINT `detail_exports_sup_id_foreign` FOREIGN KEY (`sup_id`) REFERENCES `supplies` (`id`);

--
-- Constraints for table `detail_imports`
--
ALTER TABLE `detail_imports`
  ADD CONSTRAINT `detail_imports_imp_id_foreign` FOREIGN KEY (`imp_id`) REFERENCES `imports` (`id`),
  ADD CONSTRAINT `detail_imports_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `producers` (`id`),
  ADD CONSTRAINT `detail_imports_qua_id_foreign` FOREIGN KEY (`qua_id`) REFERENCES `qualities` (`id`),
  ADD CONSTRAINT `detail_imports_sup_id_foreign` FOREIGN KEY (`sup_id`) REFERENCES `supplies` (`id`);

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `producers`
--
ALTER TABLE `producers`
  ADD CONSTRAINT `producers_dis_id_foreign` FOREIGN KEY (`dis_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_dpm_id_foreign` FOREIGN KEY (`dpm_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
