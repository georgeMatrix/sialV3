/*
Navicat MySQL Data Transfer

Source Server         : SGXSISTEMAS
Source Server Version : 50726
Source Host           : egxsistemas.com:3306
Source Database       : egxsiste_principal

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-20 14:22:06
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of carta_portes
-- ----------------------------
INSERT INTO `carta_portes` VALUES ('1', 'n', '2019-06-03', '1', '2', '3', '2', 'una que otra', '2019-06-11 00:00:00', '2019-06-25 00:00:00', null, null, '2019-06-20 14:17:27', '2019-06-20 14:17:27');
INSERT INTO `carta_portes` VALUES ('2', 'n', '2019-06-18', '1', '1', '3', '1', 'algo', '2019-06-21 00:00:00', '2019-06-06 00:00:00', null, null, '2019-06-20 14:19:14', '2019-06-20 14:19:14');
INSERT INTO `carta_portes` VALUES ('3', 'e', '2019-06-27', '1', '2', '3', '1', 'sumado', '2019-06-21 00:00:00', '2019-06-22 00:00:00', null, null, '2019-06-20 14:19:42', '2019-06-20 14:19:42');

-- ----------------------------
-- Table structure for cliente
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
-- Records of cliente
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'Ernesto Gomez Perez', 'calle union 5', '5', '3', 'Juan de Dios', 'Tultepec Centro', '82453', 'Mexico', '58786369', '65656598', 'ernesto@gmail.com', '9898989898', '3265542112', 'ernesto@gmail.com', '2', '15', '2019-06-20 13:35:02', '2019-06-20 13:35:02');
INSERT INTO `clientes` VALUES ('2', 'Flavio Perez', 'benito juarez', '5', '5', 'La romita', 'Cuautitlan', '54876', 'Aguascalientes', '5454545454', '5454512121', 'flavio@gmail.com', '2154847222', '5487542154', 'flavio@gmail.com', '3', '21', '2019-06-20 13:36:53', '2019-06-20 13:36:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nacionals
-- ----------------------------
INSERT INTO `nacionals` VALUES ('1', '1', '2019-06-20 14:17:27', '2019-06-20 14:17:27');
INSERT INTO `nacionals` VALUES ('2', '2', '2019-06-20 14:19:14', '2019-06-20 14:19:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operadores
-- ----------------------------
INSERT INTO `operadores` VALUES ('1', 'Operador uno', 'Operador uno', 'Operador uno', 'Operador uno', 'asda2542w', '2019-06-05', '2019-06-06', null, '2019-06-20 13:37:33', '2019-06-20 13:37:33');
INSERT INTO `operadores` VALUES ('2', 'Operador dos', 'Operador dos', 'Operador dos', 'Operador dos', 'kjkjs54s', '2019-06-19', '2019-06-20', null, '2019-06-20 13:37:57', '2019-06-20 13:37:57');

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
INSERT INTO `provedores` VALUES ('1', 'provedor uno', 'provedor uno', 'provedor uno', 'provedor uno', 'provedor uno', 'provedor1@gmail.com', '21', '2000', '2019-06-20 13:38:25', '2019-06-20 13:38:25');
INSERT INTO `provedores` VALUES ('2', 'provedor dos', 'provedor dos', 'provedor dos', 'provedor dos', 'provedor dos', 'provedor2@gmail.com', '3', '8787', '2019-06-20 13:39:28', '2019-06-20 13:39:28');

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
INSERT INTO `rutas` VALUES ('1', '1', 'RUTAMEXICO-GUADALAJA', 'MELCHOR OCAMPO', 'LOGI', 'OK', 'CONOCIDO', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', 'OK', '1000', '1', 'ninguna', '1', '2019-06-20 14:14:16', '2019-06-20 14:14:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('1', '1', 'unidad uno', 'unidad uno', '1', 'unidad uno', 'unidad uno', '54a54a5', '5421s54s2w44r', '5421s54s2w44r', '2019-06-05', '2019-06-06', '2019-06-07', 'uno', '2019-06-20 13:40:13', '2019-06-20 13:40:13');
INSERT INTO `unidades` VALUES ('2', '1', 'singularUno', 'ok', '1', 'marca uno', 'modelo singular', 'kkjhk5452', 'lkjhkjh87', 'sadasd8', '2019-06-17', '2019-06-18', '2019-06-19', null, '2019-06-20 13:41:08', '2019-06-20 13:41:08');
INSERT INTO `unidades` VALUES ('3', '2', 'macos', 'macos', '2', 'macos', 'vmacos', 'macos', 'macos', '5421s54s2w44r', '2019-06-16', '2019-06-18', '2019-06-19', null, '2019-06-20 13:41:38', '2019-06-20 13:41:38');

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
INSERT INTO `users` VALUES ('1', 'MATRIX', 'matrix@gmail.com', null, '$2y$10$i2VI5rNikFR1cFxFr1xqS.B8K/xL6C75NPmxwCa9.iijOLL0oPMFK', null, '2019-06-20 12:22:06', '2019-06-20 12:22:06');

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
