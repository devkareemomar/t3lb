-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 01:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t3lb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci,
  `blog_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_content`, `blog_img`, `created_at`, `updated_at`) VALUES
(3, 'محتوي عربي', '<p>محتوي عربي</p>', 'blogBack\\January2020\\V0o3m8Woc38PgvJDelc1.jpg', '2020-01-18 10:32:55', '2020-01-18 10:32:55'),
(4, 'احمد احمد', '<p>احمد احمد&nbsp; احمد</p>', 'blogBack\\January2020\\ah5uZtWzrDKeFymkQqat.jpg', '2020-01-18 12:11:04', '2020-01-18 12:11:04'),
(6, 'ggg', '<p>ggg</p>', 'blogBack\\January2020\\Dn8pkNu5WhvhXVuE6acK.webp', '2020-01-25 09:53:56', '2020-01-25 09:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `book_now`
--

CREATE TABLE `book_now` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_model` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `customer_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_now`
--

INSERT INTO `book_now` (`id`, `name`, `car_model`, `car_type`, `warranty`, `created_at`, `updated_at`, `note`, `customer_type`) VALUES
(1, 'kareem', '95', 'نوبيرا', 'خارج الضمان', '2020-02-10 08:02:23', '2020-02-10 08:02:23', 'شكرا  لكم', 'street customer'),
(2, 'kareem', '95', 'نوبيرا', 'داخل الضمان', '2020-02-10 08:19:19', '2020-02-10 08:19:19', 'dscdeedcew', 'street customer'),
(3, 'kareem', '95', 'نوبيرا', 'خارج الضمان', '2020-02-10 08:21:19', '2020-02-10 08:21:19', 'ngngf', 'company customer'),
(4, 'All', '95', 'نوبيرا', 'خارج الضمان', '2020-02-10 08:23:39', '2020-02-10 08:23:39', 'wfcewew', 'compound customer');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_bar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `job_title`, `job_description`, `created_at`, `updated_at`, `img`, `side_bar`) VALUES
(1, 'ميكانيكي', '', '2020-02-11 08:42:00', '2020-02-11 09:04:14', 'career\\February2020\\QZQmst2bFyUOKONbyDqL.jpg', 'option2'),
(2, 'سمكري', '', '2020-02-11 08:44:00', '2020-02-11 09:04:04', 'career\\February2020\\vxDGy5JAp4VfLM9Sw4re.jpg', 'option1'),
(3, 'صيانه العفشه', '', '2020-02-11 09:20:40', '2020-02-11 09:20:40', 'career\\February2020\\PAkOgMhFOVv5F92XDwp4.jpg', 'option1'),
(4, 'متخصص ضبط زاويا', '', '2020-02-11 09:21:18', '2020-02-11 09:21:18', 'career\\February2020\\MdoNQpAdyKN5ACCCQ7o7.jpg', 'option2');

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'تويوتا', '2020-02-05 09:10:20', '2020-02-05 09:10:20'),
(2, 'أودي', '2020-02-05 09:10:50', '2020-02-05 09:10:50'),
(3, 'نيسان', '2020-02-05 09:12:07', '2020-02-05 09:12:07'),
(4, 'بورش', '2020-02-05 09:14:09', '2020-02-05 09:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `companies_and_compounds`
--

CREATE TABLE `companies_and_compounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` text COLLATE utf8mb4_unicode_ci,
  `compound` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies_and_compounds`
--

INSERT INTO `companies_and_compounds` (`id`, `company`, `compound`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: right;\">تعاني معظم الشركات والمؤسسات والبنوك والمدارس من مشاكل صيانة السيارات العائدة لها وكذلك السيارات الخاصة العائدة لمنسوبي هذه الشركات ، لذلك قمنا بتصميم برنامج الخدمة الذهبية المخصص خصيصاً ليجعل من مشاكل سيارتكم جزء من الماضي .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">مميزات الخدمة الذهبية للسيارات العائدة للشركات.</p>\n<p style=\"text-align: right;\">تقوم شركتنا بإرسال مهندسين للكشف على جميع سيارات الشركة في موقعها وعمل تقرير صيانة دورية لكل سيارة على حدا بأسعار مخفضة سيتم الاتفاق عليها وفق حالة كل سيارة ، وفي حالة حدوث حادث لا سمح الله أو أعطال على الطريق تكون شركتنا مسئولة عن سحب السيارة ومتابعة الحادث وشركات التأمين وإصلاح السيارة وإعادتها في خلال مدة 48 ساعة بالنسبة للأعطال و 15 يوم بالنسبة للحوادث ، كما أن الشركة مسئولة عن توفير قطع الغيار بأسعار مخفضة سواء من مصر أو من خارجها حسب ما يتم الاتفاق عليه.</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">المميزات المقدمة لموظفي الشركات والبنوك والمدارس.</p>\n<p style=\"text-align: right;\">أصحاب السيارات الجديدة التي مازالت داخل الضمان&nbsp;&nbsp;</p>\n<p style=\"text-align: right;\">1 - تقديم خدمة غسيل السيارة الجاف ( بدون مياه ) 3 مرات أسبوعياً من خلال سيارات الشركة المجهزة ، مقابل أجر شهري يسدد بعد نهاية الشهر مع التشييك علي الكفرات وضبط الهواء .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">2 - تقديم كافة الخدمات في الطرقات مجاناً في حالة الأعطال لا سمح الله ، سحب السيارة وتوصيلها إلى الجهة التي&nbsp; &nbsp; يحددها العميل .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">3 - تقديم خدمة نانو سيراميك وخدمته التظليل المقاوم للحرارة وخدمات الصيانة السريعة داخل الموقع من خلال سيارات الخدمة العائدة الشركة .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">4 - من خلال مهندسين الشركة نتابع لك مع الوكيل صيانات السيارة الدورية الأساسية وعمل ما هو لازم فقط دون المساس بضمان السيارة ، وهذه الخدمة توفر عليكم الكثير من المال والجهد ولا تكون عرضة لابتزاز الوكلاء .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">5 - في حالة وجود مشكلة في السيارة لا سمح الله مشكلة تصنيع يقوم مهندس الشركة بتحديد المشكلة وطرق العلاج ومصاحبة مالك السيارة إلى التوكيل لشرح المشكلة وطرق الحل وفي حالة عدم استجابة الوكيل يقوم مكتبنا القانوني بمساعدتك لتقديم شكوى في حماية المستهلك وشرح كامل لمشكلة السيارة وطلب الكشف عليها من خلال اللجان المخصصة لإثبات المشكلة وحصول عميلنا على كافة حقوقه ، وذلك مقابل أجور رمزية تحدد فيما بيننا .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">6 - بعد انتهاء فترة الضمان يتم عمل ضمان جديد من خلال شركتنا مقابل تقديم الخدمات فقط والحفاظ على السيارة كما لو كانت جديدة .</p>\n<p style=\"text-align: right;\">&nbsp; &nbsp;</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&nbsp; &nbsp; &nbsp;أصحاب السيارات خارج الضمان.&nbsp;&nbsp;</p>\n<p style=\"text-align: right;\">1 - تقديم خدمة غسيل السيارة الجاف ( بدون مياه ) 3 مرات أسبوعياً من خلال سيارات الشركة المجهزة ، مقابل أجر شهري منخفض ويسدد بعد نهاية الشهر مع التشييك علة الكفرات وضبط الهواء .</p>\n<p style=\"text-align: right;\">2 - تقديم كافة الخدمات في الطرقات مجاناً في حالة الأعطال لا سمح الله ، سحب السيارة وتوصيلها إلى الجهة التي&nbsp; &nbsp; العميل .</p>\n<p style=\"text-align: right;\">3 - تقديم خدمة نانو سيراميك وخدمته التظليل المقاوم للحرارة وخدمات صيانة C.P داخل الموقع من خلال سيارات الشركة بأسعار منخفضة .</p>\n<p style=\"text-align: right;\">4 - عمل كشف كمبيوتر مجاني على السيارة وتحديد جدول الصيانة الدورية وعمل ضمان مجاني على السيارة مقابل تقديم الصيانة الدورية الازمة للسيارة&nbsp; بأقل الأسعار .</p>\n<p style=\"text-align: right;\">5 - توفير قطع الغيار الأصلية من خلال مكاتبنا في أنحاء العالم بأقل الأسعار وفي أسرع وقت .</p>\n<p style=\"text-align: right;\">6 - في حالة الحوادث لا قدر الله إمكانية توفير سيارات بديلة بأسعار رمزية .</p>\n<p style=\"text-align: right;\">7 - في حالة رغبة العميل في بيع السيارة نقوم بتوضيب السيارة وتجهيزها لعرضها بأعلى سعر وخصم تكلفة التوضيب بعد البيع .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&bull;هذا بالإضافة إلى العديد من الهدايا والخدمات المجانية المقدمة من قبلنا مقابل نقاط البيع التي يكتسبها العميل من فوائد الخدمات .</p>', '<p style=\"text-align: right;\">لأنكم متميزون نقدم لكم خدمتكم من خلال عالم من الأحلام متاح فيه كافة أنواع التميز والرفاهية لعملاء أكثر تميز فيشرفنا أن نكون جزء من خدمتكم ونوفر لكم جميع الخدمات التي تحتاجها سياراتكم بأعلى جودة وأقل تكلفة ونجعل من مشاكل سياراتكم جزء من الماضي .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">المميزات للشركة المالكة للكومباوند .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">1 - صيانة السيارات العائدة للشركة المالكة للكومباوند مجاناً ( الصيانة السنوية و الدورية) .</p>\n<p style=\"text-align: right;\">2 - خصم 50% على المصناعية و 30% على قطع الغيار للسيارات العائدة للشركة .</p>\n<p style=\"text-align: right;\">3 - يخصص عدد من الأجهزة المجانية تثبت للكومباوند&nbsp; مثل ( ملئ إطارات ) حسب رغبة إدارة الكومباوند لخدمة السكان .</p>\n<p style=\"text-align: right;\">4 - توفير جهاز إلكتروني ( خدمة ذاتية ) لتسجيل طلب الخدمات منه داخل الكومباوند لخدمة السكان طوال 24 ساعة ومتصل بموقع الشركة مباشرة .</p>\n<p style=\"text-align: right;\">5 - في حالة سماح إدارة الكومباوند لا مانع لدينا من تأجير موقع داخل الكومباوند لتقديم الخدمات للسكان بأرقى وأفضل الطرق وأقل الأسعار حسب الضوابط الموضوعة من إدارة الكومباوند .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">المميزات المقدمة لسكان الكومباوند .</p>\n<p style=\"text-align: right;\">&nbsp; &nbsp; &nbsp;أصحاب السيارات الجديدة التي مازالت داخل الضمان&nbsp;&nbsp;</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">1 - تقديم خدمة غسيل السيارة الجاف ( بدون مياه ) 3 مرات أسبوعياً من خلال سيارات الشركة المجهزة ، مقابل أجر شهري&nbsp; منخفض&nbsp; ويسدد بعد نهاية الشهر مع التشييك علي الكفرات وضبط الهواء .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">2 - تقديم كافة الخدمات في الطرقات مجاناً في حالة الأعطال لا سمح الله ، سحب السيارة وتوصيلها إلى الجهة التي&nbsp; &nbsp; يحددها العميل .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">3 - تقديم خدمة نانو سيراميك وخدمته التظليل المقاوم للحرارة وخدمات الصيانة السريعة داخل الموقع من خلال سيارات الخدمة العائدة الشركة .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">4 - من خلال مهندسين الشركة نتابع لك مع الوكيل صيانات السيارة الدورية الأساسية وعمل ما هو لازم فقط دون المساس بضمان السيارة ، وهذه الخدمة توفر عليكم الكثير من المال والجهد ولا تكون عرضة لابتزاز الوكلاء .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">5 - في حالة وجود مشكلة في السيارة لا سمح الله مشكلة تصنيع يقوم مهندس الشركة بتحديد المشكلة وطرق العلاج ومصاحبة مالك السيارة إلى التوكيل لشرح المشكلة وطرق الحل وفي حالة عدم استجابة الوكيل يقوم مكتبنا القانوني بمساعدتك لتقديم شكوى في حماية المستهلك وشرح كامل لمشكلة السيارة وطلب الكشف عليها من خلال اللجان المخصصة لإثبات المشكلة وحصول عميلنا على كافة حقوقه ، وذلك مقابل أجور رمزية تحدد فيما بيننا .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">6 - بعد انتهاء فترة الضمان يتم عمل ضمان جديد من خلال شركتنا مقابل تقديم الخدمات فقط والحفاظ على السيارة كما لو كانت جديدة .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&nbsp; &nbsp; &nbsp; &nbsp;اصحاب السيارات خارج الضمان</p>\n<p style=\"text-align: right;\">1 - تقديم خدمة غسيل السيارة الجاف ( بدون مياه ) 3 مرات أسبوعياً من خلال سيارات الشركة المجهزة ، مقابل أجر شهري 250 جنيه شهرياً ويسدد بعد نهاية الشهر مع التشييك علة الكفرات وضبط الهواء .</p>\n<p style=\"text-align: right;\">2 - تقديم كافة الخدمات في الطرقات مجاناً في حالة الأعطال لا سمح الله ، سحب السيارة وتوصيلها إلى الجهة التي&nbsp; &nbsp; العميل .</p>\n<p style=\"text-align: right;\">3 - تقديم خدمة نانو سيراميك وخدمته التظليل المقاوم للحرارة وخدمات صيانة C.P داخل الموقع من خلال سيارات الشركة .</p>\n<p style=\"text-align: right;\">4 - عمل كشف كمبيوتر مجاني على السيارة وتحديد جدول الصيانة الدورية وعمل ضمان مجاني على السيارة مقابل تقديم الخدمة المميزة بأقل الأسعار .</p>\n<p style=\"text-align: right;\">5 - توفير قطع الغيار الأصلية من خلال مكاتبنا في أنحاء العالم بأقل الأسعار وفي أسرع وقت .</p>\n<p style=\"text-align: right;\">6 - في حالة الحوادث لا قدر الله إمكانية توفير سيارات بديلة بأسعار رمزية .</p>\n<p style=\"text-align: right;\">7 - في حالة رغبة العميل في بيع السيارة نقوم بتوضيب السيارة وتجهيزها لعرضها بأعلى سعر وخصم تكلفة التوضيب بعد البيع .</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&bull;هذا بالإضافة إلى العديد من الهدايا والخدمات المجانية المقدمة من قبلنا مقابل نقاط البيع التي يكتسبها العميل من فوائد الخدمات .</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2020-02-11 10:13:38', '2020-02-11 10:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `massage`, `created_at`, `updated_at`) VALUES
(3, 'كريم عمر علي', 'kareem@email.com', '54355453454', 'wefewefw', '2020-02-06 09:13:45', '2020-02-06 09:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `f_name`, `l_name`, `email`, `password`, `email_verified_at`, `avatar`, `_token`, `created_at`, `updated_at`, `facebook_id`) VALUES
(1, 'kareem', 'omar', 'kareem@email.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'clint', NULL, 'clint@a.com', '$2y$10$m86eQuW/W9Xee3Z81.HO9eTDzvAj8UJ7.80JQj4.ZqXH7vgzWPvdq', NULL, NULL, NULL, '2020-02-12 18:48:43', '2020-02-12 18:48:43', NULL),
(3, 'Kareem Omar', NULL, 'div.kareemomar@gmail.com', NULL, NULL, NULL, NULL, '2020-02-13 10:39:34', '2020-02-13 10:39:34', '2799236100169897'),
(4, 'ameer', 'amm', 'amm@email.com', '$2y$10$4lycxgRDfMVWJ3OwwIu8JOrjWC1vOHqHPPDuScabwRhyc/ji47JxO', NULL, NULL, NULL, '2020-02-13 11:27:02', '2020-02-13 11:27:02', NULL),
(5, 'kareem', 'omar', 'div.kareemomar@gmail.com', '$2y$10$RaB9usZd9pbtMZ/ZRnc.Mes0hjLR8z1PNRvStUNi2/k/qp9.TrNMi', NULL, NULL, NULL, '2020-02-15 16:45:09', '2020-02-15 16:45:09', NULL),
(6, 'kareem', 'omar', 'kareem@email.com', '$2y$10$ekHadgjsF75OozRyeGXncOD0EVIeow4V/s9yC0n9y3mumpMHZxO7y', NULL, NULL, NULL, '2020-02-15 16:46:32', '2020-02-15 16:46:32', NULL),
(7, 'kareem', 'vedved', 'admin@example.com', '$2y$10$/akyVjNHVRfb.o8ighGkKuuMBh3ARLFUm5ZXAVyh/tH6o2L0xQ.aa', NULL, NULL, NULL, '2020-02-15 16:53:17', '2020-02-15 16:53:17', NULL),
(8, 'radwa', 'radwa', 'radwa@email.com', '$2y$10$MivBMdu3ikzk3nrXpYgZFe7bPDlVR2K8tVJhfpH.8psfntx8ODtkm', NULL, NULL, NULL, '2020-02-15 17:00:15', '2020-02-15 17:00:15', NULL),
(9, 'Support', 'T3lab', 'Support@t3lab-eg.com', '$2y$10$hIPBtepe0Go.7s7wE4rju.lierZWI/hCNc0c4PL4o8NTg3FEALUoC', NULL, NULL, NULL, '2020-02-18 20:16:42', '2020-02-18 20:16:42', NULL),
(10, 'saleh', 'kassem', 'salehruffrider@gmail.com', '$2y$10$GhitzCvTwinWZniC8ME2yuDMDEw5Gts1JeYWypzVwtfc/f61SwT3O', NULL, NULL, NULL, '2020-02-22 18:36:22', '2020-02-22 18:36:22', NULL),
(11, 'محمود', 'محمد', 'mido_asp22@hotmail.com', '$2y$10$mclqMfBuPSSL/ipiz2Pbze0RlGiS7MgPG4gQ9AQ/UzmkjpKLeuXpK', NULL, NULL, NULL, '2020-02-25 23:53:56', '2020-02-25 23:53:56', NULL),
(12, 'radwa', 'radwa', 'radwa@email.com', '$2y$10$U6gr.B7q0cUubDPghpbx1Op5L1dDkC0mer5F8LSzWIJdtlZKNkbIe', NULL, NULL, NULL, '2020-02-26 02:09:21', '2020-02-26 02:09:21', NULL),
(13, 'mohamed', 'amr', 'dev.mohamedamr@gmail.com', '$2y$10$B0shI.Z4tJUziOkxdhFRC.KlDWlIt0jzCrM8GKDwKKrohfD6yp9GO', NULL, NULL, NULL, '2020-02-27 16:21:24', '2020-02-27 16:21:24', NULL),
(14, 'Said', 'Ahmed', 'Said.Ahmed.z5599@gmail.com', '$2y$10$XPIi9XAjqo.M6lkGOfoGguBSUQ6/ya7tznZmI0nvrM4..aztYdUA.', NULL, NULL, NULL, '2020-02-28 03:40:55', '2020-02-28 03:40:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(3, 1, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 9),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 10),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 16),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 0, 0, 0, 0, 0, '{}', 15),
(48, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 8, 'slider_img', 'image', 'Slider Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(52, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(53, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(54, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(55, 9, 'blog_title', 'text', 'Blog Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(56, 9, 'blog_content', 'rich_text_box', 'Blog Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(57, 9, 'blog_img', 'image', 'Blog Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(58, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(59, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 13, 'testimonial_name', 'text', 'Testimonial Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 13, 'testimonial_job', 'text', 'Testimonial Job', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 13, 'testimonial_details', 'rich_text_box', 'Testimonial Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(85, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(86, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(87, 13, 'testimonial_user_img', 'image', 'Testimonial User Img', 0, 1, 1, 1, 1, 1, '{}', 7),
(104, 8, 'slider_content', 'rich_text_box', 'slider content', 0, 1, 1, 1, 1, 1, '{}', 3),
(105, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 15, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(107, 15, 'keywords', 'text', 'Keywords', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 15, 'canonical', 'text', 'Canonical', 0, 1, 1, 1, 1, 1, '{}', 5),
(109, 15, 'oglocale', 'text', 'Oglocale', 0, 1, 1, 1, 1, 1, '{}', 6),
(110, 15, 'ogtype', 'text', 'Ogtype', 0, 1, 1, 1, 1, 1, '{}', 7),
(111, 15, 'ogtitle', 'text', 'Ogtitle', 0, 1, 1, 1, 1, 1, '{}', 8),
(112, 15, 'ogdescription', 'text', 'Ogdescription', 0, 1, 1, 1, 1, 1, '{}', 9),
(113, 15, 'ogurl', 'text', 'Ogurl', 0, 1, 1, 1, 1, 1, '{}', 10),
(114, 15, 'ogsite_name', 'text', 'Ogsite Name', 0, 1, 1, 1, 1, 1, '{}', 11),
(115, 15, 'ogimage', 'image', 'Ogimage', 0, 1, 1, 1, 1, 1, '{}', 12),
(116, 15, 'twittercard', 'image', 'Twittercard', 0, 1, 1, 1, 1, 1, '{}', 13),
(117, 15, 'twitterdescription', 'text', 'Twitterdescription', 0, 1, 1, 1, 1, 1, '{}', 14),
(118, 15, 'twittertitle', 'text', 'Twittertitle', 0, 1, 1, 1, 1, 1, '{}', 15),
(119, 15, 'twitterimage', 'image', 'Twitterimage', 0, 1, 1, 1, 1, 1, '{}', 16),
(120, 15, 'page_id', 'select_dropdown', 'Page Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"section_name\"}}', 2),
(121, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 17),
(122, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(123, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 16, 'page_name', 'text', 'Page Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(126, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(127, 16, 'url', 'text', 'url', 0, 1, 1, 1, 1, 1, '{}', 5),
(129, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(130, 17, 'job_title', 'text', 'Job Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(131, 17, 'job_description', 'rich_text_box', 'Job Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(132, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(133, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(134, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 19, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 19, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(138, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(139, 18, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(140, 18, 'name', 'text', 'name', 0, 1, 1, 1, 1, 1, '{}', 2),
(141, 18, 'img', 'image', 'img', 0, 1, 1, 1, 1, 1, '{}', 3),
(142, 18, 'facebook_account', 'text', 'facebook', 0, 1, 1, 1, 1, 1, '{}', 4),
(143, 18, 'description', 'rich_text_box', 'description', 0, 1, 1, 1, 1, 1, '{}', 5),
(144, 18, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 6),
(145, 18, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 7),
(150, 21, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(151, 21, 'title', 'text', 'title', 0, 1, 1, 1, 1, 1, '{}', 2),
(152, 21, 'img', 'image', 'img', 0, 1, 1, 1, 1, 1, '{}', 3),
(153, 21, 'description', 'rich_text_box', 'description', 0, 1, 1, 1, 1, 1, '{}', 4),
(154, 21, 'expert_id', 'select_dropdown', 'expert', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 5),
(155, 21, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 6),
(156, 21, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 7),
(157, 20, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(158, 20, 'name', 'text', 'name', 0, 1, 1, 1, 1, 1, '{}', 2),
(159, 20, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 3),
(160, 20, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 4),
(161, 22, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 22, 'service_name', 'text', 'name', 0, 1, 1, 1, 1, 1, '{}', 2),
(163, 22, 'service_description', 'rich_text_box', 'description', 0, 1, 1, 1, 1, 1, '{}', 3),
(164, 22, 'service_cost', 'text', 'cost', 0, 1, 1, 1, 1, 1, '{}', 4),
(165, 22, 'service_img', 'multiple_images', 'img', 0, 1, 1, 1, 1, 1, '{}', 5),
(166, 22, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 6),
(167, 22, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 7),
(168, 22, 'favorite', 'checkbox', 'favorite', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 8),
(169, 23, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(170, 23, 'video_title', 'text', 'title', 0, 1, 1, 1, 1, 1, '{}', 2),
(171, 23, 'video_url', 'text', 'url', 0, 1, 1, 1, 1, 1, '{}', 3),
(172, 23, 'video_description', 'rich_text_box', 'description', 0, 1, 1, 1, 1, 1, '{}', 4),
(173, 23, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 5),
(174, 23, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 6),
(175, 22, 'offer', 'checkbox', 'offer', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 9),
(176, 21, 'category_id', 'select_dropdown', 'category', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 8),
(177, 24, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(178, 24, 'title', 'text', 'title', 0, 1, 1, 1, 1, 1, '{}', 2),
(179, 24, 'icon', 'text', 'icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(180, 24, 'description', 'rich_text_box', 'desc', 0, 1, 1, 1, 1, 1, '{}', 4),
(181, 24, 'count', 'text', 'count', 0, 1, 1, 1, 1, 1, '{}', 5),
(182, 24, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 6),
(183, 24, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 7),
(197, 28, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(198, 28, 'title', 'text', 'title', 0, 1, 1, 1, 1, 1, '{}', 2),
(199, 28, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 3),
(200, 28, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 4),
(201, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(202, 29, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(203, 29, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(204, 29, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(205, 29, 'car_select', 'text', 'Car Select', 0, 1, 1, 1, 1, 1, '{}', 5),
(206, 29, 'massage', 'text', 'Massage', 0, 1, 1, 1, 1, 1, '{}', 6),
(207, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(208, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(209, 29, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(210, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(211, 30, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(212, 30, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(213, 30, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(214, 30, 'massage', 'text', 'Massage', 0, 1, 1, 1, 1, 1, '{}', 5),
(215, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(216, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(217, 23, 'favorite', 'checkbox', 'favorite', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 7),
(219, 1, 'admin', 'text', 'admin', 0, 0, 0, 0, 0, 0, '{}', 7),
(220, 1, 'email_verified_at', 'timestamp', 'email_v', 0, 0, 0, 0, 0, 0, '{}', 14),
(223, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(224, 32, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(225, 32, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 4),
(226, 32, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(227, 32, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 6),
(228, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(229, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(230, 32, 'name', 'text', 'name', 0, 1, 1, 1, 1, 1, '{}', 2),
(231, 29, 'car_model', 'text', 'car_model', 0, 1, 1, 1, 1, 1, '{}', 10),
(232, 34, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(233, 34, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '{}', 2),
(234, 34, 'car_model', 'text', 'car_model', 1, 1, 1, 1, 1, 1, '{}', 3),
(235, 34, 'car_type', 'text', 'car_type', 1, 1, 1, 1, 1, 1, '{}', 4),
(236, 34, 'warranty', 'text', 'warranty', 0, 1, 1, 1, 1, 1, '{}', 5),
(237, 34, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 6),
(238, 34, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 7),
(239, 34, 'note', 'text', 'note', 0, 1, 1, 1, 1, 1, '{}', 8),
(240, 34, 'customer_type', 'text', 'customer_type', 0, 1, 1, 1, 1, 1, '{}', 9),
(241, 17, 'img', 'image', 'img', 0, 1, 1, 1, 1, 1, '{}', 6),
(242, 17, 'side_bar', 'select_dropdown', 'side_bar', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"left sidebar\",\"option2\":\"right sidebar\"}}', 7),
(243, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(244, 35, 'f_name', 'text', 'F Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(245, 35, 'l_name', 'text', 'L Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(246, 35, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 4),
(247, 35, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(248, 35, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6),
(249, 35, 'qualification', 'text', 'Qualification', 0, 1, 1, 1, 1, 1, '{}', 7),
(250, 35, 'cv', 'file', 'Cv', 0, 1, 1, 1, 1, 1, '{}', 8),
(251, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(252, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(253, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(254, 36, 'company', 'rich_text_box', 'Company', 0, 1, 1, 1, 1, 1, '{}', 2),
(255, 36, 'compound', 'rich_text_box', 'Compound', 0, 1, 1, 1, 1, 1, '{}', 3),
(256, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(257, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(258, 1, 'name', 'text', 'name', 0, 1, 1, 1, 1, 1, '{}', 3),
(259, 1, '_token', 'text', '_token', 0, 1, 1, 1, 1, 1, '{}', 9),
(260, 1, 'l_name', 'text', 'l_name', 0, 0, 0, 1, 1, 0, '{}', 13),
(261, 29, 'pending', 'checkbox', 'pending', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 11),
(262, 29, 'service_name', 'text', 'service_name', 0, 1, 1, 1, 1, 1, '{}', 12),
(263, 29, 'user_id', 'text', 'user_id', 0, 1, 1, 1, 1, 1, '{}', 13),
(264, 29, 'service_img', 'text', 'service_img', 0, 1, 1, 1, 1, 1, '{}', 14),
(265, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(266, 37, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(267, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(268, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(269, 35, 'title', 'text', 'type jop', 0, 1, 1, 1, 1, 1, '{}', 9),
(270, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(271, 38, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(272, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(273, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 07:43:43', '2020-02-12 17:36:15'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-14 07:43:43', '2020-01-14 07:43:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-14 07:43:43', '2020-01-14 07:43:43'),
(8, 'slider', 'slider', 'Slider', 'Sliders', '.', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 09:10:39', '2020-01-19 10:39:12'),
(9, 'blog', 'blogBack', 'Blog', 'Blogs', 'voyager-edit', 'App\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 12:25:25', '2020-01-18 10:15:32'),
(13, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-star-two', 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-16 09:23:30', '2020-01-16 09:23:30'),
(15, 'seo', 'seo', 'Seo', 'Seos', 'voyager-anchor', 'App\\Seo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-19 07:53:27', '2020-01-21 04:40:38'),
(16, 'pages', 'pages', 'Page', 'Pages', 'voyager-bookmark', 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-19 08:17:52', '2020-01-19 08:24:14'),
(17, 'career', 'career', 'Career', 'Careers', 'voyager-rocket', 'App\\Career', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-26 07:50:57', '2020-02-11 09:03:44'),
(18, 'experts_team', 'experts-team', 'Experts Team', 'Experts Teams', 'voyager-group', 'App\\ExpertsTeam', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-26 07:51:34', '2020-01-26 09:19:51'),
(19, 'gallery', 'gallery', 'Gallery', 'Galleries', 'voyager-images', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-26 07:52:06', '2020-02-05 09:08:58'),
(20, 'projects_category', 'projects-category', 'Projects Category', 'Projects Categories', 'voyager-tag', 'App\\ProjectsCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-26 07:52:52', '2020-01-26 09:21:25'),
(21, 'projects', 'projects', 'Project', 'Projects', 'voyager-tools', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-26 07:53:27', '2020-02-03 10:13:39'),
(22, 'services', 'services', 'Service', 'Services', 'voyager-check', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-26 09:22:10', '2020-02-26 13:34:50'),
(23, 'tv', 'tv', 'Tv', 'Tvs', 'voyager-tv', 'App\\Tv', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-28 10:37:36', '2020-02-05 13:22:39'),
(24, 'service_achieve', 'service-achieve', 'Service Achieve', 'Service Achieves', 'voyager-list', 'App\\ServiceAchieve', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-04 12:34:59', '2020-02-19 22:22:12'),
(28, 'car_type', 'car-type', 'Car Type', 'Car Types', 'voyager-list', 'App\\CarType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-05 09:05:35', '2020-02-12 07:08:43'),
(29, 'order', 'order', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-05 09:45:58', '2020-02-13 17:26:38'),
(30, 'contact', 'contact', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-05 12:38:00', '2020-02-05 12:38:00'),
(32, 'our_branches', 'our-branches', 'Our Branch', 'Our Branches', NULL, 'App\\OurBranch', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-08 15:04:35', '2020-02-08 15:30:58'),
(34, 'book_now', 'book-now', 'Book Now', 'Book Nows', NULL, 'App\\BookNow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-10 07:23:02', '2020-02-10 08:20:30'),
(35, 'jobs', 'jobs', 'Job', 'Jobs', NULL, 'App\\Job', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-11 09:59:55', '2020-02-27 18:02:16'),
(36, 'companies_and_compounds', 'companies-and-compounds', 'Companies And Compound', 'Companies And Compounds', NULL, 'App\\CompaniesAndCompound', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-11 10:08:20', '2020-02-11 10:08:20'),
(37, 'vacancies', 'vacancies', 'Vacancy', 'Vacancies', NULL, 'App\\Vacancy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-26 09:27:49', '2020-02-26 09:27:49'),
(38, 'subscribe', 'subscribe', 'Subscribe', 'Subscribes', NULL, 'App\\Subscribe', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-27 17:44:55', '2020-02-27 17:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `experts_team`
--

CREATE TABLE `experts_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experts_team`
--

INSERT INTO `experts_team` (`id`, `name`, `img`, `facebook_account`, `description`, `created_at`, `updated_at`) VALUES
(1, 'محمد عمرو', 'experts-team\\January2020\\LnPn39pC0Rjs65sKQ1X1.jpg', 'mohamed amr', '<p>محمد عمرو</p>', '2020-01-28 08:00:00', '2020-01-28 08:47:37'),
(2, 'اسلام عمرو', 'experts-team\\January2020\\64i5Js7ZKzgf1kr7FNdE.jpg', 'mohamed amr', '<p>اسلام عمرو</p>', '2020-01-28 08:00:40', '2020-01-28 08:00:40'),
(3, 'احمد احمد', 'experts-team\\January2020\\xHKWt9MvlN40RGPEiGAB.jpg', 'mohamed amr', '<p>احمد احمد</p>', '2020-01-28 08:01:12', '2020-01-28 08:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `img`, `description`, `created_at`, `updated_at`) VALUES
(13, 'gallery/February2020/cKbYs6XJZUcelMADdpof.jpg', 'صيانة العفشه', '2020-02-05 09:08:00', '2020-02-15 17:29:09'),
(14, 'gallery/February2020/BaajXs1aJJn89KhyXv9K.jpg', 'تغيير فلتر بنزين', '2020-02-05 11:58:00', '2020-02-15 17:29:44'),
(15, 'gallery\\February2020\\E1PEwrD70c1US24GhSHV.jpg', 'تغيير الزيت', '2020-02-05 11:58:35', '2020-02-05 11:58:35'),
(16, 'gallery/February2020/0XWXFS1uv5d9Xb01UVQt.jpg', 'بويه', '2020-02-05 11:58:00', '2020-02-15 17:28:24'),
(17, 'gallery/February2020/mTm7NBchuQ1ghZCebp4x.jpg', 'كهرباء', '2020-02-05 11:59:00', '2020-02-15 17:27:49'),
(18, 'gallery/February2020/5ADRIwmdtF5MvXYqfR9l.jpg', 'اطارات و ضبط زوايا ', '2020-02-05 11:59:00', '2020-02-15 17:27:17'),
(19, 'gallery\\February2020\\vHnHioVtMNy0wQ9xeVrD.jpg', 'اصلاح فتيس', '2020-02-05 12:00:00', '2020-02-15 17:25:46'),
(20, 'gallery/February2020/usiKN8n77Txr2lPP4DMI.jpeg', 'تغيير بوجيهات', '2020-02-05 12:00:00', '2020-02-15 17:26:16'),
(21, 'gallery/February2020/5n7kM4FMlCI8ZxcJwChb.jpg', 'سمكره', '2020-02-05 12:00:00', '2020-02-15 17:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `f_name`, `l_name`, `address`, `email`, `phone`, `qualification`, `cv`, `created_at`, `updated_at`, `title`) VALUES
(1, 'amr', 'mohamed', 'El Dokki', 'admin@example.com', '+5315645552', 'uohuiwdqhoiuwqdij', 'Document.rtf', '2020-02-11 09:58:45', '2020-02-11 09:58:45', NULL),
(2, 'amr', 'mohamed', '15-king street', 'mohamed@email.com', '+5315645552', 'uohuiwdqhoiuwqdij', 'logo.png', '2020-02-26 00:05:22', '2020-02-26 00:05:22', NULL),
(3, 'amr', 'mohamed', '15-king street', 'bluemediae@gmail.com', '+53156455965', 'uohuiwdqhoiuwqdij', 'Document.rtf', '2020-02-26 00:20:32', '2020-02-26 00:20:32', NULL),
(4, 'amr', 'mohamed', 'El Shorouk City, Al Shorouk, Cairo Governorate', 'kareem@email.com', '+5315645552', 'uohuiwdqhoiuwqdij', 'Document.rtf', '2020-02-26 09:45:43', '2020-02-26 09:45:43', 'مهندس ورشة'),
(5, 'amr', 'mohamed', 'El Shorouk City, Al Shorouk, Cairo', 'mohamed@email.com', '+53156455965', 'uohuiwdqhoiuwqdij', 'Document.rtf', '2020-02-26 09:54:29', '2020-02-26 09:54:29', 'سائق محترف لاستلام وتسليم السيارات'),
(6, 'amr', 'mohamed', 'الإمام أبو حنيفة النعمان، Al Obour, Cairo', 'bluemediae@gmail.com', '+53156455965', 'uohuiwdqhoiuwqdij', 'Document.rtf', '2020-02-26 10:05:30', '2020-02-26 10:05:30', 'مهندس ورشة'),
(7, 'amr', 'mohamed', '15-king street', 'bluemediae@gmail.com', '+5315645552', 'uohuiwdqhoiuwqdij', 'Document.rtf', '2020-02-26 10:06:07', '2020-02-26 10:06:07', 'فنى اصلاح كاوتشوك'),
(8, 'mohamed', 'amr', '29 sad ibn aby wakas, ard elgmaia imbaba', 'dev.mohamedamr@gmail.com', '01065469647', 'asdsadsadas', '[{\"download_link\":\"jobs\\/February2020\\/TsHDlW7VmYMIFBVDB7AT.pdf\",\"original_name\":\"Alta3lab Proposal Techanicla Developer. ai.pdf\"}]', '2020-02-27 18:03:06', '2020-02-27 18:03:06', NULL),
(9, 'mohamed', 'amr', '29 sad ibn aby wakas, ard elgmaia imbaba', 'dev.mohamedamr@gmail.com', '01065469647', 'asdsadsadas', 'Alta3lab Proposal Techanicla Developer. ai.pdf', '2020-02-27 18:04:17', '2020-02-27 18:04:17', 'متخصص نانو سيراميك');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-14 07:43:43', '2020-01-14 07:43:43'),
(2, 'seo', '2020-01-19 07:47:35', '2020-01-19 07:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-01-14 07:43:44', '2020-01-14 07:43:44', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 17, '2020-01-14 07:43:44', '2020-01-28 10:40:53', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 16, '2020-01-14 07:43:44', '2020-01-28 10:40:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 15, '2020-01-14 07:43:44', '2020-01-28 10:40:53', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 18, '2020-01-14 07:43:44', '2020-01-28 10:40:53', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-01-14 07:43:44', '2020-01-14 07:51:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-01-14 07:43:44', '2020-01-14 09:10:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-01-14 07:43:44', '2020-01-14 09:10:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-01-14 07:43:44', '2020-01-14 09:10:54', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 16, 1, '2020-01-14 07:43:44', '2020-01-14 09:15:00', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-01-14 07:43:44', '2020-01-14 09:10:54', 'voyager.hooks', NULL),
(15, 1, 'Sliders', '', '_self', 'voyager-camera', '#000000', 16, 2, '2020-01-14 09:10:39', '2020-01-14 09:15:01', 'voyager.slider.index', 'null'),
(16, 1, 'setting', '', '_self', 'voyager-settings', '#000000', NULL, 3, '2020-01-14 09:14:53', '2020-01-26 06:59:39', NULL, ''),
(17, 1, 'Blogs', 'admin/blogBack', '_self', 'voyager-edit', '#000000', NULL, 5, '2020-01-14 12:25:25', '2020-01-26 06:59:39', NULL, ''),
(18, 1, 'Menus', 'admin/menuBack', '_self', 'voyager-bread', '#000000', 20, 2, '2020-01-15 14:49:59', '2020-01-16 12:45:06', NULL, ''),
(21, 1, 'Testimonials', '', '_self', 'voyager-star-two', NULL, NULL, 12, '2020-01-16 09:23:30', '2020-01-26 09:28:47', 'voyager.testimonials.index', NULL),
(23, 1, 'Seos', '', '_self', 'voyager-anchor', '#000000', NULL, 14, '2020-01-19 07:53:27', '2020-01-28 10:40:53', 'voyager.seo.index', 'null'),
(24, 1, 'Pages', '', '_self', 'voyager-bookmark', NULL, NULL, 2, '2020-01-19 08:17:52', '2020-01-26 06:59:39', 'voyager.pages.index', NULL),
(25, 2, 'seo', '', '_self', 'voyager-anchor', '#000000', NULL, 15, '2020-01-19 09:01:30', '2020-01-19 09:01:38', 'voyager.seo.index', 'null'),
(27, 1, 'orders', 'order/index', '_self', 'voyager-basket', '#000000', NULL, 4, '2020-01-20 07:47:31', '2020-01-26 06:59:39', NULL, ''),
(28, 1, 'Careers', '', '_self', 'voyager-rocket', NULL, NULL, 11, '2020-01-26 07:50:57', '2020-01-26 09:28:47', 'voyager.career.index', NULL),
(29, 1, 'Experts Teams', '', '_self', 'voyager-group', NULL, NULL, 10, '2020-01-26 07:51:34', '2020-01-26 09:28:47', 'voyager.experts-team.index', NULL),
(30, 1, 'Galleries', '', '_self', 'voyager-images', NULL, NULL, 9, '2020-01-26 07:52:06', '2020-01-26 09:28:47', 'voyager.gallery.index', NULL),
(31, 1, 'Projects Categories', '', '_self', 'voyager-tag', NULL, NULL, 6, '2020-01-26 07:52:52', '2020-01-26 09:28:47', 'voyager.projects-category.index', NULL),
(32, 1, 'Projects', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-01-26 07:53:27', '2020-01-26 09:28:47', 'voyager.projects.index', NULL),
(33, 1, 'Services', '', '_self', 'voyager-check', '#000000', NULL, 8, '2020-01-26 09:22:10', '2020-01-26 09:28:47', 'voyager.services.index', 'null'),
(34, 1, 'Tvs', '', '_self', 'voyager-tv', NULL, NULL, 13, '2020-01-28 10:37:36', '2020-01-28 10:40:53', 'voyager.tv.index', NULL),
(35, 1, 'Service Achieves', '', '_self', NULL, NULL, NULL, 19, '2020-02-04 12:34:59', '2020-02-04 12:34:59', 'voyager.service-achieve.index', NULL),
(38, 1, 'Car Types', '', '_self', NULL, NULL, NULL, 21, '2020-02-05 09:05:35', '2020-02-05 09:05:35', 'voyager.car-type.index', NULL),
(39, 1, 'Orders', '', '_self', NULL, NULL, NULL, 22, '2020-02-05 09:45:58', '2020-02-05 09:45:58', 'voyager.order.index', NULL),
(40, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 23, '2020-02-05 12:38:00', '2020-02-05 12:38:00', 'voyager.contact.index', NULL),
(41, 1, 'Our Branches', '', '_self', NULL, NULL, NULL, 24, '2020-02-08 15:04:35', '2020-02-08 15:04:35', 'voyager.our-branches.index', NULL),
(43, 1, 'Book Nows', '', '_self', NULL, NULL, NULL, 26, '2020-02-10 07:23:02', '2020-02-10 07:23:02', 'voyager.book-now.index', NULL),
(44, 1, 'Jobs', '', '_self', NULL, NULL, NULL, 27, '2020-02-11 09:59:55', '2020-02-11 09:59:55', 'voyager.jobs.index', NULL),
(45, 1, 'Companies And Compounds', '', '_self', NULL, NULL, NULL, 28, '2020-02-11 10:08:20', '2020-02-11 10:08:20', 'voyager.companies-and-compounds.index', NULL),
(46, 1, 'Vacancies', '', '_self', NULL, NULL, NULL, 29, '2020-02-26 09:27:50', '2020-02-26 09:27:50', 'voyager.vacancies.index', NULL),
(47, 1, 'Subscribes', '', '_self', NULL, NULL, NULL, 30, '2020-02-27 17:44:55', '2020-02-27 17:44:55', 'voyager.subscribe.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_select` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_model` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending` int(11) DEFAULT '1',
  `service_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_img` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `email`, `phone`, `car_select`, `massage`, `created_at`, `updated_at`, `date`, `car_model`, `pending`, `service_name`, `user_id`, `service_img`) VALUES
(15, 'kareem', 'kareem@omar.com', '41545634565463', 'Toyota', 'wqfdqwfwfq', '2020-02-06 09:08:28', '2020-02-06 09:08:28', '02/28/2020', NULL, 1, NULL, NULL, NULL),
(16, 'sad adsads', 'kareem@omar.com', '41545634565463', 'Toyota', 'fvddvdf', '2020-02-08 09:11:06', '2020-02-08 09:11:06', '03/06/2020', NULL, 1, NULL, NULL, NULL),
(17, 'kareem', 'kareem@omar.com', '41545634565463', 'Toyota', 'ewfewf', '2020-02-09 08:00:00', '2020-02-13 12:53:18', '02/28/2020', '95', 0, NULL, NULL, NULL),
(18, 'كريم', 'kareem@omar.com', '41545634565463', 'Toyota', 'eswfceawecfweew', '2020-02-13 13:09:18', '2020-02-13 13:09:18', '02/28/2020', '95', 1, 'ميكانيكا', NULL, NULL),
(23, 'كريم', 'kareem@omar.com', '41545634565463', 'Toyota', 'kjmik,iu,u,u', '2020-02-13 17:31:33', '2020-02-13 17:31:33', '03/07/2020', '95', 1, 'كهرباء', 4, 'services\\February2020\\d3td2zGYiOSf78U1iLXn.jpg'),
(24, 'sad adsads', 'sad asd', '41545634565463', 'Toyota', 'sd dsdsdec', '2020-02-13 17:31:57', '2020-02-13 17:31:57', '03/02/2020', '95', 1, 'كهرباء', 4, 'services\\February2020\\d3td2zGYiOSf78U1iLXn.jpg'),
(25, 'كريم', 'kareem@omar.com', '41545634565463', 'Toyota', 'sqddwef', '2020-02-13 17:37:00', '2020-02-13 17:46:18', '02/21/2020', '95', 0, 'بويه', 4, 'services\\February2020\\of0VlxJyVzHECFbIYEcO.jpg'),
(26, 'radwa', 'radwa@email.com', '42332665', 'Toyota', 'fewrererev', '2020-02-15 17:02:06', '2020-02-15 17:02:06', '03/06/2020', '65', 1, 'ميكانيكا', 8, 'services\\February2020\\GECfKfzMczJGaTpVJ53i.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `our_branches`
--

CREATE TABLE `our_branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_branches`
--

INSERT INTO `our_branches` (`id`, `email`, `address`, `phone`, `url`, `created_at`, `updated_at`, `name`) VALUES
(1, 'admin@example.com', 'الإمام أبو حنيفة النعمان، Al Obour, Cairo ', '+5315645552', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3448.09101092659!2d31.460299515118834!3d30.20594978182374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzDCsDEyJzIxLjQiTiAzMcKwMjcnNDUuMCJF!5e0!3m2!1sen!2seg!4v1581411791763!5m2!1sen!2seg', '2020-02-08 15:13:00', '2020-02-15 17:40:43', 'العبور'),
(2, 'bluemediae@gmail.com', 'El Shorouk City, Al Shorouk, Cairo ', '+5315645552', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3449.577066587639!2d31.611643815117866!3d30.16350558183922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzDCsDA5JzQ4LjYiTiAzMcKwMzYnNDkuOCJF!5e0!3m2!1sen!2seg!4v1581411700515!5m2!1sen!2seg', '2020-02-08 15:13:00', '2020-02-15 17:39:29', 'الشروق'),
(7, '', 'Huckstep, El Nozha, Cairo Governorate', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3450.836258988478!2d31.376612615117107!3d30.127498581852187!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzDCsDA3JzM5LjAiTiAzMcKwMjInNDMuNyJF!5e0!3m2!1sen!2seg!4v1581515238643!5m2!1sen!2seg', '2020-02-12 11:47:46', '2020-02-12 11:47:46', 'جوزيف تيتو');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(2, 'browse_bread', NULL, '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(3, 'browse_database', NULL, '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(4, 'browse_media', NULL, '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(5, 'browse_compass', NULL, '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(6, 'browse_menus', 'menus', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(7, 'read_menus', 'menus', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(8, 'edit_menus', 'menus', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(9, 'add_menus', 'menus', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(10, 'delete_menus', 'menus', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(11, 'browse_roles', 'roles', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(12, 'read_roles', 'roles', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(13, 'edit_roles', 'roles', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(14, 'add_roles', 'roles', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(15, 'delete_roles', 'roles', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(16, 'browse_users', 'users', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(17, 'read_users', 'users', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(18, 'edit_users', 'users', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(19, 'add_users', 'users', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(20, 'delete_users', 'users', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(21, 'browse_settings', 'settings', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(22, 'read_settings', 'settings', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(23, 'edit_settings', 'settings', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(24, 'add_settings', 'settings', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(25, 'delete_settings', 'settings', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(26, 'browse_hooks', NULL, '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(42, 'browse_slider', 'slider', '2020-01-14 09:10:39', '2020-01-14 09:10:39'),
(43, 'read_slider', 'slider', '2020-01-14 09:10:39', '2020-01-14 09:10:39'),
(44, 'edit_slider', 'slider', '2020-01-14 09:10:39', '2020-01-14 09:10:39'),
(45, 'add_slider', 'slider', '2020-01-14 09:10:39', '2020-01-14 09:10:39'),
(46, 'delete_slider', 'slider', '2020-01-14 09:10:39', '2020-01-14 09:10:39'),
(47, 'browse_blog', 'blog', '2020-01-14 12:25:25', '2020-01-14 12:25:25'),
(48, 'read_blog', 'blog', '2020-01-14 12:25:25', '2020-01-14 12:25:25'),
(49, 'edit_blog', 'blog', '2020-01-14 12:25:25', '2020-01-14 12:25:25'),
(50, 'add_blog', 'blog', '2020-01-14 12:25:25', '2020-01-14 12:25:25'),
(51, 'delete_blog', 'blog', '2020-01-14 12:25:25', '2020-01-14 12:25:25'),
(62, 'browse_testimonials', 'testimonials', '2020-01-16 09:23:30', '2020-01-16 09:23:30'),
(63, 'read_testimonials', 'testimonials', '2020-01-16 09:23:30', '2020-01-16 09:23:30'),
(64, 'edit_testimonials', 'testimonials', '2020-01-16 09:23:30', '2020-01-16 09:23:30'),
(65, 'add_testimonials', 'testimonials', '2020-01-16 09:23:30', '2020-01-16 09:23:30'),
(66, 'delete_testimonials', 'testimonials', '2020-01-16 09:23:30', '2020-01-16 09:23:30'),
(72, 'browse_seo', 'seo', '2020-01-19 07:53:27', '2020-01-19 07:53:27'),
(73, 'read_seo', 'seo', '2020-01-19 07:53:27', '2020-01-19 07:53:27'),
(74, 'edit_seo', 'seo', '2020-01-19 07:53:27', '2020-01-19 07:53:27'),
(75, 'add_seo', 'seo', '2020-01-19 07:53:27', '2020-01-19 07:53:27'),
(76, 'delete_seo', 'seo', '2020-01-19 07:53:27', '2020-01-19 07:53:27'),
(77, 'browse_pages', 'pages', '2020-01-19 08:17:52', '2020-01-19 08:17:52'),
(78, 'read_pages', 'pages', '2020-01-19 08:17:52', '2020-01-19 08:17:52'),
(79, 'edit_pages', 'pages', '2020-01-19 08:17:52', '2020-01-19 08:17:52'),
(80, 'add_pages', 'pages', '2020-01-19 08:17:52', '2020-01-19 08:17:52'),
(81, 'delete_pages', 'pages', '2020-01-19 08:17:52', '2020-01-19 08:17:52'),
(82, 'browse_career', 'career', '2020-01-26 07:50:57', '2020-01-26 07:50:57'),
(83, 'read_career', 'career', '2020-01-26 07:50:57', '2020-01-26 07:50:57'),
(84, 'edit_career', 'career', '2020-01-26 07:50:57', '2020-01-26 07:50:57'),
(85, 'add_career', 'career', '2020-01-26 07:50:57', '2020-01-26 07:50:57'),
(86, 'delete_career', 'career', '2020-01-26 07:50:57', '2020-01-26 07:50:57'),
(87, 'browse_experts_team', 'experts_team', '2020-01-26 07:51:34', '2020-01-26 07:51:34'),
(88, 'read_experts_team', 'experts_team', '2020-01-26 07:51:34', '2020-01-26 07:51:34'),
(89, 'edit_experts_team', 'experts_team', '2020-01-26 07:51:34', '2020-01-26 07:51:34'),
(90, 'add_experts_team', 'experts_team', '2020-01-26 07:51:34', '2020-01-26 07:51:34'),
(91, 'delete_experts_team', 'experts_team', '2020-01-26 07:51:34', '2020-01-26 07:51:34'),
(92, 'browse_gallery', 'gallery', '2020-01-26 07:52:06', '2020-01-26 07:52:06'),
(93, 'read_gallery', 'gallery', '2020-01-26 07:52:06', '2020-01-26 07:52:06'),
(94, 'edit_gallery', 'gallery', '2020-01-26 07:52:06', '2020-01-26 07:52:06'),
(95, 'add_gallery', 'gallery', '2020-01-26 07:52:06', '2020-01-26 07:52:06'),
(96, 'delete_gallery', 'gallery', '2020-01-26 07:52:06', '2020-01-26 07:52:06'),
(97, 'browse_projects_category', 'projects_category', '2020-01-26 07:52:52', '2020-01-26 07:52:52'),
(98, 'read_projects_category', 'projects_category', '2020-01-26 07:52:52', '2020-01-26 07:52:52'),
(99, 'edit_projects_category', 'projects_category', '2020-01-26 07:52:52', '2020-01-26 07:52:52'),
(100, 'add_projects_category', 'projects_category', '2020-01-26 07:52:52', '2020-01-26 07:52:52'),
(101, 'delete_projects_category', 'projects_category', '2020-01-26 07:52:52', '2020-01-26 07:52:52'),
(102, 'browse_projects', 'projects', '2020-01-26 07:53:27', '2020-01-26 07:53:27'),
(103, 'read_projects', 'projects', '2020-01-26 07:53:27', '2020-01-26 07:53:27'),
(104, 'edit_projects', 'projects', '2020-01-26 07:53:27', '2020-01-26 07:53:27'),
(105, 'add_projects', 'projects', '2020-01-26 07:53:27', '2020-01-26 07:53:27'),
(106, 'delete_projects', 'projects', '2020-01-26 07:53:27', '2020-01-26 07:53:27'),
(107, 'browse_services', 'services', '2020-01-26 09:22:10', '2020-01-26 09:22:10'),
(108, 'read_services', 'services', '2020-01-26 09:22:10', '2020-01-26 09:22:10'),
(109, 'edit_services', 'services', '2020-01-26 09:22:10', '2020-01-26 09:22:10'),
(110, 'add_services', 'services', '2020-01-26 09:22:10', '2020-01-26 09:22:10'),
(111, 'delete_services', 'services', '2020-01-26 09:22:10', '2020-01-26 09:22:10'),
(112, 'browse_tv', 'tv', '2020-01-28 10:37:36', '2020-01-28 10:37:36'),
(113, 'read_tv', 'tv', '2020-01-28 10:37:36', '2020-01-28 10:37:36'),
(114, 'edit_tv', 'tv', '2020-01-28 10:37:36', '2020-01-28 10:37:36'),
(115, 'add_tv', 'tv', '2020-01-28 10:37:36', '2020-01-28 10:37:36'),
(116, 'delete_tv', 'tv', '2020-01-28 10:37:36', '2020-01-28 10:37:36'),
(117, 'browse_service_achieve', 'service_achieve', '2020-02-04 12:34:59', '2020-02-04 12:34:59'),
(118, 'read_service_achieve', 'service_achieve', '2020-02-04 12:34:59', '2020-02-04 12:34:59'),
(119, 'edit_service_achieve', 'service_achieve', '2020-02-04 12:34:59', '2020-02-04 12:34:59'),
(120, 'add_service_achieve', 'service_achieve', '2020-02-04 12:34:59', '2020-02-04 12:34:59'),
(121, 'delete_service_achieve', 'service_achieve', '2020-02-04 12:34:59', '2020-02-04 12:34:59'),
(132, 'browse_car_type', 'car_type', '2020-02-05 09:05:35', '2020-02-05 09:05:35'),
(133, 'read_car_type', 'car_type', '2020-02-05 09:05:35', '2020-02-05 09:05:35'),
(134, 'edit_car_type', 'car_type', '2020-02-05 09:05:35', '2020-02-05 09:05:35'),
(135, 'add_car_type', 'car_type', '2020-02-05 09:05:35', '2020-02-05 09:05:35'),
(136, 'delete_car_type', 'car_type', '2020-02-05 09:05:35', '2020-02-05 09:05:35'),
(137, 'browse_order', 'order', '2020-02-05 09:45:58', '2020-02-05 09:45:58'),
(138, 'read_order', 'order', '2020-02-05 09:45:58', '2020-02-05 09:45:58'),
(139, 'edit_order', 'order', '2020-02-05 09:45:58', '2020-02-05 09:45:58'),
(140, 'add_order', 'order', '2020-02-05 09:45:58', '2020-02-05 09:45:58'),
(141, 'delete_order', 'order', '2020-02-05 09:45:58', '2020-02-05 09:45:58'),
(142, 'browse_contact', 'contact', '2020-02-05 12:38:00', '2020-02-05 12:38:00'),
(143, 'read_contact', 'contact', '2020-02-05 12:38:00', '2020-02-05 12:38:00'),
(144, 'edit_contact', 'contact', '2020-02-05 12:38:00', '2020-02-05 12:38:00'),
(145, 'add_contact', 'contact', '2020-02-05 12:38:00', '2020-02-05 12:38:00'),
(146, 'delete_contact', 'contact', '2020-02-05 12:38:00', '2020-02-05 12:38:00'),
(147, 'browse_our_branches', 'our_branches', '2020-02-08 15:04:35', '2020-02-08 15:04:35'),
(148, 'read_our_branches', 'our_branches', '2020-02-08 15:04:35', '2020-02-08 15:04:35'),
(149, 'edit_our_branches', 'our_branches', '2020-02-08 15:04:35', '2020-02-08 15:04:35'),
(150, 'add_our_branches', 'our_branches', '2020-02-08 15:04:35', '2020-02-08 15:04:35'),
(151, 'delete_our_branches', 'our_branches', '2020-02-08 15:04:35', '2020-02-08 15:04:35'),
(157, 'browse_book_now', 'book_now', '2020-02-10 07:23:02', '2020-02-10 07:23:02'),
(158, 'read_book_now', 'book_now', '2020-02-10 07:23:02', '2020-02-10 07:23:02'),
(159, 'edit_book_now', 'book_now', '2020-02-10 07:23:02', '2020-02-10 07:23:02'),
(160, 'add_book_now', 'book_now', '2020-02-10 07:23:02', '2020-02-10 07:23:02'),
(161, 'delete_book_now', 'book_now', '2020-02-10 07:23:02', '2020-02-10 07:23:02'),
(162, 'browse_jobs', 'jobs', '2020-02-11 09:59:55', '2020-02-11 09:59:55'),
(163, 'read_jobs', 'jobs', '2020-02-11 09:59:55', '2020-02-11 09:59:55'),
(164, 'edit_jobs', 'jobs', '2020-02-11 09:59:55', '2020-02-11 09:59:55'),
(165, 'add_jobs', 'jobs', '2020-02-11 09:59:55', '2020-02-11 09:59:55'),
(166, 'delete_jobs', 'jobs', '2020-02-11 09:59:55', '2020-02-11 09:59:55'),
(167, 'browse_companies_and_compounds', 'companies_and_compounds', '2020-02-11 10:08:20', '2020-02-11 10:08:20'),
(168, 'read_companies_and_compounds', 'companies_and_compounds', '2020-02-11 10:08:20', '2020-02-11 10:08:20'),
(169, 'edit_companies_and_compounds', 'companies_and_compounds', '2020-02-11 10:08:20', '2020-02-11 10:08:20'),
(170, 'add_companies_and_compounds', 'companies_and_compounds', '2020-02-11 10:08:20', '2020-02-11 10:08:20'),
(171, 'delete_companies_and_compounds', 'companies_and_compounds', '2020-02-11 10:08:20', '2020-02-11 10:08:20'),
(172, 'browse_vacancies', 'vacancies', '2020-02-26 09:27:49', '2020-02-26 09:27:49'),
(173, 'read_vacancies', 'vacancies', '2020-02-26 09:27:49', '2020-02-26 09:27:49'),
(174, 'edit_vacancies', 'vacancies', '2020-02-26 09:27:49', '2020-02-26 09:27:49'),
(175, 'add_vacancies', 'vacancies', '2020-02-26 09:27:49', '2020-02-26 09:27:49'),
(176, 'delete_vacancies', 'vacancies', '2020-02-26 09:27:49', '2020-02-26 09:27:49'),
(177, 'browse_subscribe', 'subscribe', '2020-02-27 17:44:55', '2020-02-27 17:44:55'),
(178, 'read_subscribe', 'subscribe', '2020-02-27 17:44:55', '2020-02-27 17:44:55'),
(179, 'edit_subscribe', 'subscribe', '2020-02-27 17:44:55', '2020-02-27 17:44:55'),
(180, 'add_subscribe', 'subscribe', '2020-02-27 17:44:55', '2020-02-27 17:44:55'),
(181, 'delete_subscribe', 'subscribe', '2020-02-27 17:44:55', '2020-02-27 17:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `expert_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `img`, `description`, `expert_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'إصلاح الإطارات', 'projects\\February2020\\PNjRqGoo9Z1yYTaHVBve.jpg', '<p>إصلاح الإطاراتإصلاح الإطاراتإصلاح الإطاراتإصلاح الإطاراتإصلاح الإطاراتإصلاح الإطاراتإصلاح الإطارات</p>', 1, '2020-02-03 10:18:00', '2020-02-03 10:21:27', 1),
(2, 'اصلاح اطارات', 'projects\\February2020\\uVxe5vnqf5qeCEnMjB2K.jpg', '<p>اصلاح اطاراتاصلاح اطاراتاصلاح اطاراتاصلاح اطارات</p>', 2, '2020-02-03 10:19:00', '2020-02-03 10:21:18', 1),
(3, 'موازنه الاطارت', 'projects\\February2020\\yFezPCWwnNJuRrDjjwvS.jpg', '<p>موازنه الاطارتموازنه الاطارتموازنه الاطارت</p>', 3, '2020-02-03 10:19:00', '2020-02-03 10:21:09', 1),
(4, 'فحص الزيوت', 'projects\\February2020\\sa8m7FvKkwhbxzzGKb8P.jpg', '<p>فحص الزيوتفحص الزيوتفحص الزيوت</p>', 3, '2020-02-03 10:20:58', '2020-02-03 10:20:58', 2),
(5, 'تغيير الزيوت', 'projects\\February2020\\AUAOMVKtwUgG68LMHEIG.jpg', '<p>تغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوت</p>', 1, '2020-02-03 10:22:30', '2020-02-03 10:22:30', 2),
(6, 'تغيير المحرك', 'projects\\February2020\\V38NIRqcMtIwDdeCcGuO.jpg', '<p>تغيير المحركتغيير المحركتغيير المحرك</p>', 2, '2020-02-03 10:23:49', '2020-02-03 10:23:49', 3),
(7, 'فحص الفرامل', 'projects\\February2020\\5uzf7g7y7CY94rjpCvY1.png', '<p>فحص الفرامل فحص الفرامل فحص الفرامل</p>', 1, '2020-02-03 10:24:51', '2020-02-03 10:24:51', 4),
(8, 'إصلاح الفرامل', NULL, '<p>إصلاح الفرامل إصلاح الفرامل</p>', 2, '2020-02-03 10:25:52', '2020-02-03 10:25:52', 4);

-- --------------------------------------------------------

--
-- Table structure for table `projects_category`
--

CREATE TABLE `projects_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_category`
--

INSERT INTO `projects_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'الإطارات', '2020-02-03 09:59:00', '2020-02-03 10:02:09'),
(2, 'زيوت', '2020-02-03 10:00:36', '2020-02-03 10:00:36'),
(3, 'محركات', '2020-02-03 10:02:34', '2020-02-03 10:02:34'),
(4, 'فرامل', '2020-02-03 10:03:11', '2020-02-03 10:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(2, 'user', 'Normal User', '2020-01-14 07:43:44', '2020-01-14 07:43:44'),
(3, 'seo', 'seo mange', '2020-01-14 12:32:58', '2020-01-14 12:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `canonical` text COLLATE utf8mb4_unicode_ci,
  `oglocale` text COLLATE utf8mb4_unicode_ci,
  `ogtype` text COLLATE utf8mb4_unicode_ci,
  `ogtitle` text COLLATE utf8mb4_unicode_ci,
  `ogdescription` text COLLATE utf8mb4_unicode_ci,
  `ogurl` text COLLATE utf8mb4_unicode_ci,
  `ogsite_name` text COLLATE utf8mb4_unicode_ci,
  `ogimage` text COLLATE utf8mb4_unicode_ci,
  `twittercard` text COLLATE utf8mb4_unicode_ci,
  `twitterdescription` text COLLATE utf8mb4_unicode_ci,
  `twittertitle` text COLLATE utf8mb4_unicode_ci,
  `twitterimage` text COLLATE utf8mb4_unicode_ci,
  `page_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_description` text COLLATE utf8mb4_unicode_ci,
  `service_cost` float DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite` int(11) DEFAULT '0',
  `offer` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_description`, `service_cost`, `service_img`, `created_at`, `updated_at`, `favorite`, `offer`) VALUES
(1, 'نانو سيراميك وتظليل حراري', '<p>💪 نــانــو سيراميك الوحيده الى هتقدر تخلى دهان عربيتك أقوى 10 مرات من الطبيعى&nbsp;</p>\n<p>🔴 عشان هى وكيل أقوى نانو سيراميك وأفلام حماية فى العال</p>\n<p>&nbsp;🔴 يعنى وداعا للخدوش ووداعا لبهتان اللون&nbsp;</p>\n<p>معانا بس عربيتك دايما زيرو</p>\n<p>&nbsp;</p>', 2000, '[\"services\\/February2020\\/XiCntvu1HChQGnjxWGmD.jpeg\",\"services\\/February2020\\/r0IdpvhdrIFIJKQW0JJe.jpeg\"]', '2020-01-28 07:17:00', '2020-02-27 15:25:05', 0, 0),
(2, 'ميكانيكا', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"font-family: Arial, sans-serif;\">يتوفر بالمركز قطع الغيار اللازمة للاصلاح وذلك تيسيرا على السادة العملاء ولاجراء عمليات الصيانة فى اسرع وقت ممكن</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"font-family: Arial, sans-serif;\">يتم نقل السيارة داخل المركز من خلال اسانسير مخصص لذلك. وذلك لضمان تنقل السيارة بين اقسام الصيانة المختلفة فى حالة الاحتياج الى عمل صيانات متعددة للحفاظ على السيارة وحتى لا يتم سيرها فى ممرات متعددة. لان سلامة سيارتك تهمنا</span></span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\">عمرة محرك</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\">تحديد جميع الاعطال&nbsp; &nbsp;وذلك لما يتوفر بالمركز من اجهزة اختبار وتشخيص الاعطال حديثة واصلاحها</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\">و المتعلقة بالمحرك وناقل الحركة اليدوى والاتوماتيكى والعفشة والتوجيه والفرامل سواء الهيدروليكية او ABS وغيرها وكل ما يتعلق بميكانيكا السيارات بالاضافة الى ضبط زوايا واتزان العجلات</span></p>', 1000, '[\"services\\/February2020\\/7UN0KvbAxLIAgftt0TBb.JPG\",\"services\\/February2020\\/aGtkjsXYHheXebPFMuCg.JPG\"]', '2020-01-28 07:20:00', '2020-02-27 16:49:08', 1, 1),
(3, 'بويه', '<p style=\"text-align: right;\">دوكو</p>\n<p style=\"text-align: right;\">جميع الاعمال اللازمة لدهان السيارة</p>\n<p style=\"text-align: right;\">من تجهيز السيارة للدهان ورشها باجود خامات الدهان</p>\n<p style=\"text-align: right;\">كابينة دهان السيارة والتى&nbsp; تتسع لدهان جميع انواع السيارات الملاكى بكافة انواعها و احجامها. والتى تحتوى على اعلى وحدة فلترة للحصول على كفاءة دهان عالية.</p>', 500, '[\"services\\/February2020\\/HjjuYs7QFhWtG3kkYWxU.JPG\"]', '2020-01-28 07:21:00', '2020-02-27 16:02:21', 1, 1),
(4, 'كهرباء', '<p>صيانة واصلاح جميع الانظمة الكهربائية فى السيارة</p>\n<p>دائرة الشحن</p>\n<p>دائرة بدء الحركة ( المارش)</p>\n<p>دائرة الاشعال</p>\n<p>اعطال الحساسات</p>\n<p>دائرة الوقود</p>\n<p>وكل ما يخص كهرباء المحرك</p>\n<p>ظبط الاضاء تغير فوانيس تلميع فانوس الكشف على جميع الضفاير الكهربائية فى السيارة</p>', 300, '[\"services\\\\February2020\\\\2G1UITQCwx6GN2LH4oyX.jpg\"]', '2020-02-04 13:25:00', '2020-02-26 16:09:14', 0, 0),
(5, 'اطارات وضبط زوايا', '<p>1اجهزه خدمه الاطارات جهاز فك وتركيب&nbsp; الاطارات وجهاز&nbsp; ترصيص الاطارات لظبط اتزان العجل</p>\n<p>2احدث جهاز ثلاثى الابعاد لضبط زوايا العجل والذى يعطى اعلى دقة فى قراءة زوايا العجل وبالتالى دقة ضبط زوايا العجل للحفاظ على امن وسلامة سير السيارة على الطريق وسلامة قاءدها</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '[\"services\\/February2020\\/4pCWnD2NninDmmObZCpF.JPG\",\"services\\/February2020\\/tG3J0kErGGZYIKXJBcBm.JPG\"]', '2020-02-11 06:22:00', '2020-02-27 15:52:31', 0, 1),
(6, 'اصلاح الفتيس', '<p>احدث جهاز لتغيير زيت ناقل الحركة (الفتيس) الاتوماتيكى وهو من الاجهزة التى لا تتوفر فى العديد من مراكز صيانة السيارات حيث يقوم الجهاز بشفط الزيت القديم وتنظيف الفتيس قبل ضخ الزيت الجديد مما يضمن سلامة ناقل الحركة وتغيير الزيت بطريقة صحيحة وأمنة</p>', NULL, '[\"services\\/February2020\\/mCP65w1Z8S2HAT49hgF1.JPG\"]', '2020-02-11 06:23:00', '2020-02-27 16:36:23', 0, 0),
(7, 'صيانة العفشه', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>الصيانة سريعه :</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تغيير زيت محرك وفلتر</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>&nbsp;يجب على أصحاب السيارات أن لا يهملوا فحص سياراتهم بشكل دوري، وتفقدها قبل القيادة، وذلك لتجنب حدوث أعطال كبيرة في السيارة، وللحفاظ على السلامة والأمان أثناء القيادة، وإطالة عمر السيارة، كما أن بإمكان السائق القيام به بمفرده. ) كلما تقطع المسافات، كلما يفقد الزيت لزوجته الأصلية ويُحَمَّل بالجزئيات والشوائب ويتدهور. وهذا كله رغم تواجد الفلتر الذي يفترض أن يصفي الشوائب. إذن فالمحرك غير محمي بشكل كاف من عوامل الأكسدة والأوساخ. عندئذ ينصح بتغيير الزيت لتجديدها وتجنب مخاطر العطب.</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تغيير فلتر هواء&nbsp;</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تعتبر فلاتر السيارة أحد العناصر التي تحسن أداء محرك السيارة، حيث يجعل السيارة تقوم بمهمتها بالشكل الصحيح، بالإضافة لأنها تحمي من تعرض السيارة للأعطال نتيجة القيام بمختلف الوظائف، والتي تكمن في تنقية العناصر الداخلة إلى المحرك مثل الهواء والوقود وغير ذلك، لعل من الفلاتر الهامة الموجودة بمنظومة عمل المحرك إنه فلتر الهواء، حيث يساعد في تنقية الهواء الداخل للمحرك.</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تغيير فلتر تكيف&nbsp;</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تم تزويد معظم السيارات الجديدة بمصفاة لمكيف الهواء تعمل على تنقية الهواء الداخل الى المقصورة من خلال فتحات إدخال الهواء. وفي حال تراكمت الأوساخ في هذه المصفاة، لا تتدنى فعالية التبريد والتدفئة وحسب، بل يبدأ جهاز التكييف بإصدار روائح قد تعلق في مكونات المقصورة تماماً كما تعلق رائحة السجائر في الأثاث المنزلي. لذلك من الأفضل أن يتم تنظيف هذه المصفاة أو تبديلها بمعدل مرة في السنة وبالأخص في حال كانت السيارة تتواجد في مناطق تتميز أجواءها بكثافة في الغبار كما في المناطق الصحراوية.</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تغيير فلتر بنزين&nbsp;</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>فلتر البنزين من أهم فلاتر السيارة، ويتلخص عمله على القيام بتصفية البنزين الموجود داخل خزان الوقود في السيارة من الشوائب والأوساخ قبل أن يصل إلى البخاخات، ويجب المحافظة على تغيير الفلتر مع الصيانة الدورية للسيارة،&nbsp; لأن إهمال تغييره يسبب عدد من المشاكل للسيارة</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تربيط العفشه&nbsp;</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>سماع أصوات في السيارة أثناء القيادة، من أبرز العلامات التي تدل على وجود خلل في نظام التعليق الخاص بالسيارة &ldquo;العفشة</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>&nbsp;</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>تغيير بوجيهات</strong></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span style=\"font-family: Arial, sans-serif;\"><strong>شمعات الاحتراق (البوجيهات) من أبرز الأجزاء التي تساعد في تشغيل محرك السيارة بكفاءة عالية، وتقوم بتوصيل تيارًا بجهدٍ عالٍ يقارب 12000 فولت إلى غرفة الاحتراق في المحرك، كي يتم إشعال خليط الهواء والوقود، وهو ما يساعد على تشغيل السيارة.</strong></span></p>\n<p style=\"text-align: right;\">&nbsp;</p>', NULL, '[\"services\\/February2020\\/QF7obFeu9xGQ40ZCnyZL.jpg\",\"services\\/February2020\\/vLITLMKxjvw90zg36e5o.jpg\"]', '2020-02-11 06:24:00', '2020-02-27 16:31:05', 0, 1),
(8, 'سمكره', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">اصلاح جميع الصدمات سواء بهيكل السيارة او بالشاسيه</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">حيث يتوفر بالمركز جهاز استعدال الشاسيه</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span dir=\"LTR\"><span style=\"mso-spacerun: yes;\">&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">إستعدال قوايم</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\"><span lang=\"AR-SA\"><span style=\"font-family: Arial, sans-serif;\">جهاز استعدال الشاسيهات وللذى من خلاله يتم رد واستعدال شاسيه السيارة خاصة فى الحوادث الكبرى حيث يقوم المركز باستقبال كافة انواع الحوادث</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: right; direction: rtl; unicode-bidi: embed;\">&nbsp;</p>', NULL, '[\"services\\/February2020\\/OrJejyy1DTFUrUKYNe0V.JPG\"]', NULL, '2020-02-27 16:09:10', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_achieve`
--

CREATE TABLE `service_achieve` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_achieve`
--

INSERT INTO `service_achieve` (`id`, `title`, `icon`, `description`, `count`, `created_at`, `updated_at`) VALUES
(1, 'خدمات المركبات', 'pe-7s-car', '', 754, '2020-02-04 12:40:00', '2020-02-06 12:15:49'),
(2, 'اعجاب الاشخاص', 'pe-7s-like2', '', 1016, '2020-02-04 12:42:00', '2020-02-17 02:12:23'),
(3, 'عملائنا ', 'pe-7s-users', '', 698, '2020-02-04 12:44:00', '2020-02-17 02:12:19'),
(4, 'إعتمادات', 'pe-7s-cup', '', 4459, '2020-02-04 12:46:00', '2020-02-06 12:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'التعلب', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'موقع التعلب', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2020\\ulgSH96afytbjNxVMfkh.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 't3lb', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to t3lb. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\February2020\\16R9ZuFB6v0QvJqm5Msz.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(14, 'story.en', 'english', '<p><span style=\"color: #222222; font-family: \'Source Sans Pro\', sans-serif; font-size: 20px; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.</span></p>', NULL, 'rich_text_box', 6, 'story'),
(15, 'story.ar', 'arabic', '<p>هذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلامهذا اي كلام اي كلام</p>', NULL, 'rich_text_box', 7, 'story'),
(17, 'slogan.en', 'slogan', '<h1>&ldquo;Order food online in Egypt&rdquo;</h1>', NULL, 'rich_text_box', 8, 'slogan'),
(18, 'slogan.ar', 'slogan', '<h1>&rdquo;اطلب الطعام اون لاين في مصر&ldquo;</h1>', NULL, 'rich_text_box', 9, 'slogan'),
(19, 'mission.en', 'mission', NULL, NULL, 'rich_text_box', 10, 'mission'),
(20, 'mission.ar', 'mission', NULL, NULL, 'rich_text_box', 11, 'mission'),
(22, 'site.dark', 'site dark', 'settings\\February2020\\iFm60t9IrUyopNXQmQ9q.png', NULL, 'image', 12, 'Site'),
(29, 'contact-us.address_en', 'address en', '<p>El shorouk Pic 77 , small</p>\r\n<p>industries, south of the militray workshop</p>', NULL, 'rich_text_box', 19, 'contact us'),
(30, 'social.facebook', 'facebook', 'https://www.facebook.com/t3labautomotive', NULL, 'text', 20, 'social'),
(33, 'social.instgram', 'instgram', 'https://www.instagram.com/t3labautomotive/', NULL, 'text', 23, 'social'),
(34, 'contact-us.opening_ar', 'opening ar', '<p style=\"text-align: right;\">الجمعه: مغلق</p>\r\n<p style=\"text-align: right;\">من السبت الى الخميس</p>\r\n<p style=\"text-align: right;\">10am-5pm</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>', NULL, 'rich_text_box', 24, 'contact us'),
(35, 'contact-us.opening_en', 'opining en', '<p>Friday: close</p>\r\n<p>from Saturday to Thursday</p>\r\n<p>10am-5pm</p>\r\n<p>&nbsp;</p>', NULL, 'rich_text_box', 25, 'contact us'),
(36, 'contact-us.phone', 'phone', '+220300249', NULL, 'text', 26, 'contact us'),
(37, 'contact-us.email', 'email', 'sales@3lab-eg.com', NULL, 'text', 27, 'contact us'),
(38, 'about.ar', 'about ar', '<h2 style=\"text-align: right;\"><span style=\"text-align: start;\">أهلا\" بكم في <span style=\"color: #800000;\">التعلب</span></span></h2>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;يحتوى مركز التعلب على جميع المعدات واجهزة الكشف الحديثة لضمان خدمة صيانة متكاملة وسريعة فى مكان واحد.</p>\r\n<p style=\"text-align: right;\">يوجد بالمركز احدث جهاز لتشخيص الاعطال&nbsp;</p>\r\n<p style=\"text-align: right;\">جهاز اختبار قدرة المحرك</p>\r\n<p style=\"text-align: right;\">جهاز اختبار دورة التبريد فى المحرك</p>\r\n<p style=\"text-align: right;\">جهاز تغيير زيت الفرامل</p>\r\n<p style=\"text-align: right;\">جهاز تغيير زيت ناقل الحركة الاتوماتيكى&nbsp;</p>\r\n<p style=\"text-align: right;\">جهاز شحن وتفريغ الفريون من نظام التكييف فى السيارة</p>\r\n<p style=\"text-align: right;\">احدث جهاز ثلاثى الابعاد لضبط زوايا العجل</p>\r\n<p style=\"text-align: right;\">جهاز ترصيص واتزان العجل بالكمبيوتر</p>\r\n<p style=\"text-align: right;\">خدمة شاملة للبطاريات والاطارات</p>\r\n<p style=\"text-align: right;\">احدث جهاز لاستعدال الشاسيهات</p>\r\n<p style=\"text-align: right;\">استعدال جسم السيارة على البارد</p>\r\n<p style=\"text-align: right;\">احدث فرن لدهان السيارات</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">بالنسبة للخدمات</p>\r\n<p style=\"text-align: right;\">جميع الخدمات اللازمة لصيانة السيارات فى مكان واحد</p>\r\n<p style=\"text-align: right;\">1 - الصيانة السريعة بجميع انواعها</p>\r\n<p style=\"text-align: right;\">2 - ميكانيكا سيارات (محرك&nbsp; و عفشة )</p>\r\n<p style=\"text-align: right;\">3 - ضبط زوايا وترصيص.</p>\r\n<p style=\"text-align: right;\">4 -&nbsp; &nbsp;كهرباء السيارات (اصلاح جميع الاعطال الكهربائية فى السيارة )</p>\r\n<p style=\"text-align: right;\">5 - خدمة اطارات شاملة</p>\r\n<p style=\"text-align: right;\">6 - سمكرة سيارات&nbsp; (سواء بسيطة او الحوادث بانواعها)</p>\r\n<p style=\"text-align: right;\">7 - دوكو باستخدام اجود خامات الدهان</p>\r\n<p style=\"text-align: right;\">8 - نانو سيرامك باستخدام اجود الخامات</p>\r\n<p style=\"text-align: right;\">9 - تظليل حرارى.</p>\r\n<p style=\"text-align: right;\">توفير جميع قطع الغيار اللازمة.</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">الصيانة سريعه :</p>\r\n<p style=\"text-align: right;\">تغيير زيت محرك وفلتر&nbsp;&nbsp;</p>\r\n<p style=\"text-align: right;\">تغيير فلتر هواء&nbsp;</p>\r\n<p style=\"text-align: right;\">تغيير فلتر تكيف&nbsp;</p>\r\n<p style=\"text-align: right;\">تغيير فلتر بنزين&nbsp;</p>\r\n<p style=\"text-align: right;\">تربيط العفشه&nbsp;</p>\r\n<p style=\"text-align: right;\">تغيير بوجيهات</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">الميكانيكا</p>\r\n<p style=\"text-align: right;\">عمرة محرك</p>\r\n<p style=\"text-align: right;\">تحديد جميع الاعطال&nbsp; &nbsp;وذلك لما يتوفر بالمركز من اجهزة اختبار وتشخيص الاعطال حديثة واصلاحها</p>\r\n<p style=\"text-align: right;\">و المتعلقة بالمحرك وناقل الحركة اليدوى والاتوماتيكى والعفشة والتوجيه والفرامل سواء الهيدروليكية او ABS وغيرها وكل ما يتعلق بميكانيكا السيارات بالاضافة الى ضبط زوايا واتزان العجلات</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">كهرباء</p>\r\n<p style=\"text-align: right;\">صيانة واصلاح جميع الانظمة الكهربائية فى السيارة</p>\r\n<p style=\"text-align: right;\">دائرة الشحن</p>\r\n<p style=\"text-align: right;\">دائرة بدء الحركة ( المارش)</p>\r\n<p style=\"text-align: right;\">دائرة الاشعال</p>\r\n<p style=\"text-align: right;\">اعطال الحساسات</p>\r\n<p style=\"text-align: right;\">دائرة الوقود</p>\r\n<p style=\"text-align: right;\">وكل ما يخص كهرباء المحرك</p>\r\n<p style=\"text-align: right;\">ظبط الاضاء تغير فوانيس تلميع فانوس الكشف على جميع الضفاير الكهربائية فى السيارة</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">خدمة اطارات وكاوتشوك</p>\r\n<p style=\"text-align: right;\">هواء ونيتروحين</p>\r\n<p style=\"text-align: right;\">ترصيص</p>\r\n<p style=\"text-align: right;\">اصلاح كاوتشوك</p>\r\n<p style=\"text-align: right;\">يوجد اطارات جميع المقاسات بالمركز</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">السمكرة</p>\r\n<p style=\"text-align: right;\">اصلاح جميع الصدمات سواء بهيكل السيارة او بالشاسيه</p>\r\n<p style=\"text-align: right;\">حيث يتوفر بالمركز جهاز استعدال الشاسيه</p>\r\n<p style=\"text-align: right;\">&nbsp;إستعدال قوايم</p>\r\n<p style=\"text-align: right;\">استعدال علي البارد وعلي السخن</p>\r\n<p style=\"text-align: right;\">استقبال الحوادث</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">دوكو</p>\r\n<p style=\"text-align: right;\">جميع الاعمال اللازمة لدهان السيارة</p>\r\n<p style=\"text-align: right;\">من تجهيز السيارة للدهان ورشها باجود خامات الدهان</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">نانو سيراميك و تظليل حرارة</p>\r\n<p style=\"text-align: right;\">💪 نــانــو سيراميك الوحيده الى هتقدر تخلى دهان عربيتك أقوى 10 مرات من الطبيعى&nbsp;</p>\r\n<p style=\"text-align: right;\">🔴 عشان هى وكيل أقوى نانو سيراميك وأفلام حماية فى العال</p>\r\n<p style=\"text-align: right;\">&nbsp;🔴 يعنى وداعا للخدوش ووداعا لبهتان اللون&nbsp;</p>\r\n<p style=\"text-align: right;\">معانا بس عربيتك دايما زيرو</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>', NULL, 'rich_text_box', 28, 'about'),
(39, 'about.en', 'about en', '<h2>Welcome to <span style=\"color: #800000;\">Elt3lb</span></h2>\r\n<h4>&nbsp;</h4>', NULL, 'rich_text_box', 29, 'about'),
(44, 'contact-us.website', 'website', 'http://t3lab-eg.com/ar', NULL, 'text', 30, 'contact us'),
(47, 'contact-us.service_ar', 'service ar', '<p style=\"text-align: right;\">تغيير الزيوت</p>\r\n<p style=\"text-align: right;\">خدمات المحرك</p>\r\n<p style=\"text-align: right;\">موازنة الاطارات</p>\r\n<p style=\"text-align: right;\">فاميه</p>\r\n<p style=\"text-align: right;\">طلاء</p>', NULL, 'rich_text_box', 32, 'contact us'),
(48, 'contact-us.service_en', 'service en', '<p>Oil change</p>\r\n<p>Engine services</p>\r\n<p>Tire balancing</p>\r\n<p>shading</p>\r\n<p>paint</p>', NULL, 'rich_text_box', 33, 'contact us'),
(49, 'social.twitter', 'twitter', 'https://twitter.com/T3labautomotive', NULL, 'text', 34, 'social'),
(50, 'social.youtube', 'youtube', 'https://www.youtube.com/channel/UCvJU2LRkch1H9Y914_CCSIg', NULL, 'text', 35, 'social');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_img`, `slider_content`, `created_at`, `updated_at`) VALUES
(3, 'slider\\January2020\\bCEvo6Lie1nlqnRmgmyQ.jpg', '<h1><strong>كريم</strong></h1>', '2020-01-18 13:23:00', '2020-02-03 12:35:18'),
(5, 'slider\\February2020\\eROFNaEon3xKqIZ8J8zp.jpg', '<p>كريم</p>', '2020-02-03 12:32:50', '2020-02-03 12:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'tarekgebaly6@gmail.com', '2020-02-27 17:44:04', '2020-02-27 17:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `testimonial_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimonial_user_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonial_name`, `testimonial_job`, `testimonial_details`, `created_at`, `updated_at`, `testimonial_user_img`) VALUES
(1, 'محمد عمرو', 'مبرمج', '', '2020-01-21 06:40:00', '2020-02-06 12:14:21', 'testimonials\\January2020\\bqu7fy2zhUo4fowXLCV3.jpeg'),
(2, 'كريم عمر', 'مبرمج', '', '2020-02-03 09:33:00', '2020-02-06 12:14:14', 'testimonials\\February2020\\6dKUJm2jlV2A2Ielvynn.jpg'),
(3, 'علاء محمد', 'ممرض', '', '2020-02-03 09:50:00', '2020-02-06 12:14:02', 'testimonials\\February2020\\EAiJovHeJRHwJsH6v9Is.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'testtrans', 'title', 1, 'en', 'wawdawdawd', '2020-01-18 08:17:47', '2020-01-18 08:17:47'),
(2, 'testtrans', 'description', 1, 'en', '<p>awdawdwda</p>', '2020-01-18 08:17:47', '2020-01-18 08:17:47'),
(3, 'testtrans', 'title', 2, 'en', 'awdwadw', '2020-01-18 08:22:07', '2020-01-18 08:22:07'),
(4, 'testtrans', 'description', 2, 'en', '<p>awdawdda</p>', '2020-01-18 08:22:07', '2020-01-18 08:22:07'),
(11, 'data_rows', 'display_name', 69, 'en', 'Id', '2020-01-18 09:29:39', '2020-01-18 09:29:39'),
(12, 'data_rows', 'display_name', 70, 'en', 'Section Title', '2020-01-18 09:29:39', '2020-01-18 09:29:39'),
(13, 'data_rows', 'display_name', 71, 'en', 'Section Description', '2020-01-18 09:29:39', '2020-01-18 09:29:39'),
(14, 'data_rows', 'display_name', 72, 'en', 'Created At', '2020-01-18 09:29:39', '2020-01-18 09:29:39'),
(15, 'data_rows', 'display_name', 73, 'en', 'Updated At', '2020-01-18 09:29:39', '2020-01-18 09:29:39'),
(16, 'data_rows', 'display_name', 74, 'en', 'Language Iso', '2020-01-18 09:29:39', '2020-01-18 09:29:39'),
(19, 'data_rows', 'display_name', 99, 'en', 'img', '2020-01-18 09:52:02', '2020-01-18 09:52:02'),
(22, 'data_rows', 'display_name', 62, 'en', 'Id', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(23, 'data_rows', 'display_name', 63, 'en', 'Menu Title', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(24, 'data_rows', 'display_name', 64, 'en', 'Menu Description', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(25, 'data_rows', 'display_name', 65, 'en', 'Menu Section', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(26, 'data_rows', 'display_name', 67, 'en', 'Created At', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(27, 'data_rows', 'display_name', 68, 'en', 'Updated At', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(28, 'data_rows', 'display_name', 75, 'en', 'Menu Category', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(29, 'data_rows', 'display_name', 76, 'en', 'Menu Img', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(30, 'data_rows', 'display_name', 77, 'en', 'Menu Price', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(31, 'data_rows', 'display_name', 78, 'en', 'Favorite', '2020-01-18 09:57:04', '2020-01-18 09:57:04'),
(34, 'data_rows', 'display_name', 28, 'en', 'Id', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(35, 'data_rows', 'display_name', 29, 'en', 'Section Name', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(36, 'data_rows', 'display_name', 30, 'en', 'Section icon', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(37, 'data_rows', 'display_name', 31, 'en', 'Created At', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(38, 'data_rows', 'display_name', 32, 'en', 'Updated At', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(39, 'data_rows', 'display_name', 79, 'en', 'Section Description', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(40, 'data_rows', 'display_name', 80, 'en', 'Section Favorite', '2020-01-18 10:08:08', '2020-01-18 10:08:08'),
(43, 'data_rows', 'display_name', 33, 'en', 'Id', '2020-01-18 10:14:45', '2020-01-18 10:14:45'),
(44, 'data_rows', 'display_name', 34, 'en', 'Section Name', '2020-01-18 10:14:45', '2020-01-18 10:14:45'),
(45, 'data_rows', 'display_name', 35, 'en', 'Section Img', '2020-01-18 10:14:45', '2020-01-18 10:14:45'),
(46, 'data_rows', 'display_name', 36, 'en', 'Created At', '2020-01-18 10:14:45', '2020-01-18 10:14:45'),
(47, 'data_rows', 'display_name', 37, 'en', 'Updated At', '2020-01-18 10:14:45', '2020-01-18 10:14:45'),
(48, 'data_rows', 'display_name', 47, 'en', 'Section Id', '2020-01-18 10:14:45', '2020-01-18 10:14:45'),
(51, 'data_rows', 'display_name', 54, 'en', 'Id', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(52, 'data_rows', 'display_name', 55, 'en', 'Blog Title', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(53, 'data_rows', 'display_name', 56, 'en', 'Blog Content', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(54, 'data_rows', 'display_name', 57, 'en', 'Blog Img', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(55, 'data_rows', 'display_name', 58, 'en', 'Created At', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(56, 'data_rows', 'display_name', 59, 'en', 'Updated At', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(57, 'data_types', 'display_name_singular', 9, 'en', 'Blog', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(58, 'data_types', 'display_name_plural', 9, 'en', 'Blogs', '2020-01-18 10:15:32', '2020-01-18 10:15:32'),
(61, 'data_rows', 'display_name', 48, 'en', 'Id', '2020-01-18 10:27:21', '2020-01-18 10:27:21'),
(62, 'data_rows', 'display_name', 49, 'en', 'Slider Img', '2020-01-18 10:27:21', '2020-01-18 10:27:21'),
(63, 'data_rows', 'display_name', 52, 'en', 'Created At', '2020-01-18 10:27:22', '2020-01-18 10:27:22'),
(64, 'data_rows', 'display_name', 53, 'en', 'Updated At', '2020-01-18 10:27:22', '2020-01-18 10:27:22'),
(65, 'data_types', 'display_name_singular', 8, 'en', 'Slider', '2020-01-18 10:27:22', '2020-01-18 10:27:22'),
(66, 'data_types', 'display_name_plural', 8, 'en', 'Sliders', '2020-01-18 10:27:22', '2020-01-18 10:27:22'),
(67, 'blog', 'blog_title', 3, 'en', 'english conetn', '2020-01-18 10:32:55', '2020-01-18 10:32:55'),
(68, 'blog', 'blog_content', 3, 'en', '<p>english conetnenglish conetnenglish conetn</p>', '2020-01-18 10:32:55', '2020-01-18 10:32:55'),
(69, 'blog', 'blog_title', 4, 'en', 'ahmed ', '2020-01-18 12:11:04', '2020-01-18 12:11:04'),
(70, 'blog', 'blog_content', 4, 'en', '<p>ahmed&nbsp;</p>', '2020-01-18 12:11:04', '2020-01-18 12:11:04'),
(73, 'menu_section', 'section_title', 5, 'en', 'algera', '2020-01-18 13:06:47', '2020-01-18 13:06:47'),
(74, 'menu_section', 'section_description', 5, 'en', 'algera', '2020-01-18 13:06:47', '2020-01-18 13:06:47'),
(75, 'slider', 'slider_content', 3, 'en', '<h1>dr tarek</h1>', '2020-01-18 13:23:26', '2020-01-21 18:56:31'),
(78, 'menu', 'menu_title', 4, 'en', 'Blue Cheese Crackers with Grapes', '2020-01-18 14:01:04', '2020-01-18 14:01:04'),
(79, 'menu', 'menu_description', 4, 'en', '<p>Blue Cheese Crackers with GrapesBlue Cheese Crackers with GrapesBlue Cheese Crackers with Grapes</p>', '2020-01-18 14:01:04', '2020-01-18 14:01:04'),
(80, 'menu_section', 'section_title', 6, 'en', 'eraq', '2020-01-18 15:36:03', '2020-01-18 15:36:03'),
(81, 'menu_section', 'section_description', 6, 'en', 'eraq', '2020-01-18 15:36:03', '2020-01-18 15:36:03'),
(82, 'menu', 'menu_title', 5, 'en', 'green Cheese ', '2020-01-18 16:21:45', '2020-01-18 16:21:45'),
(83, 'menu', 'menu_description', 5, 'en', '<p>green Cheese green Cheese green Cheese green Cheese&nbsp;</p>', '2020-01-18 16:21:45', '2020-01-18 16:21:45'),
(88, 'data_rows', 'display_name', 123, 'en', 'Id', '2020-01-19 08:24:14', '2020-01-19 08:24:14'),
(89, 'data_rows', 'display_name', 124, 'en', 'Page Name', '2020-01-19 08:24:14', '2020-01-19 08:24:14'),
(90, 'data_rows', 'display_name', 125, 'en', 'Created At', '2020-01-19 08:24:14', '2020-01-19 08:24:14'),
(91, 'data_rows', 'display_name', 126, 'en', 'Updated At', '2020-01-19 08:24:14', '2020-01-19 08:24:14'),
(92, 'data_types', 'display_name_singular', 16, 'en', 'Page', '2020-01-19 08:24:14', '2020-01-19 08:24:14'),
(93, 'data_types', 'display_name_plural', 16, 'en', 'Pages', '2020-01-19 08:24:14', '2020-01-19 08:24:14'),
(94, 'data_rows', 'display_name', 105, 'en', 'Id', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(95, 'data_rows', 'display_name', 106, 'en', 'Description', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(96, 'data_rows', 'display_name', 107, 'en', 'Keywords', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(97, 'data_rows', 'display_name', 108, 'en', 'Canonical', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(98, 'data_rows', 'display_name', 109, 'en', 'Oglocale', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(99, 'data_rows', 'display_name', 110, 'en', 'Ogtype', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(100, 'data_rows', 'display_name', 111, 'en', 'Ogtitle', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(101, 'data_rows', 'display_name', 112, 'en', 'Ogdescription', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(102, 'data_rows', 'display_name', 113, 'en', 'Ogurl', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(103, 'data_rows', 'display_name', 114, 'en', 'Ogsite Name', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(104, 'data_rows', 'display_name', 115, 'en', 'Ogimage', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(105, 'data_rows', 'display_name', 116, 'en', 'Twittercard', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(106, 'data_rows', 'display_name', 117, 'en', 'Twitterdescription', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(107, 'data_rows', 'display_name', 118, 'en', 'Twittertitle', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(108, 'data_rows', 'display_name', 119, 'en', 'Twitterimage', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(109, 'data_rows', 'display_name', 120, 'en', 'Page Id', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(110, 'data_rows', 'display_name', 121, 'en', 'Created At', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(111, 'data_rows', 'display_name', 122, 'en', 'Updated At', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(112, 'data_types', 'display_name_singular', 15, 'en', 'Seo', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(113, 'data_types', 'display_name_plural', 15, 'en', 'Seos', '2020-01-19 08:56:05', '2020-01-19 08:56:05'),
(114, 'menu_items', 'title', 23, 'en', 'Seos', '2020-01-19 08:57:54', '2020-01-19 08:57:54'),
(115, 'data_rows', 'display_name', 104, 'en', 'slider content', '2020-01-19 10:39:12', '2020-01-19 10:39:12'),
(116, 'sections', 'section_name', 16, 'en', 'party ', '2020-01-20 18:01:20', '2020-01-20 18:01:20'),
(117, 'sections', 'section_description', 16, 'en', '<p>party&nbsp;&nbsp;party party party party party party party party party party&nbsp;</p>', '2020-01-20 18:01:20', '2020-01-20 18:01:20'),
(118, 'sections', 'section_name', 17, 'en', 'Subsection section', '2020-01-20 18:02:16', '2020-01-20 18:02:16'),
(119, 'sections', 'section_description', 17, 'en', '<p>Subsection section</p>', '2020-01-20 18:02:16', '2020-01-20 18:02:16'),
(120, 'sections', 'section_name', 18, 'en', 'Section rations services size', '2020-01-20 18:03:06', '2020-01-20 18:03:06'),
(121, 'sections', 'section_description', 18, 'en', '<p>قسم خدمات الاعاشة بالحجم قسم خدمات الاعاشة بالحجم قسم خدمات الاعاشة بالحجمقسم خدمات الاعاشة بالحجمقسم خدمات الاعاشة بالحجم</p>', '2020-01-20 18:03:06', '2020-01-20 18:03:06'),
(122, 'sections', 'section_name', 19, 'en', 'sacred sites', '2020-01-20 18:05:45', '2020-01-20 18:05:45'),
(123, 'sections', 'section_name', 20, 'en', 'Charitable section', '2020-01-20 18:06:19', '2020-01-20 18:06:19'),
(126, 'sub_section', 'section_name', 15, 'en', 'Buffets', '2020-01-20 18:32:09', '2020-01-20 18:32:09'),
(127, 'sub_section', 'section_name', 16, 'en', 'Barbecue', '2020-01-20 18:32:27', '2020-01-20 18:32:27'),
(128, 'sub_section', 'section_name', 17, 'en', 'Arabic cooking', '2020-01-20 18:32:53', '2020-01-20 18:32:53'),
(129, 'sub_section', 'section_name', 18, 'en', 'Hot meals', '2020-01-20 18:33:23', '2020-01-20 18:33:23'),
(130, 'sub_section', 'section_name', 19, 'en', 'Dry meals', '2020-01-20 18:33:50', '2020-01-20 18:33:50'),
(131, 'sub_section', 'section_name', 20, 'en', 'Missions', '2020-01-20 18:34:19', '2020-01-20 18:34:19'),
(132, 'sub_section', 'section_name', 21, 'en', 'Consulates', '2020-01-20 18:36:03', '2020-01-20 18:36:03'),
(133, 'sub_section', 'section_name', 22, 'en', 'Tourism companies', '2020-01-20 19:12:23', '2020-01-20 19:12:23'),
(134, 'menu', 'menu_title', 6, 'en', 'party menu', '2020-01-20 21:00:02', '2020-01-20 21:00:02'),
(135, 'menu', 'menu_description', 6, 'en', '<p>party menuparty menuparty menuparty menuparty menu</p>', '2020-01-20 21:00:02', '2020-01-20 21:00:02'),
(150, 'data_rows', 'display_name', 128, 'en', 'menu', '2020-01-21 04:44:47', '2020-01-21 04:44:47'),
(155, 'testimonials', 'testimonial_name', 1, 'en', 'mohamed amr', '2020-01-21 06:40:25', '2020-01-21 06:40:25'),
(156, 'testimonials', 'testimonial_job', 1, 'en', 'programmer', '2020-01-21 06:40:25', '2020-01-21 06:40:25'),
(157, 'testimonials', 'testimonial_details', 1, 'en', '<p>&nbsp;&nbsp;</p>', '2020-01-21 06:40:25', '2020-02-09 07:07:46'),
(158, 'menu_section', 'section_title', 7, 'en', 'magreb', '2020-01-21 09:22:00', '2020-01-21 09:22:00'),
(159, 'menu_section', 'section_description', 7, 'en', 'magreb', '2020-01-21 09:22:00', '2020-01-21 09:22:00'),
(160, 'menu_section', 'section_title', 8, 'en', 'glof', '2020-01-21 09:22:22', '2020-01-21 09:22:22'),
(161, 'menu_section', 'section_description', 8, 'en', 'glof', '2020-01-21 09:22:22', '2020-01-21 09:22:22'),
(162, 'menu_section', 'section_title', 9, 'en', 'turky', '2020-01-21 09:22:43', '2020-01-21 09:22:43'),
(163, 'menu_section', 'section_description', 9, 'en', 'turky', '2020-01-21 09:22:43', '2020-01-21 09:22:43'),
(164, 'menu_section', 'section_title', 10, 'en', 'indonis', '2020-01-21 09:23:10', '2020-01-21 09:23:10'),
(165, 'menu_section', 'section_description', 10, 'en', 'indonis', '2020-01-21 09:23:10', '2020-01-21 09:23:10'),
(166, 'data_types', 'display_name_singular', 18, 'en', 'Experts Team', '2020-01-26 09:19:51', '2020-01-26 09:19:51'),
(167, 'data_types', 'display_name_plural', 18, 'en', 'Experts Teams', '2020-01-26 09:19:51', '2020-01-26 09:19:51'),
(168, 'data_types', 'display_name_singular', 21, 'en', 'Project', '2020-01-26 09:21:02', '2020-01-26 09:21:02'),
(169, 'data_types', 'display_name_plural', 21, 'en', 'Projects', '2020-01-26 09:21:02', '2020-01-26 09:21:02'),
(170, 'data_types', 'display_name_singular', 20, 'en', 'Projects Category', '2020-01-26 09:21:25', '2020-01-26 09:21:25'),
(171, 'data_types', 'display_name_plural', 20, 'en', 'Projects Categories', '2020-01-26 09:21:25', '2020-01-26 09:21:25'),
(172, 'data_types', 'display_name_singular', 22, 'en', 'Service', '2020-01-26 09:24:31', '2020-01-26 09:24:31'),
(173, 'data_types', 'display_name_plural', 22, 'en', 'Services', '2020-01-26 09:24:31', '2020-01-26 09:24:31'),
(174, 'data_rows', 'display_name', 161, 'en', 'id', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(175, 'data_rows', 'display_name', 162, 'en', 'name', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(176, 'data_rows', 'display_name', 163, 'en', 'description', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(177, 'data_rows', 'display_name', 164, 'en', 'cost', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(178, 'data_rows', 'display_name', 165, 'en', 'img', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(179, 'data_rows', 'display_name', 166, 'en', 'created_at', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(180, 'data_rows', 'display_name', 167, 'en', 'updated_at', '2020-01-26 09:28:02', '2020-01-26 09:28:02'),
(181, 'menu_items', 'title', 33, 'en', 'Services', '2020-01-26 09:28:30', '2020-01-26 09:28:30'),
(182, 'services', 'service_name', 1, 'en', 'Nano ceramic and thermal shading', '2020-01-28 07:17:53', '2020-02-11 06:21:14'),
(183, 'services', 'service_description', 1, 'en', '<p>&nbsp; &nbsp;Nano ceramic is the only one you can give your car paint 10 times stronger than normal</p>\n<p>🔴 Because it is the most powerful agent for nano ceramic and protective films in the world</p>\n<p>&nbsp; 🔴 Say goodbye to scratches and goodbye to fading color</p>\n<p>With us, but your car is always zero</p>', '2020-01-28 07:17:53', '2020-02-24 22:30:43'),
(184, 'services', 'service_name', 2, 'en', 'Mechanics', '2020-01-28 07:20:37', '2020-02-11 06:20:17'),
(185, 'services', 'service_description', 2, 'en', '<p>Drive overhaul</p>\n<p>Identify all malfunctions, due to the center\'s availability of modern testing and diagnostic equipment and malfunctionsAnd related to the engine and manual and automatic transmission, luggage, steering and brakes, whether hydraulic or ABS, and everything related to car mechanics in addition to adjusting the angles and balance of wheels</p>', '2020-01-28 07:20:37', '2020-02-24 17:34:01'),
(186, 'services', 'service_name', 3, 'en', ' paint', '2020-01-28 07:21:38', '2020-02-11 06:19:27'),
(187, 'services', 'service_description', 3, 'en', '<p><span style=\"font-family: Verdana, sans-serif;\">Doku</span></p>\n<p><span style=\"font-family: Verdana, sans-serif;\">All necessary works to paint the car ,From preparing the car to painting and spraying it with the best quality paint materials&nbsp; ,The car spray booth, which can accommodate all kinds of angel cars of all kinds and sizes. It contains the highest filter unit for high paint efficiency.</span></p>', '2020-01-28 07:21:38', '2020-02-24 18:20:48'),
(188, 'experts_team', 'name', 1, 'en', 'mohamed amr', '2020-01-28 08:00:04', '2020-01-28 08:00:04'),
(189, 'experts_team', 'description', 1, 'en', '<p>mohamedf amr</p>', '2020-01-28 08:00:04', '2020-01-28 08:00:04'),
(190, 'experts_team', 'name', 2, 'en', 'eslam amr', '2020-01-28 08:00:40', '2020-01-28 08:00:40'),
(191, 'experts_team', 'description', 2, 'en', '<p>eslam amr</p>', '2020-01-28 08:00:40', '2020-01-28 08:00:40'),
(192, 'experts_team', 'name', 3, 'en', 'ahmed ahmed', '2020-01-28 08:01:12', '2020-01-28 08:01:12'),
(193, 'experts_team', 'description', 3, 'en', '<p>ahmed ahmed</p>', '2020-01-28 08:01:12', '2020-01-28 08:01:12'),
(194, 'data_types', 'display_name_singular', 23, 'en', 'Tv', '2020-01-28 10:39:19', '2020-01-28 10:39:19'),
(195, 'data_types', 'display_name_plural', 23, 'en', 'Tvs', '2020-01-28 10:39:19', '2020-01-28 10:39:19'),
(196, 'data_rows', 'display_name', 168, 'en', 'favorite', '2020-01-28 12:38:09', '2020-01-28 12:38:09'),
(197, 'data_rows', 'display_name', 175, 'en', 'offer', '2020-01-28 12:39:11', '2020-01-28 12:39:11'),
(199, 'testimonials', 'testimonial_name', 2, 'en', 'kareem omar', '2020-02-03 09:33:36', '2020-02-03 09:33:36'),
(200, 'testimonials', 'testimonial_job', 2, 'en', 'progermmer', '2020-02-03 09:33:36', '2020-02-03 09:33:36'),
(201, 'testimonials', 'testimonial_details', 2, 'en', '<p>&nbsp;&nbsp;</p>', '2020-02-03 09:33:36', '2020-02-09 07:07:36'),
(202, 'testimonials', 'testimonial_name', 3, 'en', 'ِALaa mohamed', '2020-02-03 09:50:56', '2020-02-03 09:50:56'),
(203, 'testimonials', 'testimonial_job', 3, 'en', 'Nurse', '2020-02-03 09:50:56', '2020-02-03 09:50:56'),
(204, 'testimonials', 'testimonial_details', 3, 'en', '<p>&nbsp;&nbsp;</p>', '2020-02-03 09:50:56', '2020-02-09 07:07:28'),
(205, 'projects_category', 'name', 1, 'en', 'Tires', '2020-02-03 09:59:14', '2020-02-03 10:02:09'),
(206, 'projects_category', 'name', 2, 'en', 'oils', '2020-02-03 10:00:36', '2020-02-03 10:00:36'),
(207, 'projects_category', 'name', 3, 'en', 'Engines', '2020-02-03 10:02:34', '2020-02-03 10:02:34'),
(208, 'projects_category', 'name', 4, 'en', 'brake', '2020-02-03 10:03:11', '2020-02-03 10:03:11'),
(209, 'data_rows', 'display_name', 150, 'en', 'id', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(210, 'data_rows', 'display_name', 151, 'en', 'title', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(211, 'data_rows', 'display_name', 152, 'en', 'img', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(212, 'data_rows', 'display_name', 153, 'en', 'description', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(213, 'data_rows', 'display_name', 154, 'en', 'expert', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(214, 'data_rows', 'display_name', 155, 'en', 'created_at', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(215, 'data_rows', 'display_name', 156, 'en', 'updated_at', '2020-02-03 10:10:02', '2020-02-03 10:10:02'),
(216, 'data_rows', 'display_name', 176, 'en', 'category', '2020-02-03 10:13:39', '2020-02-03 10:13:39'),
(217, 'projects', 'title', 1, 'en', 'Tire repair', '2020-02-03 10:18:13', '2020-02-03 10:18:13'),
(218, 'projects', 'description', 1, 'en', '<p>Tire repairTire repairTire repairTire repair</p>', '2020-02-03 10:18:13', '2020-02-03 10:18:13'),
(219, 'projects', 'title', 2, 'en', 'Tire repair', '2020-02-03 10:19:02', '2020-02-03 10:19:02'),
(220, 'projects', 'description', 2, 'en', '<p>Tire repairTire repairTire repair</p>', '2020-02-03 10:19:02', '2020-02-03 10:19:02'),
(221, 'projects', 'title', 3, 'en', 'Balancing tires', '2020-02-03 10:19:54', '2020-02-03 10:19:54'),
(222, 'projects', 'description', 3, 'en', '<p>Balancing tiresBalancing tiresBalancing tires</p>', '2020-02-03 10:19:54', '2020-02-03 10:19:54'),
(223, 'projects', 'title', 4, 'en', 'Check the oils', '2020-02-03 10:20:59', '2020-02-03 10:20:59'),
(224, 'projects', 'description', 4, 'en', '<p>Check the oilsCheck the oilsCheck the oils</p>', '2020-02-03 10:20:59', '2020-02-03 10:20:59'),
(225, 'projects', 'title', 5, 'en', 'Oil change', '2020-02-03 10:22:30', '2020-02-03 10:22:30'),
(226, 'projects', 'description', 5, 'en', '<p>Oil changeOil changeOil change</p>', '2020-02-03 10:22:30', '2020-02-03 10:22:30'),
(227, 'projects', 'title', 6, 'en', 'Change the engine', '2020-02-03 10:23:49', '2020-02-03 10:23:49'),
(228, 'projects', 'description', 6, 'en', '<p>Change the engine Change the engine Change the engine</p>', '2020-02-03 10:23:49', '2020-02-03 10:23:49'),
(229, 'projects', 'title', 7, 'en', 'Check the brakes', '2020-02-03 10:24:51', '2020-02-03 10:24:51'),
(230, 'projects', 'description', 7, 'en', '<p>Check the brakes Check the brakes Check the brakes</p>', '2020-02-03 10:24:51', '2020-02-03 10:24:51'),
(231, 'projects', 'title', 8, 'en', 'Fix the brakes', '2020-02-03 10:25:52', '2020-02-03 10:25:52'),
(232, 'projects', 'description', 8, 'en', '<p>Fix the brakes Fix the brakes Fix the brakes</p>', '2020-02-03 10:25:52', '2020-02-03 10:25:52'),
(233, 'slider', 'slider_content', 5, 'en', '<p>kareem</p>', '2020-02-03 12:32:50', '2020-02-03 12:32:50'),
(234, 'data_types', 'display_name_singular', 24, 'en', 'Service Achieve', '2020-02-04 12:36:51', '2020-02-04 12:36:51'),
(235, 'data_types', 'display_name_plural', 24, 'en', 'Service Achieves', '2020-02-04 12:36:51', '2020-02-04 12:36:51'),
(236, 'service_achieve', 'title', 1, 'en', 'Vehicle services', '2020-02-04 12:40:29', '2020-02-04 12:40:29'),
(237, 'service_achieve', 'description', 1, 'en', '<p>&nbsp; &nbsp;</p>', '2020-02-04 12:40:30', '2020-02-12 07:02:30'),
(238, 'service_achieve', 'title', 2, 'en', 'Fans', '2020-02-04 12:42:30', '2020-02-17 02:12:23'),
(239, 'service_achieve', 'description', 2, 'en', '<p>&nbsp; &nbsp;</p>', '2020-02-04 12:42:30', '2020-02-12 07:02:11'),
(240, 'service_achieve', 'title', 3, 'en', 'Our customers', '2020-02-04 12:44:58', '2020-02-17 02:12:19'),
(241, 'service_achieve', 'description', 3, 'en', '<p>&nbsp; &nbsp;</p>', '2020-02-04 12:44:58', '2020-02-12 07:02:02'),
(242, 'service_achieve', 'title', 4, 'en', 'Credits', '2020-02-04 12:46:56', '2020-02-04 12:46:56'),
(243, 'service_achieve', 'description', 4, 'en', '<p>&nbsp; &nbsp;</p>', '2020-02-04 12:46:56', '2020-02-12 07:01:54'),
(244, 'data_rows', 'display_name', 184, 'en', 'Id', '2020-02-04 13:20:33', '2020-02-04 13:20:33'),
(245, 'data_rows', 'display_name', 185, 'en', 'Price', '2020-02-04 13:20:33', '2020-02-04 13:20:33'),
(246, 'data_rows', 'display_name', 186, 'en', 'Service Id', '2020-02-04 13:20:33', '2020-02-04 13:20:33'),
(247, 'data_rows', 'display_name', 187, 'en', 'Created At', '2020-02-04 13:20:33', '2020-02-04 13:20:33'),
(248, 'data_rows', 'display_name', 188, 'en', 'Updated At', '2020-02-04 13:20:33', '2020-02-04 13:20:33'),
(251, 'services', 'service_name', 4, 'en', 'Electricity', '2020-02-04 13:25:12', '2020-02-11 06:21:44'),
(252, 'services', 'service_description', 4, 'en', '<p>Maintenance and repair of all electrical systems in the car</p>\n<p>Charging circuit</p>\n<p>Motion Start Circle (The Marsh)</p>\n<p>Ignition circuit</p>\n<p>Malfunctions of sensors</p>\n<p>Fuel circuit</p>\n<p>And everything related to electric motor</p>\n<p>The lighting changes to the lantern polishing lanterns, which reveal all electric braids in the ca</p>', '2020-02-04 13:25:12', '2020-02-24 22:15:22'),
(265, 'data_rows', 'display_name', 134, 'en', 'Id', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(266, 'data_rows', 'display_name', 135, 'en', 'Img', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(267, 'data_rows', 'display_name', 136, 'en', 'Description', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(268, 'data_rows', 'display_name', 137, 'en', 'Created At', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(269, 'data_rows', 'display_name', 138, 'en', 'Updated At', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(270, 'data_types', 'display_name_singular', 19, 'en', 'Gallery', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(271, 'data_types', 'display_name_plural', 19, 'en', 'Galleries', '2020-02-05 06:59:02', '2020-02-05 06:59:02'),
(274, 'data_types', 'display_name_singular', 28, 'en', 'Car Type', '2020-02-05 09:07:33', '2020-02-05 09:07:33'),
(275, 'data_types', 'display_name_plural', 28, 'en', 'Car Types', '2020-02-05 09:07:33', '2020-02-05 09:07:33'),
(276, 'gallery', 'description', 13, 'en', 'Dish maintenance', '2020-02-05 09:08:15', '2020-02-15 17:29:09'),
(277, 'car_type', 'title', 1, 'en', 'Toyota', '2020-02-05 09:10:20', '2020-02-05 09:10:20'),
(278, 'car_type', 'title', 2, 'en', 'Audi', '2020-02-05 09:10:50', '2020-02-05 09:10:50'),
(279, 'car_type', 'title', 3, 'en', 'nissan', '2020-02-05 09:12:07', '2020-02-05 09:12:07'),
(280, 'car_type', 'title', 4, 'en', 'purchase', '2020-02-05 09:14:09', '2020-02-05 09:14:09'),
(281, 'gallery', 'description', 14, 'en', 'Change a petrol filter', '2020-02-05 11:58:16', '2020-02-15 17:29:44'),
(282, 'gallery', 'description', 15, 'en', 'OIL CHANGING', '2020-02-05 11:58:35', '2020-02-05 11:58:35'),
(283, 'gallery', 'description', 16, 'en', 'Paint', '2020-02-05 11:58:55', '2020-02-15 17:28:24'),
(284, 'gallery', 'description', 17, 'en', 'Electricity', '2020-02-05 11:59:16', '2020-02-15 17:27:49'),
(285, 'gallery', 'description', 18, 'en', 'Tires and angles settings', '2020-02-05 11:59:45', '2020-02-15 17:27:17'),
(286, 'gallery', 'description', 19, 'en', 'Fixed repair', '2020-02-05 12:00:08', '2020-02-15 17:25:46'),
(287, 'gallery', 'description', 20, 'en', 'Bugat change', '2020-02-05 12:00:26', '2020-02-15 17:26:16'),
(288, 'gallery', 'description', 21, 'en', 'Plumbing', '2020-02-05 12:00:49', '2020-02-15 17:25:18'),
(289, 'data_rows', 'display_name', 169, 'en', 'id', '2020-02-05 13:22:39', '2020-02-05 13:22:39'),
(290, 'data_rows', 'display_name', 170, 'en', 'title', '2020-02-05 13:22:39', '2020-02-05 13:22:39'),
(291, 'data_rows', 'display_name', 171, 'en', 'url', '2020-02-05 13:22:39', '2020-02-05 13:22:39'),
(292, 'data_rows', 'display_name', 172, 'en', 'description', '2020-02-05 13:22:39', '2020-02-05 13:22:39'),
(293, 'data_rows', 'display_name', 173, 'en', 'created_at', '2020-02-05 13:22:39', '2020-02-05 13:22:39'),
(294, 'data_rows', 'display_name', 174, 'en', 'updated_at', '2020-02-05 13:22:39', '2020-02-05 13:22:39'),
(295, 'data_rows', 'display_name', 1, 'en', 'ID', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(296, 'data_rows', 'display_name', 21, 'en', 'Role', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(297, 'data_rows', 'display_name', 3, 'en', 'Email', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(298, 'data_rows', 'display_name', 8, 'en', 'Avatar', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(299, 'data_rows', 'display_name', 4, 'en', 'Password', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(300, 'data_rows', 'display_name', 5, 'en', 'Remember Token', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(301, 'data_rows', 'display_name', 11, 'en', 'Settings', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(302, 'data_rows', 'display_name', 6, 'en', 'Created At', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(303, 'data_rows', 'display_name', 7, 'en', 'Updated At', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(304, 'data_rows', 'display_name', 9, 'en', 'Role', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(305, 'data_rows', 'display_name', 10, 'en', 'Roles', '2020-02-08 08:22:38', '2020-02-08 08:22:38'),
(306, 'data_types', 'display_name_singular', 1, 'en', 'User', '2020-02-08 08:22:39', '2020-02-08 08:22:39'),
(307, 'data_types', 'display_name_plural', 1, 'en', 'Users', '2020-02-08 08:22:39', '2020-02-08 08:22:39'),
(308, 'data_rows', 'display_name', 218, 'en', 'f_name', '2020-02-08 08:48:48', '2020-02-08 08:48:48'),
(309, 'data_rows', 'display_name', 219, 'en', 'admin', '2020-02-08 08:48:48', '2020-02-08 08:48:48'),
(310, 'data_rows', 'display_name', 220, 'en', 'email_v', '2020-02-08 08:48:48', '2020-02-08 08:48:48'),
(311, 'data_rows', 'display_name', 221, 'en', 'l_name', '2020-02-08 08:48:48', '2020-02-08 08:48:48'),
(312, 'data_rows', 'display_name', 222, 'en', 're_pass', '2020-02-08 08:48:48', '2020-02-08 08:48:48'),
(313, 'data_rows', 'display_name', 223, 'en', 'Id', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(314, 'data_rows', 'display_name', 224, 'en', 'Email', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(315, 'data_rows', 'display_name', 225, 'en', 'Address', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(316, 'data_rows', 'display_name', 226, 'en', 'Phone', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(317, 'data_rows', 'display_name', 227, 'en', 'Url', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(318, 'data_rows', 'display_name', 228, 'en', 'Created At', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(319, 'data_rows', 'display_name', 229, 'en', 'Updated At', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(320, 'data_types', 'display_name_singular', 32, 'en', 'Our Branch', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(321, 'data_types', 'display_name_plural', 32, 'en', 'Our Branches', '2020-02-08 15:30:12', '2020-02-08 15:30:12'),
(322, 'data_rows', 'display_name', 230, 'en', 'name', '2020-02-08 15:30:58', '2020-02-08 15:30:58'),
(329, 'our_branches', 'email', 2, 'en', 'bluemediae@gmail.com', '2020-02-08 15:32:21', '2020-02-08 15:32:21'),
(330, 'our_branches', 'address', 2, 'en', 'El Shorouk City, Al Shorouk, Cairo ', '2020-02-08 15:32:21', '2020-02-15 17:39:29'),
(331, 'our_branches', 'phone', 2, 'en', '+5315645552', '2020-02-08 15:32:21', '2020-02-08 15:32:21'),
(332, 'our_branches', 'email', 1, 'en', 'admin@example.com', '2020-02-08 15:32:31', '2020-02-08 15:32:31'),
(333, 'our_branches', 'address', 1, 'en', 'الإمام أبو حنيفة النعمان، Al Obour, Cairo ', '2020-02-08 15:32:31', '2020-02-15 17:40:43'),
(334, 'our_branches', 'phone', 1, 'en', '+5315645552', '2020-02-08 15:32:31', '2020-02-08 15:32:31'),
(336, 'data_rows', 'display_name', 201, 'en', 'Id', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(337, 'data_rows', 'display_name', 202, 'en', 'Name', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(338, 'data_rows', 'display_name', 203, 'en', 'Email', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(339, 'data_rows', 'display_name', 204, 'en', 'Phone', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(340, 'data_rows', 'display_name', 205, 'en', 'Car Select', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(341, 'data_rows', 'display_name', 206, 'en', 'Massage', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(342, 'data_rows', 'display_name', 207, 'en', 'Created At', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(343, 'data_rows', 'display_name', 208, 'en', 'Updated At', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(344, 'data_rows', 'display_name', 209, 'en', 'Date', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(345, 'data_types', 'display_name_singular', 29, 'en', 'Order', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(346, 'data_types', 'display_name_plural', 29, 'en', 'Orders', '2020-02-09 07:54:51', '2020-02-09 07:54:51'),
(348, 'our_branches', 'name', 1, 'en', 'Al Obour', '2020-02-09 09:35:01', '2020-02-11 07:00:11'),
(349, 'our_branches', 'name', 2, 'en', 'El Shorouk ', '2020-02-09 09:35:20', '2020-02-11 06:59:03'),
(350, 'data_types', 'display_name_singular', 34, 'en', 'Book Now', '2020-02-10 08:20:30', '2020-02-10 08:20:30'),
(351, 'data_types', 'display_name_plural', 34, 'en', 'Book Nows', '2020-02-10 08:20:30', '2020-02-10 08:20:30'),
(352, 'services', 'service_name', 5, 'en', 'Tires and angles adjust', '2020-02-11 06:22:24', '2020-02-11 06:22:24'),
(353, 'services', 'service_name', 6, 'en', 'Fixed repair', '2020-02-11 06:23:09', '2020-02-11 06:23:09'),
(354, 'services', 'service_name', 7, 'en', 'Dish maintenance', '2020-02-11 06:24:04', '2020-02-11 06:24:04'),
(355, 'data_rows', 'display_name', 129, 'en', 'Id', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(356, 'data_rows', 'display_name', 130, 'en', 'Job Title', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(357, 'data_rows', 'display_name', 131, 'en', 'Job Description', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(358, 'data_rows', 'display_name', 132, 'en', 'Created At', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(359, 'data_rows', 'display_name', 133, 'en', 'Updated At', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(360, 'data_types', 'display_name_singular', 17, 'en', 'Career', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(361, 'data_types', 'display_name_plural', 17, 'en', 'Careers', '2020-02-11 08:40:00', '2020-02-11 08:40:00'),
(362, 'data_rows', 'display_name', 241, 'en', 'img', '2020-02-11 08:41:51', '2020-02-11 08:41:51'),
(363, 'career', 'job_title', 1, 'en', 'Mechanical', '2020-02-11 08:42:52', '2020-02-11 08:42:52'),
(364, 'career', 'job_title', 2, 'en', 'metalworker', '2020-02-11 08:44:20', '2020-02-11 08:44:20'),
(365, 'data_rows', 'display_name', 242, 'en', 'side_bar', '2020-02-11 09:03:44', '2020-02-11 09:03:44'),
(366, 'services', 'service_name', 8, 'en', 'Plumbing', '2020-02-12 06:41:47', '2020-02-19 22:12:41'),
(367, 'data_rows', 'display_name', 197, 'en', 'id', '2020-02-12 07:07:22', '2020-02-12 07:07:22'),
(368, 'data_rows', 'display_name', 198, 'en', 'title', '2020-02-12 07:07:22', '2020-02-12 07:07:22'),
(369, 'data_rows', 'display_name', 199, 'en', 'created_at', '2020-02-12 07:07:22', '2020-02-12 07:07:22'),
(370, 'data_rows', 'display_name', 200, 'en', 'updated_at', '2020-02-12 07:07:22', '2020-02-12 07:07:22'),
(371, 'our_branches', 'address', 7, 'en', 'Huckstep, El Nozha, Cairo Governorate', '2020-02-12 11:47:46', '2020-02-12 11:47:46'),
(372, 'our_branches', 'name', 7, 'en', 'Joseph Tito', '2020-02-12 11:47:46', '2020-02-12 11:47:46'),
(373, 'services', 'service_description', 8, 'en', '<p><span style=\"font-family: \'Open Sans\',sans-serif; color: #666666;\">Repair all shocks, whether in the car\'s chassis or on the chassis&nbsp;,&nbsp;The center has a straightening device for the chassis</span> <span style=\"font-family: \'Open Sans\',sans-serif; color: #666666;\">Equal values</span></p>\n<p><span style=\"font-family: \'Open Sans\',sans-serif; color: #666666;\">Chassis retaining device, through which the car chassis is restored and modified, especially in major accidents, as the center receives all types of accidents&nbsp;&nbsp;</span></p>', '2020-02-12 11:59:26', '2020-02-24 17:43:06'),
(374, 'data_rows', 'display_name', 258, 'en', 'name', '2020-02-12 17:35:53', '2020-02-12 17:35:53'),
(375, 'data_rows', 'display_name', 259, 'en', '_token', '2020-02-12 17:35:53', '2020-02-12 17:35:53'),
(376, 'data_rows', 'display_name', 260, 'en', 'l', '2020-02-12 17:36:15', '2020-02-12 17:36:15'),
(377, 'data_rows', 'display_name', 231, 'en', 'car_model', '2020-02-13 12:52:13', '2020-02-13 12:52:13'),
(378, 'data_rows', 'display_name', 261, 'en', 'pending', '2020-02-13 12:53:04', '2020-02-13 12:53:04'),
(379, 'data_rows', 'display_name', 262, 'en', 'service_name', '2020-02-13 14:58:30', '2020-02-13 14:58:30'),
(380, 'data_rows', 'display_name', 263, 'en', 'user_id', '2020-02-13 17:26:38', '2020-02-13 17:26:38'),
(381, 'order', 'service_name', 25, 'en', 'بويه', '2020-02-13 17:46:18', '2020-02-13 17:46:18'),
(382, 'data_rows', 'display_name', 177, 'en', 'id', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(383, 'data_rows', 'display_name', 178, 'en', 'title', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(384, 'data_rows', 'display_name', 179, 'en', 'icon', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(385, 'data_rows', 'display_name', 180, 'en', 'desc', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(386, 'data_rows', 'display_name', 181, 'en', 'count', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(387, 'data_rows', 'display_name', 182, 'en', 'created_at', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(388, 'data_rows', 'display_name', 183, 'en', 'updated_at', '2020-02-19 22:22:13', '2020-02-19 22:22:13'),
(389, 'services', 'service_description', 7, 'en', '<p>Quick maintenance:</p>\n<p>Change engine oil and filter</p>\n<p>&nbsp;Car owners should not neglect to check their cars periodically, and inspect them before driving, to avoid major breakdowns in the car, to maintain safety and security while driving, and to extend the life of the car, as the driver can do on his own. ) The further the distances are traveled, the more oil the original wife loses and is loaded with particles and impurities and deteriorates. And all this despite the presence of the filter, which is supposed to filter impurities. So the engine is not sufficiently protected from oxidation and dirt. Then it is advised to change the oil to replenish it and avoid the risk of damage.</p>\n<p>Air filter change</p>\n<p>Car filters are one of the elements that improve the performance of the car engine, as it makes the car do its job properly, in addition to protecting the car from malfunctions due to doing various functions, which lie in refining the elements entering the engine such as air, fuel, etc., perhaps from the important existing filters With the engine working system, it is the air filter, as it helps to purify the air inside the engine.</p>\n<p>Change the adjustment filter</p>\n<p>Most new cars are equipped with an air conditioner filter to purify the air entering the cabin through the air intakes. And if dirt accumulates in this filter, not only does the effectiveness of cooling and heating decrease, but the air conditioner starts to produce odors that may get stuck in the components of the cabin just as the smell of cigarettes hangs in home furniture. Therefore, it is better to clean or replace this refinery at a rate of one time per year, especially if the car is located in areas that have a high density of dust, as in desert areas.</p>\n<p>Change a petrol filter</p>\n<p>Gasoline filter is one of the most important filters of the car, and its job is to filter the gasoline that is inside the fuel tank in the car from impurities and dirt before it reaches the sprays, and you must keep changing the filter with the periodic maintenance of the car, because neglecting to change it causes a number of problems for the car</p>\n<p>Fasten the lump</p>\n<p>Hear voices in the car while driving, is one of the most prominent signs that there is a defect in the suspension system of the vehicle, &ldquo;Al-Afshah</p>\n<p>&nbsp;</p>\n<p>Bugat change</p>\n<p>The spark plugs are one of the most prominent parts that help in running the car\'s engine very efficiently, and they deliver a high voltage current of approximately 12000 volts to the combustion chamber in the engine so that the air and fuel mixture is ignited, which helps the car to run.</p>', '2020-02-24 17:52:48', '2020-02-24 17:52:48'),
(390, 'services', 'service_description', 6, 'en', '<p>The latest device to change the automatic transmission oil (fuse), which is one of the devices that are not available in many auto maintenance centers, where the device is pumping the old oil and cleaning the fuse before pumping the new oil, which ensures the safety of the transmission and changing the oil in a correct and safe way</p>', '2020-02-24 18:15:28', '2020-02-24 18:15:28'),
(391, 'vacancies', 'title', 6, 'en', 'مساعد كهرباءى سيارات', '2020-02-26 09:31:07', '2020-02-26 09:31:07'),
(392, 'data_rows', 'display_name', 243, 'en', 'Id', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(393, 'data_rows', 'display_name', 244, 'en', 'F Name', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(394, 'data_rows', 'display_name', 245, 'en', 'L Name', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(395, 'data_rows', 'display_name', 246, 'en', 'Address', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(396, 'data_rows', 'display_name', 247, 'en', 'Email', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(397, 'data_rows', 'display_name', 248, 'en', 'Phone', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(398, 'data_rows', 'display_name', 249, 'en', 'Qualification', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(399, 'data_rows', 'display_name', 250, 'en', 'Cv', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(400, 'data_rows', 'display_name', 251, 'en', 'Created At', '2020-02-26 09:44:35', '2020-02-26 09:44:35'),
(401, 'data_rows', 'display_name', 252, 'en', 'Updated At', '2020-02-26 09:44:36', '2020-02-26 09:44:36'),
(402, 'data_types', 'display_name_singular', 35, 'en', 'Job', '2020-02-26 09:44:36', '2020-02-26 09:44:36'),
(403, 'data_types', 'display_name_plural', 35, 'en', 'Jobs', '2020-02-26 09:44:36', '2020-02-26 09:44:36'),
(404, 'services', 'service_description', 5, 'en', '<p>اجهزه خدمه الاطارات جهاز فك وتركيب&nbsp; الاطارات وجهاز&nbsp; ترصيص الاطارات لظبط اتزان العجل</p>', '2020-02-27 15:49:23', '2020-02-27 15:49:23'),
(405, 'data_rows', 'display_name', 269, 'en', 'type jop', '2020-02-27 18:02:16', '2020-02-27 18:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `tv`
--

CREATE TABLE `tv` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tv`
--

INSERT INTO `tv` (`id`, `video_title`, `video_url`, `video_description`, `created_at`, `updated_at`, `favorite`) VALUES
(1, 'تعلب', 'https://www.youtube-nocookie.com/embed/ewCPvJgE5gM', NULL, '2020-02-05 13:05:00', '2020-02-26 00:25:49', 1),
(2, 'تعلب', 'https://www.youtube-nocookie.com/embed/x-mDCeUTc9A', NULL, '2020-02-05 13:05:00', '2020-02-26 00:28:04', 1),
(3, 'تعلب', 'https://www.youtube-nocookie.com/embed/XlZ_sEKgK9A', NULL, '2020-02-05 13:05:00', '2020-02-26 00:29:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `l_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `admin`, `email`, `avatar`, `email_verified_at`, `password`, `_token`, `settings`, `created_at`, `updated_at`, `l_name`) VALUES
(1, 1, 'kareem', 0, 'kareem@email.com', 'users/default.png', NULL, '$2y$10$SOdA01O38kJvP3TkL2ALFO/aRWB9O88.AyQt8FI//K3JGGfo8dsSi', NULL, '{\"locale\":\"en\"}', '2020-01-14 07:45:26', '2020-02-03 12:30:04', NULL),
(2, 3, 'saad', 0, 'saad@email.com', 'users/default.png', NULL, '$2y$10$AjQoGFDVnvj.qBYARdz0r.oqOeap2UwSA04SynQblJizf6FWCHJcy', NULL, '{\"locale\":\"en\"}', '2020-01-19 08:59:33', '2020-01-19 08:59:33', NULL),
(3, 2, 'kareem', 1, 'mohamed@email.com', NULL, NULL, '123456', NULL, NULL, '2020-02-08 09:16:29', '2020-02-08 09:16:29', NULL),
(5, 2, 'dsd', NULL, 'div.kareemomar@gmail.com', NULL, NULL, '123456', NULL, NULL, '2020-02-12 17:44:22', '2020-02-12 17:44:22', 'vedved'),
(6, 2, 'omar', NULL, 'omar@email.com', NULL, NULL, '123456', NULL, NULL, '2020-02-13 11:19:49', '2020-02-13 11:19:49', 'omar');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'مدير لمركز خدمة صيانة السيارات خبرة فى مجال صيانة السيارات.', '2020-02-26 09:30:06', '2020-02-26 09:30:06'),
(2, 'مهندس ورشة', '2020-02-26 09:30:16', '2020-02-26 09:30:16'),
(3, 'مهندس استقبال', '2020-02-26 09:30:25', '2020-02-26 09:30:25'),
(4, 'فنى ميكانيكا محرك وعفشة', '2020-02-26 09:30:33', '2020-02-26 09:30:33'),
(5, 'فنى كهرباء وتكييف سيارات', '2020-02-26 09:30:40', '2020-02-26 09:30:40'),
(6, 'مساعد كهربائي سيارات', '2020-02-26 09:30:00', '2020-02-26 09:31:07'),
(7, 'سمكرى سيارات', '2020-02-26 09:31:14', '2020-02-26 09:31:14'),
(8, 'مساعد سمكرى', '2020-02-26 09:31:21', '2020-02-26 09:31:21'),
(9, 'مساعد سمكرى', '2020-02-26 09:31:21', '2020-02-26 09:31:21'),
(10, 'فنى دهان سيارات', '2020-02-26 09:31:28', '2020-02-26 09:31:28'),
(11, 'مساعد دهان سيارات', '2020-02-26 09:31:36', '2020-02-26 09:31:36'),
(12, 'متخصص نانو سيراميك', '2020-02-26 09:31:42', '2020-02-26 09:31:42'),
(13, 'فنى اصلاح كاوتشوك', '2020-02-26 09:31:49', '2020-02-26 09:31:49'),
(14, 'سائق محترف لاستلام وتسليم السيارات', '2020-02-26 09:31:55', '2020-02-26 09:31:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_now`
--
ALTER TABLE `book_now`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_and_compounds`
--
ALTER TABLE `companies_and_compounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `experts_team`
--
ALTER TABLE `experts_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_branches`
--
ALTER TABLE `our_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_category`
--
ALTER TABLE `projects_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_achieve`
--
ALTER TABLE `service_achieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `tv`
--
ALTER TABLE `tv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
