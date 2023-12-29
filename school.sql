/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 30/12/2023 01:46:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `address` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'AAA', 'М.', 15, 'Екатеринбург', '12345', 'zhangsan@itcast.cn');
INSERT INTO `student` VALUES (2, 'BBB', 'Ж.', 15, 'Санкт-Петербург', '88888', 'ls@itcast.cn');
INSERT INTO `student` VALUES (4, '1', 'М.', 1, 'Москва', '1212131', '1212131@123.com');
INSERT INTO `student` VALUES (5, '2', 'М.', 2, 'Москва', '2222', '2222@132.com');
INSERT INTO `student` VALUES (6, 'ee', 'М.', 23, 'Москва', '12312', '12312@123.com');
INSERT INTO `student` VALUES (9, 'Ань', 'М.', 100, 'Екатеринбург', '111', '222');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '123456');
INSERT INTO `user` VALUES (2, 'lisi', 'aaaaaa');
INSERT INTO `user` VALUES (7, 'zhaoliu', '123456');
INSERT INTO `user` VALUES (8, 'wangwu', '123456');
INSERT INTO `user` VALUES (9, '小明', '123');
INSERT INTO `user` VALUES (10, 'admin', 'admin');
INSERT INTO `user` VALUES (11, 'test', '123456');
INSERT INTO `user` VALUES (12, '789', '123456');

SET FOREIGN_KEY_CHECKS = 1;
