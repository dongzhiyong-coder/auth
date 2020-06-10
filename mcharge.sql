/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mcharge

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-10 13:51:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pc_role`
-- ----------------------------
DROP TABLE IF EXISTS `pc_role`;
CREATE TABLE `pc_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_role
-- ----------------------------
INSERT INTO `pc_role` VALUES ('1', '超级管理员');
INSERT INTO `pc_role` VALUES ('2', '开发经理');

-- ----------------------------
-- Table structure for `pc_user`
-- ----------------------------
DROP TABLE IF EXISTS `pc_user`;
CREATE TABLE `pc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_password` varchar(50) NOT NULL COMMENT '登录密码',
  `user_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '有效状态 1表示有效 0表示无效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_user
-- ----------------------------
INSERT INTO `pc_user` VALUES ('1', 'admin', '123456', '1', '2020-06-10 13:36:57', null);

-- ----------------------------
-- Table structure for `pc_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `pc_user_role`;
CREATE TABLE `pc_user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(10) NOT NULL COMMENT '角色id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_user_role
-- ----------------------------
INSERT INTO `pc_user_role` VALUES ('1', '1', '1');
INSERT INTO `pc_user_role` VALUES ('2', '2', '1');
