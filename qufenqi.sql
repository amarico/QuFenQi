/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : qufenqi

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-04-14 22:38:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `detailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(20) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `type` varchar(300) DEFAULT NULL,
  `pictureone` varchar(100) DEFAULT NULL,
  `picturetwo` varchar(100) DEFAULT NULL,
  `picturethree` varchar(100) DEFAULT NULL,
  `picturefour` varchar(100) DEFAULT NULL,
  `pictureintroone` varchar(100) DEFAULT NULL,
  `pictureintrotwo` varchar(100) DEFAULT NULL,
  `pictureintrothree` varchar(100) DEFAULT NULL,
  `pictureintrofour` varchar(100) DEFAULT NULL,
  `pictureintrofive` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`detailid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', '1', '金色', '公开版(16G)', '/QuFenQi/upload/picture/iphone61.jpg', '/QuFenQi/upload/picture/iphone62.jpg', '/QuFenQi/upload/picture/iphone63.jpg', '/QuFenQi/upload/picture/iphone64.jpg', '/QuFenQi/upload/picture/iphone6intro1.jpg', '/QuFenQi/upload/picture/iphone6intro2.jpg', '/QuFenQi/upload/picture/iphone6intro3.jpg', '/QuFenQi/upload/picture/iphone6intro4.jpg', '/QuFenQi/upload/picture/iphone6intro5.jpg');
