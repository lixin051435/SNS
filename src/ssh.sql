/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : ssh

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-04-29 12:57:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_album
-- ----------------------------
DROP TABLE IF EXISTS `t_album`;
CREATE TABLE `t_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9FF8BAE4F7D687F8` (`user_id`),
  CONSTRAINT `FK9FF8BAE4F7D687F8` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_album
-- ----------------------------
INSERT INTO `t_album` VALUES ('1', 'test1', '4');
INSERT INTO `t_album` VALUES ('2', '相册1', '4');
INSERT INTO `t_album` VALUES ('3', '相册2', '4');
INSERT INTO `t_album` VALUES ('4', '测试', '4');
INSERT INTO `t_album` VALUES ('5', '测试', '1');
INSERT INTO `t_album` VALUES ('6', '相册', '4');
INSERT INTO `t_album` VALUES ('10', '3333', '4');

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `descp` longtext,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCB5B108DF7D687F8` (`user_id`),
  CONSTRAINT `FKCB5B108DF7D687F8` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('1', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试a', '测试测试测试测试测试', '测试测试测试测试测试', null);
INSERT INTO `t_blog` VALUES ('2', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试', '测试测试测试测试测试', null);
INSERT INTO `t_blog` VALUES ('4', '日志测试日志测试日志测试', '日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试aaaaaaaa', '日志测试日志测试日志测试', '日志测试日志测试日志测试日志测试', null);
INSERT INTO `t_blog` VALUES ('5', '会员a日志测试会员a日志测试', '会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试asdfasdfasdfasdfasdfsdf', '会员a日志测试会员a日志测试', '会员a日志测试会员a日志测试', null);
INSERT INTO `t_blog` VALUES ('6', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试', '测试测试测试测试测试', null);
INSERT INTO `t_blog` VALUES ('7', '日志测试日志测试日志测试日志测试', '日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试日志测试aaa', '日志测试日志测试日志测试日志测试', '日志测试日志测试日志测试日志测试', null);
INSERT INTO `t_blog` VALUES ('8', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试aaa', '测试测试测试测试测试', '测试测试测试测试测试', null);
INSERT INTO `t_blog` VALUES ('11', '阿斯蒂芬', '阿斯蒂芬阿斯蒂芬dddddddddddd', '阿斯蒂芬', '阿斯蒂芬', null);
INSERT INTO `t_blog` VALUES ('12', 'asdf', 'asdfsssssssssssssssssssssssssssss', 'asdf', 'asdf', null);
INSERT INTO `t_blog` VALUES ('14', '会员a日志测试会员a日志测试', '会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试会员a日志测试', '会员a日志测试会员a日志测试', '会员a日志测试会员a日志测试', '4');
INSERT INTO `t_blog` VALUES ('16', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试', '测试测试测试测试测试', '5');
INSERT INTO `t_blog` VALUES ('18', '测试测试测试测试测试', '编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑', '测试测试测试测试测试', '测试测试测试测试测试', '4');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF437E194FF4D6498` (`blog_id`),
  KEY `FKF437E194BB2A9445` (`friend_id`),
  CONSTRAINT `FKF437E194BB2A9445` FOREIGN KEY (`friend_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKF437E194FF4D6498` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '5', '4', '写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错', '写的不错');
INSERT INTO `t_comment` VALUES ('2', '5', '4', '写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错', '写的不错');
INSERT INTO `t_comment` VALUES ('3', '14', '4', 'haihaihaihaihaihaihaihaihaihaihaihai', 'hai');
INSERT INTO `t_comment` VALUES ('4', '14', '4', '写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊写的不错啊', '写的不错啊');
INSERT INTO `t_comment` VALUES ('5', '14', '4', '评论试试评论试试评论试试', '评论试试');
INSERT INTO `t_comment` VALUES ('6', '16', '4', '松岛枫', '松岛枫');
INSERT INTO `t_comment` VALUES ('7', '14', '4', '评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个评论一个', '评论一个');
INSERT INTO `t_comment` VALUES ('8', '18', '4', '写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错写的不错', '写的不错');
INSERT INTO `t_comment` VALUES ('9', '14', '4', '21212', '212121');
INSERT INTO `t_comment` VALUES ('10', '14', '4', '2222222222', '22222222222');
INSERT INTO `t_comment` VALUES ('11', '14', '4', '12111111111', '22222222222');
INSERT INTO `t_comment` VALUES ('12', '14', '4', '555555', '555555');

