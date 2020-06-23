/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : fund

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 23/06/2020 18:04:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fund_company
-- ----------------------------
DROP TABLE IF EXISTS `fund_company`;
CREATE TABLE `fund_company`  (
  `ROW_ID` bigint(32) NOT NULL COMMENT '管理规模',
  `COMPANY_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基金公司名称',
  `ESTABLISH_DATE` date NULL DEFAULT NULL COMMENT '成立时间',
  `MANAGE_SCALE` decimal(20, 10) NULL DEFAULT NULL COMMENT '管理规模（亿）',
  `MANAGE_NUM` int(10) NULL DEFAULT NULL COMMENT '管理基金数',
  `MANAGER_NUM` int(10) NULL DEFAULT NULL COMMENT '基金经理数',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基金公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fund_manager
-- ----------------------------
DROP TABLE IF EXISTS `fund_manager`;
CREATE TABLE `fund_manager`  (
  `ROW_ID` bigint(32) NOT NULL,
  `MANAGER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基金经理姓名',
  `MANAGER_SEX` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基金经理性别',
  `BEGIN_WORK_DATE` date NULL DEFAULT NULL COMMENT '开始从业日期',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基金经理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fund_product
-- ----------------------------
DROP TABLE IF EXISTS `fund_product`;
CREATE TABLE `fund_product`  (
  `ROW_ID` bigint(32) NOT NULL COMMENT '基金经理',
  `FUND_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基金名称',
  `FUND_SCALE` decimal(20, 10) NULL DEFAULT NULL COMMENT '基金规模（亿元）',
  `ESTABLISH_DATE` date NULL DEFAULT NULL COMMENT '成立日期',
  `MANAGER_ID` bigint(32) NULL DEFAULT NULL COMMENT '基金经理（当前）',
  `MANAGER_SERVER_DATE` date NULL DEFAULT NULL COMMENT '基金经理任职日期',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基金表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fund_type
-- ----------------------------
DROP TABLE IF EXISTS `fund_type`;
CREATE TABLE `fund_type`  (
  `ROW_ID` bigint(20) NOT NULL COMMENT '主键',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基金类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for industry_type
-- ----------------------------
DROP TABLE IF EXISTS `industry_type`;
CREATE TABLE `industry_type`  (
  `ROW_ID` bigint(32) NOT NULL COMMENT '主键',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行业分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rel_fund_stock
-- ----------------------------
DROP TABLE IF EXISTS `rel_fund_stock`;
CREATE TABLE `rel_fund_stock`  (
  `ROW_ID` bigint(20) NOT NULL COMMENT '主键',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基金-股票关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stock_exchange
-- ----------------------------
DROP TABLE IF EXISTS `stock_exchange`;
CREATE TABLE `stock_exchange`  (
  `ROW_ID` bigint(20) NOT NULL COMMENT '主键',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '证券交易所表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stock_product
-- ----------------------------
DROP TABLE IF EXISTS `stock_product`;
CREATE TABLE `stock_product`  (
  `ROW_ID` bigint(32) NOT NULL COMMENT '主键',
  PRIMARY KEY (`ROW_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '股票表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
