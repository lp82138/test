/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-04-01 19:22:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `blogId` int(20) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `subTitle` varchar(100) DEFAULT NULL,
  `text` varchar(5000) DEFAULT NULL,
  `imageUrl` varchar(50) DEFAULT NULL,
  `imageUrlCopy` varchar(50) DEFAULT NULL,
  `userId` int(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`blogId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('13', '中国游客在泰遇强制消费 交涉时泰国导游叫嚣单挑', '原标题：泰国游遇强制消费 游客抵制遭刁难', '<p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">重庆商报-上游财经首席记者 郑友</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">好不容易请个年假，来趟出国游，是件赏心悦目的事情。然而，前天上午，一群游客却来到了市旅游局监察执法总队投诉，要求维权。原来，他们在3月中下旬的一次泰国游中，遭到了导游方面的“强制消费”。为此，双方闹得很不愉快。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">清明小长假来临，出境出国游，成为不少市民的选择。昨日，记者采访中，旅行社方面给出的说法是，即使游客签订有自愿购物补充协议，但也必须得遵循游客意愿的原则。</p><p><br/></p>', 'image', null, '1', '2017-04-01 17:05:21');
INSERT INTO `blog` VALUES ('14', '日本推\"离岛保护\"应对中国 不断强化军力部署', '4月1日，日本将正式实施《有人离岛保护相关特别措施法》。按照日媒说法，实施该法的目的是通过加强离岛活动、增加人口，应对“海洋活动日益活跃的邻国”', '<p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">为了搞“离岛保护”，日本真是不遗余力，向西南岛屿派驻监视部队、组建日本版的“海军陆战队”、大幅增加海保人员和巡逻船数量……许多措施显然主要针对中国。最近一段时间，中日之间的紧张有所缓解，按说喜欢把“中国威胁”挂在嘴边的日本应该消停了，可事实却并非如此。“日本将派最大战舰到南海巡航”“日本新型护卫舰向中国展示实力”……类似的刺激性消息不时从日本冒出，日本右翼究竟要“向前拱”到何处呢？</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">据共同社报道，日本将于4月1日正式实施《有人离岛保护相关特别措施法》，加强对有人离岛的支援和控制。基于该法，日本政府本月中旬已经制定了旨在保护国境附近离岛的基本方针草案，主要内容是推进土地收购，以防止外国船只非法入境等，加强离岛作为活动据点的作用。</p><p><br/></p>', 'image', null, '1', '2017-04-01 17:06:18');
INSERT INTO `blog` VALUES ('15', '日本推\"离岛保护\"应对中国 不断强化军力部署', '“如果尖阁诸岛（即中国钓鱼岛）上有日本人生活的话，或许就不会与中国发生纷争了。”谈到日本当局推动的“有人国境离岛”人口增加计划，日本一名官员这样对英国《金融时报》表示。', '<p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">如果尖阁诸岛（即中国钓鱼岛）上有日本人生活的话，或许就不会与中国发生纷争了。”谈到日本当局推动的“有人国境离岛”人口增加计划，日本一名官员这样对英国《金融时报》表示。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">4月1日，日本将正式实施《有人离岛保护相关特别措施法》。按照日媒说法，实施该法的目的是通过加强离岛活动、增加人口，应对“海洋活动日益活跃的邻国”。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">为了搞“离岛保护”，日本真是不遗余力，向西南岛屿派驻监视部队、组建日本版的“海军陆战队”、大幅增加海保人员和巡逻船数量……许多措施显然主要针对中国。最近一段时间，中日之间的紧张有所缓解，按说喜欢把“中国威胁”挂在嘴边的日本应该消停了，可事实却并非如此。“日本将派最大战舰到南海巡航”“日本新型护卫舰向中国展示实力”……类似的刺激性消息不时从日本冒出，日本右翼究竟要“向前拱”到何处呢？</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">据共同社报道，日本将于4月1日正式实施《有人离岛保护相关特别措施法》，加强对有人离岛的支援和控制。基于该法，日本政府本月中旬已经制定了旨在保护国境附近离岛的基本方针草案，主要内容是推进土地收购，以防止外国船只非法入境等，加强离岛作为活动据点的作用。</p><p><br/></p>', 'image', null, '2', '2017-04-01 17:25:34');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'N', '1234', '0');
INSERT INTO `user` VALUES ('2', '1234', 'N', 'admin', '0');
