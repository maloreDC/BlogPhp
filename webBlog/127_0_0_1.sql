-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2020 at 03:10 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'ITE014', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"phpmyadmin\",\"reg_db\",\"signup_db\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-01-07 14:09:58', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `reg_db`
--
CREATE DATABASE IF NOT EXISTS `reg_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reg_db`;

-- --------------------------------------------------------

--
-- Table structure for table `info_tbl`
--

CREATE TABLE `info_tbl` (
  `id` int(11) NOT NULL,
  `emp_fname` varchar(30) DEFAULT NULL,
  `emp_lname` varchar(20) DEFAULT NULL,
  `emp_uname` varchar(20) DEFAULT NULL,
  `emp_password` varchar(20) DEFAULT NULL,
  `emp_bDate` date DEFAULT NULL,
  `emp_gender` char(1) DEFAULT NULL,
  `emp_mPhone` bigint(12) DEFAULT NULL,
  `emp_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_tbl`
--

INSERT INTO `info_tbl` (`id`, `emp_fname`, `emp_lname`, `emp_uname`, `emp_password`, `emp_bDate`, `emp_gender`, `emp_mPhone`, `emp_email`) VALUES
(1, 'Malore', 'Dela Cuesta', 'Kialla', '0000', '2000-04-15', 'M', 9052535261, 'carlajianelee@gmail.com'),
(2, 'Malore', 'lore', 'Kialla', '123', '2019-11-06', 'M', 9052535261, 'malore.exe@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_tbl`
--
ALTER TABLE `info_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_tbl`
--
ALTER TABLE `info_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `signup_db`
--
CREATE DATABASE IF NOT EXISTS `signup_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `signup_db`;

-- --------------------------------------------------------

--
-- Table structure for table `accs_tbl`
--

CREATE TABLE `accs_tbl` (
  `id` int(11) NOT NULL,
  `emp_fname` varchar(30) DEFAULT NULL,
  `emp_lname` varchar(30) DEFAULT NULL,
  `emp_uName` varchar(30) DEFAULT NULL,
  `emp_password` varchar(30) DEFAULT NULL,
  `emp_gender` char(1) DEFAULT NULL,
  `emp_mPhone` varchar(12) DEFAULT NULL,
  `emp_email` varchar(30) DEFAULT NULL,
  `emp_bDate` date DEFAULT NULL,
  `emp_profile` varchar(250) DEFAULT NULL,
  `emp_bio` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accs_tbl`
--

INSERT INTO `accs_tbl` (`id`, `emp_fname`, `emp_lname`, `emp_uName`, `emp_password`, `emp_gender`, `emp_mPhone`, `emp_email`, `emp_bDate`, `emp_profile`, `emp_bio`) VALUES
(1, 'Malore Anthony', 'Dela Cuesta', 'lorelore', '123', 'M', '12345678900', 'mac.delacuesta@gmail.com', '2019-01-01', 'img/FB_IMG_1501555579523.jpg', 'Hello'),
(2, 'Carla Jiane', 'Lee', 'KIalla', '00000', 'F', '11111111111', 'jiane@gmail.com', '2019-09-17', 'img/user.png', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `emp_comment`
--

CREATE TABLE `emp_comment` (
  `id` int(11) NOT NULL,
  `emp_uName` varchar(30) DEFAULT NULL,
  `emp_datetime` datetime DEFAULT NULL,
  `emp_comment` varchar(140) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_comment`
--

INSERT INTO `emp_comment` (`id`, `emp_uName`, `emp_datetime`, `emp_comment`, `postId`) VALUES
(34, 'lorelore', '2020-01-04 21:24:03', 'hello', NULL),
(35, 'lorelore', '2020-01-04 21:24:03', 'hello', NULL),
(36, 'lorelore', '2020-01-04 21:24:03', 'hello', NULL),
(37, 'lorelore', '2020-01-04 21:25:07', 'hello', NULL),
(38, 'lorelore', '2020-01-04 21:26:45', 'hello', 0),
(39, 'lorelore', '2020-01-04 21:28:30', 'hello', 0),
(40, 'lorelore', '2020-01-04 21:30:17', 'hello', 0),
(41, 'lorelore', '2020-01-04 21:37:12', 'hello', 0),
(42, 'lorelore', '2020-01-04 21:40:44', 'qwe', 69),
(43, 'lorelore', '2020-01-04 21:41:19', 'we', 69),
(44, 'lorelore', '2020-01-04 21:41:28', 'lol', 69),
(45, 'lorelore', '2020-01-04 21:42:44', 'lol', 68),
(46, 'lorelore', '2020-01-04 21:42:49', 'lol1', 68),
(47, 'lorelore', '2020-01-04 21:45:53', '', 69),
(48, 'lorelore', '2020-01-04 21:48:46', 'leemaw', 70),
(49, 'lorelore', '2020-01-04 21:48:52', 'leemaw2', 70),
(50, 'lorelore', '2020-01-04 21:57:03', 'asd', 66),
(51, 'lorelore', '2020-01-04 21:57:25', 'asd2', 66),
(52, 'lorelore', '2020-01-04 22:03:20', '', 70),
(53, 'lorelore', '2020-01-04 22:03:27', 'lol', 70),
(54, 'lorelore', '2020-01-04 22:04:48', 'lol', 70),
(55, 'lorelore', '2020-01-04 22:05:46', '', 70),
(56, 'lorelore', '2020-01-04 22:05:58', 'asd', 70),
(57, 'lorelore', '2020-01-04 22:07:10', 'asd', 70),
(58, 'lorelore', '2020-01-04 22:07:14', 'asd', 70),
(59, 'lorelore', '2020-01-04 22:15:39', '', 70),
(60, 'lorelore', '2020-01-04 22:16:50', '', 70),
(61, 'lorelore', '2020-01-04 22:16:53', 'asd', 70),
(62, 'lorelore', '2020-01-04 22:16:55', 'asdasdsad', 70),
(63, 'lorelore', '2020-01-04 22:18:22', '', 70),
(64, 'lorelore', '2020-01-04 22:18:23', 'asd', 70),
(65, 'lorelore', '2020-01-04 22:18:24', 'asd', 70),
(66, 'lorelore', '2020-01-04 22:18:26', 'asdasd', 70),
(67, 'lorelore', '2020-01-04 22:20:02', 'asd', 70),
(68, 'lorelore', '2020-01-04 22:20:03', 'asd', 70),
(69, 'lorelore', '2020-01-04 22:20:05', 'asdasd', 70),
(70, 'lorelore', '2020-01-04 22:29:45', 'asd', 70),
(71, 'lorelore', '2020-01-04 22:30:11', '', 70),
(72, 'lorelore', '2020-01-04 22:30:17', 'asd', 70),
(73, 'lorelore', '2020-01-04 22:30:22', 'HELLO', 70),
(74, 'lorelore', '2020-01-04 22:31:57', '', 70),
(75, 'lorelore', '2020-01-04 22:32:00', 'asd', 70),
(76, 'lorelore', '2020-01-04 22:32:23', 'asd', 70),
(77, 'lorelore', '2020-01-04 22:32:27', 'asd', 70),
(78, 'lorelore', '2020-01-04 22:32:30', 'asdasdasd', 70),
(79, 'lorelore', '2020-01-04 22:32:43', 'lol\n', 70),
(80, 'lorelore', '2020-01-04 22:33:22', 'lol\n', 70),
(81, 'lorelore', '2020-01-04 22:33:25', 'lol\n', 70),
(82, 'lorelore', '2020-01-04 22:33:25', 'lol\n', 70),
(83, 'lorelore', '2020-01-04 22:33:25', 'lol\n', 70),
(84, 'lorelore', '2020-01-04 22:33:35', '', 70),
(85, 'lorelore', '2020-01-04 22:33:37', 'asd', 70),
(86, 'lorelore', '2020-01-04 22:33:40', 'asdfdfd', 70),
(87, 'lorelore', '2020-01-04 22:33:43', 'asdfdfdasdas', 70),
(88, 'lorelore', '2020-01-04 22:48:31', 'asd', 63),
(89, 'lorelore', '2020-01-04 22:48:35', 'lol', 63),
(90, 'lorelore', '2020-01-04 22:48:54', 'asd', 63),
(91, 'lorelore', '2020-01-04 22:48:58', 'lol', 63),
(92, 'lorelore', '2020-01-04 22:48:59', 'lol', 63),
(93, 'lorelore', '2020-01-04 22:49:01', 'lolasd', 63),
(94, 'lorelore', '2020-01-04 22:49:01', 'lolasd', 63),
(95, 'lorelore', '2020-01-04 22:49:05', 'lolasd', 63),
(96, 'lorelore', '2020-01-04 23:54:07', 'asd', 70),
(97, 'lorelore', '2020-01-04 23:54:12', 'lol', 70),
(98, 'lorelore', '2020-01-04 23:54:28', 'asd', 71),
(99, 'lorelore', '2020-01-05 00:34:34', 'asdasd', 71),
(100, 'lorelore', '2020-01-05 00:34:36', 'asdasd', 71),
(101, 'lorelore', '2020-01-05 00:35:11', '', 71),
(102, 'lorelore', '2020-01-05 00:35:12', 'asdasd', 71),
(103, 'lorelore', '2020-01-05 00:35:13', 'asdasd', 71),
(104, 'lorelore', '2020-01-05 00:35:13', 'asdasd', 71),
(105, 'lorelore', '2020-01-05 00:35:13', 'asdasd', 71),
(106, 'lorelore', '2020-01-05 00:35:24', 'baliw', 71),
(107, 'lorelore', '2020-01-05 00:35:27', 'baliw', 71),
(108, 'lorelore', '2020-01-05 00:35:28', 'baliwasdasd', 71),
(109, 'lorelore', '2020-01-05 00:36:16', '', 71),
(110, 'lorelore', '2020-01-05 00:36:18', '', 71),
(111, 'lorelore', '2020-01-05 00:36:19', 'asda', 71),
(112, 'lorelore', '2020-01-05 00:36:20', 'asda', 71),
(113, 'lorelore', '2020-01-05 00:36:22', 'asdaqfeq', 71),
(114, 'lorelore', '2020-01-05 00:36:23', 'asdaqfeq', 71),
(115, 'lorelore', '2020-01-05 00:36:27', 'asdaqfeqqfeq', 71),
(116, 'lorelore', '2020-01-05 00:36:30', '1', 71),
(117, 'lorelore', '2020-01-05 00:36:31', '1', 71),
(118, 'lorelore', '2020-01-05 00:36:37', '', 71),
(119, 'lorelore', '2020-01-05 00:36:41', '', 71),
(120, 'lorelore', '2020-01-05 00:36:41', '2', 71),
(121, 'lorelore', '2020-01-05 00:36:45', '2', 71),
(122, 'lorelore', '2020-01-05 00:36:51', '3', 71),
(123, 'lorelore', '2020-01-05 00:36:54', '3', 71),
(124, 'lorelore', '2020-01-05 00:36:56', '5', 71),
(125, 'lorelore', '2020-01-05 00:38:09', 'asd', 71),
(126, 'lorelore', '2020-01-05 00:38:12', '123', 71),
(127, 'lorelore', '2020-01-05 00:38:16', '1561', 71),
(128, 'lorelore', '2020-01-05 00:38:19', '123', 71),
(129, 'lorelore', '2020-01-06 17:56:57', '', 71),
(130, 'lorelore', '2020-01-06 17:56:58', '', 71),
(131, 'lorelore', '2020-01-06 18:01:57', 'hello', 71),
(132, 'lorelore', '2020-01-06 18:01:58', 'hello', 71),
(133, 'lorelore', '2020-01-06 18:01:58', 'hello', 71),
(134, 'lorelore', '2020-01-06 18:02:58', '', 71),
(135, 'lorelore', '2020-01-06 18:03:02', 'malore', 71),
(136, 'lorelore', '2020-01-06 18:04:39', 'hatdog', 71),
(137, 'lorelore', '2020-01-06 18:04:48', 'hatdog', 71),
(138, 'lorelore', '2020-01-06 18:05:17', 'test1', 71),
(139, 'lorelore', '2020-01-06 18:05:21', 'test2', 71),
(140, 'lorelore', '2020-01-06 18:05:24', 'test3', 71),
(141, 'lorelore', '2020-01-06 18:06:36', 'lol', 71),
(142, 'lorelore', '2020-01-06 18:06:42', 'lol2', 71),
(143, 'lorelore', '2020-01-06 18:09:10', 'wow', 72),
(144, 'lorelore', '2020-01-06 18:09:15', 'wooooow', 72),
(145, 'lorelore', '2020-01-06 18:18:25', 'wooooooooow', 72),
(146, 'lorelore', '2020-01-06 18:20:46', 'wooooooooooooooooooow', 72),
(147, 'lorelore', '2020-01-06 18:21:06', 'lol', 72),
(148, 'lorelore', '2020-01-06 18:21:22', 'lol2', 72),
(149, 'lorelore', '2020-01-06 18:24:01', 'lol2', 72),
(150, 'lorelore', '2020-01-06 18:25:49', 'hatdog', 70),
(151, 'lorelore', '2020-01-06 18:30:17', '8797', 70),
(152, 'lorelore', '2020-01-07 18:03:19', 'lol3', 72),
(153, 'lorelore', '2020-01-07 18:03:30', 'sdsdssd', 72),
(154, 'lorelore', '2020-01-07 18:15:34', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 72),
(155, 'lorelore', '2020-01-07 18:30:08', 'qweqweqwe', 72),
(156, 'lorelore', '2020-01-07 18:30:28', '973', 70),
(157, 'lorelore', '2020-01-07 18:54:11', 'adfdfg', 72),
(158, 'lorelore', '2020-01-07 19:57:42', 'I love lol', 72);

-- --------------------------------------------------------

--
-- Table structure for table `emp_like`
--

CREATE TABLE `emp_like` (
  `id` int(11) NOT NULL,
  `emp_uName` varchar(30) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_like`
--

INSERT INTO `emp_like` (`id`, `emp_uName`, `postId`) VALUES
(1, '', 72),
(9, 'lorelore', 72);

-- --------------------------------------------------------

--
-- Table structure for table `emp_post`
--

CREATE TABLE `emp_post` (
  `id` int(11) NOT NULL,
  `emp_dateTime` datetime DEFAULT NULL,
  `emp_write` varchar(140) DEFAULT NULL,
  `emp_pic` varchar(150) DEFAULT NULL,
  `emp_uName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_post`
--

INSERT INTO `emp_post` (`id`, `emp_dateTime`, `emp_write`, `emp_pic`, `emp_uName`) VALUES
(23, '2019-12-18 13:12:33', 'test', 'img/', 'lorelore'),
(24, '2019-12-18 13:14:13', 'test', 'img/', 'lorelore'),
(25, '2019-12-18 13:17:34', 'test', 'img/', 'lorelore'),
(26, '2019-12-18 13:17:38', 'test', 'img/', 'lorelore'),
(27, '2019-12-18 13:17:43', 'post2', 'img/', 'lorelore'),
(28, '2019-12-18 13:17:48', 'post 3', 'img/', 'lorelore'),
(29, '2019-12-18 13:18:00', 'hello', 'img/', 'Kialla'),
(30, '2019-12-18 15:40:31', 'test', 'img/', 'lorelore'),
(31, '2019-12-18 15:40:34', 'test', 'img/', 'lorelore'),
(32, '2019-12-18 15:41:27', 'test', 'img/', 'lorelore'),
(33, '2019-12-18 15:43:47', 'asd', 'img/', 'lorelore'),
(34, '2019-12-18 15:46:47', 'asd', 'img/', 'lorelore'),
(35, '2019-12-18 15:55:07', 'sa', 'img/', 'lorelore'),
(36, '2019-12-18 15:59:00', 'asd', 'img/profile.png', 'lorelore'),
(37, '2019-12-18 15:59:24', 'asd', 'img/profile.png', 'lorelore'),
(38, '2019-12-18 16:01:27', 'asd', 'img/', 'lorelore'),
(39, '2019-12-18 16:01:35', 'test', 'img/profile.png', 'lorelore'),
(40, '2019-12-18 16:11:14', 'hello', 'img/profile.png', 'Kialla'),
(41, '2019-12-19 23:50:58', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'img/', 'lorelore'),
(42, '2019-12-20 00:02:34', 'asd', 'img/', 'lorelore'),
(43, '2019-12-20 00:02:44', 'asd', 'img/', 'lorelore'),
(44, '2019-12-20 00:13:04', 'ASDA@Wdwqeqdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssaiushdiuahsdqwdqwiudhiqwudhiqwudhiqwudhiqwudhwiqudhqwuid', 'img/profile.png', 'lorelore'),
(45, '2019-12-20 01:10:46', 'hello', 'img/download.png', 'lorelore'),
(46, '2019-12-20 01:42:23', 'TEst 13mkhpa;kdpq,wl;dlasd', 'img/', 'lorelore'),
(47, '2019-12-20 01:54:51', 'hello', 'img/', 'lorelore'),
(48, '2019-12-20 01:56:27', 'hello', 'img/', 'lorelore'),
(49, '2019-12-20 09:21:38', 'hello', 'img/', 'lorelore'),
(50, '2019-12-20 09:21:42', 'hello', 'img/', 'lorelore'),
(51, '2019-12-20 09:22:02', 'rt', 'img/', 'lorelore'),
(52, '2019-12-20 09:23:17', 'try', 'img/', 'lorelore'),
(53, '2020-01-03 18:08:15', 'hello teest', 'img/', 'lorelore'),
(54, '2020-01-03 18:28:55', 'sadsd', 'img/', 'lorelore'),
(55, '2020-01-03 19:45:48', 'asd', 'img/IMG_20180726_083849.JPG', 'lorelore'),
(56, '2020-01-03 19:47:25', 'asd', 'img/IMG_20181215_155610.JPG', 'lorelore'),
(57, '2020-01-03 19:47:34', 'asd', 'img/', 'lorelore'),
(58, '2020-01-04 11:56:29', 'asd', 'img/', 'lorelore'),
(59, '2020-01-04 11:56:35', 'qwe', 'img/', 'lorelore'),
(60, '2020-01-04 11:56:39', 'qwqgghffdfdf', 'img/', 'lorelore'),
(61, '2020-01-04 11:56:44', 'sdfdsf', 'img/', 'lorelore'),
(62, '2020-01-04 11:56:46', 'sdf', 'img/', 'lorelore'),
(63, '2020-01-04 11:57:04', 'lol', 'img/FB_IMG_1501768319713.jpg', 'lorelore'),
(64, '2020-01-04 11:57:16', 'qwe', 'img/', 'lorelore'),
(65, '2020-01-04 12:42:24', 'asd', 'img/FB_IMG_1501555579523.jpg', 'lorelore'),
(66, '2020-01-04 13:09:07', 'asd', 'img/', 'lorelore'),
(67, '2020-01-04 19:23:26', 'asd', 'img/', 'lorelore'),
(68, '2020-01-04 19:53:06', 'asd', 'img/c-c-angry-react-this-4114648.png', 'lorelore'),
(69, '2020-01-04 20:00:49', 'dfdf', 'img/FB_IMG_1503791003588.jpg', 'lorelore'),
(70, '2020-01-04 21:48:23', 'hello weebs', 'img/FB_IMG_1501860925802.jpg', 'lorelore'),
(71, '2020-01-04 23:08:55', 'lol', 'img/FB_IMG_1503792629770.jpg', 'Kialla'),
(72, '2020-01-06 18:09:03', 'Leemaw', 'img/FB_IMG_1541640516342.jpg', 'lorelore');

-- --------------------------------------------------------

--
-- Table structure for table `info_tbl`
--

CREATE TABLE `info_tbl` (
  `id` int(11) NOT NULL,
  `emp_fname` varchar(30) DEFAULT NULL,
  `emp_lname` varchar(30) DEFAULT NULL,
  `emp_uname` varchar(30) DEFAULT NULL,
  `emp_password` varchar(30) DEFAULT NULL,
  `emp_gender` char(1) DEFAULT NULL,
  `emp_mPhone` bigint(12) DEFAULT NULL,
  `emp_email` varchar(30) DEFAULT NULL,
  `emp_bDate` date DEFAULT NULL,
  `emp_profile` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_tbl`
--

INSERT INTO `info_tbl` (`id`, `emp_fname`, `emp_lname`, `emp_uname`, `emp_password`, `emp_gender`, `emp_mPhone`, `emp_email`, `emp_bDate`, `emp_profile`) VALUES
(2, 'Jiane', 'Lee', 'malorelore', '123', 'n', 11111111111, 'jiane@gmail.com', '2019-09-17', 'img/profile.png'),
(4, 'Malore', 'Dela Cuesta', 'malorelore', 'malore123', 'M', 9052131231, 'mac.delacuesta@gmail.com', '0000-00-00', 'img/profile.png'),
(5, 'Malore', 'Dela Cuesta', 'malorelore', 'malore123', 'M', 9052535261, 'malore.exe@gmail.com', '2019-11-13', 'img/profile.png'),
(6, 'test1', 'test1', 'test1', 'malore123', 'M', 90512312, 'mac.delacuesta@gmail.com', '2019-11-09', 'img/profile.png'),
(7, 'Jiane', 'Lee', 'jiane', '0000', 'F', 12345678900, 'jj@gmail.com', '2019-11-06', 'img/profile.png'),
(9, 'Malore', 'Dela Cuesta', 'malorelore', '123', 'M', 9052535261, 'malore.exe@gmail.com', '2019-11-13', 'img/profile.png'),
(10, 'Malore', 'Dela Cuesta', 'lorelore', '123', 'M', 9052535261, 'mac.delacuesta@gmail.com', '2019-11-12', 'img/profile.png'),
(11, 'Lore', 'Malore', 'hahahah', '123', 'M', 905123123, 'asdasad@sddfsdf', '2019-11-15', 'img/profile.png'),
(12, 'Malore', 'Dela Cuesta', 'hahahah', '123', 'M', 123234567, 'maloew123@gmail.com', '2019-01-31', 'img/profile.png'),
(13, 'Malore', 'Dela Cuesta', 'lol', '123', 'M', 1234567, 'maloew123@gmail.com', '2019-12-31', 'img/profile.png'),
(14, 'test2', 'test2', 'test2', '123', 'M', 12345678910, 'test2@gmail.com', '2000-04-15', 'img/profile.png'),
(15, 'test5', 'test5', 'test5', '123', 'M', 1234567890, 'test5@gmail.com', '2019-11-27', 'img/profile.png'),
(16, 'Malore', 'Dela Cuesta', 'lorelore', '123', 'M', 123213123, 'malore.exe@gmail.com', '0213-03-12', 'img/profile.png'),
(17, 'Lore', 'Dela Cuesta', 'lorelore', '123', 'M', 12345678910, 'mac.delacuesta@gmail.com', '2019-12-23', 'img/profile.png'),
(18, 'asdas', 'DSAD', 'lorelore1', '123', 'M', 12321312312, 'mac.delacuesta@gmail.com', '2019-12-06', 'img/profile.png'),
(19, 'Malore', 'Dela Cuesta', '12312', '123', 'M', 1232131231232132, 'anna@gmail.com', '2019-12-11', 'img/profile.png'),
(20, 'sd', 'lore', 'lorelore', '123', 'M', 123412534242, 'asdasad@sddfsdf', '2019-12-19', 'img/profile.png'),
(21, 'asdas', 'Lee', 'sadsasda', '123', 'M', 123412341234, 'maloew123@gmail.com', '2019-12-24', 'img/profile.png'),
(22, 'Malore', 'Lee', 'lorelore', '123', 'M', 1234567890, 'masda@gmail', '2019-12-13', 'img/profile.png'),
(23, 'jerone', 'alimpia', 'jalimpia', '123', 'M', 123456789, 'jalimpia@gmail.com', '2019-12-13', 'img/profile.png'),
(24, 'Malore', 'Dela Cuesta', 'lorelore', '123', 'M', 12345678900, 'mac.delacuesta@gmail.com', '2019-01-01', 'img/profile.png'),
(25, 'Malore', 'Dela Cuesta', 'lorelore', '123', 'M', 12345678900, 'mac.delacuesta@gmail.com', '2019-01-01', 'img/profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accs_tbl`
--
ALTER TABLE `accs_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_comment`
--
ALTER TABLE `emp_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_like`
--
ALTER TABLE `emp_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_post`
--
ALTER TABLE `emp_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_tbl`
--
ALTER TABLE `info_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accs_tbl`
--
ALTER TABLE `accs_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emp_comment`
--
ALTER TABLE `emp_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `emp_like`
--
ALTER TABLE `emp_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emp_post`
--
ALTER TABLE `emp_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `info_tbl`
--
ALTER TABLE `info_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
