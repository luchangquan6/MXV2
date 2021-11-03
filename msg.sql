/*
 Navicat Premium Data Transfer

 Source Server         : navicat 
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : sh-cynosdbmysql-grp-9c8e5u52.sql.tencentcdb.com:25410
 Source Schema         : msg

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 24/09/2021 12:19:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Internal_transfer
-- ----------------------------
DROP TABLE IF EXISTS `Internal_transfer`;
CREATE TABLE `Internal_transfer`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contractAddress` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ffrom` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tto` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vvalues` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tokenSymbol` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blockNumber` int(8) NULL DEFAULT NULL,
  `tokenName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pair` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122822 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for address_number
-- ----------------------------
DROP TABLE IF EXISTS `address_number`;
CREATE TABLE `address_number`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NULL DEFAULT NULL,
  `symbol` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `growth` decimal(50, 3) NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chain` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `updata_time` datetime NULL DEFAULT NULL,
  `number5` int(11) NULL DEFAULT NULL,
  `number10` int(11) NULL DEFAULT NULL,
  `number30` int(11) NULL DEFAULT NULL,
  `number60` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37170 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bscpools
-- ----------------------------
DROP TABLE IF EXISTS `bscpools`;
CREATE TABLE `bscpools`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chain` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `reserve0` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reserve1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reserve_change` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pair` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token0_price_usd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token0_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token1_price_usd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token1_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sin` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `a`(`target_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1783 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for contractaddress
-- ----------------------------
DROP TABLE IF EXISTS `contractaddress`;
CREATE TABLE `contractaddress`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wallet_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contractAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `sin` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `A`(`contractAddress`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1594 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for external_transfer
-- ----------------------------
DROP TABLE IF EXISTS `external_transfer`;
CREATE TABLE `external_transfer`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contractAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ffrom` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tto` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vvalues` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tokenSymbol` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blockNumber` int(8) NULL DEFAULT NULL,
  `tokenName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `totals` int(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103780 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index_time` datetime NOT NULL,
  `updata_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `redis_index` int(10) NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clean` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_uuid`(`uuid`) USING BTREE,
  INDEX `upda`(`index_time`, `updata_time`) USING BTREE,
  INDEX `redis-index`(`redis_index`) USING BTREE,
  INDEX `time`(`time`) USING BTREE,
  INDEX `sin`(`sin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1654 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `statis` int(20) NOT NULL,
  `words` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `word`(`words`, `sin`, `update_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3559 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
