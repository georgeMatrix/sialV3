/*
Navicat MySQL Data Transfer

Source Server         : localhost2018
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : sialv2

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2019-07-10 22:58:35
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of actividads
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clientes
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of datos_cpor_pagars
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of datos_facturacions
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of exportacions
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of importacions
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `migrations` VALUES ('16', '2019_06_19_171131_create_exportacions_table', '1');
INSERT INTO `migrations` VALUES ('17', '2019_06_27_185827_create_importacions_table', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nacionals
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operadores
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of provedores
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rutas
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of unidades
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

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
