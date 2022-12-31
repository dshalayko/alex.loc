-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 31 2022 г., 20:24
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `alex`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_auth_assignment`
--

CREATE TABLE `admin_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admin_auth_assignment`
--

INSERT INTO `admin_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('SuperAdmin', '1', 1672478972);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_auth_item`
--

CREATE TABLE `admin_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admin_auth_item`
--

INSERT INTO `admin_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/api', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/article', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/block', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/carousel', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/catalog', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/comment', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/delivery', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/faq', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/feedback', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/file', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/gallery', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/guestbook', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/news', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/page', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/payment', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/photos', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/sale', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/seo', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/shopcart', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/sitemap', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/subscribe', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/system/live-edit', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/yml', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('admin/yml/excel/update-items-from-excel-file', 2, NULL, NULL, NULL, 1672478972, 1672478972),
('CatalogUser', 1, NULL, NULL, NULL, 1672478972, 1672478972),
('ShopcartAdmin', 1, NULL, NULL, NULL, 1672478972, 1672478972),
('ShopcartUser', 1, NULL, NULL, NULL, 1672478972, 1672478972),
('SuperAdmin', 1, NULL, NULL, NULL, 1672478972, 1672478972),
('User', 1, NULL, 'userGroupRule', NULL, 1672478972, 1672478972),
('UserShopcartOrderPermission', 2, NULL, 'userShopcartOrderRule', NULL, 1672478972, 1672478972);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_auth_item_child`
--

CREATE TABLE `admin_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admin_auth_item_child`
--

INSERT INTO `admin_auth_item_child` (`parent`, `child`) VALUES
('CatalogUser', 'admin'),
('CatalogUser', 'admin/catalog'),
('CatalogUser', 'admin/photos'),
('CatalogUser', 'admin/system/live-edit'),
('CatalogUser', 'admin/yml/excel/update-items-from-excel-file'),
('CatalogUser', 'User'),
('ShopcartAdmin', 'CatalogUser'),
('ShopcartAdmin', 'ShopcartUser'),
('ShopcartUser', 'admin'),
('ShopcartUser', 'admin/comment'),
('ShopcartUser', 'admin/delivery'),
('ShopcartUser', 'admin/feedback'),
('ShopcartUser', 'admin/news'),
('ShopcartUser', 'admin/payment'),
('ShopcartUser', 'admin/sale'),
('ShopcartUser', 'admin/shopcart'),
('ShopcartUser', 'User'),
('SuperAdmin', 'admin'),
('SuperAdmin', 'admin/api'),
('SuperAdmin', 'admin/article'),
('SuperAdmin', 'admin/block'),
('SuperAdmin', 'admin/carousel'),
('SuperAdmin', 'admin/catalog'),
('SuperAdmin', 'admin/comment'),
('SuperAdmin', 'admin/delivery'),
('SuperAdmin', 'admin/faq'),
('SuperAdmin', 'admin/feedback'),
('SuperAdmin', 'admin/file'),
('SuperAdmin', 'admin/gallery'),
('SuperAdmin', 'admin/guestbook'),
('SuperAdmin', 'admin/news'),
('SuperAdmin', 'admin/page'),
('SuperAdmin', 'admin/payment'),
('SuperAdmin', 'admin/photos'),
('SuperAdmin', 'admin/sale'),
('SuperAdmin', 'admin/seo'),
('SuperAdmin', 'admin/shopcart'),
('SuperAdmin', 'admin/sitemap'),
('SuperAdmin', 'admin/subscribe'),
('SuperAdmin', 'admin/system/live-edit'),
('SuperAdmin', 'admin/yml'),
('SuperAdmin', 'admin/yml/excel/update-items-from-excel-file'),
('SuperAdmin', 'UserShopcartOrderPermission'),
('User', 'UserShopcartOrderPermission');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_auth_rule`
--

CREATE TABLE `admin_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admin_auth_rule`
--