INSERT INTO `characters` VALUES ('2', '1', '深灰色', '公开版(64G)', '/QuFenQi/upload/picture/iphone6black1.jpg', '/QuFenQi/upload/picture/iphone6black2.jpg', '/QuFenQi/upload/picture/iphone6black3.jpg', '/QuFenQi/upload/picture/iphone6black4.jpg', '/QuFenQi/upload/picture/iphone6intro1.jpg', '/QuFenQi/upload/picture/iphone6intro2.jpg', '/QuFenQi/upload/picture/iphone6intro3.jpg', '/QuFenQi/upload/picture/iphone6intro4.jpg', '/QuFenQi/upload/picture/iphone6intro5.jpg');
INSERT INTO `characters` VALUES ('3', '3', '牛仔色', '牛仔版', '/QuFenQi/upload/picture/levi\'s1.1.jpg', '/QuFenQi/upload/picture/levi\'s1.2.jpg', '/QuFenQi/upload/picture/levi\'s1.3.jpg', '/QuFenQi/upload/picture/levi\'s1.4.jpg', '/QuFenQi/upload/picture/levi\'sIn1.1.jpg', '/QuFenQi/upload/picture/levi\'sIn1.2.jpg', '/QuFenQi/upload/picture/levi\'sIn1.3.jpg', '/QuFenQi/upload/picture/levi\'sIn1.4.jpg', '/QuFenQi/upload/picture/levi\'sIn1.5.jpg');
INSERT INTO `characters` VALUES ('4', '4', '格纹', '格纹 M', '/QuFenQi/upload/picture/levi\'s2.1.jpg', '/QuFenQi/upload/picture/levi\'s2.2.jpg', '/QuFenQi/upload/picture/levi\'s2.3.jpg', '/QuFenQi/upload/picture/levi\'s2.4.jpg', '/QuFenQi/upload/picture/levi\'sIn2.1.jpg', '/QuFenQi/upload/picture/levi\'sIn2.2.jpg', '/QuFenQi/upload/picture/levi\'sIn2.3.jpg', '/QuFenQi/upload/picture/levi\'sIn2.4.jpg', '/QuFenQi/upload/picture/levi\'sIn2.5.jpg');
INSERT INTO `characters` VALUES ('5', '5', '黑色', '两粒扣标准版', '/QuFenQi/upload/picture/rom1.1.jpg', '/QuFenQi/upload/picture/rom1.2.jpg', '/QuFenQi/upload/picture/rom1.3.jpg', '/QuFenQi/upload/picture/rom1.4.jpg', '/QuFenQi/upload/picture/romIn1.1.jpg', '/QuFenQi/upload/picture/romIn1.2.jpg', '/QuFenQi/upload/picture/romIn1.3.jpg', '/QuFenQi/upload/picture/romIn1.4.jpg', '/QuFenQi/upload/picture/romIn1.5.jpg');
INSERT INTO `characters` VALUES ('6', '6', '黑色', '单粒扣', '/QuFenQi/upload/picture/rom2.1.jpg', '/QuFenQi/upload/picture/rom2.2.jpg', '/QuFenQi/upload/picture/rom2.3.jpg', '/QuFenQi/upload/picture/rom2.4.jpg', '/QuFenQi/upload/picture/romIn2.1.jpg', '/QuFenQi/upload/picture/romIn2.2.jpg', '/QuFenQi/upload/picture/romIn2.3.jpg', '/QuFenQi/upload/picture/romIn2.4.jpg', '/QuFenQi/upload/picture/romIn2.5.jpg');
INSERT INTO `characters` VALUES ('7', '6', '黑色', '双粒扣', '/QuFenQi/upload/picture/rom2.1.jpg', '/QuFenQi/upload/picture/rom2.2.jpg', '/QuFenQi/upload/picture/rom2.3.jpg', '/QuFenQi/upload/picture/rom2.4.jpg', '/QuFenQi/upload/picture/romIn2.1.jpg', '/QuFenQi/upload/picture/romIn2.2.jpg', '/QuFenQi/upload/picture/romIn2.3.jpg', '/QuFenQi/upload/picture/romIn2.4.jpg', '/QuFenQi/upload/picture/romIn2.5.jpg');
INSERT INTO `characters` VALUES ('8', '7', '藏青', '春季新款', '/QuFenQi/upload/picture/nan1.1.jpg', '/QuFenQi/upload/picture/nan1.2.jpg', '/QuFenQi/upload/picture/nan1.3.jpg', '/QuFenQi/upload/picture/nan1.4.jpg', '/QuFenQi/upload/picture/nanIn1.1.jpg', '/QuFenQi/upload/picture/nanIn1.2.jpg', '/QuFenQi/upload/picture/nanIn1.3.jpg', '/QuFenQi/upload/picture/nanIn1.4.jpg', '/QuFenQi/upload/picture/nanIn1.5.jpg');
INSERT INTO `characters` VALUES ('9', '7', '黑色', '春季新款', '/QuFenQi/upload/picture/nan1.1.jpg', '/QuFenQi/upload/picture/nan1.2.jpg', '/QuFenQi/upload/picture/nan1.3.jpg', '/QuFenQi/upload/picture/nan1.4.jpg', '/QuFenQi/upload/picture/nanIn1.1.jpg', '/QuFenQi/upload/picture/nanIn1.2.jpg', '/QuFenQi/upload/picture/nanIn1.3.jpg', '/QuFenQi/upload/picture/nanIn1.4.jpg', '/QuFenQi/upload/picture/nanIn1.5.jpg');
INSERT INTO `characters` VALUES ('10', '8', '黑色', '牛仔长裤', '/QuFenQi/upload/picture/lin1.1.jpg', '/QuFenQi/upload/picture/lin1.2.jpg', '/QuFenQi/upload/picture/lin1.3.jpg', '/QuFenQi/upload/picture/lin1.4.jpg', '/QuFenQi/upload/picture/linIn1.1.jpg', '/QuFenQi/upload/picture/linIn1.2.jpg', '/QuFenQi/upload/picture/linIn1.3.jpg', '/QuFenQi/upload/picture/linIn1.4.jpg', '/QuFenQi/upload/picture/linIn1.5.jpg');
INSERT INTO `characters` VALUES ('11', '9', '白', '修身短袖', '/QuFenQi/upload/picture/lin2.1.jpg', '/QuFenQi/upload/picture/lin2.2.jpg', '/QuFenQi/upload/picture/lin2.3.jpg', '/QuFenQi/upload/picture/lin2.4.jpg', '/QuFenQi/upload/picture/linIn2.1.jpg', '/QuFenQi/upload/picture/linIn2.2.jpg', '/QuFenQi/upload/picture/linIn2.3.jpg', '/QuFenQi/upload/picture/linIn2.4.jpg', '/QuFenQi/upload/picture/linIn2.5.jpg');
INSERT INTO `characters` VALUES ('12', '9', '花灰', '修身短袖', '/QuFenQi/upload/picture/lin2.1.jpg', '/QuFenQi/upload/picture/lin2.2.jpg', '/QuFenQi/upload/picture/lin2.3.jpg', '/QuFenQi/upload/picture/lin2.4.jpg', '/QuFenQi/upload/picture/linIn2.1.jpg', '/QuFenQi/upload/picture/linIn2.2.jpg', '/QuFenQi/upload/picture/linIn2.3.jpg', '/QuFenQi/upload/picture/linIn2.4.jpg', '/QuFenQi/upload/picture/linIn2.5.jpg');
INSERT INTO `characters` VALUES ('13', '10', '浅粉色', '小西装', '/QuFenQi/upload/picture/ge1.1.jpg', '/QuFenQi/upload/picture/ge1.2.jpg', '/QuFenQi/upload/picture/ge1.3.jpg', '/QuFenQi/upload/picture/ge1.4.jpg', '/QuFenQi/upload/picture/geIn1.1.jpg', '/QuFenQi/upload/picture/geIn1.2.jpg', '/QuFenQi/upload/picture/geIn1.3.jpg', '/QuFenQi/upload/picture/geIn1.4.jpg', '/QuFenQi/upload/picture/geIn1.5.jpg');
INSERT INTO `characters` VALUES ('14', '10', '玫红色', '小西装', '/QuFenQi/upload/picture/geh1.1.jpg', '/QuFenQi/upload/picture/geh1.2.jpg', '/QuFenQi/upload/picture/geh1.3.jpg', '/QuFenQi/upload/picture/geh1.4.jpg', '/QuFenQi/upload/picture/geIn1.1.jpg', '/QuFenQi/upload/picture/geIn1.2.jpg', '/QuFenQi/upload/picture/geIn1.3.jpg', '/QuFenQi/upload/picture/geIn1.4.jpg', '/QuFenQi/upload/picture/geIn1.5.jpg');
INSERT INTO `characters` VALUES ('15', '11', '黑色', '无袖连衣裙', '/QuFenQi/upload/picture/o1.1.jpg', '/QuFenQi/upload/picture/o1.2.jpg', '/QuFenQi/upload/picture/o1.3.jpg', '/QuFenQi/upload/picture/o1.4.jpg', '/QuFenQi/upload/picture/oIn1.1.jpg', '/QuFenQi/upload/picture/oIn1.2.jpg', '/QuFenQi/upload/picture/oIn1.3.jpg', '/QuFenQi/upload/picture/oIn1.4.jpg', '/QuFenQi/upload/picture/oIn1.5.jpg');
INSERT INTO `characters` VALUES ('16', '11', '灰粉红', '无袖连衣裙', '/QuFenQi/upload/picture/oh1.1.jpg', '/QuFenQi/upload/picture/oh1.2.jpg', '/QuFenQi/upload/picture/oh1.3.jpg', '/QuFenQi/upload/picture/oh1.4.jpg', '/QuFenQi/upload/picture/oIn1.1.jpg', '/QuFenQi/upload/picture/oIn1.2.jpg', '/QuFenQi/upload/picture/oIn1.3.jpg', '/QuFenQi/upload/picture/oIn1.4.jpg', '/QuFenQi/upload/picture/oIn1.5.jpg');
INSERT INTO `characters` VALUES ('17', '12', '浅黄', '连衣裙短裙', '/QuFenQi/upload/picture/o2.1.jpg', '/QuFenQi/upload/picture/o2.2.jpg', '/QuFenQi/upload/picture/o2.3.jpg', '/QuFenQi/upload/picture/o2.4.jpg', '/QuFenQi/upload/picture/oIn2.1.jpg', '/QuFenQi/upload/picture/oIn2.2.jpg', '/QuFenQi/upload/picture/oIn2.3.jpg', '/QuFenQi/upload/picture/oIn2.4.jpg', '/QuFenQi/upload/picture/oIn2.5.jpg');
INSERT INTO `characters` VALUES ('18', '12', '本白', '连衣裙短裙', '/QuFenQi/upload/picture/ob2.1.jpg', '/QuFenQi/upload/picture/ob2.2.jpg', '/QuFenQi/upload/picture/ob2.3.jpg', '/QuFenQi/upload/picture/ob2.4.jpg', '/QuFenQi/upload/picture/oIn2.1.jpg', '/QuFenQi/upload/picture/oIn2.2.jpg', '/QuFenQi/upload/picture/oIn2.3.jpg', '/QuFenQi/upload/picture/oIn2.4.jpg', '/QuFenQi/upload/picture/oIn2.5.jpg');
INSERT INTO `characters` VALUES ('19', '13', '极致银', '20寸', '/QuFenQi/upload/picture/p1.1.jpg', '/QuFenQi/upload/picture/p1.2.jpg', '/QuFenQi/upload/picture/p1.3.jpg', '/QuFenQi/upload/picture/p1.4.jpg', '/QuFenQi/upload/picture/pIn1.1.jpg', '/QuFenQi/upload/picture/pIn1.2.jpg', '/QuFenQi/upload/picture/pIn1.3.jpg', '/QuFenQi/upload/picture/pIn1.4.jpg', '/QuFenQi/upload/picture/pIn1.5.jpg');
INSERT INTO `characters` VALUES ('20', '13', '高雅紫', '20寸', '/QuFenQi/upload/picture/pz1.1.jpg', '/QuFenQi/upload/picture/pz1.2.jpg', '/QuFenQi/upload/picture/pz1.3.jpg', '/QuFenQi/upload/picture/pz1.4.jpg', '/QuFenQi/upload/picture/pIn1.1.jpg', '/QuFenQi/upload/picture/pIn1.2.jpg', '/QuFenQi/upload/picture/pIn1.3.jpg', '/QuFenQi/upload/picture/pIn1.4.jpg', '/QuFenQi/upload/picture/pIn1.5.jpg');
INSERT INTO `characters` VALUES ('21', '14', '黑色', '24寸', '/QuFenQi/upload/picture/p2.1.jpg', '/QuFenQi/upload/picture/p2.2.jpg', '/QuFenQi/upload/picture/p2.3.jpg', '/QuFenQi/upload/picture/p2.4.jpg', '/QuFenQi/upload/picture/pIn2.1.jpg', '/QuFenQi/upload/picture/pIn2.2.jpg', '/QuFenQi/upload/picture/pIn2.3.jpg', '/QuFenQi/upload/picture/pIn2.4.jpg', '/QuFenQi/upload/picture/pIn2.5.jpg');
INSERT INTO `characters` VALUES ('22', '14', '红色', '24寸', '/QuFenQi/upload/picture/ph2.1.jpg', '/QuFenQi/upload/picture/ph2.2.jpg', '/QuFenQi/upload/picture/ph2.3.jpg', '/QuFenQi/upload/picture/ph2.4.jpg', '/QuFenQi/upload/picture/pIn2.1.jpg', '/QuFenQi/upload/picture/pIn2.2.jpg', '/QuFenQi/upload/picture/pIn2.3.jpg', '/QuFenQi/upload/picture/pIn2.4.jpg', '/QuFenQi/upload/picture/pIn2.5.jpg');
INSERT INTO `characters` VALUES ('23', '15', '黑色', '双肩包', '/QuFenQi/upload/picture/a1.1.jpg', '/QuFenQi/upload/picture/a1.2.jpg', '/QuFenQi/upload/picture/a1.3.jpg', '/QuFenQi/upload/picture/a1.4.jpg', '/QuFenQi/upload/picture/aIn1.1.jpg', '/QuFenQi/upload/picture/aIn1.2.jpg', '/QuFenQi/upload/picture/aIn1.3.jpg', '/QuFenQi/upload/picture/aIn1.4.jpg', '/QuFenQi/upload/picture/aIn1.5.jpg');
INSERT INTO `characters` VALUES ('24', '15', '紫色', '双肩包', '/QuFenQi/upload/picture/az1.1.jpg', '/QuFenQi/upload/picture/az1.2.jpg', '/QuFenQi/upload/picture/az1.3.jpg', '/QuFenQi/upload/picture/az1.4.jpg', '/QuFenQi/upload/picture/aIn1.1.jpg', '/QuFenQi/upload/picture/aIn1.2.jpg', '/QuFenQi/upload/picture/aIn1.3.jpg', '/QuFenQi/upload/picture/aIn1.4.jpg', '/QuFenQi/upload/picture/aIn1.5.jpg');
INSERT INTO `characters` VALUES ('25', '16', '黑色', '24寸', '/QuFenQi/upload/picture/a2.1.jpg', '/QuFenQi/upload/picture/a2.2.jpg', '/QuFenQi/upload/picture/a2.3.jpg', '/QuFenQi/upload/picture/a2.4.jpg', '/QuFenQi/upload/picture/aIn2.1.jpg', '/QuFenQi/upload/picture/aIn2.2.jpg', '/QuFenQi/upload/picture/aIn2.3.jpg', '/QuFenQi/upload/picture/aIn2.4.jpg', '/QuFenQi/upload/picture/aIn2.5.jpg');
INSERT INTO `characters` VALUES ('26', '16', '紫色', '24寸', '/QuFenQi/upload/picture/az2.1.jpg', '/QuFenQi/upload/picture/az2.2.jpg', '/QuFenQi/upload/picture/az2.3.jpg', '/QuFenQi/upload/picture/az2.4.jpg', '/QuFenQi/upload/picture/aIn2.1.jpg', '/QuFenQi/upload/picture/aIn2.2.jpg', '/QuFenQi/upload/picture/aIn2.3.jpg', '/QuFenQi/upload/picture/aIn2.4.jpg', '/QuFenQi/upload/picture/aIn2.5.jpg');
INSERT INTO `characters` VALUES ('27', '17', '金色', '10.1寸香槟金', '/QuFenQi/upload/picture/paidlenovoj1.jpg', '/QuFenQi/upload/picture/paidlenovoj2.jpg', '/QuFenQi/upload/picture/paidlenovoj3.jpg', '/QuFenQi/upload/picture/paidlenovoj4.jpg', '/QuFenQi/upload/picture/paidlenovointro1.jpg', '/QuFenQi/upload/picture/paidlenovointro2.jpg', '/QuFenQi/upload/picture/paidlenovointro3.jpg', '/QuFenQi/upload/picture/paidlenovointro4.jpg', '/QuFenQi/upload/picture/paidlenovointro5.jpg');
INSERT INTO `characters` VALUES ('28', '17', '银色', '8英寸wifi', '/QuFenQi/upload/picture/paidlenovoy1.jpg', '/QuFenQi/upload/picture/paidlenovoy2.jpg', '/QuFenQi/upload/picture/paidlenovoy3.jpg', '/QuFenQi/upload/picture/paidlenovoy4.jpg', '/QuFenQi/upload/picture/paidlenovointro1.jpg', '/QuFenQi/upload/picture/paidlenovointro2.jpg', '/QuFenQi/upload/picture/paidlenovointro3.jpg', '/QuFenQi/upload/picture/paidlenovointro4.jpg', '/QuFenQi/upload/picture/paidlenovointro5.jpg');
INSERT INTO `characters` VALUES ('29', '18', '黑色', '标准版', '/QuFenQi/upload/picture/paiddaierblack1.jpg', '/QuFenQi/upload/picture/paiddaierblack2.jpg', '/QuFenQi/upload/picture/paiddaierblack3.jpg', '/QuFenQi/upload/picture/paiddaierblack4.jpg', '/QuFenQi/upload/picture/paiddaierintro1.jpg', '/QuFenQi/upload/picture/paiddaierintro2.jpg', '/QuFenQi/upload/picture/paiddaierintro3.jpg', '/QuFenQi/upload/picture/paiddaierintro4.jpg', '/QuFenQi/upload/picture/paiddaierintro5.jpg');
INSERT INTO `characters` VALUES ('30', '18', '白色', '普通版', '/QuFenQi/upload/picture/paiddaierwhite1.jpg', '/QuFenQi/upload/picture/paiddaierwhite2.jpg', '/QuFenQi/upload/picture/paiddaierwhite3.jpg', '/QuFenQi/upload/picture/paiddaierwhite4.jpg', '/QuFenQi/upload/picture/paiddaierintro1.jpg', '/QuFenQi/upload/picture/paiddaierintro2.jpg', '/QuFenQi/upload/picture/paiddaierintro3.jpg', '/QuFenQi/upload/picture/paiddaierintro4.jpg', '/QuFenQi/upload/picture/paiddaierintro5.jpg');
INSERT INTO `characters` VALUES ('31', '19', '黑色', '14英寸 i3 500G版', '/QuFenQi/upload/picture/bilenovogray1.jpg', '/QuFenQi/upload/picture/bilenovogray2.jpg', '/QuFenQi/upload/picture/bilenovogray3.jpg', '/QuFenQi/upload/picture/bilenovogray4.jpg', '/QuFenQi/upload/picture/bilenovointro1.jpg', '/QuFenQi/upload/picture/bilenovointro2.jpg', '/QuFenQi/upload/picture/bilenovointro3.jpg', '/QuFenQi/upload/picture/bilenovointro4.jpg', '/QuFenQi/upload/picture/bilenovointro5.jpg');
INSERT INTO `characters` VALUES ('32', '20', '黑色', '17寸GTX370独显', '/QuFenQi/upload/picture/bishenzhou1.jpg', '/QuFenQi/upload/picture/bishenzhou2.jpg', '/QuFenQi/upload/picture/bishenzhou3.jpg', '/QuFenQi/upload/picture/bishenzhou4.jpg', '/QuFenQi/upload/picture/bishenzhouintro1.jpg', '/QuFenQi/upload/picture/bishenzhouintro2.jpg', '/QuFenQi/upload/picture/bishenzhouintro3.jpg', '/QuFenQi/upload/picture/bishenzhouintro4.jpg', '/QuFenQi/upload/picture/bishenzhouintro5.jpg');
INSERT INTO `characters` VALUES ('33', '21', '黑色', '普通版带Kinect', '/QuFenQi/upload/picture/dianmoshou1.jpg', '/QuFenQi/upload/picture/dianmoshou2.jpg', '/QuFenQi/upload/picture/dianmoshou3.jpg', '/QuFenQi/upload/picture/dianmoshou4.jpg', '/QuFenQi/upload/picture/dianmoshouintro1.jpg', '/QuFenQi/upload/picture/dianmoshou1.jpg', '/QuFenQi/upload/picture/dianmoshou2.jpg', '/QuFenQi/upload/picture/dianmoshou3.jpg', '/QuFenQi/upload/picture/dianmoshou4.jpg');
INSERT INTO `characters` VALUES ('34', '22', '白色', '移动4G', '/QuFenQi/upload/picture/mobileoppob1.jpg', '/QuFenQi/upload/picture/mobileoppob2.jpg', '/QuFenQi/upload/picture/mobileoppob3.jpg', '/QuFenQi/upload/picture/mobileoppob4.jpg', '/QuFenQi/upload/picture/mobileoppointro1.jpg', '/QuFenQi/upload/picture/mobileoppointro2.jpg', '/QuFenQi/upload/picture/mobileoppointro3.jpg', '/QuFenQi/upload/picture/mobileoppointro4.jpg', '/QuFenQi/upload/picture/mobileoppointro5.jpg');
INSERT INTO `characters` VALUES ('35', '23', '黑色', '18-105mm镜头套机', '/QuFenQi/upload/picture/nikangb1.jpg', '/QuFenQi/upload/picture/nikangb2.jpg', '/QuFenQi/upload/picture/nikangb3.jpg', '/QuFenQi/upload/picture/nikangb4.jpg', '/QuFenQi/upload/picture/nikangintro1.jpg', '/QuFenQi/upload/picture/nikangintro2.jpg', '/QuFenQi/upload/picture/nikangintro3.jpg', '/QuFenQi/upload/picture/nikangintro4.jpg', '/QuFenQi/upload/picture/nikangintro5.jpg');
INSERT INTO `characters` VALUES ('36', '24', '钢琴黑', '标准版', '/QuFenQi/upload/picture/aimakeb1.jpg', '/QuFenQi/upload/picture/aimakeb2.jpg', '/QuFenQi/upload/picture/aimakeb3.jpg', '/QuFenQi/upload/picture/aimakeb4.jpg', '/QuFenQi/upload/picture/aimakeintro1.jpg', '/QuFenQi/upload/picture/aimakeintro2.jpg', '/QuFenQi/upload/picture/aimakeintro3.jpg', '/QuFenQi/upload/picture/aimakeintro4.jpg', '/QuFenQi/upload/picture/aimakeintro5.jpg');
INSERT INTO `characters` VALUES ('37', '25', '黑色', '绿色表带', '/QuFenQi/upload/picture/biaosuoni1.jpg', '/QuFenQi/upload/picture/biaosuoni2.jpg', '/QuFenQi/upload/picture/biaosuoni3.jpg', '/QuFenQi/upload/picture/biaosuoni4.jpg', '/QuFenQi/upload/picture/biaosuoniintro1.jpg', '/QuFenQi/upload/picture/biaosuoniintro2.jpg', '/QuFenQi/upload/picture/biaosuoniintro3.jpg', '/QuFenQi/upload/picture/biaosuoniintro4.jpg', '/QuFenQi/upload/picture/biaosuoniintro5.jpg');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(500) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `creditline` float DEFAULT NULL,
  `money` float(100,0) DEFAULT NULL,
  `lasttime` date DEFAULT NULL,
  PRIMARY KEY (`id`,`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '18983234892', '25f9e794323b453885f5181f1b624d0b', '赵朝胜', '1492612766@qq.com', '重庆市', '重庆市', '重庆大学虎溪校区梅园六栋224', '5000', '7177', null);
INSERT INTO `customer` VALUES ('25', '18983234890', 'c782ba4c051f967cc2935c0d6fb7f872', '赵先生', '1492612766@qq.com', '重庆市', '重庆市', '重庆大学', '5000', '10000', null);
INSERT INTO `customer` VALUES ('26', '18888888882', 'e10adc3949ba59abbe56e057f20f883e', '赵先生', '14@qq.com', '北京', '东城', '北京大学', '5000', '10000', null);
INSERT INTO `customer` VALUES ('27', '18888888883', 'e12ca14c0b19715b18aa762a440f871b', '小王', '11@qq.com', '北京', '东城', '河南省商丘市民权县', '5000', '10000', null);

-- ----------------------------
-- Table structure for `judge`
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `evaluate` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of judge
-- ----------------------------
INSERT INTO `judge` VALUES ('1', '5', '张三', '恩恩，不错', '2015-06-07');
INSERT INTO `judge` VALUES ('2', '5', '王乐', '东西收到了，感觉挺好的', '2015-07-02');
INSERT INTO `judge` VALUES ('3', '5', '赵小', '以后还会光顾的', '2015-07-07');
INSERT INTO `judge` VALUES ('4', '5', '赵先生', '衣服挺好看的，感觉还会再来', '2015-07-05');
INSERT INTO `judge` VALUES ('5', '13', '赵小黑', '箱子大小适中，感觉还不错', '2015-07-05');
INSERT INTO `judge` VALUES ('6', '13', '超越梦想', '箱子外观挺好看的，大小也比较满意', '2015-07-06');
INSERT INTO `judge` VALUES ('7', '13', '我的天下', '箱子刚收到，感觉还不错', '2015-07-03');

-- ----------------------------
-- Table structure for `orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `submitdate` date NOT NULL,
  `orderid` varchar(30) NOT NULL,
  `shop` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `firstpay` float DEFAULT NULL,
  `monthtime` int(11) DEFAULT NULL,
  `monthpay` float DEFAULT NULL,
  `allmoney` float DEFAULT NULL,
  `ispay` int(11) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('119', '18983234892', '2015-07-10', '2015710211528', '神舟(HASEE) 战神K770E-i7 D1 17.3英寸游戏本', '7499', '1', '2000', '6', '925.7', '7554.2', '0', '颜色：黑色、类型：17寸GTX370独显');
INSERT INTO `orderlist` VALUES ('120', '18983234892', '2015-07-10', '2015710211551', 'Ochirly欧时力新女夏装欧美气质印花无袖连衣裙短裙', '347', '1', '120', '2', '114.6', '349.2', '0', '颜色：黑色、类型：无袖连衣裙');
INSERT INTO `orderlist` VALUES ('121', '18983234892', '2015-07-11', '201571175550', 'http://www.qufenqi.com/detail/1/469/102447', '2899', '1', '1000', '6', '316.5', '2899', '1', '20英寸G250');

-- ----------------------------
-- Table structure for `percentprice`
-- ----------------------------
DROP TABLE IF EXISTS `percentprice`;
CREATE TABLE `percentprice` (
  `id` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `percentprice` float(20,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of percentprice
-- ----------------------------
INSERT INTO `percentprice` VALUES ('1', '所有', '0.01000');

-- ----------------------------
-- Table structure for `productinfo`
-- ----------------------------
DROP TABLE IF EXISTS `productinfo`;
CREATE TABLE `productinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdid` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `cu` int(20) DEFAULT NULL,
  `originalprice` double(20,0) DEFAULT NULL,
  `Barginprice` double(20,0) DEFAULT NULL,
  `isboutique` int(10) DEFAULT NULL,
  `ishotsell` int(10) NOT NULL DEFAULT '0',
  `monthnum` int(10) DEFAULT NULL,
  `monthprice` double(20,0) DEFAULT NULL,
  `sellvolume` int(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of productinfo
-- ----------------------------
INSERT INTO `productinfo` VALUES ('1', '1', '苹果（Apple）iPhone 6 (A1586)金色 16GB', '苹果', '200', '4788', '4788', '1', '1', '24', '219', '0', '2015-07-06', '/QuFenQi/upload/picture/iphone61.jpg');
INSERT INTO `productinfo` VALUES ('2', '1', '苹果(Apple) iPhone 5s (A1530) 16GB', '苹果', '100', '3600', '3600', '1', '0', '24', '165', '1', '2015-07-09', '/QuFenQi/upload/picture/iphone5black1.jpg');
INSERT INTO `productinfo` VALUES ('3', '4', 'Levi\'s李维斯男士丹宁牛仔裤29990-0332', '李维斯', '200', '559', '559', '1', '0', '12', '47', '0', '2015-07-09', '/QuFenQi/upload/picture/levi\'s1.1.jpg');
INSERT INTO `productinfo` VALUES ('4', '4', 'Levi\'s李维斯男士纯棉格子长袖衬衫65824-0107', '李维斯', '200', '300', '300', '1', '0', '12', '25', '0', '2015-07-08', '/QuFenQi/upload/picture/levi\'s2.1.jpg');
INSERT INTO `productinfo` VALUES ('5', '4', '罗蒙男装 2015春季新款商务套西', '罗蒙', '200', '459', '459', '1', '0', '6', '77', '5', '2015-07-07', '/QuFenQi/upload/picture/rom1.1.jpg');
INSERT INTO `productinfo` VALUES ('6', '4', '罗蒙男装2015春季新品', '罗蒙', '100', '521', '521', '1', '0', '6', '88', '0', '2015-07-03', '/QuFenQi/upload/picture/rom2.1.jpg');
INSERT INTO `productinfo` VALUES ('7', '4', '南极人夹克 男士夹克外套薄款修身青年春秋装', '南极人', '200', '1899', '1899', '1', '0', '12', '160', '0', '2015-07-01', '/QuFenQi/upload/picture/nan1.1.jpg');
INSERT INTO `productinfo` VALUES ('8', '5', 'ONLY新款修身舒适小脚SS低腰牛仔长裤女T', '绫致', '300', '250', '250', '0', '0', '6', '42', '0', '2015-07-03', '/QuFenQi/upload/picture/lin1.1.jpg');
INSERT INTO `productinfo` VALUES ('9', '5', 'ONLY春装新民族风印花亮片修身短袖T恤上衣女T', '绫致', '100', '100', '100', '1', '0', '6', '17', '0', '2015-07-02', '/QuFenQi/upload/picture/lin2.1.jpg');
INSERT INTO `productinfo` VALUES ('10', '5', '哥弟女装2015春装新款外套纯色OL修身单扣小西装490012', '哥弟', '200', '640', '640', '0', '0', '12', '54', '0', '2015-07-02', '/QuFenQi/upload/picture/ge1.1.jpg');
INSERT INTO `productinfo` VALUES ('11', '5', 'Ochirly欧时力新女夏装欧美气质印花无袖连衣裙短裙', '欧时力', '100', '347', '347', '1', '0', '12', '29', '0', '2015-07-02', '/QuFenQi/upload/picture/o1.1.jpg');
INSERT INTO `productinfo` VALUES ('12', '5', 'Ochirly欧时力新女夏装ol钉珠雪纺拼接宽松连衣裙短裙', '欧时力', '200', '359', '359', '1', '0', '12', '30', '0', '2015-07-03', '/QuFenQi/upload/picture/o2.1.jpg');
INSERT INTO `productinfo` VALUES ('13', '6', '花花公子（PLAYBOY）拉杆箱万向轮旅行箱行李箱', '花花公子', '100', '279', '279', '0', '0', '6', '23', '1', '2015-07-02', '/QuFenQi/upload/picture/p1.1.jpg');
INSERT INTO `productinfo` VALUES ('14', '6', '花花公子Playboy新品首发亮彩旅行拉杆箱', '花花公子', '200', '329', '329', '1', '0', '12', '28', '0', '2015-07-03', '/QuFenQi/upload/picture/p2.1.jpg');
INSERT INTO `productinfo` VALUES ('15', '6', '爱华仕（OIWAS） 4140 色彩之旅3X休闲商务电脑背包双肩包黑色', '爱华仕', '250', '149', '149', '0', '0', '6', '25', '0', '2015-07-03', '/QuFenQi/upload/picture/a1.1.jpg');
INSERT INTO `productinfo` VALUES ('16', '6', '爱华仕（OIWAS） 6088 风云系列可扩展时尚万向轮拉杆箱24寸紫色', '爱华仕', '200', '669', '669', '1', '0', '12', '56', '0', '2015-07-02', '/QuFenQi/upload/picture/a2.1.jpg');
INSERT INTO `productinfo` VALUES ('17', '7', '联想（Lenovo）YOGA平板2 10英寸平板电脑', '联想', '200', '2299', '2299', '1', '1', '12', '193', '0', '2015-07-08', '/QuFenQi/upload/picture/paidlenovoj1.jpg');
INSERT INTO `productinfo` VALUES ('18', '7', '戴尔（DELL）Venue 8 Pro 3845 8英寸平板电脑', '戴尔', '300', '1099', '1099', '0', '0', '12', '92', '0', '2015-07-07', '/QuFenQi/upload/picture/paiddaierblack1.jpg');
INSERT INTO `productinfo` VALUES ('19', '8', '联想（Lenovo） G410AT 14.0英寸笔记本电脑', '联想', '300', '3099', '2099', '1', '0', '24', '130', '0', '2015-07-08', '/QuFenQi/upload/picture/bilenovogray1.jpg');
INSERT INTO `productinfo` VALUES ('20', '8', '神舟(HASEE) 战神K770E-i7 D1 17.3英寸游戏本', '神舟', '140', '7499', '7499', '0', '0', '12', '631', '1', '2015-07-08', '/QuFenQi/upload/picture/bishenzhou1.jpg');
INSERT INTO `productinfo` VALUES ('21', '9', '【国行限量版】Xbox One 体感游戏机 ', '魔兽世界', '200', '3799', '3799', '0', '1', '12', '320', '0', '2015-07-09', '/QuFenQi/upload/picture/dianmoshou1.jpg');
INSERT INTO `productinfo` VALUES ('22', '1', 'OPPO R1S(R8007)白色 移动4G手机', 'OPPO', '180', '2299', '2299', '0', '1', '18', '129', '0', '2015-07-08', '/QuFenQi/upload/picture/mobileoppob1.jpg');
INSERT INTO `productinfo` VALUES ('23', '2', '尼康（Nikon） D5200 单反套机', '尼康', '400', '3750', '3750', '0', '1', '24', '158', '0', '2015-07-05', '/QuFenQi/upload/picture/nikangb1.jpg');
INSERT INTO `productinfo` VALUES ('24', '3', 'AIMCW009智能手表定位手环GPS追踪器 钢琴黑', '爱玛科', '160', '329', '829', '0', '1', '6', '140', '0', '2015-07-09', '/QuFenQi/upload/picture/aimakeb1.jpg');
INSERT INTO `productinfo` VALUES ('25', '3', '索尼（SONY) SW2 双表带智能手表', '索尼', '200', '799', '799', '0', '1', '6', '134', '0', '2015-07-08', '/QuFenQi/upload/picture/biaosuoni1.jpg');

-- ----------------------------
-- Table structure for `recordofpay`
-- ----------------------------
DROP TABLE IF EXISTS `recordofpay`;
CREATE TABLE `recordofpay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `orderid` varchar(30) NOT NULL,
  `monthpay` float(20,2) NOT NULL,
  `monthtime` int(10) NOT NULL,
  `haspaid` float(20,2) NOT NULL,
  `needpay` float(20,2) NOT NULL,
  `monthpaid` int(10) NOT NULL,
  `needmonthpay` int(10) NOT NULL,
  `price` float(20,0) NOT NULL,
  `allmoney` float(20,2) NOT NULL,
  `earn` float(20,0) NOT NULL,
  `submitdate` date NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of recordofpay
-- ----------------------------
INSERT INTO `recordofpay` VALUES ('80', '18983234892', 'http://www.qufenqi.com/detail/1/469/102447', '201571175550', '316.50', '6', '1316.50', '1582.50', '1', '5', '2899', '2899.00', '0', '2015-07-11', '0');

-- ----------------------------
-- Table structure for `shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `firstpay` float(11,2) NOT NULL,
  `monthtime` int(20) NOT NULL,
  `monthPay` float(20,2) NOT NULL DEFAULT '0.00',
  `color` varchar(20) NOT NULL,
  `type` varchar(40) NOT NULL,
  `states` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for `typeall`
-- ----------------------------
DROP TABLE IF EXISTS `typeall`;
CREATE TABLE `typeall` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeallname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `typeallname` (`typeallname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of typeall
-- ----------------------------
INSERT INTO `typeall` VALUES ('3', '电脑平板');
INSERT INTO `typeall` VALUES ('2', '服饰箱包');
INSERT INTO `typeall` VALUES ('1', '手机数码');

-- ----------------------------
-- Table structure for `typedetail`
-- ----------------------------
DROP TABLE IF EXISTS `typedetail`;
CREATE TABLE `typedetail` (
  `pdid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `typedetailname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pdid`),
  KEY `typeallname` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of typedetail
-- ----------------------------
INSERT INTO `typedetail` VALUES ('1', '1', '手机');
INSERT INTO `typedetail` VALUES ('2', '1', '单反');
INSERT INTO `typedetail` VALUES ('3', '1', '智能手表');
INSERT INTO `typedetail` VALUES ('4', '2', '男装');
INSERT INTO `typedetail` VALUES ('5', '2', '女装');
INSERT INTO `typedetail` VALUES ('6', '2', '箱包');
INSERT INTO `typedetail` VALUES ('7', '3', '平板电脑');
INSERT INTO `typedetail` VALUES ('8', '3', '笔记本电脑');
INSERT INTO `typedetail` VALUES ('9', '3', '电玩');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
