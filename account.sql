/*
 Navicat Premium Data Transfer

 Source Server         : Локал
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost:3306
 Source Schema         : zakaz5

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 14/12/2020 19:21:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `last_login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 0,
  `cache` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`login`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (5, 'test', '3d0d99423e31fcc67a6745ec89d70d700344bc76', 'test@test.ru', '2020-10-15 10:38:36', 0, '9af752948fab4f6cdb9ede6b6e5a6ec55798f966');
INSERT INTO `account` VALUES (6, '', '05a79f06cf3f67f726dae68d18a2290f6c9a50c9', '', '', 0, NULL);

-- ----------------------------
-- Table structure for account_dostup
-- ----------------------------
DROP TABLE IF EXISTS `account_dostup`;
CREATE TABLE `account_dostup`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `acc_id` int(255) NOT NULL DEFAULT 0,
  `dostup` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_dostup
-- ----------------------------
INSERT INTO `account_dostup` VALUES (33, 2, 3);
INSERT INTO `account_dostup` VALUES (34, 2, 1);
INSERT INTO `account_dostup` VALUES (35, 2, 2);
INSERT INTO `account_dostup` VALUES (36, 2, 4);

-- ----------------------------
-- Table structure for account_forgot_password
-- ----------------------------
DROP TABLE IF EXISTS `account_forgot_password`;
CREATE TABLE `account_forgot_password`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_account` int(10) NOT NULL DEFAULT 1,
  `date` int(10) NOT NULL DEFAULT 1,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for account_info
-- ----------------------------
DROP TABLE IF EXISTS `account_info`;
CREATE TABLE `account_info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `acc_id` int(5) NOT NULL DEFAULT 0,
  `fam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `otch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `famEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nameEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `otchEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `work` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_info
-- ----------------------------
INSERT INTO `account_info` VALUES (1, 2, 'Палаш', 'Борис', 'Викторович', 'Palash', 'Boris', 'Victorovich', '79831404944', 'Нету', 'Не эта', 'Абакан', 'Фрилансер', 'Сам не знаю');
INSERT INTO `account_info` VALUES (2, 5, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `account_info` VALUES (3, 6, '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for account_log_status
-- ----------------------------
DROP TABLE IF EXISTS `account_log_status`;
CREATE TABLE `account_log_status`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dates` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_log_status
-- ----------------------------
INSERT INTO `account_log_status` VALUES (1, '127.0.0.1', 'lokokohad', '2020-06-16 11:55:58', 1);
INSERT INTO `account_log_status` VALUES (2, '127.0.0.1', 'lokokohad', '2020-06-16 11:56:32', 1);
INSERT INTO `account_log_status` VALUES (3, '127.0.0.1', 'lokokohad', '2020-06-16 19:54:50', 1);
INSERT INTO `account_log_status` VALUES (4, '127.0.0.1', 'lokokohad', '2020-06-19 11:59:00', 1);
INSERT INTO `account_log_status` VALUES (5, '127.0.0.1', 'qwd', '2020-06-19 20:56:55', 0);
INSERT INTO `account_log_status` VALUES (6, '127.0.0.1', 'lokokohad', '2020-06-19 21:11:55', 1);
INSERT INTO `account_log_status` VALUES (7, '127.0.0.1', 'lokokohad', '2020-06-21 09:04:45', 1);
INSERT INTO `account_log_status` VALUES (8, '127.0.0.1', 'lokokohad', '2020-06-21 21:50:05', 1);
INSERT INTO `account_log_status` VALUES (9, '127.0.0.1', 'lokokohad', '2020-06-24 13:12:35', 1);
INSERT INTO `account_log_status` VALUES (10, '127.0.0.1', 'lokokohad', '2020-06-26 18:32:04', 1);
INSERT INTO `account_log_status` VALUES (11, '127.0.0.1', 'lokokohad', '2020-07-01 09:10:45', 1);
INSERT INTO `account_log_status` VALUES (12, '127.0.0.1', 'lokokohad', '2020-07-11 10:56:50', 1);
INSERT INTO `account_log_status` VALUES (13, '127.0.0.1', 'lokokohad', '2020-07-12 13:46:37', 1);
INSERT INTO `account_log_status` VALUES (14, '127.0.0.1', 'lokokohad', '2020-07-14 12:10:21', 1);
INSERT INTO `account_log_status` VALUES (15, '127.0.0.1', 'lokokohad', '2020-07-23 08:43:50', 1);
INSERT INTO `account_log_status` VALUES (16, '127.0.0.1', 'lokokohad', '2020-07-29 14:13:54', 1);
INSERT INTO `account_log_status` VALUES (17, '127.0.0.1', 'lokokohad', '2020-07-31 08:51:55', 1);
INSERT INTO `account_log_status` VALUES (18, '127.0.0.1', '2у1', '2020-07-31 11:38:32', 0);
INSERT INTO `account_log_status` VALUES (19, '127.0.0.1', 'lokokohad', '2020-07-31 11:38:38', 1);
INSERT INTO `account_log_status` VALUES (20, '127.0.0.1', 'lokokohad', '2020-07-31 11:39:09', 1);
INSERT INTO `account_log_status` VALUES (21, '127.0.0.1', 'lokokohad', '2020-08-08 08:41:26', 1);
INSERT INTO `account_log_status` VALUES (22, '127.0.0.1', 'lokokohad', '2020-08-13 07:23:54', 1);
INSERT INTO `account_log_status` VALUES (23, '127.0.0.1', 'test', '2020-08-17 11:19:21', 1);
INSERT INTO `account_log_status` VALUES (24, '127.0.0.1', 'test', '2020-08-18 12:11:07', 1);
INSERT INTO `account_log_status` VALUES (25, '127.0.0.1', 'lokokohad', '2020-08-18 12:11:13', 1);
INSERT INTO `account_log_status` VALUES (26, '127.0.0.1', 'lokokohad', '2020-08-25 21:09:28', 1);
INSERT INTO `account_log_status` VALUES (27, '127.0.0.1', 'lokokohad', '2020-09-03 18:25:33', 1);
INSERT INTO `account_log_status` VALUES (28, '127.0.0.1', 'lokokohad', '2020-10-01 17:38:42', 1);
INSERT INTO `account_log_status` VALUES (29, '127.0.0.1', 'lokokohad', '2020-10-01 18:12:53', 1);
INSERT INTO `account_log_status` VALUES (30, '127.0.0.1', 'lokokohad', '2020-10-06 22:18:24', 1);
INSERT INTO `account_log_status` VALUES (31, '127.0.0.1', 'test', '2020-10-06 23:09:18', 1);
INSERT INTO `account_log_status` VALUES (32, '127.0.0.1', 'test', '2020-10-06 23:09:37', 0);
INSERT INTO `account_log_status` VALUES (33, '127.0.0.1', 'test', '2020-10-06 23:09:45', 0);
INSERT INTO `account_log_status` VALUES (34, '127.0.0.1', 'test', '2020-10-06 23:09:53', 0);
INSERT INTO `account_log_status` VALUES (35, '127.0.0.1', 'test', '2020-10-06 23:10:04', 0);
INSERT INTO `account_log_status` VALUES (36, '127.0.0.1', 'test', '2020-10-06 23:10:12', 0);
INSERT INTO `account_log_status` VALUES (37, '127.0.0.1', 'lokokohad', '2020-10-06 23:11:42', 1);
INSERT INTO `account_log_status` VALUES (38, '127.0.0.1', 'lokokohad', '2020-10-06 23:12:04', 0);
INSERT INTO `account_log_status` VALUES (39, '127.0.0.1', 'lokokohad', '2020-10-06 23:12:10', 1);
INSERT INTO `account_log_status` VALUES (40, '127.0.0.1', 'test', '2020-10-06 23:17:22', 1);
INSERT INTO `account_log_status` VALUES (41, '127.0.0.1', 'lokokohad', '2020-10-10 20:15:57', 1);
INSERT INTO `account_log_status` VALUES (42, '127.0.0.1', 'test', '2020-10-15 10:38:36', 1);
INSERT INTO `account_log_status` VALUES (43, '127.0.0.1', 'lokokohad', '2020-10-15 10:40:03', 1);

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_account` int(5) NOT NULL DEFAULT 0,
  `conferences_section_id` int(5) NOT NULL DEFAULT 0,
  `form_participation` int(5) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `titleEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keywordEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES (1, 2, 1, 1, 'Тестовое название', 'Test Name', 'Тест', 'Test', 2);
INSERT INTO `application` VALUES (2, 2, 3, 1, '213123', '1231', '123123', '123123', 1);
INSERT INTO `application` VALUES (3, 2, 3, 1, '213123', '1231', '123123', '123123', 1);
INSERT INTO `application` VALUES (4, 4, 3, 1, '213123', '1231', '123123', '123123', 0);
INSERT INTO `application` VALUES (5, 2, 6, 1, 'ыфвфыв', 'фыв', 'фыв', 'фыв', 1);

-- ----------------------------
-- Table structure for application_chat
-- ----------------------------
DROP TABLE IF EXISTS `application_chat`;
CREATE TABLE `application_chat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_application` int(5) NOT NULL DEFAULT 0,
  `id_commentator` int(5) NOT NULL DEFAULT 0,
  `dates` int(10) NOT NULL DEFAULT 0,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of application_chat
-- ----------------------------
INSERT INTO `application_chat` VALUES (1, 1, 2, 0, '', 1);
INSERT INTO `application_chat` VALUES (2, 1, 2, 1592994579, '', 1);
INSERT INTO `application_chat` VALUES (3, 1, 5, 1592994582, 'qwdwdq', 1);
INSERT INTO `application_chat` VALUES (4, 1, 2, 1592995035, 'qwdwdq', 1);
INSERT INTO `application_chat` VALUES (5, 1, 2, 1592995063, 'qwdwdq', 1);
INSERT INTO `application_chat` VALUES (6, 1, 2, 1592995069, 'qwdwdq', 1);
INSERT INTO `application_chat` VALUES (7, 1, 2, 1594639730, 'efewfw', 1);
INSERT INTO `application_chat` VALUES (8, 1, 2, 1597338403, 'efewfwS', 1);
INSERT INTO `application_chat` VALUES (9, 1, 2, 1597338522, 'efewfwS', 1);
INSERT INTO `application_chat` VALUES (10, 1, 2, 1597338651, 'asdasdas', 1);

-- ----------------------------
-- Table structure for application_chat_copy1
-- ----------------------------
DROP TABLE IF EXISTS `application_chat_copy1`;
CREATE TABLE `application_chat_copy1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_application` int(5) NOT NULL DEFAULT 0,
  `id_commentator` int(5) NOT NULL DEFAULT 0,
  `dates` int(10) NOT NULL DEFAULT 0,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of application_chat_copy1
-- ----------------------------
INSERT INTO `application_chat_copy1` VALUES (1, 1, 2, 0, '', 1);
INSERT INTO `application_chat_copy1` VALUES (2, 1, 2, 1592994579, '', 1);
INSERT INTO `application_chat_copy1` VALUES (3, 1, 5, 1592994582, 'qwdwdq', 1);
INSERT INTO `application_chat_copy1` VALUES (4, 1, 2, 1592995035, 'qwdwdq', 1);
INSERT INTO `application_chat_copy1` VALUES (5, 1, 2, 1592995063, 'qwdwdq', 1);
INSERT INTO `application_chat_copy1` VALUES (6, 1, 2, 1592995069, 'qwdwdq', 1);
INSERT INTO `application_chat_copy1` VALUES (7, 1, 2, 1594639730, 'efewfw', 1);
INSERT INTO `application_chat_copy1` VALUES (8, 1, 2, 1597338403, 'efewfwS', 1);
INSERT INTO `application_chat_copy1` VALUES (9, 1, 2, 1597338522, 'efewfwS', 1);
INSERT INTO `application_chat_copy1` VALUES (10, 1, 2, 1597338651, 'asdasdas', 1);

-- ----------------------------
-- Table structure for application_copy1
-- ----------------------------
DROP TABLE IF EXISTS `application_copy1`;
CREATE TABLE `application_copy1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_account` int(5) NOT NULL DEFAULT 0,
  `conferences_section_id` int(5) NOT NULL DEFAULT 0,
  `form_participation` int(5) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `titleEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keywordEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of application_copy1
-- ----------------------------
INSERT INTO `application_copy1` VALUES (1, 2, 1, 1, 'Тестовое название', 'Test Name', 'Тест', 'Test', 2);
INSERT INTO `application_copy1` VALUES (2, 2, 3, 1, '213123', '1231', '123123', '123123', 1);
INSERT INTO `application_copy1` VALUES (3, 2, 3, 1, '213123', '1231', '123123', '123123', 1);
INSERT INTO `application_copy1` VALUES (4, 4, 3, 1, '213123', '1231', '123123', '123123', 0);
INSERT INTO `application_copy1` VALUES (5, 2, 6, 1, 'ыфвфыв', 'фыв', 'фыв', 'фыв', 1);

-- ----------------------------
-- Table structure for conferences
-- ----------------------------
DROP TABLE IF EXISTS `conferences`;
CREATE TABLE `conferences`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of conferences
-- ----------------------------
INSERT INTO `conferences` VALUES (1, 'Тестовое название', 'wadawda', 'https://via.placeholder.com/800x500', 1);
INSERT INTO `conferences` VALUES (2, 'Тестовое название 2', '', 'https://via.placeholder.com/800x500', 1);
INSERT INTO `conferences` VALUES (4, 'Тестовое название 5', 'qwdqwdq wdqw', 'https://via.placeholder.com/800x500', 1);
INSERT INTO `conferences` VALUES (19, 'qwdqwd', 'qwdqwd', 'https://via.placeholder.com/800x500', 1);

-- ----------------------------
-- Table structure for conferences_admin
-- ----------------------------
DROP TABLE IF EXISTS `conferences_admin`;
CREATE TABLE `conferences_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `conferences_id` int(5) NOT NULL DEFAULT 0,
  `user_id` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of conferences_admin
-- ----------------------------
INSERT INTO `conferences_admin` VALUES (6, 4, 2);
INSERT INTO `conferences_admin` VALUES (8, 1, 2);

-- ----------------------------
-- Table structure for conferences_file
-- ----------------------------
DROP TABLE IF EXISTS `conferences_file`;
CREATE TABLE `conferences_file`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_conf` int(5) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `old_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of conferences_file
-- ----------------------------
INSERT INTO `conferences_file` VALUES (2, 1, '1_1_G9m88qw.rtf', './upload/dop_file/1_1_G9m88qw.rtf', 'License_uk.rtf');
INSERT INTO `conferences_file` VALUES (3, 1, '1_1_Gb8mp5P.rtf', './upload/dop_file/1_1_Gb8mp5P.rtf', 'License_en.rtf');
INSERT INTO `conferences_file` VALUES (4, 1, '1_1_S0vlOoV.rtf', './upload/dop_file/1_1_S0vlOoV.rtf', 'License_uk.rtf');
INSERT INTO `conferences_file` VALUES (6, 19, '19_1_MFy4eJk.txt', './upload/dop_file/19_1_MFy4eJk.txt', 'README.txt');

-- ----------------------------
-- Table structure for conferences_section
-- ----------------------------
DROP TABLE IF EXISTS `conferences_section`;
CREATE TABLE `conferences_section`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `conferences_id` int(5) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of conferences_section
-- ----------------------------
INSERT INTO `conferences_section` VALUES (1, 1, 'Секция 1');
INSERT INTO `conferences_section` VALUES (3, 2, 'Тестовое название');
INSERT INTO `conferences_section` VALUES (4, 2, 'Тестовое название');
INSERT INTO `conferences_section` VALUES (6, 1, 'Секция 2');
INSERT INTO `conferences_section` VALUES (7, 2, 'Тестовое название очень длинной секции которая прям некуда не влезает уродина');
INSERT INTO `conferences_section` VALUES (8, 2, 'Тестовое название очень длинной секции которая прям некуда не влезает уродина');

-- ----------------------------
-- Table structure for conferences_section_admin
-- ----------------------------
DROP TABLE IF EXISTS `conferences_section_admin`;
CREATE TABLE `conferences_section_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `section_id` int(5) NOT NULL DEFAULT 0,
  `user_id` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of conferences_section_admin
-- ----------------------------
INSERT INTO `conferences_section_admin` VALUES (7, 1, 2);
INSERT INTO `conferences_section_admin` VALUES (8, 6, 2);

-- ----------------------------
-- Table structure for dostup
-- ----------------------------
DROP TABLE IF EXISTS `dostup`;
CREATE TABLE `dostup`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dostup
-- ----------------------------
INSERT INTO `dostup` VALUES (1, 'Управление секциями');
INSERT INTO `dostup` VALUES (2, 'Управление конференциями');
INSERT INTO `dostup` VALUES (3, 'Биг Босс');
INSERT INTO `dostup` VALUES (4, 'Рассматривать заявки');

-- ----------------------------
-- Table structure for file_application
-- ----------------------------
DROP TABLE IF EXISTS `file_application`;
CREATE TABLE `file_application`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_application` int(5) NOT NULL DEFAULT 0,
  `dates` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `old_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(2) NOT NULL DEFAULT 0,
  `id_acc_upload` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of file_application
-- ----------------------------
INSERT INTO `file_application` VALUES (1, 2, 1596182350, '2_2_uUcXTec.jpg', 'runecarver.jpg', './uploads/user_file/2_2_uUcXTec.jpg', 0, 0);
INSERT INTO `file_application` VALUES (2, 3, 1596182397, '2_3_jqIdGpQ.jpg', 'runecarver.jpg', './upload/user_file/2_3_jqIdGpQ.jpg', 0, 0);
INSERT INTO `file_application` VALUES (3, 4, 1596182427, '2_4_U55iMIa.jpg', 'runecarver.jpg', './upload/user_file/2_4_U55iMIa.jpg', 0, 0);
INSERT INTO `file_application` VALUES (4, 2, 1596184066, '2_2_ecBQta6.jpg', 'runecarver.jpg', './upload/user_file/2_2_ecBQta6.jpg', 1, 2);

-- ----------------------------
-- Table structure for file_application_copy1
-- ----------------------------
DROP TABLE IF EXISTS `file_application_copy1`;
CREATE TABLE `file_application_copy1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `id_application` int(5) NOT NULL DEFAULT 0,
  `dates` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `old_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(2) NOT NULL DEFAULT 0,
  `id_acc_upload` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of file_application_copy1
-- ----------------------------
INSERT INTO `file_application_copy1` VALUES (1, 2, 1596182350, '2_2_uUcXTec.jpg', 'runecarver.jpg', './uploads/user_file/2_2_uUcXTec.jpg', 0, 0);
INSERT INTO `file_application_copy1` VALUES (2, 3, 1596182397, '2_3_jqIdGpQ.jpg', 'runecarver.jpg', './upload/user_file/2_3_jqIdGpQ.jpg', 0, 0);
INSERT INTO `file_application_copy1` VALUES (3, 4, 1596182427, '2_4_U55iMIa.jpg', 'runecarver.jpg', './upload/user_file/2_4_U55iMIa.jpg', 0, 0);
INSERT INTO `file_application_copy1` VALUES (4, 2, 1596184066, '2_2_ecBQta6.jpg', 'runecarver.jpg', './upload/user_file/2_2_ecBQta6.jpg', 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