INSERT INTO `admin_auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('userGroupRule', 0x4f3a32343a2261646d696e5c726261635c5573657247726f757052756c65223a333a7b733a343a226e616d65223b733a31333a227573657247726f757052756c65223b733a393a22637265617465644174223b693a313637323437383937323b733a393a22757064617465644174223b693a313637323437383937323b7d, 1672478972, 1672478972),
('userShopcartOrderRule', 0x4f3a33323a2261646d696e5c726261635c5573657253686f70636172744f7264657252756c65223a333a7b733a343a226e616d65223b733a32313a227573657253686f70636172744f7264657252756c65223b733a393a22637265617465644174223b693a313637323437383937323b733a393a22757064617465644174223b693a313637323437383937323b7d, 1672478972, 1672478972);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_loginform`
--

CREATE TABLE `admin_loginform` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `user_agent` varchar(1024) NOT NULL,
  `time` int(11) DEFAULT 0,
  `success` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_loginform`
--

INSERT INTO `admin_loginform` (`id`, `email`, `ip`, `user_agent`, `time`, `success`) VALUES
(1, 'admin@alex.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 OPR/94.0.0.0', 1672498756, 0),
(2, 'admin@alex.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 OPR/94.0.0.0', 1672498763, 0),
(3, 'admin@alex.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 OPR/94.0.0.0', 1672498772, 0),
(4, 'admin@alex.loc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 OPR/94.0.0.0', 1672498786, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_modules`
--

CREATE TABLE `admin_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `settings` text NOT NULL,
  `notice` int(11) DEFAULT 0,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `type` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_modules`
--

