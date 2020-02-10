/*
Navicat MySQL Data Transfer

Source Server         : SGXSISTEMAS
Source Server Version : 50726
Source Host           : egxsistemas.com:3306
Source Database       : egxsiste_principal

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-24 12:17:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for actividads
-- ----------------------------
DROP TABLE IF EXISTS `actividads`;
CREATE TABLE `actividads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tabla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of actividads
-- ----------------------------
INSERT INTO `actividads` VALUES ('1', 'App\\Clientes', '1', '2019-06-20 13:35:02', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:35:02', '2019-06-20 13:35:02');
INSERT INTO `actividads` VALUES ('2', 'App\\Clientes', '2', '2019-06-20 13:36:53', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:36:53', '2019-06-20 13:36:53');
INSERT INTO `actividads` VALUES ('3', 'App\\Operadores', '1', '2019-06-20 13:37:33', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:37:33', '2019-06-20 13:37:33');
INSERT INTO `actividads` VALUES ('4', 'App\\Operadores', '1', '2019-06-20 13:37:57', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:37:57', '2019-06-20 13:37:57');
INSERT INTO `actividads` VALUES ('5', 'App\\Provedores', '1', '2019-06-20 13:38:25', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:38:25', '2019-06-20 13:38:25');
INSERT INTO `actividads` VALUES ('6', 'App\\Provedores', '2', '2019-06-20 13:39:28', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:39:28', '2019-06-20 13:39:28');
INSERT INTO `actividads` VALUES ('7', 'App\\Unidades', '1', '2019-06-20 13:40:13', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:40:13', '2019-06-20 13:40:13');
INSERT INTO `actividads` VALUES ('8', 'App\\Unidades', '1', '2019-06-20 13:41:08', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:41:08', '2019-06-20 13:41:08');
INSERT INTO `actividads` VALUES ('9', 'App\\Unidades', '1', '2019-06-20 13:41:38', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:41:38', '2019-06-20 13:41:38');
INSERT INTO `actividads` VALUES ('10', 'App\\Usuarios', '1', '2019-06-20 13:49:51', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:49:51', '2019-06-20 13:49:51');
INSERT INTO `actividads` VALUES ('11', 'App\\Usuarios', '2', '2019-06-20 13:51:28', 'guardado', 'guardado', 'MATRIX', '2019-06-20 13:51:28', '2019-06-20 13:51:28');
INSERT INTO `actividads` VALUES ('12', 'App\\Rutas', '1', '2019-06-20 13:52:28', 'guardado', 'guardado', 'MATRIX', '2019-06-20 14:14:16', '2019-06-20 14:14:16');
INSERT INTO `actividads` VALUES ('13', 'App\\DatosFacturacion', '1', '2019-06-20 13:52:28', 'guardado', 'guardado', 'MATRIX', '2019-06-20 14:15:35', '2019-06-20 14:15:35');
INSERT INTO `actividads` VALUES ('14', 'App\\DatosCporPagar', '1', '2019-06-20 13:52:28', 'guardado', 'guardado', 'MATRIX', '2019-06-20 14:16:23', '2019-06-20 14:16:23');
INSERT INTO `actividads` VALUES ('15', 'App\\CartaPorte', '1', '2019-06-20 14:17:27', 'guardado', 'guardado', 'MATRIX', '2019-06-20 14:17:27', '2019-06-20 14:17:27');
INSERT INTO `actividads` VALUES ('16', 'App\\CartaPorte', '2', '2019-06-20 14:19:14', 'guardado', 'guardado', 'MATRIX', '2019-06-20 14:19:14', '2019-06-20 14:19:14');
INSERT INTO `actividads` VALUES ('17', 'App\\CartaPorte', '3', '2019-06-20 14:19:42', 'guardado', 'guardado', 'MATRIX', '2019-06-20 14:19:42', '2019-06-20 14:19:42');
INSERT INTO `actividads` VALUES ('18', 'App\\Provedores', '3', '2019-06-20 15:00:22', 'guardado', 'guardado', 'don gato', '2019-06-20 15:00:22', '2019-06-20 15:00:22');
INSERT INTO `actividads` VALUES ('19', 'App\\Provedores', '4', '2019-06-20 15:03:50', 'guardado', 'guardado', 'don gato', '2019-06-20 15:03:50', '2019-06-20 15:03:50');
INSERT INTO `actividads` VALUES ('20', 'App\\Clientes', '3', '2019-06-20 16:13:25', 'guardado', 'guardado', 'PEDRO NIETO GANTE LONG STRING CHARTER', '2019-06-20 16:13:25', '2019-06-20 16:13:25');
INSERT INTO `actividads` VALUES ('21', 'App\\Clientes', '3', '2019-06-20 16:15:10', 'actualizado', 'actualizado', 'PEDRO NIETO GANTE LONG STRING CHARTER', '2019-06-20 16:15:10', '2019-06-20 16:15:10');
INSERT INTO `actividads` VALUES ('22', 'App\\Provedores', '5', '2019-06-20 16:18:04', 'guardado', 'guardado', 'PEDRO NIETO GANTE LONG STRING CHARTER', '2019-06-20 16:18:04', '2019-06-20 16:18:04');
INSERT INTO `actividads` VALUES ('23', 'App\\Operadores', '1', '2019-06-20 16:19:10', 'guardado', 'guardado', 'PEDRO NIETO GANTE LONG STRING CHARTER', '2019-06-20 16:19:10', '2019-06-20 16:19:10');
INSERT INTO `actividads` VALUES ('24', 'App\\Unidades', '1', '2019-06-20 16:23:40', 'guardado', 'guardado', 'PEDRO NIETO GANTE LONG STRING CHARTER', '2019-06-20 16:23:40', '2019-06-20 16:23:40');
INSERT INTO `actividads` VALUES ('25', 'App\\Clientes', '4', '2019-06-20 16:38:17', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 16:38:17', '2019-06-20 16:38:17');
INSERT INTO `actividads` VALUES ('26', 'App\\Clientes', '5', '2019-06-20 16:39:11', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 16:39:11', '2019-06-20 16:39:11');
INSERT INTO `actividads` VALUES ('27', 'App\\Clientes', '6', '2019-06-20 16:39:50', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 16:39:50', '2019-06-20 16:39:50');
INSERT INTO `actividads` VALUES ('28', 'App\\Unidades', '1', '2019-06-20 16:44:55', 'guardado', 'guardado', 'MATRIX', '2019-06-20 16:44:55', '2019-06-20 16:44:55');
INSERT INTO `actividads` VALUES ('29', 'App\\Operadores', '1', '2019-06-20 16:53:04', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 16:53:04', '2019-06-20 16:53:04');
INSERT INTO `actividads` VALUES ('30', 'App\\Provedores', '6', '2019-06-20 16:58:30', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 16:58:30', '2019-06-20 16:58:30');
INSERT INTO `actividads` VALUES ('31', 'App\\Rutas', '2', '2019-06-20 16:59:22', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 17:13:47', '2019-06-20 17:13:47');
INSERT INTO `actividads` VALUES ('32', 'App\\Unidades', '1', '2019-06-20 17:27:09', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 17:27:09', '2019-06-20 17:27:09');
INSERT INTO `actividads` VALUES ('33', 'App\\CartaPorte', '4', '2019-06-20 17:31:31', 'guardado', 'guardado', 'HOMERO TE QUIERO EXACTO MILECIMO', '2019-06-20 17:31:31', '2019-06-20 17:31:31');
INSERT INTO `actividads` VALUES ('34', 'App\\Rutas', '3', '2019-06-21 12:32:38', 'guardado', 'guardado', 'MATRIX', '2019-06-21 12:33:09', '2019-06-21 12:33:09');
INSERT INTO `actividads` VALUES ('35', 'App\\Rutas', '4', '2019-06-21 12:38:54', 'guardado', 'guardado', 'MATRIX', '2019-06-21 12:39:29', '2019-06-21 12:39:29');
INSERT INTO `actividads` VALUES ('36', 'App\\Clientes', '7', '2019-06-22 13:39:01', 'guardado', 'guardado', 'PEDRO NIETO GANTE LONG STRING CHARTER', '2019-06-22 13:39:01', '2019-06-22 13:39:01');

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
  `ultimoStatus` int(10) unsigned DEFAULT NULL,
  `fechaStatus` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carta_portes_rutas_foreign` (`rutas`),
  KEY `carta_portes_unidades_foreign` (`unidades`),
  KEY `carta_portes_remolques_foreign` (`remolques`),
  KEY `carta_portes_operadores_foreign` (`operadores`),
  KEY `carta_portes_ultimostatus_foreign` (`ultimoStatus`),
  KEY `carta_portes_fechastatus_foreign` (`fechaStatus`),
  CONSTRAINT `carta_portes_fechastatus_foreign` FOREIGN KEY (`fechaStatus`) REFERENCES `actividads` (`id`),
  CONSTRAINT `carta_portes_operadores_foreign` FOREIGN KEY (`operadores`) REFERENCES `operadores` (`id`),
  CONSTRAINT `carta_portes_remolques_foreign` FOREIGN KEY (`remolques`) REFERENCES `unidades` (`id`),
  CONSTRAINT `carta_portes_rutas_foreign` FOREIGN KEY (`rutas`) REFERENCES `rutas` (`id`),
  CONSTRAINT `carta_portes_ultimostatus_foreign` FOREIGN KEY (`ultimoStatus`) REFERENCES `actividads` (`id`),
  CONSTRAINT `carta_portes_unidades_foreign` FOREIGN KEY (`unidades`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of carta_portes
-- ----------------------------
INSERT INTO `carta_portes` VALUES ('1', 'n', '2019-06-03', '1', '2', '3', '2', 'una que otra', '2019-06-11 00:00:00', '2019-06-25 00:00:00', null, null, '2019-06-20 14:17:27', '2019-06-20 14:17:27');
INSERT INTO `carta_portes` VALUES ('2', 'n', '2019-06-18', '1', '1', '3', '1', 'algo', '2019-06-21 00:00:00', '2019-06-06 00:00:00', null, null, '2019-06-20 14:19:14', '2019-06-20 14:19:14');
INSERT INTO `carta_portes` VALUES ('3', 'e', '2019-06-27', '1', '2', '3', '1', 'sumado', '2019-06-21 00:00:00', '2019-06-22 00:00:00', null, null, '2019-06-20 14:19:42', '2019-06-20 14:19:42');
INSERT INTO `carta_portes` VALUES ('4', 'n', '2019-06-21', '2', '6', '3', '4', 'AZY21062019', '2019-06-21 00:00:00', '2019-06-28 00:00:00', null, null, '2019-06-20 17:31:31', '2019-06-20 17:31:31');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interior` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacto1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacto2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_revision` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_credito` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'Ernesto Gomez Perez', 'calle union 5', '5', '3', 'Juan de Dios', 'Tultepec Centro', '82453', 'Mexico', '58786369', '65656598', 'ernesto@gmail.com', '9898989898', '3265542112', 'ernesto@gmail.com', '2', '15', '2019-06-20 13:35:02', '2019-06-20 13:35:02');
INSERT INTO `clientes` VALUES ('2', 'Flavio Perez', 'benito juarez', '5', '5', 'La romita', 'Cuautitlan', '54876', 'Aguascalientes', '5454545454', '5454512121', 'flavio@gmail.com', '2154847222', '5487542154', 'flavio@gmail.com', '3', '21', '2019-06-20 13:36:53', '2019-06-20 13:36:53');
INSERT INTO `clientes` VALUES ('3', 'DISTRIBUCIONES H3 S DE RL DE CV', 'EMISOR A', '12', 'NA', 'SAN MATEO', 'CUAUTITLAN', '56700', 'MEXICO', 'LUCERO HERNANDEZ', '468426', 'compras@distribuciongh.com', 'NA', 'NA', 'NA@NA', '1', '10', '2019-06-20 16:13:25', '2019-06-20 16:15:10');
INSERT INTO `clientes` VALUES ('4', 'TRANSPORTES HOMERO S.A.', 'NORIA', '36', 'NA', 'TLAMACAS', 'TULTEPEC', '56950', 'ESTADO DE MÉXICO', 'SR. HOMERO TE QUIERO', '55 7150 3134', 'homerotequiero@outlook.es', 'na', 'na', 'na@na', '1', '1', '2019-06-20 16:38:17', '2019-06-20 16:38:17');
INSERT INTO `clientes` VALUES ('5', 'TRANSPORTES HOMERO S.A.', 'NORIA', '36', 'NA', 'TLAMACAS', 'TULTEPEC', '56950', 'ESTADO DE MÉXICO', 'SR. HOMERO TE QUIERO', '55 7150 3134', 'homerotequiero@outlook.es', 'na', 'na', 'na@na', '1', '1', '2019-06-20 16:39:11', '2019-06-20 16:39:11');
INSERT INTO `clientes` VALUES ('6', 'TRANSPORTES HOMERO S.A.', 'NORIA', '36', 'NA', 'TLAMACAS', 'TULTEPEC', '56950', 'ESTADO DE MÉXICO', 'SR. HOMERO TEQUIERO', '55 7150 3134', 'homerotequiero@outlook.es', 'na', 'na', 'na@na', '1', '1', '2019-06-20 16:39:50', '2019-06-20 16:39:50');
INSERT INTO `clientes` VALUES ('7', 'PRODUCTOS INNOVADOR SA DE CV', 'CARR CUAUTITLAN TLALNEPANTA', '1000', 'NA', 'LOMA LINDA', 'TULTITLAN', '54690', 'MEXICO', 'NA', 'NA', 'contacto@innovador.com', 'NA', 'NA', 'na@na', '1', '15', '2019-06-22 13:39:01', '2019-06-22 13:39:01');

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

-- ----------------------------
-- Table structure for datos_cpor_pagars
-- ----------------------------
DROP TABLE IF EXISTS `datos_cpor_pagars`;
CREATE TABLE `datos_cpor_pagars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ruta` int(10) unsigned NOT NULL,
  `concepto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asignacionPrecio` int(10) unsigned NOT NULL,
  `claveProdServ` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noIdentificacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `claveUnidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorUnitario` int(11) NOT NULL,
  `importe` int(11) NOT NULL,
  `tivaCxP` int(11) NOT NULL,
  `tisrCxP` int(11) NOT NULL,
  `rivaCxP` int(11) NOT NULL,
  `risrCxP` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datos_cpor_pagars_ruta_foreign` (`ruta`),
  KEY `datos_cpor_pagars_asignacionprecio_foreign` (`asignacionPrecio`),
  CONSTRAINT `datos_cpor_pagars_asignacionprecio_foreign` FOREIGN KEY (`asignacionPrecio`) REFERENCES `provedores` (`id`),
  CONSTRAINT `datos_cpor_pagars_ruta_foreign` FOREIGN KEY (`ruta`) REFERENCES `rutas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of datos_cpor_pagars
-- ----------------------------
INSERT INTO `datos_cpor_pagars` VALUES ('1', '1', '1', '1', 'ok', 'ok', '8000', 'ok', 'ok', 'ok', '5000', '10', '10', '10', '10', '10', '2019-06-20 14:16:23', '2019-06-20 14:16:23');

-- ----------------------------
-- Table structure for datos_facturacions
-- ----------------------------
DROP TABLE IF EXISTS `datos_facturacions`;
CREATE TABLE `datos_facturacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rutas` int(10) unsigned NOT NULL,
  `facturador` int(11) NOT NULL,
  `asignacionPrecio` int(10) unsigned NOT NULL,
  `claveProdServ` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noIdentificacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` double NOT NULL,
  `claveUnidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorUnitario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importe` double NOT NULL,
  `tIva` double NOT NULL,
  `tIsr` double NOT NULL,
  `rIva` double NOT NULL,
  `rIsr` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datos_facturacions_rutas_foreign` (`rutas`),
  KEY `datos_facturacions_asignacionprecio_foreign` (`asignacionPrecio`),
  CONSTRAINT `datos_facturacions_asignacionprecio_foreign` FOREIGN KEY (`asignacionPrecio`) REFERENCES `provedores` (`id`),
  CONSTRAINT `datos_facturacions_rutas_foreign` FOREIGN KEY (`rutas`) REFERENCES `rutas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of datos_facturacions
-- ----------------------------
INSERT INTO `datos_facturacions` VALUES ('1', '1', '245525', '1', '54lklk', 'lkj4562', '1000', '456d', '4565', 'guardado', '5000', '50000', '10', '10', '10', '10', '2019-06-20 14:15:35', '2019-06-20 14:15:35');

-- ----------------------------
-- Table structure for exportacions
-- ----------------------------
DROP TABLE IF EXISTS `exportacions`;
CREATE TABLE `exportacions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cartaPorte` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exportacions_cartaporte_foreign` (`cartaPorte`),
  CONSTRAINT `exportacions_cartaporte_foreign` FOREIGN KEY (`cartaPorte`) REFERENCES `carta_portes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of exportacions
-- ----------------------------
INSERT INTO `exportacions` VALUES ('1', '3', '2019-06-20 14:19:42', '2019-06-20 14:19:42');

-- ----------------------------
-- Table structure for internacionals
-- ----------------------------
DROP TABLE IF EXISTS `internacionals`;
CREATE TABLE `internacionals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cartaPorte` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `internacionals_cartaporte_foreign` (`cartaPorte`),
  CONSTRAINT `internacionals_cartaporte_foreign` FOREIGN KEY (`cartaPorte`) REFERENCES `carta_portes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of internacionals
-- ----------------------------

-- ----------------------------
-- Table structure for nacionals
-- ----------------------------
DROP TABLE IF EXISTS `nacionals`;
CREATE TABLE `nacionals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cartaPorte` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nacionals_cartaporte_foreign` (`cartaPorte`),
  CONSTRAINT `nacionals_cartaporte_foreign` FOREIGN KEY (`cartaPorte`) REFERENCES `carta_portes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nacionals
-- ----------------------------
INSERT INTO `nacionals` VALUES ('1', '1', '2019-06-20 14:17:27', '2019-06-20 14:17:27');
INSERT INTO `nacionals` VALUES ('2', '2', '2019-06-20 14:19:14', '2019-06-20 14:19:14');
INSERT INTO `nacionals` VALUES ('3', '4', '2019-06-20 17:31:31', '2019-06-20 17:31:31');

-- ----------------------------
-- Table structure for operadores
-- ----------------------------
DROP TABLE IF EXISTS `operadores`;
CREATE TABLE `operadores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apellido_paterno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_corto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `licencia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vigencia_licencia` date NOT NULL,
  `vigencia_medico` date NOT NULL,
  `obs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operadores
-- ----------------------------
INSERT INTO `operadores` VALUES ('1', 'Operador uno', 'Operador uno', 'Operador uno', 'Operador uno', 'asda2542w', '2019-06-05', '2019-06-06', null, '2019-06-20 13:37:33', '2019-06-20 13:37:33');
INSERT INTO `operadores` VALUES ('2', 'Operador dos', 'Operador dos', 'Operador dos', 'Operador dos', 'kjkjs54s', '2019-06-19', '2019-06-20', null, '2019-06-20 13:37:57', '2019-06-20 13:37:57');
INSERT INTO `operadores` VALUES ('3', 'CALZADA', 'JIMENEZ', 'GREGORIO', 'GOLLO C', 'DF598468', '2020-08-07', '2020-06-19', null, '2019-06-20 16:19:10', '2019-06-20 16:19:10');
INSERT INTO `operadores` VALUES ('4', 'JIMÉNEZ', 'SILVA', 'TIO PEDRO', 'TIO PEDRO', '561217B', '2021-02-24', '2019-11-26', 'TIENE  RCONTROL', '2019-06-20 16:53:04', '2019-06-20 16:53:04');

-- ----------------------------
-- Table structure for provedores
-- ----------------------------
DROP TABLE IF EXISTS `provedores`;
CREATE TABLE `provedores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credito` int(11) NOT NULL,
  `saldo` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of provedores
-- ----------------------------
INSERT INTO `provedores` VALUES ('1', 'provedor uno', 'provedor uno', 'provedor uno', 'provedor uno', 'provedor uno', 'provedor1@gmail.com', '21', '2000', '2019-06-20 13:38:25', '2019-06-20 13:38:25');
INSERT INTO `provedores` VALUES ('2', 'provedor dos', 'provedor dos', 'provedor dos', 'provedor dos', 'provedor dos', 'provedor2@gmail.com', '3', '8787', '2019-06-20 13:39:28', '2019-06-20 13:39:28');
INSERT INTO `provedores` VALUES ('3', 'sgdsd', 'dgd', 'g', 'g', 'dgdg', 'dg@dsdssd.net', '3', '444', '2019-06-20 15:00:22', '2019-06-20 15:00:22');
INSERT INTO `provedores` VALUES ('4', 'provedor uno', 'provedor uno', 'provedor un', 'xzczx', 'zxczx', 'dssd@ssdsd.net', '333', '555', '2019-06-20 15:03:50', '2019-06-20 15:03:50');
INSERT INTO `provedores` VALUES ('5', 'TRANSPORTES SAUCEDO', 'ANTONIO SAUCEDO SALAS', 'SASA650127IU7', 'PASEO TLATELCO SN BARRIO SAN ISIDRO MELCHOR OCAMPO MEXICO', 'PEDRO NIETO', 'adm.saucedo.transportes@gmail.com', '20', null, '2019-06-20 16:18:04', '2019-06-20 16:18:04');
INSERT INTO `provedores` VALUES ('6', 'KIMBERLY', 'KIMBERLY CLARK CORPORATION  DE MEXICO S.A B DE RL', 'KICC681216U5T', 'CARRETERA MEXICO TEOLOYUCA KM23', 'MR . PETERSON', 'petersondireccion@kimberly.com', '29', null, '2019-06-20 16:58:30', '2019-06-20 16:58:30');

-- ----------------------------
-- Table structure for rutas
-- ----------------------------
DROP TABLE IF EXISTS `rutas`;
CREATE TABLE `rutas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientes` int(10) unsigned NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_exp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remitente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dom_remitente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recoge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_declarado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destino` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinatario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dom_destinatario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entrega` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_entrega` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embalaje` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concepto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_peligroso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indemnizacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importe` double NOT NULL,
  `asignacion_precio` int(10) unsigned NOT NULL,
  `obs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dias_re` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rutas_clientes_foreign` (`clientes`),
  KEY `rutas_asignacion_precio_foreign` (`asignacion_precio`),
  CONSTRAINT `rutas_asignacion_precio_foreign` FOREIGN KEY (`asignacion_precio`) REFERENCES `provedores` (`id`),
  CONSTRAINT `rutas_clientes_foreign` FOREIGN KEY (`clientes`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rutas
-- ----------------------------
INSERT INTO `rutas` VALUES ('1', '1', 'RUTAMEXICO-GUADALAJA', 'MELCHOR OCAMPO', 'LOGI', 'OK', 'CONOCIDO', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', '1000', '1', 'ninguna', '1', '2019-06-20 14:14:16', '2019-06-20 14:14:16');
INSERT INTO `rutas` VALUES ('2', '4', 'TIJUANA', 'CUAUTITLAN RR', 'CUAUTITLAN RR', 'KIMBERLY', 'CARRETERA MEXICO TEOLOYUCAN  KM23', 'KIMBERLY', '30000', 'TIJUANA', 'KIMBERLY TIJUANA', 'CENTRO DE DISTRIBUCIÓN TIJUANA', 'PASO DE CARTER 225 TIJUANA MÉXICO CP 98227', '8 DIAS  APARTIR DEL EMBARQUE', '1 FLETE', 'TARIMAS', 'BOLLO DE RELLENO PARA PAÑALES', 'NO', 'CARGA ASEGURADA', '120000', '6', 'CAJA DE 53 POR VOLUMEN EL PESO NO EXCEDE 15 TON', '1', '2019-06-20 17:13:47', '2019-06-20 17:13:47');
INSERT INTO `rutas` VALUES ('3', '2', 'Ruta Oaxaca Veracruz', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '123', '6', 'ok', '1', '2019-06-21 12:33:09', '2019-06-21 12:33:09');
INSERT INTO `rutas` VALUES ('4', '1', 'RUTA CHILPANCINGO', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', '123', '6', 'NINGUNA', '1', '2019-06-21 12:39:29', '2019-06-21 12:39:29');

-- ----------------------------
-- Table structure for unidades
-- ----------------------------
DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provedor` int(10) unsigned NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `economico` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seguro` date NOT NULL,
  `verificacion` date NOT NULL,
  `fm` date NOT NULL,
  `obs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unidades_provedor_foreign` (`provedor`),
  CONSTRAINT `unidades_provedor_foreign` FOREIGN KEY (`provedor`) REFERENCES `provedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('1', '1', 'unidad uno', 'unidad uno', '1', 'unidad uno', 'unidad uno', '54a54a5', '5421s54s2w44r', '5421s54s2w44r', '2019-06-05', '2019-06-06', '2019-06-07', 'uno', '2019-06-20 13:40:13', '2019-06-20 13:40:13');
INSERT INTO `unidades` VALUES ('2', '1', 'singularUno', 'ok', '1', 'marca uno', 'modelo singular', 'kkjhk5452', 'lkjhkjh87', 'sadasd8', '2019-06-17', '2019-06-18', '2019-06-19', null, '2019-06-20 13:41:08', '2019-06-20 13:41:08');
INSERT INTO `unidades` VALUES ('3', '2', 'macos', 'macos', '2', 'macos', 'vmacos', 'macos', 'macos', '5421s54s2w44r', '2019-06-16', '2019-06-18', '2019-06-19', null, '2019-06-20 13:41:38', '2019-06-20 13:41:38');
INSERT INTO `unidades` VALUES ('4', '5', 'TRANSPORTES SAUCEDO', 'T05', '1', 'KENWORTH', '1996', '265AF8', 'NIVASAS0948487402', '02812301923', '2019-10-23', '2019-12-26', '2020-01-31', null, '2019-06-20 16:23:40', '2019-06-20 16:23:40');
INSERT INTO `unidades` VALUES ('5', '1', 'UNO', 'OK', '1', 'SIGAPOUR', 'OK', 'OK', 'OK', 'OK', '2019-06-22', '2019-06-21', '2019-06-18', null, '2019-06-20 16:44:55', '2019-06-20 16:44:55');
INSERT INTO `unidades` VALUES ('6', '6', 'P6', 'T06', '1', 'KENWORTH', '2017', '18YY851', 'NIVASAS0948482017K', '02812301923USA', '2019-12-03', '2020-03-04', '2020-03-17', 'COLOR ROJO', '2019-06-20 17:27:09', '2019-06-20 17:27:09');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'MATRIX', 'matrix@gmail.com', null, '$2y$10$i2VI5rNikFR1cFxFr1xqS.B8K/xL6C75NPmxwCa9.iijOLL0oPMFK', null, '2019-06-20 12:22:06', '2019-06-20 12:22:06');
INSERT INTO `users` VALUES ('2', 'don gato', 'vuurtesten@vikylov.ru', null, '$2y$10$rU7eXcvF3fw.LV9KPDYb8O230xICDafoKY.Ubr9EZ.f3G3MVrlPQy', null, '2019-06-20 14:59:12', '2019-06-20 14:59:12');
INSERT INTO `users` VALUES ('3', 'PEDRO NIETO GANTE LONG STRING CHARTER', 'pedro.nieto.gante@gmail.com', null, '$2y$10$/O78Lxua5SNVqVh8q5HbIuLMiysToAJAI9PEyoorPL/KqRDIPf1ym', null, '2019-06-20 16:07:10', '2019-06-20 16:07:10');
INSERT INTO `users` VALUES ('4', 'HOMERO TE QUIERO EXACTO MILECIMO', 'homerotequiero@outlook.es', null, '$2y$10$zRnGqRX6mNIhmiAyuG7/E.xQVPdrWLfB6Tp72lCAFI5K7aQdKeMW.', null, '2019-06-20 16:32:23', '2019-06-20 16:32:23');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apellidoPaterno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoMaterno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreCorto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modulo01` tinyint(1) NOT NULL DEFAULT '0',
  `modulo02` tinyint(1) NOT NULL DEFAULT '0',
  `modulo03` tinyint(1) NOT NULL DEFAULT '0',
  `modulo04` tinyint(1) NOT NULL DEFAULT '0',
  `modulo05` tinyint(1) NOT NULL DEFAULT '0',
  `modulo06` tinyint(1) NOT NULL DEFAULT '0',
  `modulo07` tinyint(1) NOT NULL DEFAULT '0',
  `modulo08` tinyint(1) NOT NULL DEFAULT '0',
  `modulo09` tinyint(1) NOT NULL DEFAULT '0',
  `modulo10` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'materno uno', 'paterno uno', 'Jeremias', '78954', 'el simpson', 'capturista', 'oficina', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2019-06-20 13:49:51', '2019-06-20 13:49:51');
INSERT INTO `usuarios` VALUES ('2', 'moreno', 'rosas', 'Alejandra', '456', 'ale', 'capturista', 'oficina', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '2019-06-20 13:51:28', '2019-06-20 13:51:28');
