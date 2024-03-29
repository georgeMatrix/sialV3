/*
Navicat MySQL Data Transfer

Source Server         : localhost2018
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : sialv2

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2019-06-20 11:40:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cruces
-- ----------------------------
DROP TABLE IF EXISTS `cruces`;
CREATE TABLE `cruces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cartaPorte` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cruces_cartaporte_foreign` (`cartaPorte`),
  CONSTRAINT `cruces_cartaporte_foreign` FOREIGN KEY (`cartaPorte`) REFERENCES `carta_portes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cruces
-- ----------------------------
