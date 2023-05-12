/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : db_online_exam

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2020-02-03 23:01:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('474', '1', '1');
INSERT INTO `authority` VALUES ('475', '1', '5');
INSERT INTO `authority` VALUES ('476', '1', '17');
INSERT INTO `authority` VALUES ('477', '1', '18');
INSERT INTO `authority` VALUES ('478', '1', '19');
INSERT INTO `authority` VALUES ('479', '1', '20');
INSERT INTO `authority` VALUES ('480', '1', '13');
INSERT INTO `authority` VALUES ('481', '1', '21');
INSERT INTO `authority` VALUES ('482', '1', '22');
INSERT INTO `authority` VALUES ('483', '1', '23');
INSERT INTO `authority` VALUES ('484', '1', '35');
INSERT INTO `authority` VALUES ('485', '1', '36');
INSERT INTO `authority` VALUES ('486', '1', '14');
INSERT INTO `authority` VALUES ('487', '1', '15');
INSERT INTO `authority` VALUES ('488', '1', '24');
INSERT INTO `authority` VALUES ('489', '1', '25');
INSERT INTO `authority` VALUES ('490', '1', '26');
INSERT INTO `authority` VALUES ('491', '1', '31');
INSERT INTO `authority` VALUES ('492', '1', '32');
INSERT INTO `authority` VALUES ('493', '1', '33');
INSERT INTO `authority` VALUES ('494', '1', '34');
INSERT INTO `authority` VALUES ('495', '1', '37');
INSERT INTO `authority` VALUES ('496', '1', '38');
INSERT INTO `authority` VALUES ('497', '1', '39');
INSERT INTO `authority` VALUES ('498', '1', '40');
INSERT INTO `authority` VALUES ('499', '1', '41');
INSERT INTO `authority` VALUES ('500', '1', '42');
INSERT INTO `authority` VALUES ('501', '1', '43');
INSERT INTO `authority` VALUES ('502', '1', '44');
INSERT INTO `authority` VALUES ('503', '1', '45');
INSERT INTO `authority` VALUES ('504', '1', '46');
INSERT INTO `authority` VALUES ('505', '1', '47');
INSERT INTO `authority` VALUES ('506', '1', '48');
INSERT INTO `authority` VALUES ('507', '1', '49');
INSERT INTO `authority` VALUES ('508', '1', '50');
INSERT INTO `authority` VALUES ('509', '1', '51');
INSERT INTO `authority` VALUES ('510', '1', '64');
INSERT INTO `authority` VALUES ('511', '1', '52');
INSERT INTO `authority` VALUES ('512', '1', '53');
INSERT INTO `authority` VALUES ('513', '1', '54');
INSERT INTO `authority` VALUES ('514', '1', '55');
INSERT INTO `authority` VALUES ('515', '1', '56');
INSERT INTO `authority` VALUES ('516', '1', '57');
INSERT INTO `authority` VALUES ('517', '1', '58');
INSERT INTO `authority` VALUES ('518', '1', '60');
INSERT INTO `authority` VALUES ('519', '1', '61');
INSERT INTO `authority` VALUES ('520', '1', '62');
INSERT INTO `authority` VALUES ('521', '1', '63');
INSERT INTO `authority` VALUES ('522', '1', '65');
INSERT INTO `authority` VALUES ('523', '1', '66');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `avaliableTime` int(8) NOT NULL,
  `questionNum` int(5) NOT NULL,
  `totalScore` int(5) NOT NULL,
  `passScore` int(5) NOT NULL,
  `singleQuestionNum` int(5) NOT NULL,
  `muiltQuestionNum` int(5) NOT NULL,
  `chargeQuestionNum` int(5) NOT NULL,
  `paperNum` int(5) NOT NULL DEFAULT '0',
  `examedNum` int(5) NOT NULL DEFAULT '0',
  `passNum` int(5) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('2', '软件工程期中考试', '1', '2019-05-01 00:00:00', '2020-05-31 00:00:00', '60', '4', '10', '5', '2', '1', '1', '5', '5', '4', '2019-04-29 20:23:03');