INSERT INTO `admin_modules` (`id`, `name`, `class`, `title`, `icon`, `settings`, `notice`, `order_num`, `status`, `type`) VALUES
(1, 'article', 'admin\\modules\\article\\ArticleModule', 'Статьи', 'pen', '{\"categoryThumb\":true,\"articleThumb\":true,\"enablePhotos\":true,\"enableComment\":false,\"enableViews\":true,\"enableShort\":true,\"shortMaxLength\":255,\"enableTags\":true,\"itemsInFolder\":false}', 0, 200, 0, 'ADMIN'),
(2, 'block', 'admin\\modules\\block\\BlockModule', 'HTML блоки', 'code', '[]', 0, 211, 1, 'ADMIN'),
(3, 'carousel', 'admin\\modules\\carousel\\CarouselModule', 'Карусель', 'image', '{\"enableTitle\":true,\"enableText\":true}', 0, 201, 0, 'ADMIN'),
(5, 'comment', 'admin\\modules\\comment\\CommentModule', 'Комментарии и оценки', 'comments', '{\"commentModelClass\":\"admin\\\\modules\\\\comment\\\\models\\\\Comment\",\"enableInlineEdit\":false,\"ratingModelClass\":\"admin\\\\modules\\\\comment\\\\models\\\\Rating\",\"userIdentityClass\":\"admin\\\\models\\\\User\"}', 0, 100, 0, 'ADMIN'),
(6, 'delivery', 'admin\\modules\\delivery\\DeliveryModule', 'Службы доставки', 'truck', '[]', 0, 102, 0, 'ADMIN'),
(7, 'faq', 'admin\\modules\\faq\\FaqModule', 'Вопросы и ответы', 'question', '[]', 0, 203, 0, 'ADMIN'),
(8, 'feedback', 'admin\\modules\\feedback\\FeedbackModule', 'Обратная связь', 'comment', '{\"mailAdminOnNewFeedback\":true,\"subjectOnNewFeedback\":\"\\u041d\\u043e\\u0432\\u043e\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u0437 \\u0444\\u043e\\u0440\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438\",\"templateOnNewFeedback\":\"@admin\\/modules\\/feedback\\/mail\\/ru\\/new_feedback\",\"mailAdminOnNewCallback\":true,\"subjectOnNewCallback\":\"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u043f\\u0440\\u043e\\u0441\\u0438\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0437\\u0432\\u043e\\u043d\\u0438\\u0442\\u044c\",\"templateOnNewCallback\":\"@admin\\/modules\\/feedback\\/mail\\/ru\\/new_callback\",\"answerTemplate\":\"@admin\\/modules\\/feedback\\/mail\\/ru\\/answer\",\"answerSubject\":\"\\u041e\\u0442\\u0432\\u0435\\u0442 \\u043d\\u0430 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u0437 \\u0444\\u043e\\u0440\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438\",\"answerHeader\":\"\\u0417\\u0434\\u0440\\u0430\\u0432\\u0441\\u0442\\u0432\\u0443\\u0439\\u0442\\u0435,\",\"answerFooter\":\"\\u0421 \\u0443\\u0432\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\\u043c.\",\"enableTitle\":false,\"enablePhone\":false,\"enableCaptcha\":false}', 0, 204, 1, 'ADMIN'),
(9, 'file', 'admin\\modules\\file\\FileModule', 'Файлы', 'file', '[]', 0, 205, 1, 'ADMIN'),
(10, 'gallery', 'admin\\modules\\gallery\\GalleryModule', 'Фотогалерея', 'camera', '{\"categoryThumb\":true,\"itemsInFolder\":false}', 0, 206, 0, 'ADMIN'),
(11, 'guestbook', 'admin\\modules\\guestbook\\GuestbookModule', 'Гостевая книга', 'book', '{\"enableTitle\":false,\"enableEmail\":true,\"preModerate\":false,\"enableCaptcha\":false,\"mailAdminOnNewPost\":true,\"subjectOnNewPost\":\"New message in the guestbook.\",\"templateOnNewPost\":\"@admin\\/modules\\/guestbook\\/mail\\/en\\/new_post\",\"frontendGuestbookRoute\":\"\\/guestbook\",\"subjectNotifyUser\":\"Your post in the guestbook answered\",\"templateNotifyUser\":\"@admin\\/modules\\/guestbook\\/mail\\/en\\/notify_user\"}', 0, 207, 0, 'ADMIN'),
(12, 'news', 'admin\\modules\\news\\NewsModule', 'Новости', 'bullhorn', '{\"enableThumb\":true,\"enableShort\":true,\"shortMaxLength\":256,\"enableTags\":true}', 0, 208, 0, 'ADMIN'),
(13, 'page', 'admin\\modules\\page\\PageModule', 'Страницы', 'file', '[]', 0, 209, 1, 'ADMIN'),
(14, 'payment', 'admin\\modules\\payment\\PaymentModule', 'Способы оплаты', 'money-bill-alt', '{\"notifyAdmin\":true,\"subjectNotifyAdmin\":\"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0443 \\u2116##order_id##\",\"templateNotifyAdmin\":\"@admin\\/modules\\/payment\\/mail\\/ru\\/notify_admin\",\"subjectNotifyUser\":\"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0443 \\u2116##order_id##\",\"templateNotifyUser\":\"@admin\\/modules\\/payment\\/mail\\/ru\\/notify_user\",\"frontendShopcartOrderRoute\":\"\\/shopcart\\/order\",\"__submenu_module\":[{\"id\":\"a\",\"url\":\"\\/admin\\/payment\\/a\",\"label\":\"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431\\u044b \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b\"},{\"id\":\"checkout\",\"url\":\"\\/admin\\/payment\\/checkout\",\"label\":\"\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b\"}]}', 0, 103, 0, 'ADMIN'),
(15, 'sale', 'admin\\modules\\sale\\SaleModule', 'Акции', 'tags', '{\"enableThumb\":true,\"enableTags\":true}', 0, 209, 0, 'ADMIN'),
(16, 'seo', 'admin\\modules\\seo\\SeoModule', 'SEO', 'search-plus', '[]', 0, 100, 1, 'ADMIN'),
(18, 'sitemap', 'admin\\modules\\sitemap\\SitemapModule', 'Карта сайта', 'sitemap', '{\"perPage\":2000,\"mainFile\":\"sitemap.xml\",\"pageDir\":\"sitemap_files\"}', 0, 104, 0, 'ADMIN'),
(19, 'subscribe', 'admin\\modules\\subscribe\\SubscribeModule', 'E-mail рассылка', 'envelope', '{\"templateNotifyUser\":\"@admin\\/modules\\/subscribe\\/mail\\/ru\\/notify_user\"}', 0, 210, 1, 'ADMIN'),
(20, 'yml', 'admin\\modules\\yml\\YmlModule', 'Экспорт/импорт', 'upload', '{\"additionalFields\":\"color:\\u0426\\u0432\\u0435\\u0442:15::cdf9fb,country:\\u0421\\u0442\\u0440\\u0430\\u043d\\u0430:10::cdf9fb,weight:\\u0412\\u0435\\u0441:8::cdf9fb,dimensions:\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b (\\u0428\\u0445\\u0412\\u0445\\u0413):15::cdf9fb,material:\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b:11::cdf9fb,volume:\\u041e\\u0431\\u044a\\u0435\\u043c:7::cdf9fb\",\"exportYandexMarketId\":0,\"__submenu_module\":[{\"id\":\"import\",\"url\":\"\\/admin\\/yml\\/import\",\"label\":\"\\u0418\\u043c\\u043f\\u043e\\u0440\\u0442\"},{\"id\":\"export\",\"url\":\"\\/admin\\/yml\\/export\",\"label\":\"\\u042d\\u043a\\u0441\\u043f\\u043e\\u0440\\u0442\"},{\"id\":\"excel\",\"url\":\"\\/admin\\/yml\\/excel\",\"label\":\"Excel\"}]}', 0, 104, 0, 'ADMIN');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_block`
--

CREATE TABLE `admin_module_block` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `assets_css` text NOT NULL,
  `assets_js` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_carousel`
