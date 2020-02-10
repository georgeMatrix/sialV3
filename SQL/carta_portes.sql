/*
Navicat MySQL Data Transfer

Source Server         : localhost2018
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : sialv2

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2019-06-24 12:10:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for carta_portes
-- ----------------------------
DROP TABLE IF EXISTS `carta_portes`;
CREATE TABLE `carta_portes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `rutas` int(10) unsigned NOT NULL,
  `unidades` int(10) unsigned NOT NULL,
  `remolques` int(10) unsigned NOT NULL,
  `operadores` int(10) unsigned NOT NULL,
  `referencia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaDeEmbarque` datetime NOT NULL,
  `fechaDeEntrega` datetime NOT NULL,
  `ultimoStatus` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carta_portes_rutas_foreign` (`rutas`),
  KEY `carta_portes_unidades_foreign` (`unidades`),
  KEY `carta_portes_remolques_foreign` (`remolques`),
  KEY `carta_portes_operadores_foreign` (`operadores`),
  CONSTRAINT `carta_portes_operadores_foreign` FOREIGN KEY (`operadores`) REFERENCES `operadores` (`id`),
  CONSTRAINT `carta_portes_remolques_foreign` FOREIGN KEY (`remolques`) REFERENCES `unidades` (`id`),
  CONSTRAINT `carta_portes_rutas_foreign` FOREIGN KEY (`rutas`) REFERENCES `rutas` (`id`),
  CONSTRAINT `carta_portes_unidades_foreign` FOREIGN KEY (`unidades`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of carta_portes
-- ----------------------------
