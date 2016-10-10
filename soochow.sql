/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : soochow

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-08-08 16:34:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `status` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('0', '宋礼', '1');
INSERT INTO `administrator` VALUES ('1', 'root', '1');

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `status` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('0', '宋礼', 'e10adc3949ba59abbe56e057f20f883e', '1');
INSERT INTO `adminuser` VALUES ('1', 'root', 'e10adc3949ba59abbe56e057f20f883e', '1');
INSERT INTO `adminuser` VALUES ('2', 'ling', '24c10be286b009f797d53126790fcfd8', '1');

-- ----------------------------
-- Table structure for dataset
-- ----------------------------
DROP TABLE IF EXISTS `dataset`;
CREATE TABLE `dataset` (
  `id` varchar(100) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `branch_item` int(11) DEFAULT '0',
  `point` varchar(100) NOT NULL,
  `lose` float(2,1) DEFAULT '0.0',
  `get` float(2,1) DEFAULT '1.0',
  `domain` int(11) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `zone` int(11) DEFAULT '0',
  KEY `item` (`item`),
  KEY `domain` (`domain`),
  KEY `department` (`department`),
  KEY `zone` (`zone`) USING HASH,
  KEY `zone_2` (`zone`) USING HASH,
  CONSTRAINT `dataset_ibfk_1` FOREIGN KEY (`item`) REFERENCES `item` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dataset_ibfk_2` FOREIGN KEY (`domain`) REFERENCES `domain` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dataset_ibfk_4` FOREIGN KEY (`zone`) REFERENCES `zone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dataset
-- ----------------------------
INSERT INTO `dataset` VALUES ('', '0', '0', '', '0.0', '1.0', '0', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道1', '1', '1', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道10', '1', '1', '公园景区', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道100', '9', '1', '主要交通路口1', '0.2', '0.8', '37', '25', '5');
INSERT INTO `dataset` VALUES ('吴江街道101', '9', '1', '主要交通路口2', '0.0', '1.0', '37', '25', '5');
INSERT INTO `dataset` VALUES ('吴江街道102', '9', '1', '主要交通路口3', '0.0', '1.0', '37', '25', '5');
INSERT INTO `dataset` VALUES ('吴江街道103', '9', '1', '主要交通路口4', '0.0', '1.0', '37', '25', '5');
INSERT INTO `dataset` VALUES ('吴江街道104', '10', '1', '主干道1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道105', '10', '1', '主干道2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道106', '10', '1', '次干道1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道107', '10', '1', '次干道2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道108', '10', '1', '商业大街1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道109', '10', '1', '商业大街2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道11', '1', '1', '中学', '0.0', '1.0', '0', '20', '5');
INSERT INTO `dataset` VALUES ('吴江街道110', '10', '1', '政务大厅1', '0.0', '1.0', '0', '12', '5');
INSERT INTO `dataset` VALUES ('吴江街道111', '10', '1', '政务大厅2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道112', '10', '1', '商场1', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道113', '10', '1', '超市', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道114', '10', '1', '社区1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道115', '10', '1', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道116', '10', '1', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道117', '10', '1', '医院1', '0.0', '1.0', '0', '17', '5');
INSERT INTO `dataset` VALUES ('吴江街道118', '10', '1', '医院2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道119', '10', '1', '室外公共厕所', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道12', '1', '1', '小学', '0.0', '1.0', '0', '20', '5');
INSERT INTO `dataset` VALUES ('吴江街道120', '10', '2', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道121', '10', '2', '主干道2', '0.3', '0.7', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道122', '10', '2', '次干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道123', '10', '2', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道124', '10', '2', '商业大街1', '0.1', '0.9', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道125', '10', '2', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道126', '10', '3', '主干道1', '0.2', '0.8', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道127', '10', '3', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道128', '10', '3', '次干道1', '0.2', '0.8', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道129', '10', '3', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道13', '1', '2', '街道综合文化站', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道130', '10', '3', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道131', '10', '3', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道132', '10', '4', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道133', '10', '4', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道134', '10', '4', '次干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道135', '10', '4', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道136', '10', '4', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道137', '10', '4', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道138', '10', '5', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道139', '10', '5', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道14', '1', '2', '社区综合文化服务中心1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道140', '10', '5', '次干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道141', '10', '5', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道142', '10', '5', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道143', '10', '5', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道144', '10', '6', '背街小巷1', '0.2', '0.8', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道145', '10', '6', '背街小巷2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道146', '10', '7', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道147', '10', '7', '主干道2', '0.1', '0.9', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道148', '10', '7', '次干道1', '0.1', '0.9', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道149', '10', '7', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道15', '1', '2', '社区综合文化服务中心2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道150', '10', '7', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道151', '10', '7', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道152', '10', '7', '公共广场', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道153', '10', '7', '公园景区', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道154', '10', '7', '公交站台', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道155', '10', '7', '长途汽车站', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道156', '10', '8', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道157', '10', '8', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道158', '10', '8', '次干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道159', '10', '8', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道16', '1', '2', '社区综合文化服务中心3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道160', '10', '8', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道161', '10', '8', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道162', '10', '8', '公共广场', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道163', '10', '8', '公园景区', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道164', '10', '8', '公交站', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道165', '10', '8', '长途汽车站', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道166', '10', '9', '餐饮店', '0.0', '1.0', '37', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道167', '10', '9', '宾馆1', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道168', '10', '9', '宾馆2', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道169', '10', '9', '酒店', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道17', '1', '3', '城市社区1', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道170', '10', '9', '食品店', '0.0', '1.0', '37', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道171', '10', '9', '各类商店', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道172', '10', '9', '各类超市', '0.1', '0.9', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道173', '10', '9', '文化娱乐场所', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道174', '0', '0', '社区1', '0.2', '0.8', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道175', '0', '0', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道176', '0', '0', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道177', '0', '1', '社区1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道178', '0', '1', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道179', '0', '1', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道18', '1', '3', '城市社区2', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道180', '0', '2', '社区1', '0.1', '0.9', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道181', '0', '2', '社区2', '0.1', '0.9', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道182', '0', '2', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道183', '0', '3', '社区1', '0.2', '0.8', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道184', '0', '3', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道185', '0', '3', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道186', '0', '4', '社区1', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道187', '0', '4', '社区2', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道188', '0', '4', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道189', '11', '1', '政务大厅1', '0.0', '1.0', '0', '12 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道19', '1', '3', '城市社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道190', '11', '1', '政务大厅2', '0.0', '1.0', '37', '19', '5');
INSERT INTO `dataset` VALUES ('吴江街道191', '11', '1', '社区1', '0.2', '0.8', '37', '19', '5');
INSERT INTO `dataset` VALUES ('吴江街道192', '11', '1', '社区2', '0.2', '0.8', '37', '19', '5');
INSERT INTO `dataset` VALUES ('吴江街道193', '11', '1', '社区3', '0.0', '1.0', '37', '19', '5');
INSERT INTO `dataset` VALUES ('吴江街道194', '11', '1', '商场1', '0.0', '1.0', '37', '26 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道195', '11', '1', '商场2', '0.0', '1.0', '37', '26 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道196', '11', '1', '超市1', '0.0', '1.0', '37', '26 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道197', '11', '1', '超市2', '0.0', '1.0', '37', '26 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道198', '11', '1', '集贸市场', '0.0', '1.0', '37', '19', '5');
INSERT INTO `dataset` VALUES ('吴江街道199', '11', '1', '中学', '0.0', '1.0', '0', '20 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道2', '1', '1', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道20', '1', '3', '中学', '0.0', '1.0', '0', '20', '5');
INSERT INTO `dataset` VALUES ('吴江街道200', '11', '1', '小学', '0.0', '1.0', '37', '20 19', '5');
INSERT INTO `dataset` VALUES ('吴江街道201', '11', '2', '超市1', '0.0', '1.0', '37', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道202', '11', '2', '超市2', '0.0', '1.0', '37', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道203', '11', '2', '集贸市场', '0.0', '1.0', '37', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道204', '11', '3', '药店1', '1.0', '0.0', '0', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道205', '11', '3', '药店2', '0.0', '1.0', '0', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道206', '12', '1', '建成区河道', '0.0', '1.0', '37', '21', '5');
INSERT INTO `dataset` VALUES ('吴江街道207', '12', '2', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道208', '12', '2', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道209', '12', '2', '次干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道21', '1', '3', '小学', '0.0', '1.0', '0', '20', '5');
INSERT INTO `dataset` VALUES ('吴江街道210', '12', '2', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道211', '12', '2', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道212', '12', '2', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道213', '12', '2', '饭店1', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道214', '12', '2', '饭店2', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道215', '13', '0', '社区1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道216', '13', '0', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道217', '13', '0', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道218', '13', '0', '公共广场', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道219', '13', '0', '主干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道22', '2', '1', '宾馆1', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道220', '13', '0', '主干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道221', '13', '0', '商业大街1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道222', '13', '0', '商业大街2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道223', '14', '1', '村', '0.0', '1.0', '37', '17', '5');
INSERT INTO `dataset` VALUES ('吴江街道224', '14', '2', '市级文明镇', '0.0', '1.0', '37', '30', '5');
INSERT INTO `dataset` VALUES ('吴江街道225', '14', '2', '市级文明村', '0.0', '1.0', '37', '30', '5');
INSERT INTO `dataset` VALUES ('吴江街道23', '2', '1', '饭店1', '0.0', '1.0', '37', '29', '5');
INSERT INTO `dataset` VALUES ('吴江街道24', '2', '1', '饭店2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道25', '3', '0', '长途汽车站', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道26', '3', '0', '旅游集散中心', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道27', '3', '0', '出入境办证大厅', '0.0', '1.0', '0', '25', '5');
INSERT INTO `dataset` VALUES ('吴江街道28', '3', '0', '旅行社', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道29', '3', '0', '景点景区', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道3', '1', '1', '次干道1', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道30', '4', '0', '主干道1', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道31', '4', '0', '主干道2', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道32', '4', '0', '次干道1', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道33', '4', '0', '次干道2', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道34', '4', '0', '商业大街1', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道35', '4', '0', '商业大街2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道36', '4', '0', '公共广场', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道37', '4', '0', '建筑围挡', '0.0', '1.0', '0', '24', '5');
INSERT INTO `dataset` VALUES ('吴江街道38', '4', '0', '公园景区', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道39', '4', '0', '商场', '0.0', '1.0', '0', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道4', '1', '1', '次干道2', '0.0', '1.0', '37', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道40', '4', '0', '超市', '0.0', '1.0', '0', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道41', '4', '0', '宾馆1', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道42', '4', '0', '社区1', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道43', '4', '0', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道44', '4', '0', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道45', '4', '0', '公交车站', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道46', '4', '0', '公交车', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道47', '4', '0', '长途汽车站', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道48', '0', '0', '政务大厅1', '0.0', '1.0', '0', '12', '5');
INSERT INTO `dataset` VALUES ('吴江街道49', '0', '0', '政务大厅2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道5', '1', '1', '广场', '0.0', '1.0', '37', '24', '5');
INSERT INTO `dataset` VALUES ('吴江街道50', '6', '1', '医院1', '0.0', '1.0', '0', '17', '5');
INSERT INTO `dataset` VALUES ('吴江街道51', '6', '1', '医院2', '0.0', '1.0', '0', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道52', '6', '1', '商场1', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道53', '6', '1', '超市', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道54', '6', '1', '宾馆1', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道55', '6', '1', '宾馆2', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道56', '6', '1', '政务大厅1', '0.0', '1.0', '0', '12', '5');
INSERT INTO `dataset` VALUES ('吴江街道57', '6', '1', '政务大厅2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道58', '6', '2', '医院1', '0.0', '1.0', '0', '17', '5');
INSERT INTO `dataset` VALUES ('吴江街道59', '6', '2', '医院2', '0.0', '1.0', '0', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道6', '1', '1', '建筑围挡', '0.0', '1.0', '37', '24', '5');
INSERT INTO `dataset` VALUES ('吴江街道60', '6', '2', '商场1', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道61', '6', '2', '超市', '0.0', '1.0', '37', '26', '5');
INSERT INTO `dataset` VALUES ('吴江街道62', '6', '2', '宾馆1', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道63', '6', '2', '宾馆2', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道64', '6', '2', '政务大厅1', '0.0', '1.0', '0', '12', '5');
INSERT INTO `dataset` VALUES ('吴江街道65', '6', '2', '政务大厅2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道66', '7', '1', '街道1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道67', '7', '1', '社区1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道68', '7', '1', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道69', '7', '1', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道7', '1', '1', '社区1', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道70', '7', '2', '街道1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道71', '7', '2', '社区1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道72', '7', '2', '社区2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道73', '7', '2', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道74', '7', '3', '街道', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道75', '7', '4', '公共图书馆', '0.0', '1.0', '0', '18', '5');
INSERT INTO `dataset` VALUES ('吴江街道76', '0', '1', '主干道1', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道77', '0', '1', '主干道2', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道78', '0', '1', '次干道1', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道79', '0', '1', '次干道2', '0.0', '1.0', '0', '8', '5');
INSERT INTO `dataset` VALUES ('吴江街道8', '1', '1', '社区2', '1.0', '0.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道80', '0', '1', '商业大街1', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道81', '0', '1', '商业大街2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道82', '0', '1', '公园景区', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道83', '0', '1', '公共广场', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道84', '0', '1', '公交车站', '0.0', '1.0', '37', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道85', '0', '2', '政务大厅1', '0.0', '1.0', '0', '12', '5');
INSERT INTO `dataset` VALUES ('吴江街道86', '0', '2', '政务大厅2', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道87', '0', '2', '宾馆1', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道88', '0', '2', '宾馆2', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道89', '0', '2', '饭店1', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道9', '1', '1', '社区3', '0.0', '1.0', '37', '0', '5');
INSERT INTO `dataset` VALUES ('吴江街道90', '0', '2', '饭店2', '0.0', '1.0', '0', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道91', '0', '2', '医院1', '0.0', '1.0', '0', '17', '5');
INSERT INTO `dataset` VALUES ('吴江街道92', '0', '2', '医院2', '0.0', '1.0', '0', '17', '5');
INSERT INTO `dataset` VALUES ('吴江街道93', '0', '2', '长途汽车站', '0.0', '1.0', '0', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道94', '0', '3', '影剧院', '0.0', '1.0', '0', '18', '5');
INSERT INTO `dataset` VALUES ('吴江街道95', '0', '3', '图书馆', '0.0', '1.0', '0', '18', '5');
INSERT INTO `dataset` VALUES ('吴江街道96', '0', '3', '纪念馆', '0.0', '1.0', '0', '18', '5');
INSERT INTO `dataset` VALUES ('吴江街道97', '0', '3', '体育馆', '0.0', '1.0', '0', '18', '5');
INSERT INTO `dataset` VALUES ('吴江街道98', '0', '3', '公园景区', '0.0', '1.0', '37', '23', '5');
INSERT INTO `dataset` VALUES ('吴江街道99', '0', '3', '公共广场', '0.0', '1.0', '37', '22', '5');
INSERT INTO `dataset` VALUES ('吴江街道1', '1', '1', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道2', '1', '1', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道3', '1', '1', '次干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道4', '1', '1', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道5', '1', '1', '广场', '0.0', '1.0', '37', '24', '1');
INSERT INTO `dataset` VALUES ('吴江街道6', '1', '1', '建筑围挡', '0.0', '1.0', '37', '24', '1');
INSERT INTO `dataset` VALUES ('吴江街道7', '1', '1', '社区1', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道8', '1', '1', '社区2', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道9', '1', '1', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道10', '1', '1', '公园景区', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道11', '1', '1', '中学', '0.0', '1.0', '0', '20', '1');
INSERT INTO `dataset` VALUES ('吴江街道12', '1', '1', '小学', '0.0', '1.0', '0', '20', '1');
INSERT INTO `dataset` VALUES ('吴江街道13', '1', '2', '街道综合文化站', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道14', '1', '2', '社区综合文化服务中心1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道15', '1', '2', '社区综合文化服务中心2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道16', '1', '2', '社区综合文化服务中心3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道17', '1', '3', '城市社区1', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道18', '1', '3', '城市社区2', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道19', '1', '3', '城市社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道20', '1', '3', '中学', '0.0', '1.0', '0', '20', '1');
INSERT INTO `dataset` VALUES ('吴江街道21', '1', '3', '小学', '0.0', '1.0', '0', '20', '1');
INSERT INTO `dataset` VALUES ('吴江街道22', '2', '1', '宾馆1', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道23', '2', '1', '饭店1', '0.0', '1.0', '37', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道24', '2', '1', '饭店2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道25', '3', '0', '长途汽车站', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道26', '3', '0', '旅游集散中心', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道27', '3', '0', '出入境办证大厅', '0.0', '1.0', '0', '25', '1');
INSERT INTO `dataset` VALUES ('吴江街道28', '3', '0', '旅行社', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道29', '3', '0', '景点景区', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道30', '4', '0', '主干道1', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道31', '4', '0', '主干道2', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道32', '4', '0', '次干道1', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道33', '4', '0', '次干道2', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道34', '4', '0', '商业大街1', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道35', '4', '0', '商业大街2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道36', '4', '0', '公共广场', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道37', '4', '0', '建筑围挡', '0.0', '1.0', '0', '24', '1');
INSERT INTO `dataset` VALUES ('吴江街道38', '4', '0', '公园景区', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道39', '4', '0', '商场', '0.0', '1.0', '0', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道40', '4', '0', '超市', '0.0', '1.0', '0', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道41', '4', '0', '宾馆1', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道42', '4', '0', '社区1', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道43', '4', '0', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道44', '4', '0', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道45', '4', '0', '公交车站', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道46', '4', '0', '公交车', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道47', '4', '0', '长途汽车站', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道48', '0', '0', '政务大厅1', '0.0', '1.0', '0', '12', '1');
INSERT INTO `dataset` VALUES ('吴江街道49', '0', '0', '政务大厅2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道50', '6', '1', '医院1', '0.0', '1.0', '0', '17', '1');
INSERT INTO `dataset` VALUES ('吴江街道51', '6', '1', '医院2', '0.0', '1.0', '0', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道52', '6', '1', '商场1', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道53', '6', '1', '超市', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道54', '6', '1', '宾馆1', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道55', '6', '1', '宾馆2', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道56', '6', '1', '政务大厅1', '0.0', '1.0', '0', '12', '1');
INSERT INTO `dataset` VALUES ('吴江街道57', '6', '1', '政务大厅2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道58', '6', '2', '医院1', '0.0', '1.0', '0', '17', '1');
INSERT INTO `dataset` VALUES ('吴江街道59', '6', '2', '医院2', '0.0', '1.0', '0', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道60', '6', '2', '商场1', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道61', '6', '2', '超市', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道62', '6', '2', '宾馆1', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道63', '6', '2', '宾馆2', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道64', '6', '2', '政务大厅1', '0.0', '1.0', '0', '12', '1');
INSERT INTO `dataset` VALUES ('吴江街道65', '6', '2', '政务大厅2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道66', '7', '1', '街道1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道67', '7', '1', '社区1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道68', '7', '1', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道69', '7', '1', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道70', '7', '2', '街道1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道71', '7', '2', '社区1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道72', '7', '2', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道73', '7', '2', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道74', '7', '3', '街道', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道75', '7', '4', '公共图书馆', '0.0', '1.0', '0', '18', '1');
INSERT INTO `dataset` VALUES ('吴江街道76', '0', '1', '主干道1', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道77', '0', '1', '主干道2', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道78', '0', '1', '次干道1', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道79', '0', '1', '次干道2', '0.0', '1.0', '0', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道80', '0', '1', '商业大街1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道81', '0', '1', '商业大街2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道82', '0', '1', '公园景区', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道83', '0', '1', '公共广场', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道84', '0', '1', '公交车站', '0.0', '1.0', '37', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道85', '0', '2', '政务大厅1', '0.0', '1.0', '0', '12', '1');
INSERT INTO `dataset` VALUES ('吴江街道86', '0', '2', '政务大厅2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道87', '0', '2', '宾馆1', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道88', '0', '2', '宾馆2', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道89', '0', '2', '饭店1', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道90', '0', '2', '饭店2', '0.0', '1.0', '0', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道91', '0', '2', '医院1', '0.0', '1.0', '0', '17', '1');
INSERT INTO `dataset` VALUES ('吴江街道92', '0', '2', '医院2', '0.0', '1.0', '0', '17', '1');
INSERT INTO `dataset` VALUES ('吴江街道93', '0', '2', '长途汽车站', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道94', '0', '3', '影剧院', '0.0', '1.0', '0', '18', '1');
INSERT INTO `dataset` VALUES ('吴江街道95', '0', '3', '图书馆', '0.0', '1.0', '0', '18', '1');
INSERT INTO `dataset` VALUES ('吴江街道96', '0', '3', '纪念馆', '0.0', '1.0', '0', '18', '1');
INSERT INTO `dataset` VALUES ('吴江街道97', '0', '3', '体育馆', '0.0', '1.0', '0', '18', '1');
INSERT INTO `dataset` VALUES ('吴江街道98', '0', '3', '公园景区', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道99', '0', '3', '公共广场', '0.0', '1.0', '37', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道100', '9', '1', '主要交通路口1', '0.2', '0.8', '37', '25', '1');
INSERT INTO `dataset` VALUES ('吴江街道101', '9', '1', '主要交通路口2', '0.0', '1.0', '37', '25', '1');
INSERT INTO `dataset` VALUES ('吴江街道102', '9', '1', '主要交通路口3', '0.0', '1.0', '37', '25', '1');
INSERT INTO `dataset` VALUES ('吴江街道103', '9', '1', '主要交通路口4', '0.0', '1.0', '37', '25', '1');
INSERT INTO `dataset` VALUES ('吴江街道104', '10', '1', '主干道1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道105', '10', '1', '主干道2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道106', '10', '1', '次干道1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道107', '10', '1', '次干道2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道108', '10', '1', '商业大街1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道109', '10', '1', '商业大街2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道110', '10', '1', '政务大厅1', '0.0', '1.0', '0', '12', '1');
INSERT INTO `dataset` VALUES ('吴江街道111', '10', '1', '政务大厅2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道112', '10', '1', '商场1', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道113', '10', '1', '超市', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道114', '10', '1', '社区1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道115', '10', '1', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道116', '10', '1', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道117', '10', '1', '医院1', '0.0', '1.0', '0', '17', '1');
INSERT INTO `dataset` VALUES ('吴江街道118', '10', '1', '医院2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道119', '10', '1', '室外公共厕所', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道120', '10', '2', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道121', '10', '2', '主干道2', '0.3', '0.7', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道122', '10', '2', '次干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道123', '10', '2', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道124', '10', '2', '商业大街1', '0.1', '0.9', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道125', '10', '2', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道126', '10', '3', '主干道1', '0.2', '0.8', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道127', '10', '3', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道128', '10', '3', '次干道1', '0.2', '0.8', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道129', '10', '3', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道130', '10', '3', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道131', '10', '3', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道132', '10', '4', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道133', '10', '4', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道134', '10', '4', '次干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道135', '10', '4', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道136', '10', '4', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道137', '10', '4', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道138', '10', '5', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道139', '10', '5', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道140', '10', '5', '次干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道141', '10', '5', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道142', '10', '5', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道143', '10', '5', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道144', '10', '6', '背街小巷1', '0.2', '0.8', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道145', '10', '6', '背街小巷2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道146', '10', '7', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道147', '10', '7', '主干道2', '0.1', '0.9', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道148', '10', '7', '次干道1', '0.1', '0.9', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道149', '10', '7', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道150', '10', '7', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道151', '10', '7', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道152', '10', '7', '公共广场', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道153', '10', '7', '公园景区', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道154', '10', '7', '公交站台', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道155', '10', '7', '长途汽车站', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道156', '10', '8', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道157', '10', '8', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道158', '10', '8', '次干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道159', '10', '8', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道160', '10', '8', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道161', '10', '8', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道162', '10', '8', '公共广场', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道163', '10', '8', '公园景区', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道164', '10', '8', '公交站', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道165', '10', '8', '长途汽车站', '0.0', '1.0', '0', '22', '1');
INSERT INTO `dataset` VALUES ('吴江街道166', '10', '9', '餐饮店', '0.0', '1.0', '37', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道167', '10', '9', '宾馆1', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道168', '10', '9', '宾馆2', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道169', '10', '9', '酒店', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道170', '10', '9', '食品店', '0.0', '1.0', '37', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道171', '10', '9', '各类商店', '0.0', '1.0', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道172', '10', '9', '各类超市', '0.1', '0.9', '37', '26', '1');
INSERT INTO `dataset` VALUES ('吴江街道173', '10', '9', '文化娱乐场所', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道174', '0', '0', '社区1', '0.2', '0.8', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道175', '0', '0', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道176', '0', '0', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道177', '0', '1', '社区1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道178', '0', '1', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道179', '0', '1', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道180', '0', '2', '社区1', '0.1', '0.9', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道181', '0', '2', '社区2', '0.1', '0.9', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道182', '0', '2', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道183', '0', '3', '社区1', '0.2', '0.8', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道184', '0', '3', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道185', '0', '3', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道186', '0', '4', '社区1', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道187', '0', '4', '社区2', '1.0', '0.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道188', '0', '4', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道189', '11', '1', '政务大厅1', '0.0', '1.0', '0', '12 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道190', '11', '1', '政务大厅2', '0.0', '1.0', '37', '19', '1');
INSERT INTO `dataset` VALUES ('吴江街道191', '11', '1', '社区1', '0.2', '0.8', '37', '19', '1');
INSERT INTO `dataset` VALUES ('吴江街道192', '11', '1', '社区2', '0.2', '0.8', '37', '19', '1');
INSERT INTO `dataset` VALUES ('吴江街道193', '11', '1', '社区3', '0.0', '1.0', '37', '19', '1');
INSERT INTO `dataset` VALUES ('吴江街道194', '11', '1', '商场1', '0.0', '1.0', '37', '26 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道195', '11', '1', '商场2', '0.0', '1.0', '37', '26 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道196', '11', '1', '超市1', '0.0', '1.0', '37', '26 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道197', '11', '1', '超市2', '0.0', '1.0', '37', '26 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道198', '11', '1', '集贸市场', '0.0', '1.0', '37', '19', '1');
INSERT INTO `dataset` VALUES ('吴江街道199', '11', '1', '中学', '0.0', '1.0', '0', '20 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道200', '11', '1', '小学', '0.0', '1.0', '37', '20 19', '1');
INSERT INTO `dataset` VALUES ('吴江街道201', '11', '2', '超市1', '0.0', '1.0', '37', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道202', '11', '2', '超市2', '0.0', '1.0', '37', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道203', '11', '2', '集贸市场', '0.0', '1.0', '37', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道204', '11', '3', '药店1', '1.0', '0.0', '0', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道205', '11', '3', '药店2', '0.0', '1.0', '0', '29', '1');
INSERT INTO `dataset` VALUES ('吴江街道206', '12', '1', '建成区河道', '0.0', '1.0', '37', '21', '1');
INSERT INTO `dataset` VALUES ('吴江街道207', '12', '2', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道208', '12', '2', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道209', '12', '2', '次干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道210', '12', '2', '次干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道211', '12', '2', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道212', '12', '2', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道213', '12', '2', '饭店1', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道214', '12', '2', '饭店2', '0.0', '1.0', '37', '23', '1');
INSERT INTO `dataset` VALUES ('吴江街道215', '13', '0', '社区1', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道216', '13', '0', '社区2', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道217', '13', '0', '社区3', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道218', '13', '0', '公共广场', '0.0', '1.0', '37', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道219', '13', '0', '主干道1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道220', '13', '0', '主干道2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道221', '13', '0', '商业大街1', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道222', '13', '0', '商业大街2', '0.0', '1.0', '37', '8', '1');
INSERT INTO `dataset` VALUES ('吴江街道223', '14', '1', '村', '0.0', '1.0', '37', '17', '1');
INSERT INTO `dataset` VALUES ('吴江街道224', '14', '2', '市级文明镇', '0.0', '1.0', '37', '30', '1');
INSERT INTO `dataset` VALUES ('吴江街道225', '14', '2', '市级文明村', '0.0', '1.0', '37', '30', '1');
INSERT INTO `dataset` VALUES ('', '0', '0', '', '0.0', '1.0', '0', '0', '1');
INSERT INTO `dataset` VALUES ('吴江街道1', '3', '0', '主干道1', '0.0', '1.0', '37', '8 24', '2');
INSERT INTO `dataset` VALUES ('吴江街道3', '1', '1', '次干道1', '0.0', '1.0', '37', '8 24', '2');
INSERT INTO `dataset` VALUES ('吴江街道4', '1', '1', '次干道2', '0.0', '1.0', '37', '8 24', '2');
INSERT INTO `dataset` VALUES ('吴江街道5', '1', '1', '广场', '0.0', '1.0', '37', '24', '2');
INSERT INTO `dataset` VALUES ('吴江街道6', '1', '1', '建筑围挡', '0.0', '1.0', '37', '24', '2');
INSERT INTO `dataset` VALUES ('吴江街道7', '1', '1', '社区1', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道8', '1', '1', '社区2', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道9', '1', '1', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道10', '1', '1', '公园景区', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道11', '1', '1', '中学', '0.0', '1.0', '0', '20', '2');
INSERT INTO `dataset` VALUES ('吴江街道12', '1', '1', '小学', '0.0', '1.0', '0', '20', '2');
INSERT INTO `dataset` VALUES ('吴江街道13', '1', '2', '街道综合文化站', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道14', '1', '2', '社区综合文化服务中心1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道15', '1', '2', '社区综合文化服务中心2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道16', '1', '2', '社区综合文化服务中心3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道17', '1', '3', '城市社区1', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道18', '1', '3', '城市社区2', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道19', '1', '3', '城市社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道20', '1', '3', '中学', '0.0', '1.0', '0', '20', '2');
INSERT INTO `dataset` VALUES ('吴江街道21', '1', '3', '小学', '0.0', '1.0', '0', '20', '2');
INSERT INTO `dataset` VALUES ('吴江街道22', '2', '1', '宾馆1', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道23', '2', '1', '饭店1', '0.0', '1.0', '37', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道24', '2', '1', '饭店2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道25', '3', '0', '长途汽车站', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道26', '3', '0', '旅游集散中心', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道27', '3', '0', '出入境办证大厅', '0.0', '1.0', '0', '25', '2');
INSERT INTO `dataset` VALUES ('吴江街道28', '3', '0', '旅行社', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道29', '3', '0', '景点景区', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道30', '4', '0', '主干道1', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道31', '4', '0', '主干道2', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道32', '4', '0', '次干道1', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道33', '4', '0', '次干道2', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道34', '4', '0', '商业大街1', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道35', '4', '0', '商业大街2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道36', '4', '0', '公共广场', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道37', '4', '0', '建筑围挡', '0.0', '1.0', '0', '24', '2');
INSERT INTO `dataset` VALUES ('吴江街道38', '4', '0', '公园景区', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道39', '4', '0', '商场', '0.0', '1.0', '0', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道40', '4', '0', '超市', '0.0', '1.0', '0', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道41', '4', '0', '宾馆1', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道42', '4', '0', '社区1', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道43', '4', '0', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道44', '4', '0', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道45', '4', '0', '公交车站', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道46', '4', '0', '公交车', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道47', '4', '0', '长途汽车站', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道48', '0', '0', '政务大厅1', '0.0', '1.0', '0', '12', '2');
INSERT INTO `dataset` VALUES ('吴江街道49', '0', '0', '政务大厅2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道2', '1', '1', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道50', '6', '1', '医院1', '0.0', '1.0', '0', '17', '2');
INSERT INTO `dataset` VALUES ('吴江街道51', '6', '1', '医院2', '0.0', '1.0', '0', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道52', '6', '1', '商场1', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道53', '6', '1', '超市', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道54', '6', '1', '宾馆1', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道55', '6', '1', '宾馆2', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道56', '6', '1', '政务大厅1', '0.0', '1.0', '0', '12', '2');
INSERT INTO `dataset` VALUES ('吴江街道57', '6', '1', '政务大厅2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道58', '6', '2', '医院1', '0.0', '1.0', '0', '17', '2');
INSERT INTO `dataset` VALUES ('吴江街道59', '6', '2', '医院2', '0.0', '1.0', '0', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道60', '6', '2', '商场1', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道61', '6', '2', '超市', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道62', '6', '2', '宾馆1', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道63', '6', '2', '宾馆2', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道64', '6', '2', '政务大厅1', '0.0', '1.0', '0', '12', '2');
INSERT INTO `dataset` VALUES ('吴江街道65', '6', '2', '政务大厅2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道66', '7', '1', '街道1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道67', '7', '1', '社区1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道68', '7', '1', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道69', '7', '1', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道70', '7', '2', '街道1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道71', '7', '2', '社区1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道72', '7', '2', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道73', '7', '2', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道74', '7', '3', '街道', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道75', '7', '4', '公共图书馆', '0.0', '1.0', '0', '18', '2');
INSERT INTO `dataset` VALUES ('吴江街道76', '0', '1', '主干道1', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道77', '0', '1', '主干道2', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道78', '0', '1', '次干道1', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道79', '0', '1', '次干道2', '0.0', '1.0', '0', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道80', '0', '1', '商业大街1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道81', '0', '1', '商业大街2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道82', '0', '1', '公园景区', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道83', '0', '1', '公共广场', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道84', '0', '1', '公交车站', '0.0', '1.0', '37', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道85', '0', '2', '政务大厅1', '0.0', '1.0', '0', '12', '2');
INSERT INTO `dataset` VALUES ('吴江街道86', '0', '2', '政务大厅2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道87', '0', '2', '宾馆1', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道88', '0', '2', '宾馆2', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道89', '0', '2', '饭店1', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道90', '0', '2', '饭店2', '0.0', '1.0', '0', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道91', '0', '2', '医院1', '0.0', '1.0', '0', '17', '2');
INSERT INTO `dataset` VALUES ('吴江街道92', '0', '2', '医院2', '0.0', '1.0', '0', '17', '2');
INSERT INTO `dataset` VALUES ('吴江街道93', '0', '2', '长途汽车站', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道94', '0', '3', '影剧院', '0.0', '1.0', '0', '18', '2');
INSERT INTO `dataset` VALUES ('吴江街道95', '0', '3', '图书馆', '0.0', '1.0', '0', '18', '2');
INSERT INTO `dataset` VALUES ('吴江街道96', '0', '3', '纪念馆', '0.0', '1.0', '0', '18', '2');
INSERT INTO `dataset` VALUES ('吴江街道97', '0', '3', '体育馆', '0.0', '1.0', '0', '18', '2');
INSERT INTO `dataset` VALUES ('吴江街道98', '0', '3', '公园景区', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道99', '0', '3', '公共广场', '0.0', '1.0', '37', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道100', '9', '1', '主要交通路口1', '0.2', '0.8', '37', '25', '2');
INSERT INTO `dataset` VALUES ('吴江街道101', '9', '1', '主要交通路口2', '0.0', '1.0', '37', '25', '2');
INSERT INTO `dataset` VALUES ('吴江街道102', '9', '1', '主要交通路口3', '0.0', '1.0', '37', '25', '2');
INSERT INTO `dataset` VALUES ('吴江街道103', '9', '1', '主要交通路口4', '0.0', '1.0', '37', '25', '2');
INSERT INTO `dataset` VALUES ('吴江街道104', '10', '1', '主干道1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道105', '10', '1', '主干道2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道106', '10', '1', '次干道1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道107', '10', '1', '次干道2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道108', '10', '1', '商业大街1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道109', '10', '1', '商业大街2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道110', '10', '1', '政务大厅1', '0.0', '1.0', '0', '12', '2');
INSERT INTO `dataset` VALUES ('吴江街道111', '10', '1', '政务大厅2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道112', '10', '1', '商场1', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道113', '10', '1', '超市', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道114', '10', '1', '社区1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道115', '10', '1', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道116', '10', '1', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道117', '10', '1', '医院1', '0.0', '1.0', '0', '17', '2');
INSERT INTO `dataset` VALUES ('吴江街道118', '10', '1', '医院2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道119', '10', '1', '室外公共厕所', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道120', '10', '2', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道121', '10', '2', '主干道2', '0.3', '0.7', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道122', '10', '2', '次干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道123', '10', '2', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道124', '10', '2', '商业大街1', '0.1', '0.9', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道125', '10', '2', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道126', '10', '3', '主干道1', '0.2', '0.8', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道127', '10', '3', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道128', '10', '3', '次干道1', '0.2', '0.8', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道129', '10', '3', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道130', '10', '3', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道131', '10', '3', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道132', '10', '4', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道133', '10', '4', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道134', '10', '4', '次干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道135', '10', '4', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道136', '10', '4', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道137', '10', '4', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道138', '10', '5', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道139', '10', '5', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道140', '10', '5', '次干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道141', '10', '5', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道142', '10', '5', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道143', '10', '5', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道144', '10', '6', '背街小巷1', '0.2', '0.8', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道145', '10', '6', '背街小巷2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道146', '10', '7', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道147', '10', '7', '主干道2', '0.1', '0.9', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道148', '10', '7', '次干道1', '0.1', '0.9', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道149', '10', '7', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道150', '10', '7', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道151', '10', '7', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道152', '10', '7', '公共广场', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道153', '10', '7', '公园景区', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道154', '10', '7', '公交站台', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道155', '10', '7', '长途汽车站', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道156', '10', '8', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道157', '10', '8', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道158', '10', '8', '次干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道159', '10', '8', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道160', '10', '8', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道161', '10', '8', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道162', '10', '8', '公共广场', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道163', '10', '8', '公园景区', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道164', '10', '8', '公交站', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道165', '10', '8', '长途汽车站', '0.0', '1.0', '0', '22', '2');
INSERT INTO `dataset` VALUES ('吴江街道166', '10', '9', '餐饮店', '0.0', '1.0', '37', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道167', '10', '9', '宾馆1', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道168', '10', '9', '宾馆2', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道169', '10', '9', '酒店', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道170', '10', '9', '食品店', '0.0', '1.0', '37', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道171', '10', '9', '各类商店', '0.0', '1.0', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道172', '10', '9', '各类超市', '0.1', '0.9', '37', '26', '2');
INSERT INTO `dataset` VALUES ('吴江街道173', '10', '9', '文化娱乐场所', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道174', '0', '0', '社区1', '0.2', '0.8', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道175', '0', '0', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道176', '0', '0', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道177', '0', '1', '社区1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道178', '0', '1', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道179', '0', '1', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道180', '0', '2', '社区1', '0.1', '0.9', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道181', '0', '2', '社区2', '0.1', '0.9', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道182', '0', '2', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道183', '0', '3', '社区1', '0.2', '0.8', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道184', '0', '3', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道185', '0', '3', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道186', '0', '4', '社区1', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道187', '0', '4', '社区2', '1.0', '0.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道188', '0', '4', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道189', '11', '1', '政务大厅1', '0.0', '1.0', '0', '12 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道190', '11', '1', '政务大厅2', '0.0', '1.0', '37', '19', '2');
INSERT INTO `dataset` VALUES ('吴江街道191', '11', '1', '社区1', '0.2', '0.8', '37', '19', '2');
INSERT INTO `dataset` VALUES ('吴江街道192', '11', '1', '社区2', '0.2', '0.8', '37', '19', '2');
INSERT INTO `dataset` VALUES ('吴江街道193', '11', '1', '社区3', '0.0', '1.0', '37', '19', '2');
INSERT INTO `dataset` VALUES ('吴江街道194', '11', '1', '商场1', '0.0', '1.0', '37', '26 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道195', '11', '1', '商场2', '0.0', '1.0', '37', '26 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道196', '11', '1', '超市1', '0.0', '1.0', '37', '26 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道197', '11', '1', '超市2', '0.0', '1.0', '37', '26 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道198', '11', '1', '集贸市场', '0.0', '1.0', '37', '19', '2');
INSERT INTO `dataset` VALUES ('吴江街道199', '11', '1', '中学', '0.0', '1.0', '0', '20 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道200', '11', '1', '小学', '0.0', '1.0', '37', '20 19', '2');
INSERT INTO `dataset` VALUES ('吴江街道201', '11', '2', '超市1', '0.0', '1.0', '37', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道202', '11', '2', '超市2', '0.0', '1.0', '37', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道203', '11', '2', '集贸市场', '0.0', '1.0', '37', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道204', '11', '3', '药店1', '1.0', '0.0', '0', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道205', '11', '3', '药店2', '0.0', '1.0', '0', '29', '2');
INSERT INTO `dataset` VALUES ('吴江街道206', '12', '1', '建成区河道', '0.0', '1.0', '37', '21', '2');
INSERT INTO `dataset` VALUES ('吴江街道207', '12', '2', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道208', '12', '2', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道209', '12', '2', '次干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道210', '12', '2', '次干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道211', '12', '2', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道212', '12', '2', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道213', '12', '2', '饭店1', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道214', '12', '2', '饭店2', '0.0', '1.0', '37', '23', '2');
INSERT INTO `dataset` VALUES ('吴江街道215', '13', '0', '社区1', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道216', '13', '0', '社区2', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道217', '13', '0', '社区3', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道218', '13', '0', '公共广场', '0.0', '1.0', '37', '0', '2');
INSERT INTO `dataset` VALUES ('吴江街道219', '13', '0', '主干道1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道220', '13', '0', '主干道2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道221', '13', '0', '商业大街1', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道222', '13', '0', '商业大街2', '0.0', '1.0', '37', '8', '2');
INSERT INTO `dataset` VALUES ('吴江街道223', '14', '1', '村', '0.0', '1.0', '37', '17', '2');
INSERT INTO `dataset` VALUES ('吴江街道224', '14', '2', '市级文明镇', '0.0', '1.0', '37', '30', '2');
INSERT INTO `dataset` VALUES ('吴江街道225', '14', '2', '市级文明村', '0.0', '1.0', '37', '30', '2');
INSERT INTO `dataset` VALUES ('', '0', '0', '', '0.0', '1.0', '0', '0', '2');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department` (`department`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('0', '');
INSERT INTO `department` VALUES ('39', '交发公司');
INSERT INTO `department` VALUES ('22', '交通运输局');
INSERT INTO `department` VALUES ('40', '人民银行');
INSERT INTO `department` VALUES ('24', '住建局');
INSERT INTO `department` VALUES ('41', '党史研究室');
INSERT INTO `department` VALUES ('25', '公安局');
INSERT INTO `department` VALUES ('12', '区政务办');
INSERT INTO `department` VALUES ('17', '卫计局');
INSERT INTO `department` VALUES ('26', '商务局');
INSERT INTO `department` VALUES ('42', '团市委');
INSERT INTO `department` VALUES ('37', '城乡发展局');
INSERT INTO `department` VALUES ('28', '城管局');
INSERT INTO `department` VALUES ('50', '妇联');
INSERT INTO `department` VALUES ('29', '市场监督局');
INSERT INTO `department` VALUES ('27', '市场监管局');
INSERT INTO `department` VALUES ('8', '市容市政局');
INSERT INTO `department` VALUES ('49', '市政务办');
INSERT INTO `department` VALUES ('2', '教体局');
INSERT INTO `department` VALUES ('20', '教育局');
INSERT INTO `department` VALUES ('18', '文体局');
INSERT INTO `department` VALUES ('32', '文化事业局');
INSERT INTO `department` VALUES ('4', '文商旅局');
INSERT INTO `department` VALUES ('48', '文广新局');
INSERT INTO `department` VALUES ('30', '文明办');
INSERT INTO `department` VALUES ('23', '旅游局');
INSERT INTO `department` VALUES ('43', '昆山电信');
INSERT INTO `department` VALUES ('44', '昆山移动');
INSERT INTO `department` VALUES ('45', '昆山联通');
INSERT INTO `department` VALUES ('38', '有轨电车公司');
INSERT INTO `department` VALUES ('36', '服务业发展局');
INSERT INTO `department` VALUES ('21', '水利局');
INSERT INTO `department` VALUES ('19', '消防大队');
INSERT INTO `department` VALUES ('51', '环保局');
INSERT INTO `department` VALUES ('7', '环境保护局');
INSERT INTO `department` VALUES ('13', '电信局');
INSERT INTO `department` VALUES ('11', '石管办');
INSERT INTO `department` VALUES ('31', '社会事业局');
INSERT INTO `department` VALUES ('46', '税务局');
INSERT INTO `department` VALUES ('10', '站管办');
INSERT INTO `department` VALUES ('14', '经信局');
INSERT INTO `department` VALUES ('34', '经济发展委员会');
INSERT INTO `department` VALUES ('6', '经科局');
INSERT INTO `department` VALUES ('35', '综合行政执法局');
INSERT INTO `department` VALUES ('5', '综治办');
INSERT INTO `department` VALUES ('3', '行政审批局');
INSERT INTO `department` VALUES ('9', '观管办');
INSERT INTO `department` VALUES ('33', '规划建设委员会');
INSERT INTO `department` VALUES ('15', '邮政局');
INSERT INTO `department` VALUES ('16', '金融办');
INSERT INTO `department` VALUES ('47', '铁路昆山站');

-- ----------------------------
-- Table structure for domain
-- ----------------------------
DROP TABLE IF EXISTS `domain`;
CREATE TABLE `domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domain_ibfk_1` (`zone`),
  CONSTRAINT `domain_ibfk_1` FOREIGN KEY (`zone`) REFERENCES `zone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of domain
-- ----------------------------
INSERT INTO `domain` VALUES ('0', null, null);
INSERT INTO `domain` VALUES ('1', '青阳', '1');
INSERT INTO `domain` VALUES ('2', '周庄', '1');
INSERT INTO `domain` VALUES ('3', '开发区', '1');
INSERT INTO `domain` VALUES ('4', '震川', '1');
INSERT INTO `domain` VALUES ('5', '花桥', '1');
INSERT INTO `domain` VALUES ('6', '张浦镇', '1');
INSERT INTO `domain` VALUES ('7', '亭林', '1');
INSERT INTO `domain` VALUES ('8', '柏庐', '1');
INSERT INTO `domain` VALUES ('9', '周市镇及周边', '1');
INSERT INTO `domain` VALUES ('10', '高新区', '1');
INSERT INTO `domain` VALUES ('11', '淀山湖', '1');
INSERT INTO `domain` VALUES ('12', '锦溪', '1');
INSERT INTO `domain` VALUES ('13', '陆家镇', '1');
INSERT INTO `domain` VALUES ('14', '千灯镇', '1');
INSERT INTO `domain` VALUES ('15', '巴城', '1');
INSERT INTO `domain` VALUES ('16', '浒墅关镇', '2');
INSERT INTO `domain` VALUES ('17', '枫桥街道', '2');
INSERT INTO `domain` VALUES ('18', '东渚镇', '2');
INSERT INTO `domain` VALUES ('19', '浒墅关经济开发区', '2');
INSERT INTO `domain` VALUES ('20', '狮山街道', '2');
INSERT INTO `domain` VALUES ('21', '通安镇', '2');
INSERT INTO `domain` VALUES ('22', '镇湖街道', '2');
INSERT INTO `domain` VALUES ('23', '湖东社工委', '3');
INSERT INTO `domain` VALUES ('24', '科教创新区', '3');
INSERT INTO `domain` VALUES ('25', '湖西社工委', '3');
INSERT INTO `domain` VALUES ('26', '胜浦街道', '3');
INSERT INTO `domain` VALUES ('27', '东沙湖社工委', '3');
INSERT INTO `domain` VALUES ('28', '唯亭街道', '3');
INSERT INTO `domain` VALUES ('29', '斜塘街道', '3');
INSERT INTO `domain` VALUES ('30', '娄葑街道', '3');
INSERT INTO `domain` VALUES ('31', '横泾街道', '4');
INSERT INTO `domain` VALUES ('32', '郭巷街道', '4');
INSERT INTO `domain` VALUES ('33', '越溪街道', '4');
INSERT INTO `domain` VALUES ('34', '城区管委员', '4');
INSERT INTO `domain` VALUES ('35', '木渎街道', '4');
INSERT INTO `domain` VALUES ('36', '城南街道', '4');
INSERT INTO `domain` VALUES ('37', '吴江街道', '5');
INSERT INTO `domain` VALUES ('38', '相城度假区', '6');
INSERT INTO `domain` VALUES ('39', '高铁新城', '6');
INSERT INTO `domain` VALUES ('40', '望亭镇', '6');
INSERT INTO `domain` VALUES ('41', '黄埭镇', '6');
INSERT INTO `domain` VALUES ('42', '北桥街道', '6');
INSERT INTO `domain` VALUES ('43', '阳澄湖镇', '6');
INSERT INTO `domain` VALUES ('44', '太平镇', '6');
INSERT INTO `domain` VALUES ('45', '元和街道', '6');
INSERT INTO `domain` VALUES ('46', '相城经济开发区', '6');
INSERT INTO `domain` VALUES ('47', '漕湖', '6');
INSERT INTO `domain` VALUES ('48', '黄桥镇', '6');
INSERT INTO `domain` VALUES ('49', '渭塘镇', '6');
INSERT INTO `domain` VALUES ('50', '家具城', '6');
INSERT INTO `domain` VALUES ('51', '胥江街道', '7');
INSERT INTO `domain` VALUES ('52', '吴门桥街道', '7');
INSERT INTO `domain` VALUES ('53', '桃花坞街道', '7');
INSERT INTO `domain` VALUES ('54', '双塔街道', '7');
INSERT INTO `domain` VALUES ('55', '石路街道', '7');
INSERT INTO `domain` VALUES ('56', '平江新城', '7');
INSERT INTO `domain` VALUES ('57', '平江街道', '7');
INSERT INTO `domain` VALUES ('58', '娄门街道', '7');
INSERT INTO `domain` VALUES ('59', '留园街道', '7');
INSERT INTO `domain` VALUES ('60', '金阊新城', '7');
INSERT INTO `domain` VALUES ('61', '金阊街道', '7');
INSERT INTO `domain` VALUES ('62', '虎丘街道', '7');
INSERT INTO `domain` VALUES ('63', '观前街道', '7');
INSERT INTO `domain` VALUES ('64', '葑门街道', '7');
INSERT INTO `domain` VALUES ('65', '沧浪新城', '7');
INSERT INTO `domain` VALUES ('66', '沧浪街道', '7');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) DEFAULT NULL,
  `flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('0', null, null);
INSERT INTO `item` VALUES ('1', '社会主义核心价值观深化推广普及', '0');
INSERT INTO `item` VALUES ('2', '文化培育', '0');
INSERT INTO `item` VALUES ('3', '文明旅游', '0');
INSERT INTO `item` VALUES ('4', '“讲文明树新风”公益广告', '0');
INSERT INTO `item` VALUES ('5', '诚信建设制度化', '0');
INSERT INTO `item` VALUES ('6', '文明诚信服务', '0');
INSERT INTO `item` VALUES ('7', '公共文化服务体系建设', '0');
INSERT INTO `item` VALUES ('8', '文明行文', '0');
INSERT INTO `item` VALUES ('9', '文明交通', '0');
INSERT INTO `item` VALUES ('10', '公共服务', '0');
INSERT INTO `item` VALUES ('11', '公共安全体系', '0');
INSERT INTO `item` VALUES ('12', '环境保护', '0');
INSERT INTO `item` VALUES ('13', '群众参与', '0');
INSERT INTO `item` VALUES ('14', '城乡共建', '0');
INSERT INTO `item` VALUES ('15', '城市环境面貌', '1');
INSERT INTO `item` VALUES ('16', '公共安全体系建设', '1');
INSERT INTO `item` VALUES ('17', '公共服务质量', '1');
INSERT INTO `item` VALUES ('18', '基本公共服务保障', '1');
INSERT INTO `item` VALUES ('19', '建设美丽乡村', '1');
INSERT INTO `item` VALUES ('20', '培育和践行社会主义核心价值观', '1');
INSERT INTO `item` VALUES ('21', '群众广泛参与', '1');
INSERT INTO `item` VALUES ('22', '社风民风建设', '1');
INSERT INTO `item` VALUES ('23', '社会公共秩序', '1');
INSERT INTO `item` VALUES ('24', '县域环境管理与环境质量', '1');
INSERT INTO `item` VALUES ('25', '现代公共文化服务体系', '1');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `res_item` varchar(100) DEFAULT NULL,
  `quota` float(11,3) DEFAULT NULL,
  `final_score` float(11,3) DEFAULT NULL,
  `pass_rate` float(11,4) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  KEY `zone` (`zone`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`zone`) REFERENCES `zone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('文明程度指数', '30.000', '28.473', '0.9491', '0');
INSERT INTO `result` VALUES ('未成年人思想道德建设', null, null, null, '0');
INSERT INTO `result` VALUES ('文明程度指数', '30.000', '28.473', '0.9491', '1');
INSERT INTO `result` VALUES ('未成年人思想道德建设', null, null, null, '1');
INSERT INTO `result` VALUES ('文明程度指数', '30.000', '28.458', '0.9486', '2');
INSERT INTO `result` VALUES ('未成年人思想道德建设', null, null, null, '2');

-- ----------------------------
-- Table structure for res_department
-- ----------------------------
DROP TABLE IF EXISTS `res_department`;
CREATE TABLE `res_department` (
  `department` varchar(100) DEFAULT NULL,
  `quota` float(11,3) DEFAULT NULL,
  `final_score` float(11,3) DEFAULT NULL,
  `pass_rate` float(11,6) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  KEY `zone` (`zone`),
  CONSTRAINT `res_department_ibfk_1` FOREIGN KEY (`zone`) REFERENCES `zone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_department
-- ----------------------------
INSERT INTO `res_department` VALUES ('水利局', '1.000', '1.000', '1.000000', '1', '0');
INSERT INTO `res_department` VALUES ('文明办', '2.000', '2.000', '1.000000', '2', '0');
INSERT INTO `res_department` VALUES ('住建局', '3.000', '3.000', '1.000000', '3', '0');
INSERT INTO `res_department` VALUES ('文体局', '5.000', '5.000', '1.000000', '4', '0');
INSERT INTO `res_department` VALUES ('区政务办', '6.000', '6.000', '1.000000', '5', '0');
INSERT INTO `res_department` VALUES ('卫计局', '6.000', '6.000', '1.000000', '6', '0');
INSERT INTO `res_department` VALUES ('教育局', '6.000', '6.000', '1.000000', '7', '0');
INSERT INTO `res_department` VALUES ('交通运输局', '9.000', '9.000', '1.000000', '8', '0');
INSERT INTO `res_department` VALUES ('旅游局', '24.000', '24.000', '1.000000', '9', '0');
INSERT INTO `res_department` VALUES ('商务局', '14.000', '13.900', '0.992900', '10', '0');
INSERT INTO `res_department` VALUES ('市容市政局', '62.000', '60.800', '0.980600', '11', '0');
INSERT INTO `res_department` VALUES ('消防大队', '12.000', '11.600', '0.966700', '12', '0');
INSERT INTO `res_department` VALUES ('公安局', '5.000', '4.800', '0.960000', '13', '0');
INSERT INTO `res_department` VALUES ('市场监督局', '8.000', '7.000', '0.875000', '14', '0');
INSERT INTO `res_department` VALUES ('水利局', '1.000', '1.000', '1.000000', '1', '5');
INSERT INTO `res_department` VALUES ('文明办', '2.000', '2.000', '1.000000', '2', '5');
INSERT INTO `res_department` VALUES ('住建局', '3.000', '3.000', '1.000000', '3', '5');
INSERT INTO `res_department` VALUES ('文体局', '5.000', '5.000', '1.000000', '4', '5');
INSERT INTO `res_department` VALUES ('区政务办', '6.000', '6.000', '1.000000', '5', '5');
INSERT INTO `res_department` VALUES ('卫计局', '6.000', '6.000', '1.000000', '6', '5');
INSERT INTO `res_department` VALUES ('教育局', '6.000', '6.000', '1.000000', '7', '5');
INSERT INTO `res_department` VALUES ('交通运输局', '9.000', '9.000', '1.000000', '8', '5');
INSERT INTO `res_department` VALUES ('旅游局', '24.000', '24.000', '1.000000', '9', '5');
INSERT INTO `res_department` VALUES ('商务局', '14.000', '13.900', '0.992900', '10', '5');
INSERT INTO `res_department` VALUES ('市容市政局', '62.000', '60.800', '0.980600', '11', '5');
INSERT INTO `res_department` VALUES ('消防大队', '12.000', '11.600', '0.966700', '12', '5');
INSERT INTO `res_department` VALUES ('公安局', '5.000', '4.800', '0.960000', '13', '5');
INSERT INTO `res_department` VALUES ('市场监督局', '8.000', '7.000', '0.875000', '14', '5');
INSERT INTO `res_department` VALUES ('水利局', '1.000', '1.000', '1.000000', '1', '1');
INSERT INTO `res_department` VALUES ('文明办', '2.000', '2.000', '1.000000', '2', '1');
INSERT INTO `res_department` VALUES ('住建局', '3.000', '3.000', '1.000000', '3', '1');
INSERT INTO `res_department` VALUES ('文体局', '5.000', '5.000', '1.000000', '4', '1');
INSERT INTO `res_department` VALUES ('区政务办', '6.000', '6.000', '1.000000', '5', '1');
INSERT INTO `res_department` VALUES ('卫计局', '6.000', '6.000', '1.000000', '6', '1');
INSERT INTO `res_department` VALUES ('教育局', '6.000', '6.000', '1.000000', '7', '1');
INSERT INTO `res_department` VALUES ('交通运输局', '9.000', '9.000', '1.000000', '8', '1');
INSERT INTO `res_department` VALUES ('旅游局', '24.000', '24.000', '1.000000', '9', '1');
INSERT INTO `res_department` VALUES ('商务局', '14.000', '13.900', '0.992900', '10', '1');
INSERT INTO `res_department` VALUES ('市容市政局', '62.000', '60.800', '0.980600', '11', '1');
INSERT INTO `res_department` VALUES ('消防大队', '12.000', '11.600', '0.966700', '12', '1');
INSERT INTO `res_department` VALUES ('公安局', '5.000', '4.800', '0.960000', '13', '1');
INSERT INTO `res_department` VALUES ('市场监督局', '8.000', '7.000', '0.875000', '14', '1');
INSERT INTO `res_department` VALUES ('水利局', '1.000', '1.000', '1.000000', '1', '2');
INSERT INTO `res_department` VALUES ('文明办', '2.000', '2.000', '1.000000', '2', '2');
INSERT INTO `res_department` VALUES ('文体局', '5.000', '5.000', '1.000000', '3', '2');
INSERT INTO `res_department` VALUES ('住建局', '6.000', '6.000', '1.000000', '4', '2');
INSERT INTO `res_department` VALUES ('区政务办', '6.000', '6.000', '1.000000', '5', '2');
INSERT INTO `res_department` VALUES ('卫计局', '6.000', '6.000', '1.000000', '6', '2');
INSERT INTO `res_department` VALUES ('教育局', '6.000', '6.000', '1.000000', '7', '2');
INSERT INTO `res_department` VALUES ('交通运输局', '9.000', '9.000', '1.000000', '8', '2');
INSERT INTO `res_department` VALUES ('旅游局', '24.000', '24.000', '1.000000', '9', '2');
INSERT INTO `res_department` VALUES ('商务局', '14.000', '13.900', '0.992900', '10', '2');
INSERT INTO `res_department` VALUES ('市容市政局', '62.000', '60.800', '0.980600', '11', '2');
INSERT INTO `res_department` VALUES ('消防大队', '12.000', '11.600', '0.966700', '12', '2');
INSERT INTO `res_department` VALUES ('公安局', '5.000', '4.800', '0.960000', '13', '2');
INSERT INTO `res_department` VALUES ('市场监督局', '8.000', '7.000', '0.875000', '14', '2');

-- ----------------------------
-- Table structure for res_domain
-- ----------------------------
DROP TABLE IF EXISTS `res_domain`;
CREATE TABLE `res_domain` (
  `domain` varchar(100) DEFAULT NULL,
  `quota` float(11,3) DEFAULT NULL,
  `final_score` float(11,3) DEFAULT NULL,
  `pass_rate` float(11,6) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  KEY `zone` (`zone`),
  CONSTRAINT `res_domain_ibfk_1` FOREIGN KEY (`zone`) REFERENCES `domain` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_domain
-- ----------------------------
INSERT INTO `res_domain` VALUES ('吴江街道', '172.000', '161.500', '0.939000', '1', '0');
INSERT INTO `res_domain` VALUES ('吴江街道', '172.000', '161.500', '0.939000', '1', '5');
INSERT INTO `res_domain` VALUES ('吴江街道', '172.000', '161.500', '0.938950', '1', '1');
INSERT INTO `res_domain` VALUES ('吴江街道', '172.000', '161.500', '0.938950', '1', '2');

-- ----------------------------
-- Table structure for res_item
-- ----------------------------
DROP TABLE IF EXISTS `res_item`;
CREATE TABLE `res_item` (
  `item` varchar(100) DEFAULT NULL,
  `quota` float(11,3) DEFAULT NULL,
  `final_score` float(11,3) DEFAULT NULL,
  `pass_rate` float(11,6) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  KEY `zone` (`zone`),
  CONSTRAINT `res_item_ibfk_1` FOREIGN KEY (`zone`) REFERENCES `zone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_item
-- ----------------------------
INSERT INTO `res_item` VALUES ('公共服务', '9.000', '8.734', '0.970500', '8', '0');
INSERT INTO `res_item` VALUES ('文明交通', '1.000', '0.950', '0.950000', '9', '0');
INSERT INTO `res_item` VALUES ('“讲文明树新风”公益广告', '1.000', '0.889', '0.888900', '10', '0');
INSERT INTO `res_item` VALUES ('公共安全体系', '3.000', '2.467', '0.822200', '11', '0');
INSERT INTO `res_item` VALUES ('社会主义核心价值观深化推广普及', '3.000', '2.433', '0.811100', '12', '0');
INSERT INTO `res_item` VALUES ('文明诚信服务', '2.000', '2.000', '1.000000', '1', '1');
INSERT INTO `res_item` VALUES ('群众参与', '1.000', '1.000', '1.000000', '2', '1');
INSERT INTO `res_item` VALUES ('文化培育', '1.000', '1.000', '1.000000', '3', '1');
INSERT INTO `res_item` VALUES ('环境保护', '2.000', '2.000', '1.000000', '4', '1');
INSERT INTO `res_item` VALUES ('公共文化服务体系建设', '4.000', '4.000', '1.000000', '5', '1');
INSERT INTO `res_item` VALUES ('城乡共建', '2.000', '2.000', '1.000000', '6', '1');
INSERT INTO `res_item` VALUES ('文明旅游', '1.000', '1.000', '1.000000', '7', '1');
INSERT INTO `res_item` VALUES ('公共服务', '9.000', '8.734', '0.970463', '8', '1');
INSERT INTO `res_item` VALUES ('文明交通', '1.000', '0.950', '0.950000', '9', '1');
INSERT INTO `res_item` VALUES ('“讲文明树新风”公益广告', '1.000', '0.889', '0.888889', '10', '1');
INSERT INTO `res_item` VALUES ('公共安全体系', '3.000', '2.467', '0.822222', '11', '1');
INSERT INTO `res_item` VALUES ('社会主义核心价值观深化推广普及', '3.000', '2.433', '0.811111', '12', '1');
INSERT INTO `res_item` VALUES ('文明旅游', '1.000', '1.000', '1.000000', '1', '2');
INSERT INTO `res_item` VALUES ('文明诚信服务', '2.000', '2.000', '1.000000', '2', '2');
INSERT INTO `res_item` VALUES ('城乡共建', '2.000', '2.000', '1.000000', '3', '2');
INSERT INTO `res_item` VALUES ('文化培育', '1.000', '1.000', '1.000000', '4', '2');
INSERT INTO `res_item` VALUES ('环境保护', '2.000', '2.000', '1.000000', '5', '2');
INSERT INTO `res_item` VALUES ('公共文化服务体系建设', '4.000', '4.000', '1.000000', '6', '2');
INSERT INTO `res_item` VALUES ('群众参与', '1.000', '1.000', '1.000000', '7', '2');
INSERT INTO `res_item` VALUES ('公共服务', '9.000', '8.734', '0.970463', '8', '2');
INSERT INTO `res_item` VALUES ('文明交通', '1.000', '0.950', '0.950000', '9', '2');
INSERT INTO `res_item` VALUES ('“讲文明树新风”公益广告', '1.000', '0.889', '0.888889', '10', '2');
INSERT INTO `res_item` VALUES ('公共安全体系', '3.000', '2.467', '0.822222', '11', '2');
INSERT INTO `res_item` VALUES ('社会主义核心价值观深化推广普及', '3.000', '2.418', '0.806061', '12', '2');

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(100) DEFAULT NULL,
  `btn` varchar(100) DEFAULT NULL,
  `header` varchar(100) DEFAULT NULL,
  `back` varchar(100) DEFAULT NULL,
  `test` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES ('0', null, null, null, null, null);
INSERT INTO `zone` VALUES ('1', '昆山市', '/Kiyoshi/Public/images/btnks.png', '/Kiyoshi/Public/images/headerks.png', '/Kiyoshi/Public/images/backks.png', '/Kiyoshi/Public/images/textks.png');
INSERT INTO `zone` VALUES ('2', '高新区', '/Kiyoshi/Public/images/btnxq.png', '/Kiyoshi/Public/images/headerxq.png', '/Kiyoshi/Public/images/backxq.png', '/Kiyoshi/Public/images/textxq.png');
INSERT INTO `zone` VALUES ('3', '工业园区', '/Kiyoshi/Public/images/btnyq.png', '/Kiyoshi/Public/images/headeryq.png', '/Kiyoshi/Public/images/backyq.png', '/Kiyoshi/Public/images/textyq.png');
INSERT INTO `zone` VALUES ('4', '吴中区', '/Kiyoshi/Public/images/btnwz.png', '/Kiyoshi/Public/images/headerwz.png', '/Kiyoshi/Public/images/backwz.png', '/Kiyoshi/Public/images/textwz.png');
INSERT INTO `zone` VALUES ('5', '吴江区', '/Kiyoshi/Public/images/btnwj.png', '/Kiyoshi/Public/images/headerwj.png', '/Kiyoshi/Public/images/backwj.png', '/Kiyoshi/Public/images/textwj.png');
INSERT INTO `zone` VALUES ('6', '相城区', '/Kiyoshi/Public/images/btnxc.png', '/Kiyoshi/Public/images/headerxc.png', '/Kiyoshi/Public/images/backxc.png', '/Kiyoshi/Public/images/textxc.png');
INSERT INTO `zone` VALUES ('7', '姑苏区', '/Kiyoshi/Public/images/btngs.png', '/Kiyoshi/Public/images/headergs.png', '/Kiyoshi/Public/images/backgs.png', '/Kiyoshi/Public/images/textgs.png');

-- ----------------------------
-- View structure for branch_item_domain
-- ----------------------------
DROP VIEW IF EXISTS `branch_item_domain`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `branch_item_domain` AS SELECT
                        b.item,
                        branch_item,
                        c.domain,
                        count(*),
                        avg(a.get) AS avg_domain
                    FROM
                        `dataset` a
                    JOIN `item` b ON a.item = b.id
                    JOIN `domain` c ON a.domain = c.id
                    WHERE
                        a.item > 0 AND a.zone=1 AND c.id > 0
                    GROUP BY
                        a.domain,
                        a.item,
                        branch_item
                    ORDER BY
                        a.item ;

-- ----------------------------
-- View structure for branch_res
-- ----------------------------
DROP VIEW IF EXISTS `branch_res`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `branch_res` AS SELECT
                                    b.item,
                                    a.branch_item,
                                    (avg(a.get)) AS avg_score,
                                    a.zone
                                FROM
                                    `dataset` a
                                JOIN `item` b ON a.item = b.id
                                WHERE
                                    b.id > 0 and a.zone=2
                                GROUP BY
                                    a.item,
                                    a.branch_item
                                ORDER BY
                                    a.item DESC ;
SET FOREIGN_KEY_CHECKS=1;
