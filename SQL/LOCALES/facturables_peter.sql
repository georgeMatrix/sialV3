/*
Navicat MySQL Data Transfer

Source Server         : localhost2018
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : sialv2

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2019-08-10 23:19:46
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of facturables
-- ----------------------------
INSERT INTO `facturables` VALUES ('1', '3', '3', '010101', 'FLETE', '1', 'E48', '1', 'FLETE NACIONAL', '100000', '10000', '1', '2', 'X', 'IDP190719UF1', 'INDUSTRIAS PETER SA DE CV', 'REGIMEN GENERAL DE PERSONAS MORALES', '10000', '002', 'Tasa', '00.16', '625', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 19:27:00', '2019-07-19 19:27:00');
INSERT INTO `facturables` VALUES ('2', '4', '4', '020202', 'cuatro', '1', 'E48', '1', 'MANIOBRAS DE DESCARGA', '2000', '2000', '1', '2', 'X', 'IDP190719UF1', 'INDUSTRIAS PETER SA DE CV', 'REGIMEN GENERAL DE PERSONAS MORALES', '2000', '002', 'Tasa', '00.16', '125', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 19:27:00', '2019-07-19 19:27:00');
INSERT INTO `facturables` VALUES ('3', '5', '5', '030303', 'cinco', '1', 'E48', '1', 'REEXPEDICION', '3000', '3000', '2', '2', 'X', 'IDP190719UF1', 'INDUSTRIAS PETER SA DE CV', 'REGIMEN GENERAL DE PERSONAS MORALES', '3000', '002', 'Tasa', '00.16', '187.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-19 19:27:00', '2019-07-19 19:27:00');
INSERT INTO `facturables` VALUES ('4', '1', '1', 'OK', 'OK', '10', 'OK', 'OK', 'OK', '10', '10', '1', '1', '1', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '10', '002', 'Tasa', '0.1600', '0.4', null, null, null, null, null, '10', '002', 'Tasa', '0.0400', null, null, null, null, null, null, '2019-08-10 19:01:55', '2019-08-10 19:01:55');
INSERT INTO `facturables` VALUES ('5', '1', '2', 'CEREZAS', '98', '98', '98', '98', '98', '98', '98', '1', '1', '1', 'ASDA6S5DA65S4D6', 'RAZON SOCIAL UNO', 'un regimen de uno', '98', '002', 'Tasa', '0.9800', '96.03999999999999', null, null, null, null, '96.03999999999999', '98', '002', 'Tasa', '0.9800', null, '98', '001', 'Tasa', '0.9800', null, '2019-08-10 19:01:55', '2019-08-10 19:01:55');