-- ----------------------------
-- Table structure for t_friend
-- ----------------------------
DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend` (
  `friendId` int(11) NOT NULL,
  `friend` int(11) DEFAULT NULL,
  `friendIndex` int(11) NOT NULL,
  PRIMARY KEY (`friendId`,`friendIndex`),
  KEY `FK67FE5CC9ABC98222` (`friendId`),
  CONSTRAINT `FK67FE5CC9ABC98222` FOREIGN KEY (`friendId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_friend
-- ----------------------------
INSERT INTO `t_friend` VALUES ('2', '4', '0');
INSERT INTO `t_friend` VALUES ('2', '5', '1');
INSERT INTO `t_friend` VALUES ('3', '4', '0');
INSERT INTO `t_friend` VALUES ('4', '5', '0');
INSERT INTO `t_friend` VALUES ('4', '6', '1');
INSERT INTO `t_friend` VALUES ('4', '4', '2');
INSERT INTO `t_friend` VALUES ('4', '1', '3');
INSERT INTO `t_friend` VALUES ('4', '3', '4');
INSERT INTO `t_friend` VALUES ('4', '7', '5');
INSERT INTO `t_friend` VALUES ('4', '8', '6');
INSERT INTO `t_friend` VALUES ('4', '9', '7');
INSERT INTO `t_friend` VALUES ('4', '10', '8');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF47CF33CF7D687F8` (`user_id`),
  KEY `FKF47CF33CBB2A9445` (`friend_id`),
  CONSTRAINT `FKF47CF33CBB2A9445` FOREIGN KEY (`friend_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKF47CF33CF7D687F8` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '2', '4', 'sdfsdf');
INSERT INTO `t_message` VALUES ('2', '2', '4', 'dfg');
INSERT INTO `t_message` VALUES ('3', '3', '4', 'aaa');
INSERT INTO `t_message` VALUES ('4', '3', '4', '写的不错');
INSERT INTO `t_message` VALUES ('5', '3', '4', '写的不错');
INSERT INTO `t_message` VALUES ('6', '4', '4', 'hai');
INSERT INTO `t_message` VALUES ('7', '4', '4', 'haihaihaihaihaihaihaihaihaihai');
INSERT INTO `t_message` VALUES ('8', '4', '4', 'hai');
INSERT INTO `t_message` VALUES ('9', '3', '4', '昨天怎么没来');

-- ----------------------------
-- Table structure for t_photo
-- ----------------------------
DROP TABLE IF EXISTS `t_photo`;
CREATE TABLE `t_photo` (
  `albumId` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `photoIndex` int(11) NOT NULL,
  PRIMARY KEY (`albumId`,`photoIndex`),
  KEY `FKA0CA7AA7DADE3FDB` (`albumId`),
  CONSTRAINT `FKA0CA7AA7DADE3FDB` FOREIGN KEY (`albumId`) REFERENCES `t_album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_photo
-- ----------------------------
INSERT INTO `t_photo` VALUES ('1', 'source/01.jpg', '0');
INSERT INTO `t_photo` VALUES ('1', 'source/02.jpg', '1');
INSERT INTO `t_photo` VALUES ('1', 'source/bl2.png', '2');
INSERT INTO `t_photo` VALUES ('1', 'source/s2.png', '3');
INSERT INTO `t_photo` VALUES ('1', 'source/bl9.png', '4');
INSERT INTO `t_photo` VALUES ('1', 'source/AB40379D3AFD2A8EED111D138BE03C93.png', '5');
INSERT INTO `t_photo` VALUES ('1', 'source/CA05E8CFF55DBDE74BB54E6156ECA2EE.png', '6');
INSERT INTO `t_photo` VALUES ('2', 'source/AB40379D3AFD2A8EED111D138BE03C93.png', '0');
INSERT INTO `t_photo` VALUES ('5', 'source/bl8.png', '0');
INSERT INTO `t_photo` VALUES ('5', 'source/s2.png', '1');
INSERT INTO `t_photo` VALUES ('6', 'source/bl8.png', '0');

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `descp` longtext,
  `place` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES ('1', '洛阳有什么着名糕点吗', '餐饮', '阳老八件\r\n　　洛阳老八件是洛阳最富特色的古典小吃之一，老八件主要指的是：\r\n　　一：双麻酥：面上沾有芝麻，口感酥，淡甜，最关键的是不腻，入口即化，堪称美食，历来是点心中上品，食客们的爱物。\r\n　　二：芝麻酥：其特点是口感酥香，营养丰富，在传统工艺的基础上精心制作，使芝麻更加香酥可口。\r\n　　三：甜咸饼：其色香鲜泽，形如螺纹，甜咸适口，芝麻的香味加上汕和面混合的酥酥的感觉给您带来说不出的美味。\r\n　　四：果仁酥：其特点口感酥香，营养丰富，在传统的工艺的基础上精心制作，使果仁酥更加香酥可口。\r\n　　五：蛋卷酥：色泽金黄，香甜酥脆，入口即化，营养丰富，浓郁的鸡蛋香味，配合椰蓉的点缀，别具风味。\r\n　　六：花生酥：口感酥香，营养丰富，在传统的工艺的基础上精心制作，使花生酥更加可口。\r\n　　七：金麻枣：皮酥而脆，质嫩面甜，富有营养，独具风味。\r\n　　八：蛋黄酥：色泽金黄，口感酥香，味道纯正，蛋香浓郁，营养丰富！\r\n　　作为传统的美食小吃，如果有到洛阳，一定不要忘记给家人朋友带上几盒哦！物有所值！\r\n', '洛阳龙门石窟', null, null);
