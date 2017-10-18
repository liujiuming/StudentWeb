/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : studentweb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-17 21:32:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `school_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '经济学院', '1');
INSERT INTO `college` VALUES ('2', '管理学院', '2');
INSERT INTO `college` VALUES ('3', '理信学院', '3');
INSERT INTO `college` VALUES ('4', '动医学院', '3');
INSERT INTO `college` VALUES ('5', '人文学院', '3');
INSERT INTO `college` VALUES ('6', '机电学院', '1');
INSERT INTO `college` VALUES ('7', '合作社学院', '1');
INSERT INTO `college` VALUES ('8', '外国语学院', '1');
INSERT INTO `college` VALUES ('9', '园林学院', '1');
INSERT INTO `college` VALUES ('10', '园艺学院', '1');
INSERT INTO `college` VALUES ('11', '动科学院', '1');
INSERT INTO `college` VALUES ('12', '建工学院', '1');
INSERT INTO `college` VALUES ('13', '资环学院', '1');
INSERT INTO `college` VALUES ('14', '艺术学院', '1');
INSERT INTO `college` VALUES ('15', '化学与药学院', '1');
INSERT INTO `college` VALUES ('16', '海洋学院', '1');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gra` int(11) DEFAULT NULL,
  `subject_id` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '92', null, null);
INSERT INTO `grade` VALUES ('2', '80', null, null);
INSERT INTO `grade` VALUES ('3', '21', null, null);
INSERT INTO `grade` VALUES ('4', '84', null, null);
INSERT INTO `grade` VALUES ('5', '121', null, null);
INSERT INTO `grade` VALUES ('6', '87', null, null);
INSERT INTO `grade` VALUES ('7', '21', null, null);
INSERT INTO `grade` VALUES ('8', '78', null, null);
INSERT INTO `grade` VALUES ('9', '84', null, null);
INSERT INTO `grade` VALUES ('10', '60', null, null);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '青岛农业大学', null);
INSERT INTO `school` VALUES ('2', '中国海洋大学', null);
INSERT INTO `school` VALUES ('3', '中国石油大学', null);
INSERT INTO `school` VALUES ('4', '山东大学青岛校区', null);
INSERT INTO `school` VALUES ('5', '青岛大学', null);
INSERT INTO `school` VALUES ('6', '山东科技大学', null);
INSERT INTO `school` VALUES ('7', '青岛科技大学', null);
INSERT INTO `school` VALUES ('8', '青岛理工大学', null);
INSERT INTO `school` VALUES ('9', '青岛滨海学院', null);
INSERT INTO `school` VALUES ('10', '北京电影学院创意传媒学院', null);
INSERT INTO `school` VALUES ('11', '青岛工学院', null);
INSERT INTO `school` VALUES ('12', '青岛理工大学琴岛学院', null);
INSERT INTO `school` VALUES ('13', '青岛黄海大学', null);
INSERT INTO `school` VALUES ('14', '青岛职业技术学院', null);
INSERT INTO `school` VALUES ('15', '青岛远洋船员学院', null);
INSERT INTO `school` VALUES ('16', '青岛港湾职业技术学院', null);
INSERT INTO `school` VALUES ('17', '青岛酒店管理职业技术学院', null);
INSERT INTO `school` VALUES ('18', '青岛恒星职业技术学院', null);
INSERT INTO `school` VALUES ('19', '青岛飞洋职业技术学院', null);
INSERT INTO `school` VALUES ('20', '青岛求实职业技术学院', null);
INSERT INTO `school` VALUES ('21', '青岛广播电视大学', null);
INSERT INTO `school` VALUES ('22', '山东外贸职业学院', null);
INSERT INTO `school` VALUES ('23', '青岛新港报关学院', null);
INSERT INTO `school` VALUES ('24', '青岛拓扑学院', null);
INSERT INTO `school` VALUES ('25', '青岛军政人文大学', null);
INSERT INTO `school` VALUES ('26', '青岛商务管理学院', null);
INSERT INTO `school` VALUES ('27', '青岛中鲁工商学院', null);
INSERT INTO `school` VALUES ('28', '德州科技职业学院', null);
INSERT INTO `school` VALUES ('29', '青岛技师学院', null);
INSERT INTO `school` VALUES ('30', '青岛博海学院', null);
INSERT INTO `school` VALUES ('31', '青岛东方外国语学院', null);
INSERT INTO `school` VALUES ('32', '青岛博益职业专修学院', null);
INSERT INTO `school` VALUES ('33', '青岛博洋商务学院', null);
INSERT INTO `school` VALUES ('34', '青岛军大经济专修学院', null);
INSERT INTO `school` VALUES ('35', '青岛宏光外国语学院', null);
INSERT INTO `school` VALUES ('36', '青岛明天学院', null);
INSERT INTO `school` VALUES ('37', '青岛长城计算机学院', null);

-- ----------------------------
-- Table structure for squad
-- ----------------------------
DROP TABLE IF EXISTS `squad`;
CREATE TABLE `squad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of squad
-- ----------------------------
INSERT INTO `squad` VALUES ('1', '17级软件一班', '1', '3');
INSERT INTO `squad` VALUES ('2', '17级软件二班', '1', '3');
INSERT INTO `squad` VALUES ('3', '17级软件三班', '2', '3');
INSERT INTO `squad` VALUES ('4', '17级软件四班', '1', '3');
INSERT INTO `squad` VALUES ('5', '17级软件五班', '2', '3');
INSERT INTO `squad` VALUES ('6', '17级软件六班', '1', '3');
INSERT INTO `squad` VALUES ('7', '17级通信一班', '3', '3');
INSERT INTO `squad` VALUES ('8', '17级通信二班', null, '3');
INSERT INTO `squad` VALUES ('9', '17级通信三班', null, '3');
INSERT INTO `squad` VALUES ('10', '17级通信四班', null, '3');
INSERT INTO `squad` VALUES ('11', '17级通信五班', null, '3');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `patriarch` varchar(255) DEFAULT NULL,
  `squad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '男', '20', '20140125', '老王', '1');
INSERT INTO `student` VALUES ('2', '李四', '男', '21', '201450255', '刘家长', '3');
INSERT INTO `student` VALUES ('5', '王五李四', '女', '21', '20140445', '李家长', '2');
INSERT INTO `student` VALUES ('6', '王', '女', '21', '20140445', '李家长', '1');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `squad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '高数', '1');
INSERT INTO `subject` VALUES ('2', '大学英语', '1');
INSERT INTO `subject` VALUES ('3', '普华', '1');
INSERT INTO `subject` VALUES ('4', 'java', '1');
INSERT INTO `subject` VALUES ('5', 'web', '2');
INSERT INTO `subject` VALUES ('6', '数据库', '2');
INSERT INTO `subject` VALUES ('7', '动物学', '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张老师');
INSERT INTO `teacher` VALUES ('2', '王老师');
INSERT INTO `teacher` VALUES ('3', '李老师');

-- ----------------------------
-- Procedure structure for show_student
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_student`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_student`()
BEGIN
	SELECT * from student;
END
;;
DELIMITER ;
