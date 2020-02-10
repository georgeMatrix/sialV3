/*
Navicat MySQL Data Transfer

Source Server         : localhost2018
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : sialv2

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2019-06-28 15:57:04
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of actividads
-- ----------------------------
INSERT INTO `actividads` VALUES ('1', 'App\\Clientes', '1', '2019-06-27 19:04:58', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:04:58', '2019-06-27 19:04:58');
INSERT INTO `actividads` VALUES ('2', 'App\\Clientes', '2', '2019-06-27 19:06:22', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:06:22', '2019-06-27 19:06:22');
INSERT INTO `actividads` VALUES ('3', 'App\\Clientes', '1', '2019-06-27 19:06:32', 'actualizado', 'actualizado', 'Jorge Nieto', '2019-06-27 19:06:32', '2019-06-27 19:06:32');
INSERT INTO `actividads` VALUES ('4', 'App\\Operadores', '1', '2019-06-27 19:07:41', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:07:41', '2019-06-27 19:07:41');
INSERT INTO `actividads` VALUES ('5', 'App\\Operadores', '1', '2019-06-27 19:08:29', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:08:29', '2019-06-27 19:08:29');
INSERT INTO `actividads` VALUES ('6', 'App\\Provedores', '1', '2019-06-27 19:10:20', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:10:20', '2019-06-27 19:10:20');
INSERT INTO `actividads` VALUES ('7', 'App\\Provedores', '2', '2019-06-27 19:11:26', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:11:26', '2019-06-27 19:11:26');
INSERT INTO `actividads` VALUES ('8', 'App\\Unidades', '1', '2019-06-27 19:12:29', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:12:29', '2019-06-27 19:12:29');
INSERT INTO `actividads` VALUES ('9', 'App\\Unidades', '1', '2019-06-27 19:13:05', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:13:05', '2019-06-27 19:13:05');
INSERT INTO `actividads` VALUES ('10', 'App\\Rutas', '1', '2019-06-27 19:13:15', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:15:30', '2019-06-27 19:15:30');
INSERT INTO `actividads` VALUES ('11', 'App\\DatosCporPagar', '1', '2019-06-27 19:13:15', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:16:07', '2019-06-27 19:16:07');
INSERT INTO `actividads` VALUES ('12', 'App\\DatosFacturacion', '1', '2019-06-27 19:13:15', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:16:52', '2019-06-27 19:16:52');
INSERT INTO `actividads` VALUES ('13', 'App\\CartaPorte', '1', '2019-06-27 19:17:34', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:17:34', '2019-06-27 19:17:34');
INSERT INTO `actividads` VALUES ('14', 'App\\CartaPorte', '2', '2019-06-27 19:19:47', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:19:47', '2019-06-27 19:19:47');
INSERT INTO `actividads` VALUES ('15', 'App\\CartaPorte', '3', '2019-06-27 19:21:17', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:21:17', '2019-06-27 19:21:17');
INSERT INTO `actividads` VALUES ('16', 'App\\CartaPorte', '4', '2019-06-27 19:21:38', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:21:38', '2019-06-27 19:21:38');
INSERT INTO `actividads` VALUES ('17', 'App\\CartaPorte', '5', '2019-06-27 19:28:04', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:28:04', '2019-06-27 19:28:04');
INSERT INTO `actividads` VALUES ('18', 'App\\CartaPorte', '6', '2019-06-27 19:35:52', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:35:52', '2019-06-27 19:35:52');
INSERT INTO `actividads` VALUES ('19', 'App\\CartaPorte', '7', '2019-06-27 19:59:58', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-27 19:59:58', '2019-06-27 19:59:58');
INSERT INTO `actividads` VALUES ('20', 'App\\CartaPorte', '8', '2019-06-28 15:09:42', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-28 15:09:42', '2019-06-28 15:09:42');
INSERT INTO `actividads` VALUES ('21', 'App\\CartaPorte', '9', '2019-06-28 15:27:47', 'guardado', 'guardado', 'Jorge Nieto', '2019-06-28 15:27:47', '2019-06-28 15:27:47');

-- ----------------------------
-- Table structure for carta_portes
-- ----------------------------
DROP TABLE IF EXISTS `carta_portes`;
CREATE TABLE `carta_portes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of carta_portes
-- ----------------------------
INSERT INTO `carta_portes` VALUES ('1', 'n', '2019-06-18', '1', '1', '2', '1', 'uno', '2019-06-20 00:00:00', '2019-06-18 00:00:00', '2019-06-27 19:17:34', '2019-06-27 19:17:34', '2019-06-27 19:17:34');
INSERT INTO `carta_portes` VALUES ('2', 'i', '2019-06-18', '1', '1', '2', '1', 'unouno', '2019-06-20 00:00:00', '2019-06-22 00:00:00', '2019-06-27 19:19:46', '2019-06-27 19:19:46', '2019-06-27 19:19:46');
INSERT INTO `carta_portes` VALUES ('3', 'e', '2019-06-25', '1', '1', '2', '1', 'asdasd', '2019-06-11 00:00:00', '2019-06-12 00:00:00', '2019-06-27 19:21:16', '2019-06-27 19:21:16', '2019-06-27 19:21:16');
INSERT INTO `carta_portes` VALUES ('4', 'c', '2019-06-18', '1', '1', '2', '1', 'asdasd', '2019-06-06 00:00:00', '2019-06-21 00:00:00', '2019-06-27 19:21:38', '2019-06-27 19:21:38', '2019-06-27 19:21:38');
INSERT INTO `carta_portes` VALUES ('5', 'i', '2019-06-26', '1', '1', '2', '1', 'asdada', '2019-06-19 00:00:00', '2019-06-13 00:00:00', '2019-06-27 19:28:04', '2019-06-27 19:28:04', '2019-06-27 19:28:04');
INSERT INTO `carta_portes` VALUES ('6', 'i', '2019-06-26', '1', '1', '2', '1', 'adasd', '2019-06-17 00:00:00', '2019-06-19 00:00:00', '2019-06-27 19:35:52', '2019-06-27 19:35:52', '2019-06-27 19:35:52');
INSERT INTO `carta_portes` VALUES ('7', 'c', '2019-06-26', '1', '1', '2', '1', 'sdfsdf', '2019-06-12 00:00:00', '2019-06-13 00:00:00', '2019-06-27 19:59:58', '2019-06-27 19:59:58', '2019-06-27 19:59:58');
INSERT INTO `carta_portes` VALUES ('8', 'e', '2019-06-10', '1', '1', '2', '1', 'asasd', '2019-06-17 15:09:00', '2019-06-18 15:09:00', '2019-06-28 15:09:42', '2019-06-28 15:09:42', '2019-06-28 15:09:42');
INSERT INTO `carta_portes` VALUES ('9', 'n', '2019-06-11', '1', '1', '2', '1', 'dos', '2019-06-03 15:27:00', '2019-06-17 15:27:00', '2019-06-28 15:27:47', '2019-06-28 15:27:47', '2019-06-28 15:27:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'WALMART', 'de las patricias', '7', '8', 'melchor ocampo', 'melchor ocampo', '12345', 'mexico', '8754215487', '5454548754', 'gonzalo@gmail.com', '8754215487', '5487542101', 'gonzalo@gmail.com', '2', '4', '2019-06-27 19:04:58', '2019-06-27 19:06:32');
INSERT INTO `clientes` VALUES ('2', 'DHL', 'cruce palmas', '3', '3', 'san juanico', 'las peras', '66666', 'mexico', '8754215487', '5487545454', 'belmont@gmail.com', '8754215487', '8787878787', 'belmont@gmail.com', '3', '4', '2019-06-27 19:06:22', '2019-06-27 19:06:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cruces
-- ----------------------------
INSERT INTO `cruces` VALUES ('1', '4', '2019-06-27 19:21:38', '2019-06-27 19:21:38');
INSERT INTO `cruces` VALUES ('2', '7', '2019-06-27 19:59:58', '2019-06-27 19:59:58');

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
INSERT INTO `datos_cpor_pagars` VALUES ('1', '1', '3', '2', 'sdf54a5sd4', 'aa54das54d', '54000', 'asd5a5s4d', 'dossssss', 'es la numero dos', '850000', '545545', '10', '10', '10', '0', '2019-06-27 19:16:08', '2019-06-27 19:16:08');

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
INSERT INTO `datos_facturacions` VALUES ('1', '1', '1', '1', 'a5s4da', 'a5s4da5sd4', '54', 'a54s', 'asd54asd54', 'guardado', '54545', '5454', '10', '0', '0', '10', '2019-06-27 19:16:52', '2019-06-27 19:16:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of exportacions
-- ----------------------------
INSERT INTO `exportacions` VALUES ('1', '3', '2019-06-27 19:21:16', '2019-06-27 19:21:16');
INSERT INTO `exportacions` VALUES ('2', '8', '2019-06-28 15:09:42', '2019-06-28 15:09:42');

-- ----------------------------
-- Table structure for importacions
-- ----------------------------
DROP TABLE IF EXISTS `importacions`;
CREATE TABLE `importacions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cartaPorte` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `importacions_cartaporte_foreign` (`cartaPorte`),
  CONSTRAINT `importacions_cartaporte_foreign` FOREIGN KEY (`cartaPorte`) REFERENCES `carta_portes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of importacions
-- ----------------------------
INSERT INTO `importacions` VALUES ('1', '2', '2019-06-27 19:19:46', '2019-06-27 19:19:46');
INSERT INTO `importacions` VALUES ('2', '5', '2019-06-27 19:28:04', '2019-06-27 19:28:04');
INSERT INTO `importacions` VALUES ('3', '6', '2019-06-27 19:35:52', '2019-06-27 19:35:52');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_06_03_221438_create_clientes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_06_03_221456_create_provedores_table', '1');
INSERT INTO `migrations` VALUES ('5', '2019_06_03_221518_create_unidades_table', '1');
INSERT INTO `migrations` VALUES ('6', '2019_06_03_221534_create_operadores_table', '1');
INSERT INTO `migrations` VALUES ('7', '2019_06_03_221548_create_rutas_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_06_06_144625_create_datos_facturacions_table', '1');
INSERT INTO `migrations` VALUES ('9', '2019_06_06_144739_create_tarifas_rutas_table', '1');
INSERT INTO `migrations` VALUES ('10', '2019_06_06_144755_create_usuarios_table', '1');
INSERT INTO `migrations` VALUES ('11', '2019_06_13_175713_create_datos_cpor_pagars_table', '1');
INSERT INTO `migrations` VALUES ('12', '2019_06_16_202117_create_actividads_table', '1');
INSERT INTO `migrations` VALUES ('13', '2019_06_19_165843_create_carta_portes_table', '1');
INSERT INTO `migrations` VALUES ('14', '2019_06_19_171009_create_nacionals_table', '1');
INSERT INTO `migrations` VALUES ('15', '2019_06_19_171050_create_cruces_table', '1');
INSERT INTO `migrations` VALUES ('16', '2019_06_19_171112_create_internacionals_table', '1');
INSERT INTO `migrations` VALUES ('17', '2019_06_19_171131_create_exportacions_table', '1');
INSERT INTO `migrations` VALUES ('18', '2019_06_27_185827_create_importacions_table', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nacionals
-- ----------------------------
INSERT INTO `nacionals` VALUES ('1', '1', '2019-06-27 19:17:34', '2019-06-27 19:17:34');
INSERT INTO `nacionals` VALUES ('2', '9', '2019-06-28 15:27:47', '2019-06-28 15:27:47');

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
  `telefonoCasa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personaContacto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imss` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operadores
-- ----------------------------
INSERT INTO `operadores` VALUES ('1', 'juarez', 'unrual', 'joaquin', 'el chato', '5a4sd5', '2019-06-11', '2019-06-19', '8754875421', 'mi tia juanita', '8754215487', '545a5d4a5s4da', 'a5s4da5sda54s', null, '2019-06-27 19:07:41', '2019-06-27 19:07:41');
INSERT INTO `operadores` VALUES ('2', 'zuñiga', 'morin', 'pedro', 'peter', 'asd54a', '2019-06-11', '2019-06-14', '8754215487', 'esposa', '8754215487', '8a8s7da87sda8', 'a8s7da87sd8a7', null, '2019-06-27 19:08:29', '2019-06-27 19:08:29');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of provedores
-- ----------------------------
INSERT INTO `provedores` VALUES ('1', 'provedor uno', 'provedor uno', '564a6s5d4', 'rio de la plata', '8754215487', 'uno@gmail.com', '38', '123123123', '2019-06-27 19:10:20', '2019-06-27 19:10:20');
INSERT INTO `provedores` VALUES ('2', 'provedor dos', 'provedor dos', 'a56s4das6d54', 'a5s4da6s5d4', 'en la lomas chapultepec', 'dos@gmail.com', '23', '540000', '2019-06-27 19:11:26', '2019-06-27 19:11:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rutas
-- ----------------------------
INSERT INTO `rutas` VALUES ('1', '1', 'ruta mexico-veracruz', 'mexico', 'mexico', 'sr perez', 'romulo dos', 'veracruz', '4500000', 'veracruz', 'cedis walmart', 'uruapan numero 3', 'veracruz', '1 dia', '54 pallets', '54a45', 'a5s4da5d4', 'si', 'si', '8500000', '2', 'ninguna', '7', '2019-06-27 19:15:30', '2019-06-27 19:15:30');

-- ----------------------------
-- Table structure for tarifas_rutas
-- ----------------------------
DROP TABLE IF EXISTS `tarifas_rutas`;
CREATE TABLE `tarifas_rutas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tarifas_rutas
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('1', '1', 'el sarcofago', 't-18', '1', 'orion', 'orion', 'a54sda5sd', 'a5s4da5s4da5s', 'a5s4da5s4da5', '2019-06-12', '2019-06-18', '2019-06-22', null, '2019-06-27 19:12:29', '2019-06-27 19:12:29');
INSERT INTO `unidades` VALUES ('2', '1', 'las castañas', 'maquinaria', '2', 'maquinaria', 'maquinaria', 'a5s4d6a5', 'a65sd4a6s5d', '65a65sd4a65sd', '2019-06-20', '2019-06-18', '2019-06-13', null, '2019-06-27 19:13:05', '2019-06-27 19:13:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Jorge Nieto', 'jorge@gmail.com', null, '$2y$10$rPrAw97LjAankxBkpzduUeysFrQVhMdc0TJ0iwKGitkLJWpVSYgrm', null, '2019-06-27 19:02:43', '2019-06-27 19:02:43');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
