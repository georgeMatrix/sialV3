/*
Navicat MySQL Data Transfer

Source Server         : localhost2018
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : sialv2

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2019-07-19 18:54:21
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of actividads
-- ----------------------------
INSERT INTO `actividads` VALUES ('1', 'App\\CartaPorte', '1', '2019-07-19 14:53:59', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 14:53:59', '2019-07-19 14:53:59');
INSERT INTO `actividads` VALUES ('2', 'App\\CartaPorte', '2', '2019-07-19 14:54:25', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 14:54:25', '2019-07-19 14:54:25');
INSERT INTO `actividads` VALUES ('3', 'App\\CartaPorte', '3', '2019-07-19 14:56:30', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 14:56:30', '2019-07-19 14:56:30');
INSERT INTO `actividads` VALUES ('4', 'App\\CartaPorte', '4', '2019-07-19 14:57:36', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 14:57:36', '2019-07-19 14:57:36');
INSERT INTO `actividads` VALUES ('5', 'App\\Clientes', '4', '2019-07-19 15:49:07', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 15:49:07', '2019-07-19 15:49:07');
INSERT INTO `actividads` VALUES ('6', 'App\\Rutas', '5', '2019-07-19 15:49:25', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 15:50:55', '2019-07-19 15:50:55');
INSERT INTO `actividads` VALUES ('7', 'App\\DatosFacturacion', '3', '2019-07-19 15:51:09', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 15:51:54', '2019-07-19 15:51:54');
INSERT INTO `actividads` VALUES ('8', 'App\\DatosFacturacion', '3', '2019-07-19 15:51:09', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 15:52:51', '2019-07-19 15:52:51');
INSERT INTO `actividads` VALUES ('9', 'App\\DatosFacturacion', '3', '2019-07-19 15:51:09', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 15:53:36', '2019-07-19 15:53:36');
INSERT INTO `actividads` VALUES ('10', 'App\\CartaPorte', '5', '2019-07-19 15:54:49', 'guardado', 'guardado', 'Jorge Nieto', '2019-07-19 15:54:49', '2019-07-19 15:54:49');

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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'abierta',
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of carta_portes
-- ----------------------------
INSERT INTO `carta_portes` VALUES ('1', 'n', '2019-07-19 15:00:00', '1', '1', '2', '1', 'primero', 'abierta', '2019-07-19 15:00:00', '2019-07-19 15:00:00', '2019-07-19 14:53:59', '2019-07-19 14:53:59');
INSERT INTO `carta_portes` VALUES ('2', 'c', '2019-07-19 15:00:00', '1', '1', '2', '1', 'segundo', 'abierta', '2019-07-19 15:00:00', '2019-07-19 16:00:00', '2019-07-19 14:54:25', '2019-07-19 14:54:25');
INSERT INTO `carta_portes` VALUES ('3', 'n', '2019-07-19 15:00:00', '2', '1', '2', '1', 'dos', 'abierta', '2019-07-19 16:00:00', '2019-07-19 17:00:00', '2019-07-19 14:56:30', '2019-07-19 14:56:30');
INSERT INTO `carta_portes` VALUES ('4', 'e', '2019-07-12 15:00:00', '4', '1', '2', '1', 'tres', 'abierta', '2019-07-19 15:00:00', '2019-07-19 18:00:00', '2019-07-19 14:57:36', '2019-07-19 14:57:36');
INSERT INTO `carta_portes` VALUES ('5', 'n', '2019-07-19 16:00:00', '5', '1', '2', '1', 'AAAA', 'abierta', '2019-07-19 18:00:00', '2019-08-01 18:00:00', '2019-07-19 15:54:49', '2019-07-19 15:54:49');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razonSocial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regimen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'CLIENTE UNO', 'RAZON SOCIAL UNO', 'ASDA6S5DA65S4D6', 'un regimen de uno', 'calle union 5', '3', '3', 'melchor ocampo', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK@GMAIL.COM', 'OK', 'OK', 'OK@GMAIL.COM', '1', '1', '2019-07-18 15:21:18', '2019-07-18 15:21:18');
INSERT INTO `clientes` VALUES ('2', 'CLIENTE DOS', 'CLIENTE DOS RAZON SOCIAL', 'ASD6A54SD', 'AS6D54ASD', 'MONGOMERY', '4', '4', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK@GMAIL.COM', 'OK', 'OK', 'OK@GMAIL.COM', '1', '1', '2019-07-18 15:22:01', '2019-07-18 15:22:01');
INSERT INTO `clientes` VALUES ('3', 'CLIENTE TRES', 'CLIENTE TRES', 'CLIENTE TRES', 'CLIENTE TRES', 'CLIENTE TRES', 'CLIENTE TR', 'CLIENTE TR', 'CLIENTE TRES', 'CLIENTE TRES', 'CLIENTE TR', 'CLIENTE TRES', 'CLIENTE TRES', 'CLIENTE TRES', 'TRES@GMAIL', 'OK', 'OK', 'TRES@GMAIL', '1', '1', '2019-07-18 19:32:28', '2019-07-18 19:32:28');
INSERT INTO `clientes` VALUES ('4', 'INDUSTRAS PETER SA DE CV', 'INDUSTRIAS PETER SA DE CV', 'IDP190719UF1', 'REGIMEN GENERAL DE PERSONAS MORALES', 'SIEMPRE VIVA', '1832', 'NA', 'LOMAS DEL AGLOMERADO', 'SPRINFIELD', '56600', 'MEXICO', 'YO MERO', '0101010101', 'PETER@PETER.COM', 'NA', 'NA', 'NA@NA', '1', '6', '2019-07-19 15:49:07', '2019-07-19 15:49:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cruces
-- ----------------------------
INSERT INTO `cruces` VALUES ('1', '2', '2019-07-19 14:54:25', '2019-07-19 14:54:25');

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
INSERT INTO `datos_cpor_pagars` VALUES ('1', '1', '1', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', '10', '10', '10', '10', '2019-07-18 15:50:31', '2019-07-18 15:50:31');

-- ----------------------------
-- Table structure for datos_facturacions
-- ----------------------------
DROP TABLE IF EXISTS `datos_facturacions`;
CREATE TABLE `datos_facturacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rutas` int(10) unsigned NOT NULL,
  `facturador` int(11) NOT NULL,
  `clientes` int(10) unsigned NOT NULL,
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
  KEY `datos_facturacions_clientes_foreign` (`clientes`),
  KEY `datos_facturacions_rutas_foreign` (`rutas`),
  KEY `datos_facturacions_asignacionprecio_foreign` (`asignacionPrecio`),
  CONSTRAINT `datos_facturacions_asignacionprecio_foreign` FOREIGN KEY (`asignacionPrecio`) REFERENCES `provedores` (`id`),
  CONSTRAINT `datos_facturacions_clientes_foreign` FOREIGN KEY (`clientes`) REFERENCES `clientes` (`id`),
  CONSTRAINT `datos_facturacions_rutas_foreign` FOREIGN KEY (`rutas`) REFERENCES `rutas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of datos_facturacions
-- ----------------------------
INSERT INTO `datos_facturacions` VALUES ('1', '1', '1', '1', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', '16', '0', '4', '0', '2019-07-18 15:50:13', '2019-07-18 15:50:13');
INSERT INTO `datos_facturacions` VALUES ('2', '1', '1', '1', '1', 'CEREZAS', '98', '98', '98', '98', '98', '98', '98', '98', '98', '98', '98', '2019-07-18 19:40:01', '2019-07-18 19:40:01');
INSERT INTO `datos_facturacions` VALUES ('3', '5', '2', '4', '1', '010101', 'FLETE', '1', 'E48', '1', 'FLETE NACIONAL', '100000', '10000', '16', '0', '4', '0', '2019-07-19 15:51:54', '2019-07-19 15:51:54');
INSERT INTO `datos_facturacions` VALUES ('4', '5', '2', '4', '1', '020202', '1', '1', 'E48', '1', 'MANIOBRAS DE DESCARGA', '2000', '2000', '16', '0', '0', '0', '2019-07-19 15:52:51', '2019-07-19 15:52:51');
INSERT INTO `datos_facturacions` VALUES ('5', '5', '2', '4', '1', '030303', '1', '1', 'E48', '1', 'REEXPEDICION', '3000', '3000', '16', '0', '4', '0', '2019-07-19 15:53:36', '2019-07-19 15:53:36');

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
INSERT INTO `exportacions` VALUES ('1', '4', '2019-07-19 14:57:36', '2019-07-19 14:57:36');

-- ----------------------------
-- Table structure for facturables
-- ----------------------------
DROP TABLE IF EXISTS `facturables`;
CREATE TABLE `facturables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_carta_porte` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_datos_facturacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave_prod_serv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_identificacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` double NOT NULL,
  `clave_unidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_unitario` double NOT NULL,
  `importe` double NOT NULL,
  `emisor_rfc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emisor_razon_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emisor_regimen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receptor_rfc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receptor_razon_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receptor_regimen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cfdi_t_iva_base` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_iva_impuesto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_iva_tipofactor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_iva_tasacuota` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_iva_importe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_isr_base` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_isr_impuesto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_isr_tipofactor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_isr_tasacuota` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_t_isr_importe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_iva_base` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_iva_impuesto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_iva_tipofactor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_iva_tasacuota` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_iva_importe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_isr_base` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_isr_impuesto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_isr_tipofactor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_isr_tasacuota` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdi_r_isr_importe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of facturables
-- ----------------------------
INSERT INTO `facturables` VALUES ('1', '1', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '10', '002', 'Tasa', '00.16', '0.625', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('2', '1', '2', 'CEREZAS', '98', '98', '98', '98', '98', '98', '98', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '98', '002', 'Tasa', '00.98', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('3', '1', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '10', '002', 'Tasa', '00.16', '0.625', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('4', '1', '2', 'CEREZAS', '98', '98', '98', '98', '98', '98', '98', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '98', '002', 'Tasa', '00.98', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('5', '2', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '10', '002', 'Tasa', '00.16', '0.625', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('6', '2', '2', 'CEREZAS', '98', '98', '98', '98', '98', '98', '98', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '98', '002', 'Tasa', '00.98', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('7', '1', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '10', '002', 'Tasa', '00.16', '0.625', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');
INSERT INTO `facturables` VALUES ('8', '1', '2', 'CEREZAS', '98', '98', '98', '98', '98', '98', '98', 'X', 'X', 'X', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '98', '002', 'Tasa', '00.98', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 15:43:18', '2019-07-19 15:43:18');

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
INSERT INTO `migrations` VALUES ('16', '2019_06_19_171131_create_exportacions_table', '1');
INSERT INTO `migrations` VALUES ('17', '2019_06_27_185827_create_importacions_table', '1');
INSERT INTO `migrations` VALUES ('18', '2019_07_18_143031_create_facturables_table', '1');

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
INSERT INTO `nacionals` VALUES ('1', '1', '2019-07-19 14:53:59', '2019-07-19 14:53:59');
INSERT INTO `nacionals` VALUES ('2', '3', '2019-07-19 14:56:30', '2019-07-19 14:56:30');
INSERT INTO `nacionals` VALUES ('3', '5', '2019-07-19 15:54:49', '2019-07-19 15:54:49');

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
INSERT INTO `operadores` VALUES ('1', 'OPERADOR UNO', 'OPERADOR UNO', 'OPERADOR UNO', 'OPERADOR UNO', 'OK', '2019-07-16', '2019-07-18', '7854215432', 'ALGUIEN', '8754215487', 'KLASD56A4AD', 'AA+S6D5', null, '2019-07-18 15:43:06', '2019-07-18 15:43:06');
INSERT INTO `operadores` VALUES ('2', 'OPERADOR DOS', 'OPERADOR DOS', 'OPERADOR DOS', 'OK', 'OK', '2019-07-22', '2019-07-24', '87542154', 'mi tia juanita', '875421548', 'AS6D54', 'A5A4D5A4', null, '2019-07-18 15:43:41', '2019-07-18 15:43:41');

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
INSERT INTO `provedores` VALUES ('1', 'PROVEEDOR UNO', 'PROVEEDOR UNO', 'PROVEEDOR UNO', 'PROVEEDOR UNO', 'PROVEEDOR UNO', 'uno@gmail.com', '7', '7', '2019-07-18 15:44:05', '2019-07-18 15:44:05');
INSERT INTO `provedores` VALUES ('2', 'PROVEEDOR DOS', 'PROVEEDOR DOS', 'PROVEEDOR DOS', 'AASD54ASD5', '54ASD54A', 'dos@gmail.com', '8', '8', '2019-07-18 15:44:23', '2019-07-18 15:44:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rutas
-- ----------------------------
INSERT INTO `rutas` VALUES ('1', '1', 'RUTA UNO', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', '12', '1', 'ALGO', '1', '2019-07-18 15:48:32', '2019-07-18 15:48:32');
INSERT INTO `rutas` VALUES ('2', '2', 'RUTA UN MILLON', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', '12', '1', 'OK', '1', '2019-07-18 19:09:00', '2019-07-18 19:09:00');
INSERT INTO `rutas` VALUES ('3', '1', 'RUTA 4', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', 'YU', '10', '1', 'YU', '1', '2019-07-18 19:31:33', '2019-07-18 19:31:33');
INSERT INTO `rutas` VALUES ('4', '3', 'RUTA CELULAR', 'RT', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', 'TR', '65', '1', '34', '1', '2019-07-18 19:33:11', '2019-07-18 19:33:47');
INSERT INTO `rutas` VALUES ('5', '4', 'MEXICO - TIJUANA', 'MELCHOR OCAMPO', 'MELCHOR OCAMPO', 'INDUSTRIAS PETER', 'SIEMPRE VIVA', 'SIEMPRE VIVA', 'NA', 'TIJUANA BC', 'CONSOLIDADO', 'TIJUANA BC', 'TIJUANA BC', '2', '1', 'LOTE', 'VARIOS', 'NO', 'NO', '10000', '1', 'NADA', '4', '2019-07-19 15:50:55', '2019-07-19 15:50:55');

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
INSERT INTO `unidades` VALUES ('1', '1', 'MAC', 'T-18', '1', 'MAC', 'MAC', 'MAC', 'MAC', 'MAC', '2019-07-16', '2019-07-26', '2019-07-26', null, '2019-07-18 15:44:56', '2019-07-18 15:44:56');
INSERT INTO `unidades` VALUES ('2', '1', 'RUIZE', 'T-20', '2', 'SUBLIMETEXT', 'SUBLIMETEXT', 'SUBLIMETEXT', 'SUBLIMETEXT', 'SUBLIMETEXT', '2019-07-15', '2019-07-18', '2019-07-20', null, '2019-07-18 15:45:41', '2019-07-18 15:45:41');

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
INSERT INTO `users` VALUES ('1', 'Jorge Nieto', 'jorge@gmail.com', null, '$2y$10$3jrki7kq0RngkSGe9OLhFeVbGfuv1oetxcdc2z8/cb8fpUk2W4IaK', null, '2019-07-19 14:53:41', '2019-07-19 14:53:41');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'CINTIA', 'MONROY', 'GALVAN', '1234', 'CINTIA', 'SECRETARIA', 'SECRETARIA', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '2019-07-18 15:46:43', '2019-07-18 15:46:43');
