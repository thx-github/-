/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : auto_parts_mall

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2020-03-26 15:59:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apm_auto_parts`
-- ----------------------------
DROP TABLE IF EXISTS `apm_auto_parts`;
CREATE TABLE `apm_auto_parts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `describe` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `details` varchar(2000) DEFAULT NULL,
  `stock` int(5) NOT NULL,
  `create_time` datetime NOT NULL,
  `thumbnail` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_auto_parts
-- ----------------------------
INSERT INTO `apm_auto_parts` VALUES ('1', '春夏MLB NY经典大标弯檐调节帽 帽子', '官方正品桃心NY经典款 帽子', '1', '278.00', '<p>\r\n      <img src=\"http://localhost:3000/image/goods/mql/mql1.jpg\">\r\n      <img src=\"http://localhost:3000/image/goods/mql/mql2.jpg\">\r\n      <img src=\"http://localhost:3000/image/goods/mql/mql3.jpg\">\r\n    </p>', '1000', '2020-03-02 21:07:48', 'http://localhost:3000/image/goods/mql/thumb.jpg');
INSERT INTO `apm_auto_parts` VALUES ('2', '纽亦华帽子 940 MLB纽约洋基NY可调节弯檐帽棒球帽', '由于海外批次不同，本商品在国内无相关保修权益。页面尺寸为人工测量，可能存在误差，请以实际收货为准。海淘商品经中国海关正规手续入境，下单后，登陆https://dwz.cn/RgzQjjvy可查询订单通关信息，100%正品保证。', '2', '199.00', '<p>\r\n      <img src=\"http://localhost:3000/image/goods/shell/shell1.jpg\">\r\n      <img src=\"http://localhost:3000/image/goods/shell/shell2.jpg\">\r\n      <img src=\"http://localhost:3000/image/goods/shell/shell3.jpg\">\r\n    </p>', '800', '2020-03-16 21:25:39', 'http://localhost:3000/image/goods/shell/thumb.jpg');
INSERT INTO `apm_auto_parts` VALUES ('3', '春夏MLB NY经典大标弯檐调节帽 帽子', '官方正品 NY玫瑰刺绣', '3', '299.00', '<p>\r\n      <img src=\"http://localhost:3000/image/goods/cat/cat1.jpg\">\r\n      <img src=\"http://localhost:3000/image/goods/cat/cat2.jpg\">\r\n      <img src=\"http://localhost:3000/image/goods/cat/cat3.jpg\">\r\n    </p>', '6000', '2020-03-16 21:31:23', 'http://localhost:3000/image/goods/cat/thumb.jpg');

-- ----------------------------
-- Table structure for `apm_auto_parts_image`
-- ----------------------------
DROP TABLE IF EXISTS `apm_auto_parts_image`;
CREATE TABLE `apm_auto_parts_image` (
  `id` int(11) NOT NULL,
  `src` varchar(200) NOT NULL,
  `auto_parts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_auto_parts_image
-- ----------------------------
INSERT INTO `apm_auto_parts_image` VALUES ('1', 'http://localhost:3000/image/goods/mql/mql1.jpg', '1');
INSERT INTO `apm_auto_parts_image` VALUES ('2', 'http://localhost:3000/image/goods/mql/mql2.jpg', '1');
INSERT INTO `apm_auto_parts_image` VALUES ('3', 'http://localhost:3000/image/goods/mql/mql3.jpg', '1');
INSERT INTO `apm_auto_parts_image` VALUES ('4', 'http://localhost:3000/image/goods/shell/shell1.jpg', '2');
INSERT INTO `apm_auto_parts_image` VALUES ('5', 'http://localhost:3000/image/goods/shell/shell2.jpg', '2');
INSERT INTO `apm_auto_parts_image` VALUES ('6', 'http://localhost:3000/image/goods/shell/shell3.jpg', '2');
INSERT INTO `apm_auto_parts_image` VALUES ('7', 'http://localhost:3000/image/goods/cat/cat1.jpg', '3');
INSERT INTO `apm_auto_parts_image` VALUES ('8', 'http://localhost:3000/image/goods/cat/cat2.jpg', '3');
INSERT INTO `apm_auto_parts_image` VALUES ('9', 'http://localhost:3000/image/goods/cat/cat3.jpg', '3');

-- ----------------------------
-- Table structure for `apm_banner`
-- ----------------------------
DROP TABLE IF EXISTS `apm_banner`;
CREATE TABLE `apm_banner` (
  `id` int(11) NOT NULL,
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_banner
-- ----------------------------
INSERT INTO `apm_banner` VALUES ('1', 'http://localhost:3000/image/banner/01.jpg', '#', '1');
INSERT INTO `apm_banner` VALUES ('2', 'http://localhost:3000/image/banner/02.jpg', '#', '2');
INSERT INTO `apm_banner` VALUES ('3', 'http://localhost:3000/image/banner/03.jpg', '#', '3');

-- ----------------------------
-- Table structure for `apm_cart`
-- ----------------------------
DROP TABLE IF EXISTS `apm_cart`;
CREATE TABLE `apm_cart` (
  `id` int(11) NOT NULL,
  `auto_parts_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL,
  `price` double(10,2) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `apm_category`
-- ----------------------------
DROP TABLE IF EXISTS `apm_category`;
CREATE TABLE `apm_category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `bgcolor` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_category
-- ----------------------------
INSERT INTO `apm_category` VALUES ('1', '服装', 'icon-icon-test1', '#00FFFF');
INSERT INTO `apm_category` VALUES ('2', '鞋帽', 'icon-icon-test2', '#00BBFF');
INSERT INTO `apm_category` VALUES ('3', '化妆品', 'icon-icon-test3', '	#0066FF');
INSERT INTO `apm_category` VALUES ('4', '装饰品', 'icon-icon-test4', '	#0000FF');
INSERT INTO `apm_category` VALUES ('5', '家电', 'icon-icon-test5', '	#FF88C2');
INSERT INTO `apm_category` VALUES ('6', '家庭用品', 'icon-icon-test6', '#7700FF');
INSERT INTO `apm_category` VALUES ('7', '儿童用品', 'icon-icon-test7', '#FF3EFF');
INSERT INTO `apm_category` VALUES ('8', '首饰', 'icon-icon-test8', '#FFBB66');

-- ----------------------------
-- Table structure for `apm_comment`
-- ----------------------------
DROP TABLE IF EXISTS `apm_comment`;
CREATE TABLE `apm_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auto_parts_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `apm_consignee`
-- ----------------------------
DROP TABLE IF EXISTS `apm_consignee`;
CREATE TABLE `apm_consignee` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_consignee
-- ----------------------------

-- ----------------------------
-- Table structure for `apm_order`
-- ----------------------------
DROP TABLE IF EXISTS `apm_order`;
CREATE TABLE `apm_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double(10,2) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_order
-- ----------------------------

-- ----------------------------
-- Table structure for `apm_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `apm_order_item`;
CREATE TABLE `apm_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `auto_parts_id` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for `apm_user`
-- ----------------------------
DROP TABLE IF EXISTS `apm_user`;
CREATE TABLE `apm_user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `sex` char(3) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apm_user
-- ----------------------------
