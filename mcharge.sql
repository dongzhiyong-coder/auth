/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mcharge

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-10 17:34:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `pc_menu`;
CREATE TABLE `pc_menu` (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_name` varchar(20) NOT NULL COMMENT '菜单名称',
  `parent_menu_id` int(10) NOT NULL COMMENT '父菜单id',
  `layer` tinyint(1) NOT NULL COMMENT '层级 0是第一层 1是第二层 2是第三层',
  `menu_router` varchar(50) DEFAULT NULL COMMENT '菜单路由',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `pc_permission`
-- ----------------------------
DROP TABLE IF EXISTS `pc_permission`;
CREATE TABLE `pc_permission` (
  `permission_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `permission_name` varchar(30) NOT NULL COMMENT '权限名称',
  `permission_router` varchar(50) NOT NULL COMMENT '权限路由格式为 控制器名/方法名',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `pc_role`
-- ----------------------------
DROP TABLE IF EXISTS `pc_role`;
CREATE TABLE `pc_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_role
-- ----------------------------
INSERT INTO `pc_role` VALUES ('1', '运营');
INSERT INTO `pc_role` VALUES ('2', '超级管理员');
INSERT INTO `pc_role` VALUES ('3', '系统管理员');
INSERT INTO `pc_role` VALUES ('4', '财务');
INSERT INTO `pc_role` VALUES ('5', '销售');
INSERT INTO `pc_role` VALUES ('6', '客户');

-- ----------------------------
-- Table structure for `pc_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `pc_role_menu`;
CREATE TABLE `pc_role_menu` (
  `rm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(10) NOT NULL COMMENT '角色id',
  `menu_id` int(10) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`rm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `pc_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `pc_role_permission`;
CREATE TABLE `pc_role_permission` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(10) NOT NULL COMMENT '角色id',
  `permission_id` int(10) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pc_role_permission
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_user
-- ----------------------------
INSERT INTO `pc_user` VALUES ('2', 'admin', 'ba73c4032d3fafa25a3d2226e5326417', '1', '2020-06-10 14:16:14', null);
INSERT INTO `pc_user` VALUES ('3', 'test', 'ba73c4032d3fafa25a3d2226e5326417', '1', '2020-06-10 14:26:57', null);

-- ----------------------------
-- Table structure for `pc_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `pc_user_role`;
CREATE TABLE `pc_user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(10) NOT NULL COMMENT '角色id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_user_role
-- ----------------------------