INSERT INTO `t_question` VALUES ('2', '洛阳龙门石窟景点内有提供餐饮的地方吗', '餐饮', '一般的景点都有提供餐饮的地方，不过景区内的东西都比较贵，如果想要省钱，可以先自备一些方便食品。\r\n　　龙门石窟附近有什么饭店吗？\r\n　　品味居\r\n　　管记水席老店\r\n　　老李家驴肉汤\r\n　　雅香楼\r\n　　老洛阳面馆\r\n　　神楚大酒店\r\n　　马杰山牛肉汤馆\r\n　　龙门石窟附近的农家酒店怎么样？\r\n　　那一片的农家都不能去，什么野鸡野兔的，贵，不实惠\r\n　　龙门石窟周边有吃饭的地方吗？\r\n　　品味居\r\n　　\r\n　　管记水席老店\r\n　　\r\n　　老李家驴肉汤\r\n　　\r\n　　雅香楼\r\n　　\r\n　　老洛阳面馆\r\n　　\r\n　　神楚大酒店\r\n　　\r\n　　马杰山牛肉汤馆\r\n', '洛阳龙门石窟', null, null);
INSERT INTO `t_question` VALUES ('3', '洛阳市有什么好吃的吗', '餐饮', '有超级好吃的农家饭，那里的木耳是中央用来招待外宾，还有竹筒饭什么的。在洛阳主要还是吃的东西便宜。有牛肉汤（东关，老城，西宫），半生缘酱肉（只是发音而已，现在没有这种字），水席（老城“真不同”最好），混沌（马蹄角老城店），榆树园张家烧鸡。早上的棕糕。到洛阳一定要饱饱口福。', '洛阳龙门石窟', null, null);
INSERT INTO `t_question` VALUES ('4', 'asdf', '交通', 'asdf', '洛阳龙门石窟', null, null);
INSERT INTO `t_question` VALUES ('5', 'asdf', '餐饮', 'asdf', '洛阳龙门石窟', null, null);
INSERT INTO `t_question` VALUES ('6', 'fdgsdfg', '交通', 'adfgdgfhjfgh', '中原大佛', null, null);
INSERT INTO `t_question` VALUES ('7', '阿斯蒂芬', '景点门票', '阿斯蒂芬', '洛阳龙门石窟', null, null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `descp` longtext,
  `email` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'aaa', 'aaa', 'aaa', 'source/bl9.png', 'aaa', 'aaa', '0', 'aaa');
INSERT INTO `t_user` VALUES ('2', 'asdf', 'asdf', 'asdf', 'source/user4.png', 'asdf', 'asdf', '111', 'asdf');
INSERT INTO `t_user` VALUES ('3', 'asdf', 'asdf', 'asdf', 'source/user12.png', 'asdf', 'asdf', '111', 'asdf');
INSERT INTO `t_user` VALUES ('4', '海淀黄庄', 'a', 'a', 'source/s2.png', 'a', 'a', '0', 'bbbbb');
INSERT INTO `t_user` VALUES ('5', 'b', 'b', 'b', 'source/bl4.png', 'b', 'b', '1', 'b');
INSERT INTO `t_user` VALUES ('6', 'c', 'c', 'c', 'source/bl6.png', 'c', 'c', '1', 'c');
INSERT INTO `t_user` VALUES ('7', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `t_user` VALUES ('8', '2', '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `t_user` VALUES ('9', '3', '3', '3', null, '3', '3', '3', '3');
INSERT INTO `t_user` VALUES ('10', '4', '4', '4', '4', '4', '4', '4', '4');