--

CREATE TABLE `admin_module_carousel` (
  `id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_comment`
--

CREATE TABLE `admin_module_comment` (
  `id` int(11) NOT NULL,
  `entity` varchar(10) NOT NULL,
  `entityId` int(11) NOT NULL,
  `content` text NOT NULL,
  `parentId` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` int(11) NOT NULL,
  `updatedAt` int(11) NOT NULL,
  `relatedTo` varchar(500) NOT NULL,
  `url` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_comment_rating`
--

CREATE TABLE `admin_module_comment_rating` (
  `id` int(11) NOT NULL,
  `entity` varchar(10) NOT NULL,
  `entityId` int(11) NOT NULL,
  `session` varchar(128) NOT NULL,
  `value` int(11) NOT NULL DEFAULT 1,
  `createdBy` int(11) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `createdAt` int(11) NOT NULL,
  `updatedAt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_faq`
--

CREATE TABLE `admin_module_faq` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_feedback`
--

CREATE TABLE `admin_module_feedback` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `ip` varchar(16) NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_files`
--

CREATE TABLE `admin_module_files` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT 0,
  `time` int(11) DEFAULT 0,
  `order_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_gallery_categories`
--

CREATE TABLE `admin_module_gallery_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_guestbook`
--

CREATE TABLE `admin_module_guestbook` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `ip` varchar(16) NOT NULL,
  `new` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_news`
--

CREATE TABLE `admin_module_news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_pages`
--

CREATE TABLE `admin_module_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_module_pages`
--

INSERT INTO `admin_module_pages` (`id`, `title`, `text`, `slug`) VALUES
(1, 'testt', '<p>test</p>', 'page-test'),
(2, 'Контакты', '<p style=\"margin-left: 20px;\">Телефон: 22212</p><p style=\"margin-left: 20px;\">Адресс: 221414</p>', 'page-contact'),
(3, 'Главная', '<p>Добро пожаловать</p>', 'page-main');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_seo_template`
--

CREATE TABLE `admin_module_seo_template` (
  `id` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `h1` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `keywords` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_seo_template_assign`
--

CREATE TABLE `admin_module_seo_template_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_template_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_seo_text`
--

CREATE TABLE `admin_module_seo_text` (
  `id` int(11) NOT NULL,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_sitemap`
--

CREATE TABLE `admin_module_sitemap` (
  `id` int(11) NOT NULL,
  `class` varchar(256) DEFAULT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_subscribe_history`
--

CREATE TABLE `admin_module_subscribe_history` (
  `id` int(11) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `sent` int(11) DEFAULT 0,
  `time` int(11) DEFAULT 0,
  `mailing_list` text DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_subscribe_subscribers`
--

CREATE TABLE `admin_module_subscribe_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_yml_export`
--

CREATE TABLE `admin_module_yml_export` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_module_yml_import`
--

CREATE TABLE `admin_module_yml_import` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_photos`
--

CREATE TABLE `admin_photos` (
  `id` int(11) NOT NULL,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(512) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL,
  `visibility` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `name`, `title`, `value`, `visibility`) VALUES
(1, 'admin_version', 'Version', '1.0.0', 0),
(2, 'admin_email', 'E-mail администратора', 'admin@alex.loc', 2),
(3, 'contact_email', 'E-mail, с которого рассылаются письма', 'info@alex.loc', 2),
(4, 'contact_url', 'URL сайта', 'alex.loc', 2),
(5, 'contact_name', 'Название сайта', 'alex.loc', 2),
(6, 'contact_addressLocality', 'Населенный пункт', 'Москва', 2),
(7, 'contact_streetAddress', 'Адрес в населенном пункт (улица, дом, строение и т.д.)', '', 2),
(8, 'contact_openingHours', 'Часы работы', '9.00-18.00 (без выходных)', 2),
(9, 'contact_openingHoursISO86', 'Часы работы в формате ISO86', 'Mo-Su 9:00-18:00', 2),
(10, 'contact_telephone', 'Контактный телефон', '', 2),
(11, 'contact_messenger', 'Мессенджер', '', 2),
(12, 'contact_skype', 'Skype', '', 2),
(13, 'recaptcha_key', 'Код ReCaptcha Google', '', 2),
(14, 'recaptcha_secret', 'Секретный ключ ReCaptcha Google', '', 2),
(15, 'auth_time', 'Время авторизации', '2592000', 2),
(16, 'toolbar_position', 'Позиция панели инструментов (\"top\" or \"bottom\")', 'top', 2),
(17, 'subjectNotifyUserPasswordResetToken', 'Тема письма Сброс пароля', 'Сброс пароля для alex.loc', 2),
(18, 'templateNotifyUserPasswordResetToken', 'Шаблон письма Сброс пароля', '@admin/mail/ru/password_reset_token', 2),
(19, 'replyToAdminEmail', 'Отправлять копии писем на email администратора', '1', 2),
(20, 'counter_yandexMetrikaId', 'Идентификатор счетчика Yandex.Metrika', '0', 2),
(21, 'counter_googleAnalyticsId', 'Идентификатор счетчика Google Analytics', '0', 2),
(22, 'path_dumps', 'Путь к дампам', 'D:\\OpenServer\\domains\\alex.loc/app_demo/dumps', 2),
(23, 'viewFileRegistration', 'View-файл регистрации', '@admin/views/api/user/registration', 2),
(24, 'enableCaptchaRegistration', 'Запрашивать reCapcha при регистрации', '0', 2),
(25, 'generatePasswordRegistration', 'Генерировать пароль при регистрации', '0', 2),
(26, 'subjectNotifyUserRegistration', 'Тема письма Регистрация', 'Регистрация на сайте alex.loc', 2),
(27, 'templateNotifyUserRegistration', 'Шаблон письма Регистрация', '@admin/mail/ru/registration', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_tags`
--

CREATE TABLE `admin_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_tags_assign`
--

CREATE TABLE `admin_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  `data` text NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` int(11) DEFAULT 0,
  `updated_at` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password_hash`, `password_reset_token`, `auth_key`, `access_token`, `data`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@alex.loc', '$2y$13$6xb4AGcoInS4Xx//2ITWB.y6ShayQNFIEP.oD0Oi5aZn/8f3INPNG', NULL, 'c0_u55m9sXKqMVPWLXpGvSuFkYgWcHxx', NULL, 'null', 1, 1672478971, 1672478971),
(2, 'test@test.test', '$2y$13$8NVpMXcgyc2Vb.7GWaitguQQ1FhMZ/ZZXWXDT.byNhhtfI210qdGC', NULL, 'uWeBt_RzjNZ7I5uznKPVLvlkX_ZDQ9Ye', NULL, '{\"avatar\":\"\",\"name\":\"Alex\",\"phone\":\"+322313123\",\"address\":\"Alex\"}', 1, 1672479261, 1672502341);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_auth_assignment`
--
ALTER TABLE `admin_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Индексы таблицы `admin_auth_item`
--
ALTER TABLE `admin_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `admin_auth_item_child`
--
ALTER TABLE `admin_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `admin_auth_rule`
--
ALTER TABLE `admin_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `admin_loginform`
--
ALTER TABLE `admin_loginform`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_modules`
--
ALTER TABLE `admin_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `admin_module_block`
--
ALTER TABLE `admin_module_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `admin_module_carousel`
--
ALTER TABLE `admin_module_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_comment`
--
ALTER TABLE `admin_module_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity` (`entity`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `admin_module_comment_rating`
--
ALTER TABLE `admin_module_comment_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity` (`entity`),
  ADD KEY `entityId` (`entityId`),
  ADD KEY `session` (`session`);

--
-- Индексы таблицы `admin_module_faq`
--
ALTER TABLE `admin_module_faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_feedback`
--
ALTER TABLE `admin_module_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_files`
--
ALTER TABLE `admin_module_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `admin_module_gallery_categories`
--
ALTER TABLE `admin_module_gallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `admin_module_guestbook`
--
ALTER TABLE `admin_module_guestbook`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_news`
--
ALTER TABLE `admin_module_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `admin_module_pages`
--
ALTER TABLE `admin_module_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `admin_module_seo_template`
--
ALTER TABLE `admin_module_seo_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `admin_module_seo_template_assign`
--
ALTER TABLE `admin_module_seo_template_assign`
  ADD PRIMARY KEY (`class`,`item_id`),
  ADD KEY `class` (`class`),
  ADD KEY `item_template` (`item_id`,`template_id`,`item_template_id`);

--
-- Индексы таблицы `admin_module_seo_text`
--
ALTER TABLE `admin_module_seo_text`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_item` (`class`,`item_id`);

--
-- Индексы таблицы `admin_module_sitemap`
--
ALTER TABLE `admin_module_sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_subscribe_history`
--
ALTER TABLE `admin_module_subscribe_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_subscribe_subscribers`
--
ALTER TABLE `admin_module_subscribe_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `admin_module_yml_export`
--
ALTER TABLE `admin_module_yml_export`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_module_yml_import`
--
ALTER TABLE `admin_module_yml_import`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_photos`
--
ALTER TABLE `admin_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_item` (`class`,`item_id`);

--
-- Индексы таблицы `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `admin_tags`
--
ALTER TABLE `admin_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `admin_tags_assign`
--
ALTER TABLE `admin_tags_assign`
  ADD KEY `class` (`class`),
  ADD KEY `item_tag` (`item_id`,`tag_id`);

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token` (`access_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_loginform`
--
ALTER TABLE `admin_loginform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `admin_modules`
--
ALTER TABLE `admin_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `admin_module_block`
--
ALTER TABLE `admin_module_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_carousel`
--
ALTER TABLE `admin_module_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_comment`
--
ALTER TABLE `admin_module_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_comment_rating`
--
ALTER TABLE `admin_module_comment_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_faq`
--
ALTER TABLE `admin_module_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_feedback`
--
ALTER TABLE `admin_module_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_files`
--
ALTER TABLE `admin_module_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_gallery_categories`
--
ALTER TABLE `admin_module_gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_guestbook`
--
ALTER TABLE `admin_module_guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_news`
--
ALTER TABLE `admin_module_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_pages`
--
ALTER TABLE `admin_module_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `admin_module_seo_template`
--
ALTER TABLE `admin_module_seo_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_seo_text`
--
ALTER TABLE `admin_module_seo_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_sitemap`
--
ALTER TABLE `admin_module_sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_subscribe_history`
--
ALTER TABLE `admin_module_subscribe_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_subscribe_subscribers`
--
ALTER TABLE `admin_module_subscribe_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_yml_export`
--
ALTER TABLE `admin_module_yml_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_module_yml_import`
--
ALTER TABLE `admin_module_yml_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_photos`
--
ALTER TABLE `admin_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `admin_tags`
--
ALTER TABLE `admin_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin_auth_assignment`
--
ALTER TABLE `admin_auth_assignment`
  ADD CONSTRAINT `admin_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `admin_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `admin_auth_item`
--
ALTER TABLE `admin_auth_item`
  ADD CONSTRAINT `admin_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `admin_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `admin_auth_item_child`
--
ALTER TABLE `admin_auth_item_child`
  ADD CONSTRAINT `admin_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `admin_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `admin_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