INSERT INTO `exam` VALUES ('3', '计算机基本知识小测验', '1', '2019-04-12 20:28:48', '2020-05-31 20:28:51', '2', '11', '28', '20', '4', '3', '4', '2', '2', '0', '2019-04-29 20:29:06');
INSERT INTO `exam` VALUES ('4', '软件工程课堂随机小测试', '1', '2019-05-03 11:45:00', '2020-05-05 11:12:02', '1', '2', '6', '2', '1', '1', '0', '2', '2', '2', '2019-05-04 11:12:12');
INSERT INTO `exam` VALUES ('5', '物理课堂测验', '6', '2019-05-01 16:48:31', '2020-05-18 16:48:34', '30', '3', '8', '4', '1', '1', '1', '1', '1', '1', '2019-05-04 16:49:28');
INSERT INTO `exam` VALUES ('6', '软件工程2018期末考试', '1', '2018-12-01 17:00:05', '2020-12-31 17:00:16', '60', '14', '36', '20', '6', '4', '4', '0', '0', '0', '2019-05-04 17:01:57');

-- ----------------------------
-- Table structure for `exampaper`
-- ----------------------------
DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE `exampaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `totalScore` int(5) NOT NULL DEFAULT '0',
  `score` int(5) NOT NULL DEFAULT '0',
  `startExamTime` datetime DEFAULT NULL,
  `endExamTime` datetime DEFAULT NULL,
  `useTime` int(8) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `examId` (`examId`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `exampaper_ibfk_1` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`),
  CONSTRAINT `exampaper_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exampaper
-- ----------------------------
INSERT INTO `exampaper` VALUES ('9', '2', '6', '1', '10', '6', '2019-05-04 11:04:02', '2019-05-04 11:07:11', '3', '2019-05-04 11:06:49');
INSERT INTO `exampaper` VALUES ('10', '4', '6', '1', '6', '6', '2019-05-04 11:12:32', '2019-05-04 11:13:31', '0', '2019-05-04 11:12:32');
INSERT INTO `exampaper` VALUES ('11', '3', '6', '1', '28', '4', '2019-05-04 13:25:22', '2019-05-04 13:26:30', '1', '2019-05-04 13:25:22');
INSERT INTO `exampaper` VALUES ('12', '5', '8', '1', '8', '4', '2019-05-04 16:55:38', '2019-05-04 16:55:58', '0', '2019-05-04 16:55:38');
INSERT INTO `exampaper` VALUES ('14', '2', '9', '1', '10', '8', '2019-05-04 18:20:37', '2019-05-04 18:20:56', '0', '2019-05-04 18:20:37');
INSERT INTO `exampaper` VALUES ('15', '2', '10', '1', '10', '6', '2019-05-04 18:22:29', '2019-05-04 18:22:46', '0', '2019-05-04 18:22:29');
INSERT INTO `exampaper` VALUES ('16', '2', '11', '1', '10', '2', '2019-05-04 18:24:07', '2019-05-04 18:24:19', '0', '2019-05-04 18:24:07');
INSERT INTO `exampaper` VALUES ('17', '4', '11', '1', '6', '2', '2019-05-04 18:24:51', '2019-05-04 18:25:50', '0', '2019-05-04 18:24:51');
INSERT INTO `exampaper` VALUES ('18', '3', '11', '1', '28', '6', '2019-05-04 18:26:25', '2019-05-04 18:26:44', '0', '2019-05-04 18:26:25');

-- ----------------------------
-- Table structure for `exampaperanswer`
-- ----------------------------
DROP TABLE IF EXISTS `exampaperanswer`;
CREATE TABLE `exampaperanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) NOT NULL,
  `examPaperId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL DEFAULT '0',
  `answer` varchar(32) DEFAULT '0',
  `isCorrect` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `examId` (`examPaperId`),
  KEY `studentId` (`studentId`),
  KEY `questionId` (`questionId`),
  KEY `examId_2` (`examId`),
  CONSTRAINT `exampaperanswer_ibfk_1` FOREIGN KEY (`examPaperId`) REFERENCES `exampaper` (`id`),
  CONSTRAINT `exampaperanswer_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `exampaperanswer_ibfk_3` FOREIGN KEY (`questionId`) REFERENCES `question` (`id`),
  CONSTRAINT `exampaperanswer_ibfk_4` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exampaperanswer
