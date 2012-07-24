/*
Navicat MySQL Data Transfer

Source Server         : local-mysql
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : oauth2

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-07-24 14:25:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `access_tokens`;
CREATE TABLE `access_tokens` (
  `token` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_tokens
-- ----------------------------
INSERT INTO `access_tokens` VALUES ('1861c82d0f29b42210e1d2a6152dbd3e0c445254', '123', '5', '1343114605', null);

-- ----------------------------
-- Table structure for `auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `auth_codes`;
CREATE TABLE `auth_codes` (
  `code` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `redirect_uri` varchar(200) NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_codes
-- ----------------------------
INSERT INTO `auth_codes` VALUES ('96b2ab2b065ee5d9b8fa362e4c834f59a59fda47', '123', '5', 'http://localhost/oauth2/back.php', '1343108574', null);
INSERT INTO `auth_codes` VALUES ('07b08eea187c08217ec5964284a6714f60ccf6c6', 'abcdef', '5', 'http://localhost/oauth2/back.php', '1343108900', null);
INSERT INTO `auth_codes` VALUES ('7448afca3372ada774b421126076b43481b48cc4', 'abc', '5', 'http://localhost/oauth2/back.php', '1343108901', null);
INSERT INTO `auth_codes` VALUES ('15b08de63e038e2953cc6ef1d2c0c01242806ed8', '123', '5', 'http://localhost/oauth2/back.php', '1343108902', null);
INSERT INTO `auth_codes` VALUES ('6238a2391c9b7463bacdf803397afb7e24b7ae92', '123', '5', 'http://localhost/oauth2/back.php', '1343109564', null);
INSERT INTO `auth_codes` VALUES ('747265e8c72939f181e63655a6eb0cc0e5731b16', '123', '5', 'http://localhost/oauth2/back.php', '1343110706', null);
INSERT INTO `auth_codes` VALUES ('4bb2395af914daedeee296b664274669797db9d5', '123', '5', 'http://localhost/oauth2/back.php', '1343110793', null);
INSERT INTO `auth_codes` VALUES ('72cf05e508fbb9c1ec03c432fb2b008a0c11b56a', '123', '5', 'http://localhost/oauth2/back.php', '1343111020', null);

-- ----------------------------
-- Table structure for `clients`
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `client_id` varchar(40) NOT NULL,
  `client_secret` varchar(20) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `detail` text,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('123', '123579', 'http://localhost/oauth2/back.php', null, null, null);
INSERT INTO `clients` VALUES ('abc', 'abc', 'http://localhost/oauth2/back.php', null, null, null);
INSERT INTO `clients` VALUES ('abcdef', 'abcdef', 'http://localhost/oauth2/back.php', null, null, null);

-- ----------------------------
-- Table structure for `refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `refresh_tokens`;
CREATE TABLE `refresh_tokens` (
  `token` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refresh_tokens
-- ----------------------------
INSERT INTO `refresh_tokens` VALUES ('6addc65ab7dfff85e7c693e866d8334042cbf133', '123', '5', '1344320605', null);
