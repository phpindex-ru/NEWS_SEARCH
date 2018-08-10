-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 10 2018 г., 13:53
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `announce`
--

CREATE TABLE `announce` (
  `id` int(11) NOT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `is_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `announce`
--

INSERT INTO `announce` (`id`, `item_id`, `text`, `is_new`) VALUES
(1, '1', 'Regular expressions are an intricate and powerful tool for matching patterns and manipulating text. Though not as fast as plain-vanilla string matching, regular expressions\r\nare extremely flexible. They allow you to construct patterns to match almost any con\r\nceivable combination of characters with a simple albeit terse and punctuation-studded\r\ngrammar. If your website relies on data feeds that come in text files data feeds like\r\nsports scores, news articles, or frequently updated headlines regular expressions can\r\nhelp you make sense of them.', 'true'),
(2, '3', 'This chapter gives a brief overview of basic regular expression syntax and then focuses\r\non the functions that PHP provides for working with regular expressions. For a bit more\r\ndetailed information about the ins and outs of regular expressions, check out the PCRE\r\nsection of the PHP online manual and Appendix B of Learning PHP 5 by David Sklar\r\n(O Reilly). To start on the path to regular expression wizardry, read the comprehensive\r\nMastering Regular Expressions by Jeffrey E.F. Friedl (O Reilly).', 'false'),
(3, '5', 'Regular expressions are handy when transforming plain text into HTML, and vice versa.\r\nLuckily, because these are such helpful subjects, PHP has many built-in functions to\r\nhandle these tasks, explained by recipes in other chapters. Recipe 9.10 tells how to escape\r\nHTML entities; Recipe 13.6 covers stripping HTML tags; Recipes 13.4 and 13.5 show\r\nhow to convert plain text to HTML and HTML to plain text, respectively. For information on matching and validating email addresses, see Recipe 9.4.', 'false'),
(4, '2', 'Over the years, the functionality of regular expressions has grown from its basic roots\r\nto incorporate increasingly useful features. As a result, PHP offers two different sets of\r\nregular expression functions. The first set includes the traditional (or POSIX) functions,\r\nwhose names each begin with ereg (for extended regular expressions; the ereg functions\r\nthemselves are already an extension of the original feature set). The other set includes\r\n647\r\nthe Perl-compatible family of functions, prefaced with preg (for Perl-compatible regular\r\nexpressions).', 'true'),
(5, '4', 'Over the years, the functionality of regular expressions has grown from its basic roots\r\nto incorporate increasingly useful features. As a result, PHP offers two different sets of\r\nregular expression functions. The first set includes the traditional (or POSIX) functions,\r\nwhose names each begin with ereg (for extended regular expressions; the ereg functions\r\nthemselves are already an extension of the original feature set). The other set includes\r\n647\r\nthe Perl-compatible family of functions, prefaced with preg (for Perl-compatible regular\r\nexpressions).\r\n\r\nThe preg functions use a library that mimics the regular expression functionality of the\r\nPerl programming language. This is a good thing because Perl allows you to do a variety\r\nof handy things with regular expressions, including nongreedy matching, forward and\r\nbackward assertions, and even recursive patterns.', 'false'),
(6, '6', 'There s no longer any reason to use the ereg functions and they are officially deprecated\r\nas of PHP 5.3.0. They offer fewer features, and they re slower than preg functions.\r\nHowever the ereg functions existed in PHP for many years prior to the introduction\r\nof the preg functions, so many programmers still use them because of legacy code or\r\nout of habit. Thankfully, the prototypes for the two sets of functions are identical, so it s\r\neasy to switch back and forth from one to another without too much confusion. ', 'false'),
(7, '7', 'There s no longer any reason to use the ereg functions and they are officially deprecated\r\nas of PHP 5.3.0. They offer fewer features, and they re slower than preg functions.\r\nHowever the ereg functions existed in PHP for many years prior to the introduction\r\nof the preg functions, so many programmers still use them because of legacy code or\r\nout of habit. Thankfully, the prototypes for the two sets of functions are identical, so it s\r\neasy to switch back and forth from one to another without too much confusion. ', 'true'),
(8, '8', 'Think of a regular expression as a program in a very restrictive programming language.\r\nThe only task of a regular expression program is to match a pattern in text. In regular\r\nexpression patterns, most characters just match themselves. That is, the regular expres‐\r\nsion rhino matches strings that contain the five-character sequence rhino. The fancy\r\nbusiness in regular expressions is due to a handful of punctuation and symbols called\r\nmetacharacters. These symbols don t literally match themselves, but instead give commands to the regular expression matcher.', 'false'),
(9, '9', 'The period means match any character so the pattern .at matches bat, cat, and\r\neven rat.\r\n - The asterisk means match 0 or more of the preceding object. (So far, the only\r\nobjects we know about are characters.)\r\n- The plus is similar to asterisk, but means match one or more of the preceding\r\nobject. So .+at matches brat, sprat, and even the cat inside of catastrophe, but\r\nnot plain at. To match at, replace the + with an *.\r\n -The question mark means the preceding object is optional. That is, it matches 0\r\nor 1 of the object that precedes it. colou?r matches both color and colour.\r\n', 'false');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `insert` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `insert`, `title`) VALUES
(1, '1531235520', 'Title 1'),
(2, '1531235520', 'Title 2'),
(3, '1531235520', 'Title 3'),
(4, '1525995900', 'Title 4'),
(5, '1525995900', 'Title 5'),
(6, '1525995900', 'Title 6'),
(7, '1529274600', 'Title 7'),
(8, '1529274600', 'Title 8'),
(9, '1529274600', 'Title 9');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
