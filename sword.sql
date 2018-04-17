/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost
 Source Database       : sword

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : utf-8

 Date: 04/17/2018 08:36:11 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `attach`
-- ----------------------------
DROP TABLE IF EXISTS `attach`;
CREATE TABLE `attach` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `status` varchar(30) NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `content`
-- ----------------------------
BEGIN;
INSERT INTO `content` VALUES ('1', '第一篇文章', '2018-03-23 20:37:52', '2018-03-23 20:38:04', '1', 'demodemo', 'post', null), ('2', '第二篇文章', '2018-03-24 19:25:05', '2018-03-24 19:25:05', '1', 'demo222222', 'post', null), ('8', '11111', '2018-03-25 15:54:08', '2018-03-25 15:54:08', '1', '#### Name', 'post', 'path'), ('9', '11111', '2018-03-25 16:05:05', '2018-03-25 16:05:05', '1', '#### Name', 'post', 'path'), ('10', '11111', '2018-03-25 16:05:48', '2018-03-25 16:05:48', '1', '#### Name', 'post', 'path'), ('11', '11111', '2018-03-25 16:48:22', '2018-03-25 16:48:22', '1', '#### Name\n1. 1', 'post', 'path'), ('12', '11111', '2018-03-25 16:56:15', '2018-03-25 16:56:15', '1', '#### Name\n1. 1', 'post', 'path'), ('13', '11111', '2018-03-25 16:57:25', '2018-03-25 16:57:25', '1', '#### Name', 'post', '/path'), ('14', '11111', '2018-03-25 16:58:11', '2018-03-25 16:58:11', '1', '#### Name', 'post', '/path'), ('15', '11111', '2018-03-25 16:58:15', '2018-03-25 16:58:15', '1', '#### Name', 'post', '/path'), ('16', '1111', '2018-03-25 16:58:41', '2018-03-25 16:58:41', '1', '#### Name', 'post', '/path');
COMMIT;

-- ----------------------------
--  Table structure for `content_tag`
-- ----------------------------
DROP TABLE IF EXISTS `content_tag`;
CREATE TABLE `content_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `content_id` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `content_tag`
-- ----------------------------
BEGIN;
INSERT INTO `content_tag` VALUES ('5', '7', '9'), ('6', '8', '10'), ('7', '9', '11'), ('8', '10', '12'), ('9', '11', '13'), ('10', '12', '14'), ('11', '13', '15'), ('12', '14', '16'), ('13', '15', '17'), ('14', '16', '18'), ('15', '17', '19');
COMMIT;

-- ----------------------------
--  Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(200) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `log`
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES ('1', '登录系统', '127.0.0.1', '2018-03-24 19:44:48', '1'), ('2', '发布文章', '127.0.0.1', '2018-03-24 19:45:02', '1'), ('3', '发布文章', '127.0.0.1', '2018-03-24 19:45:15', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tags`
-- ----------------------------
BEGIN;
INSERT INTO `tags` VALUES ('6', 'Java'), ('7', 'Java'), ('8', 'Java'), ('9', 'Java'), ('10', 'Java'), ('11', 'Java'), ('12', 'Java'), ('13', 'Java'), ('14', 'Java'), ('15', 'Java'), ('16', 'Java'), ('17', 'node.js');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'MWY', '123456', '823285807@qq.com', '2018-03-23 20:34:50');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