-- ----------------------------
INSERT INTO `exampaperanswer` VALUES ('21', '2', '9', '6', '2', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('22', '2', '9', '6', '6', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('23', '2', '9', '6', '1', 'ABCD', '1');
INSERT INTO `exampaperanswer` VALUES ('24', '2', '9', '6', '5', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('25', '4', '10', '6', '6', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('26', '4', '10', '6', '1', 'ABCD', '1');
INSERT INTO `exampaperanswer` VALUES ('27', '3', '11', '6', '16', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('28', '3', '11', '6', '6', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('29', '3', '11', '6', '14', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('30', '3', '11', '6', '2', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('31', '3', '11', '6', '21', 'ACD', '0');
INSERT INTO `exampaperanswer` VALUES ('32', '3', '11', '6', '20', 'AB', '0');
INSERT INTO `exampaperanswer` VALUES ('33', '3', '11', '6', '22', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('34', '3', '11', '6', '5', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('35', '3', '11', '6', '17', 'B', '1');
INSERT INTO `exampaperanswer` VALUES ('36', '3', '11', '6', '18', 'A', '0');
INSERT INTO `exampaperanswer` VALUES ('37', '3', '11', '6', '19', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('38', '5', '12', '8', '29', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('39', '5', '12', '8', '28', 'BD', '1');
INSERT INTO `exampaperanswer` VALUES ('40', '5', '12', '8', '30', 'A', '0');
INSERT INTO `exampaperanswer` VALUES ('50', '2', '14', '9', '14', 'D', '0');
INSERT INTO `exampaperanswer` VALUES ('51', '2', '14', '9', '6', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('52', '2', '14', '9', '21', 'CD', '1');
INSERT INTO `exampaperanswer` VALUES ('53', '2', '14', '9', '19', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('54', '2', '15', '10', '2', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('55', '2', '15', '10', '13', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('56', '2', '15', '10', '21', 'ABCD', '0');
INSERT INTO `exampaperanswer` VALUES ('57', '2', '15', '10', '18', 'B', '1');
INSERT INTO `exampaperanswer` VALUES ('58', '2', '16', '11', '2', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('59', '2', '16', '11', '16', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('60', '2', '16', '11', '1', 'D', '0');
INSERT INTO `exampaperanswer` VALUES ('61', '2', '16', '11', '19', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('62', '4', '17', '11', '13', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('63', '4', '17', '11', '20', 'AC', '0');
INSERT INTO `exampaperanswer` VALUES ('64', '3', '18', '11', '2', 'C', '0');
INSERT INTO `exampaperanswer` VALUES ('65', '3', '18', '11', '6', 'C', '0');
INSERT INTO `exampaperanswer` VALUES ('66', '3', '18', '11', '15', null, '0');
INSERT INTO `exampaperanswer` VALUES ('67', '3', '18', '11', '13', null, '0');
INSERT INTO `exampaperanswer` VALUES ('68', '3', '18', '11', '1', 'BC', '0');
INSERT INTO `exampaperanswer` VALUES ('69', '3', '18', '11', '20', null, '0');
INSERT INTO `exampaperanswer` VALUES ('70', '3', '18', '11', '22', 'ABD', '0');
INSERT INTO `exampaperanswer` VALUES ('71', '3', '18', '11', '5', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('72', '3', '18', '11', '17', 'B', '1');
INSERT INTO `exampaperanswer` VALUES ('73', '3', '18', '11', '18', 'A', '0');
INSERT INTO `exampaperanswer` VALUES ('74', '3', '18', '11', '19', 'A', '1');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('13', '用户名为admin的用户登录时输入验证码错误!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES ('14', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES ('15', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES ('16', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES ('17', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 19:11:49');
INSERT INTO `log` VALUES ('18', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:13:32');
INSERT INTO `log` VALUES ('19', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:14:01');
INSERT INTO `log` VALUES ('20', '用户名为{小李}，角色为{普通用户}的用户登录成功!', '2018-12-16 19:17:46');
INSERT INTO `log` VALUES ('21', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 14:03:54');
INSERT INTO `log` VALUES ('22', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 16:32:59');
INSERT INTO `log` VALUES ('23', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 16:41:20');
INSERT INTO `log` VALUES ('24', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 17:00:15');
INSERT INTO `log` VALUES ('25', '用户名为admin的用户登录时输入验证码错误!', '2019-04-21 17:08:58');
INSERT INTO `log` VALUES ('26', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 17:09:09');
INSERT INTO `log` VALUES ('27', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 17:20:28');
INSERT INTO `log` VALUES ('28', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 19:14:08');
INSERT INTO `log` VALUES ('29', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 19:20:51');
INSERT INTO `log` VALUES ('30', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 20:31:38');
INSERT INTO `log` VALUES ('31', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 20:40:28');
INSERT INTO `log` VALUES ('32', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 20:57:55');
INSERT INTO `log` VALUES ('33', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 20:59:17');
INSERT INTO `log` VALUES ('34', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-22 21:26:13');
INSERT INTO `log` VALUES ('35', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-22 21:31:25');
INSERT INTO `log` VALUES ('36', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-22 22:09:06');
INSERT INTO `log` VALUES ('37', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-25 21:20:00');
INSERT INTO `log` VALUES ('38', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-25 21:24:30');
INSERT INTO `log` VALUES ('39', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 19:35:44');
INSERT INTO `log` VALUES ('40', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 19:39:37');
INSERT INTO `log` VALUES ('41', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 19:51:46');
INSERT INTO `log` VALUES ('42', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 21:35:07');
INSERT INTO `log` VALUES ('43', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 21:52:27');
INSERT INTO `log` VALUES ('44', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 21:55:07');
INSERT INTO `log` VALUES ('45', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-28 22:11:24');
INSERT INTO `log` VALUES ('46', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 20:22:22');
INSERT INTO `log` VALUES ('47', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 20:59:06');
INSERT INTO `log` VALUES ('48', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 21:14:00');
INSERT INTO `log` VALUES ('49', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 22:08:39');
INSERT INTO `log` VALUES ('50', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 22:25:57');
INSERT INTO `log` VALUES ('51', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 22:28:04');
INSERT INTO `log` VALUES ('52', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 22:40:32');
INSERT INTO `log` VALUES ('53', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 22:48:00');
INSERT INTO `log` VALUES ('54', '用户名为admin的用户登录时输入验证码错误!', '2019-04-29 22:50:44');
INSERT INTO `log` VALUES ('55', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-29 22:50:52');
INSERT INTO `log` VALUES ('56', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-01 18:34:56');
INSERT INTO `log` VALUES ('57', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-01 18:48:06');
INSERT INTO `log` VALUES ('58', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-02 15:06:28');
INSERT INTO `log` VALUES ('59', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-02 15:15:13');
INSERT INTO `log` VALUES ('60', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-03 13:37:07');
INSERT INTO `log` VALUES ('61', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 10:47:34');
INSERT INTO `log` VALUES ('62', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 11:03:48');
INSERT INTO `log` VALUES ('63', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 11:11:14');
INSERT INTO `log` VALUES ('64', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 11:37:59');
INSERT INTO `log` VALUES ('65', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 11:40:08');
INSERT INTO `log` VALUES ('66', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:00:26');
INSERT INTO `log` VALUES ('67', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:24:33');
INSERT INTO `log` VALUES ('68', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:37:20');
INSERT INTO `log` VALUES ('69', '用户名为admin的用户登录时输入验证码错误!', '2019-05-04 12:40:30');
INSERT INTO `log` VALUES ('70', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:40:37');
INSERT INTO `log` VALUES ('71', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:42:25');
INSERT INTO `log` VALUES ('72', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:50:11');
INSERT INTO `log` VALUES ('73', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:53:01');
INSERT INTO `log` VALUES ('74', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 12:59:13');
INSERT INTO `log` VALUES ('75', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 13:00:32');
INSERT INTO `log` VALUES ('76', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 13:05:07');
INSERT INTO `log` VALUES ('77', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 14:58:38');
INSERT INTO `log` VALUES ('78', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 15:08:45');
INSERT INTO `log` VALUES ('79', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 16:31:28');
INSERT INTO `log` VALUES ('80', '用户名为admin的用户登录时输入验证码错误!', '2019-05-04 16:44:02');
INSERT INTO `log` VALUES ('81', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 16:44:08');
INSERT INTO `log` VALUES ('82', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 16:59:46');
INSERT INTO `log` VALUES ('83', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 17:17:13');
INSERT INTO `log` VALUES ('84', '用户名为admin的用户登录时输入验证码错误!', '2019-05-04 17:21:28');
INSERT INTO `log` VALUES ('85', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 17:21:34');
INSERT INTO `log` VALUES ('86', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 17:23:51');
INSERT INTO `log` VALUES ('87', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 18:08:31');
INSERT INTO `log` VALUES ('88', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-05-04 18:21:39');
INSERT INTO `log` VALUES ('89', '�û���Ϊ{admin}����ɫΪ{超级管理员}���û���¼�ɹ�!', '2020-02-03 21:14:43');
INSERT INTO `log` VALUES ('90', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-02-03 22:03:23');
INSERT INTO `log` VALUES ('91', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-02-03 22:59:19');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '学科管理', '', 'icon-text-padding-left');
INSERT INTO `menu` VALUES ('38', '37', '学科列表', '../admin/subject/list', 'icon-application-view-columns');
INSERT INTO `menu` VALUES ('39', '38', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('42', '0', '考生管理', '', 'icon-users');
INSERT INTO `menu` VALUES ('43', '42', '考生列表', '../admin/student/list', 'icon-vcard');
INSERT INTO `menu` VALUES ('44', '43', '添加', 'openAdd()', 'icon-user-add');
INSERT INTO `menu` VALUES ('45', '43', '编辑', 'openEdit()', 'icon-user-edit');
INSERT INTO `menu` VALUES ('46', '43', '删除', 'remove()', 'icon-user-cross');
INSERT INTO `menu` VALUES ('47', '0', '试题管理', '', 'icon-date');
INSERT INTO `menu` VALUES ('48', '47', '试题列表', '../admin/question/list', 'icon-date-magnify');
INSERT INTO `menu` VALUES ('49', '48', '添加', 'openAdd()', 'icon-date-add');
INSERT INTO `menu` VALUES ('50', '48', '编辑', 'openEdit()', 'icon-date-edit');
INSERT INTO `menu` VALUES ('51', '48', '删除', 'remove()', 'icon-date-delete');
INSERT INTO `menu` VALUES ('52', '0', '考试管理', '', 'icon-map');
INSERT INTO `menu` VALUES ('53', '52', '考试列表', '../admin/exam/list', 'icon-map-magnify');
INSERT INTO `menu` VALUES ('54', '53', '添加', 'openAdd()', 'icon-map-add');
INSERT INTO `menu` VALUES ('55', '53', '编辑', 'openEdit()', 'icon-map-edit');
INSERT INTO `menu` VALUES ('56', '53', '删除', 'remove()', 'icon-map-delete');
INSERT INTO `menu` VALUES ('57', '0', '试卷管理', '', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('58', '57', '试卷列表', '../admin/examPaper/list', 'icon-page-white-stack');
INSERT INTO `menu` VALUES ('60', '58', '编辑', 'openEdit()', 'icon-page-white-edit');
INSERT INTO `menu` VALUES ('61', '58', '删除', 'remove()', 'icon-page-white-delete');
INSERT INTO `menu` VALUES ('62', '0', '答题管理', '', 'icon-building-edit');
INSERT INTO `menu` VALUES ('63', '62', '答题列表', '../admin/examPaperAnswer/list', 'icon-building');
INSERT INTO `menu` VALUES ('64', '48', '导入试题', 'openImport()', 'icon-note-go');
INSERT INTO `menu` VALUES ('65', '0', '成绩统计', '', 'icon-text-letter-omega');
INSERT INTO `menu` VALUES ('66', '65', '统计图表', '../admin/stats/exam_stats', 'icon-chart-line');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL DEFAULT '1',
  `questionType` int(2) NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL,
  `score` int(3) NOT NULL,
  `attrA` varchar(256) NOT NULL,
  `attrB` varchar(256) NOT NULL,
  `attrC` varchar(256) DEFAULT NULL,
  `attrD` varchar(256) DEFAULT NULL,
  `answer` varchar(16) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1', '1', '下列哪些是高级编程语言？', '4', 'java', 'C', 'C++', 'PHP', 'ABCD', '2019-04-22 22:03:44');
INSERT INTO `question` VALUES ('2', '1', '0', '下列需要虚拟机中执行代码的是？', '2', 'Java代码', 'C代码', 'C++代码', 'PHP代码', 'A', '2019-04-22 22:10:05');
INSERT INTO `question` VALUES ('5', '1', '2', '泛化针对类型而不针对实例，一个类可以继承另一个类，但一个对象不能继承另一个对象', '2', '正确', '错误', '', '', 'A', '2019-04-22 22:19:22');
INSERT INTO `question` VALUES ('6', '1', '0', '下列哪个是百度官网地址？', '2', 'http://www.baidu.com', 'http://www.sina.com', 'http://www.qq.com', 'http://www.dashen.com', 'A', '2019-04-25 21:26:31');
INSERT INTO `question` VALUES ('13', '1', '0', 'Java是什么？', '2', '编程语言', '不知道', '一种吃的东西', '诗歌语言吧', 'A', '2019-05-04 13:05:18');
INSERT INTO `question` VALUES ('14', '1', '0', '瀑布模型把软件生命周期划分为八个阶段：问题的定义、可行性研究、软件需求分析、系统总体设计、详细设计、编码、测试和运行、维护。八个阶段又可归纳为三个大的阶段：计划阶段、开发阶段和＿。', '2', '详细计划', '可行性分析', '运行阶段', '测试与排错', 'C', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('15', '1', '0', '在结构化的瀑布模型中，哪一个阶段定义的标准将成为软件测试年勺系统测试阶段的目标', '2', '需求分析阶段', '详细设计阶段', '概要设计阶段', '可行性研究阶段', 'A', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('16', '1', '0', '软件工程的出现主要是由于', '2', '程序设计方法学的影响', '其它工程科学的影响', '软件危机的出现', '计算机的发展', 'C', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('17', '1', '2', '开发软件就是编写程序。', '2', '正确', '错误', '', '', 'B', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('18', '1', '2', '系统测试的主要方法是白盒法，主要进行功能测试、性能测试、安全性测试及可靠性等测试。', '2', '正确', '错误', '', '', 'B', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('19', '1', '2', '生产高质量的软件产品是软件工程的首要目标。', '2', '正确', '错误', '', '', 'A', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('20', '1', '1', '计算机病毒有两大类，它们是()', '4', '感染可执行文件', '感染磁盘dos启动区', '文件型病毒', '感染磁盘分区引导区，系统引导型病毒', 'ACD', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('21', '1', '1', '指令系统中控制程序流程的指令通常有()', '4', '传送指令', '比较指令', '转移指令', '转移与返回指令', 'CD', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('22', '1', '1', '关于计算机的主要发展趋势,以下说法正确的是', '4', '为形成计算机网络,使一国乃至全世界的多台计算机能够共享信息', '为满足科研等领域的需要,向超高速巨型化发展', '向高速微型发展', '为节约耗电量,形成计算机网络', 'ABC', '2019-05-04 13:21:54');
INSERT INTO `question` VALUES ('25', '5', '0', '被誉为中国现代数学祖师的是？', '2', '姜伯驹', '苏步青', '姜立夫', '杨振宁', 'C', '2019-05-04 16:35:57');
INSERT INTO `question` VALUES ('26', '5', '1', '荣获1989年台湾当局颁发的景星奖章是（），中国的第一份数学刊物--《算学报》是由（）创办的。', '4', '黄庆澄', '柯召', '徐贤修', '华罗庚', 'AC', '2019-05-04 16:38:15');
INSERT INTO `question` VALUES ('27', '5', '2', '1988年被英国国际传记中心收入《世界名人录》的是方德植？', '2', '正确', '错误', '', '', 'A', '2019-05-04 16:39:00');
INSERT INTO `question` VALUES ('28', '6', '1', '以下物理学知识的相关叙述，其中正确的是', '4', '用透明的标准样板和单色光检查平面的平整度是利用了光的偏振', '变化的电场周围不一定产生变化的磁场', '交警通过发射超声波测量车速是利用了波的干涉原理', '狭义相对论认为，在惯性参照系中，光速与光源、观察者间的相对运动无关', 'BD', '2019-05-04 16:41:43');
INSERT INTO `question` VALUES ('29', '6', '0', '许多物理学家的科学研究不仅促进了物理学的发展，而且推动了人类文明的进步。在对以下几位物理学家所做科学贡献的叙述中，正确的是', '2', '英国物理学家卡文迪许用实验的方法测出了引力常量G ', '牛顿通过计算首先发现了海王星和冥王星', '爱因斯坦建立了相对论，相对论物理学否定了经典物理学', '开普勒经过多年的天文观测和记录，提出了“日心说”的观点', 'A', '2019-05-04 16:43:14');
INSERT INTO `question` VALUES ('30', '6', '2', '许多物体可以在不发生形变的条件下对物体施以弹力作用', '2', '正确', '错误', '', '', 'B', '2019-05-04 16:45:01');
INSERT INTO `question` VALUES ('31', '7', '0', 'Your sister looks very ________.What\'s the matter with her?', '2', 'funny', 'weak', 'boring', 'relaxed', 'B', '2019-05-04 16:46:42');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `trueName` varchar(32) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '1', '小李', '123', '小李', '13656564656', '2019-04-21 20:40:48');
INSERT INTO `student` VALUES ('3', '5', 'llqllq', 'sadsad', 'llq', '1356565656', '2019-04-21 20:46:42');
INSERT INTO `student` VALUES ('4', '1', 'zs', 'sadsadsa', '张三', '18989898989', '2019-04-21 20:46:52');
INSERT INTO `student` VALUES ('5', '7', 'ls', 'dsad111', '李四', '15656565656', '2019-04-21 20:47:00');
INSERT INTO `student` VALUES ('6', '1', 'llq', 'llq', '小李', '13918655696', '2019-05-01 21:33:31');
INSERT INTO `student` VALUES ('8', '6', '张三丰', '123456', '张三丰', '18959558585', '2019-05-04 16:51:59');
INSERT INTO `student` VALUES ('9', '1', '马大云', '123', '马云', '13656565656', '2019-05-04 18:11:12');
INSERT INTO `student` VALUES ('10', '1', 'jack', '123', '马化腾', '13656564545', '2019-05-04 18:22:19');
INSERT INTO `student` VALUES ('11', '1', 'test', '123', '测试人员', '13989895959', '2019-05-04 18:23:40');
INSERT INTO `student` VALUES ('12', '7', '小马哥', '123123', '小马哥', '1556565655', '2019-05-04 18:27:45');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '软件工程', '软件工程专业');
INSERT INTO `subject` VALUES ('5', '数学专业', '数学专业');
INSERT INTO `subject` VALUES ('6', '物理专业', '');
INSERT INTO `subject` VALUES ('7', '英语专业', '');
INSERT INTO `subject` VALUES ('8', '小李', '小李');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '/BaseProjectSSM/resources/upload/1544880711002.jpg', '1', '24', '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES ('13', '小李', '123456', '2', '/BaseProjectSSM/resources/upload/1544880811060.jpg', '1', '24', '小李');
