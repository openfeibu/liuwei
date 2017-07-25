/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : fine

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-25 15:12:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fn_1_block
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_block`;
CREATE TABLE `fn_1_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '资料块名称',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='资料块表';

-- ----------------------------
-- Records of fn_1_block
-- ----------------------------
INSERT INTO `fn_1_block` VALUES ('1', '首页文本公告', '欢迎来到六为防水！');
INSERT INTO `fn_1_block` VALUES ('7', '公司名称', '六为防水有限公司');
INSERT INTO `fn_1_block` VALUES ('3', '友情链接', 'http://www.finecms.net|公益版论坛\r\nhttp://www.dayrui.com|天睿程序设计');
INSERT INTO `fn_1_block` VALUES ('4', '首页轮播图', '{i-4}:\"{\\\"file\\\":[\\\"37\\\",\\\"38\\\",\\\"39\\\"],\\\"title\\\":[\\\"banner_03\\\",\\\"banner_06\\\",\\\"banner_08\\\"]}\"');
INSERT INTO `fn_1_block` VALUES ('5', '底部文案', '邮箱：123456789@mail.com\r\n地址：广州市广州大道北就溪中路20号418房\r\nQQ：123456789\r\n联系方式：010-123456789\r\n电话：010-1234567');
INSERT INTO `fn_1_block` VALUES ('6', '公司简介', '广州市六为防水工程有限公司主营防水，防潮材料等。公司秉承“为顾客服务，勇攀高峰”的经营理念，坚持“诚实守信”的原则为广大客户提供优质的服务。');
INSERT INTO `fn_1_block` VALUES ('8', '公司LOGO', '{i-3}:31');
INSERT INTO `fn_1_block` VALUES ('9', '公司LOGO2', '{i-3}:44');
INSERT INTO `fn_1_block` VALUES ('10', '公司LOGO3', '{i-3}:45');

-- ----------------------------
-- Table structure for fn_1_category
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_category`;
CREATE TABLE `fn_1_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tid` tinyint(1) NOT NULL COMMENT '栏目类型，0单页，1模块，2外链',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `mid` varchar(20) NOT NULL COMMENT '模块目录',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `domain` varchar(50) NOT NULL COMMENT '绑定域名',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `pcatpost` tinyint(1) NOT NULL COMMENT '是否父栏目发布',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `content` mediumtext NOT NULL COMMENT '单页内容',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `tid` (`tid`),
  KEY `show` (`show`),
  KEY `dirname` (`dirname`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of fn_1_category
-- ----------------------------
INSERT INTO `fn_1_category` VALUES ('1', '1', '0', 'news', '0', '走进六为', '', 'i', 'into', '', '1', '1,7,25,43,44', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\\u4e1a\\u754c\\u65b0\\u95fb\",\"list_description\":\"\\u4e1a\\u754c\\u65b0\\u95fb\\u63cf\\u8ff0\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_del.html\",\"category\":\"pro_del.html\",\"list\":\"pro_del.html\",\"search\":\"search.html\",\"page\":\"pro_del.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '2');
INSERT INTO `fn_1_category` VALUES ('2', '1', '0', 'produce', '0', '建造防水', '', 'c', 'case', '', '1', '2,26,47,28,29,30', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_det.html\",\"category\":\"building.html\",\"list\":\"building.html\",\"search\":\"pro_search.html\",\"page\":\"pro_det.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '3');
INSERT INTO `fn_1_category` VALUES ('3', '1', '0', 'news', '0', '案例展示', '', 'c', 'chuangye', '', '1', '3,27,45,32,33,34,35', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '4');
INSERT INTO `fn_1_category` VALUES ('4', '1', '0', 'news', '0', '媒体中心', '', 'n', 'news', '', '1', '4,24,46,36,37,38', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"media.html\",\"list\":\"media.html\",\"search\":\"news_search.html\",\"page\":\"news.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '5');
INSERT INTO `fn_1_category` VALUES ('5', '1', '0', '', '0', '合作伙伴', '', 'p', 'partner', '', '0', '5', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"partners.html\",\"category\":\"partners.html\",\"list\":\"partners.html\",\"search\":\"search.html\",\"page\":\"partners.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '6');
INSERT INTO `fn_1_category` VALUES ('7', '0', '1', '', '0,1', '产品研发', '', 'p', 'prodev', 'into/', '0', '7', '0', '', '1', '<p style=\"text-indent: 2em;\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);\">广州市六为防水工程有限公司是一家实施一体化及相关产业多元化战略， 围绕建筑产业链，整合建材产业资源，集研发、生产、销售、施 工于一体的大型专业防水公司。公司现拥有现代化的生产基地、先进的生产设备和尖端的高新产品, 可承接防水、堵漏、防腐保温、除霉、结构 防渗补强、装饰装修等大型工程设计及施工。</span></p><p><img id=\"072f02a41c2835c7ffd806c3bcc714f5_img_20\" src=\"/uploadfile/ueditor/image/20170720/1500516225615784.png\" title=\"1500516225615784.png\" alt=\"dev-img.png\" width=\"964\" height=\"126\" style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 32px; width: 964px; height: 126px;\"/></p><p style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 40px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">1.建筑防水工程类：地下室防水；屋面防水；卫生间防水；隧道；涵洞；堤坝；桥梁；海岸结构； 水塔和蓄水池；电梯井；混凝土墙体及地坪； 科学实验室；混凝土预制品等。</p><p style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 40px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">2.各类建筑物的防水堵漏、抗渗防潮、防腐保温施工的承接，如：地下室人防、 新老屋面、卫生间浴室厨房、内外墙面、游泳池水池、电缆沟矿 井、设备房、水下循环水道，饮水工程环保防水等。<br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 40px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">3.各种建筑渗漏的修缮处理：地下室、屋面（彩钢瓦屋面）、电梯井、基坑、卫生间、 墙面、水箱、水塔、浴池等。</p><p style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 40px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">4.各类建筑物裂缝处理：施工缝、连接缝、楼面裂缝、止水带、沉降缝等技术服务。</p><p style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 80px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">5.国家粮库、军用坑道、污水处理、大坝维修、城市水管抢修等。</p>', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_del.html\",\"category\":\"pro_del.html\",\"list\":\"pro_del.html\",\"search\":\"search.html\",\"page\":\"pro_del.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `fn_1_category` VALUES ('27', '1', '3', 'news', '0,3', '客户案例', '', 'k', 'kehuanli', 'chuangye/', '1', '27,45,32,33,34,35', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `fn_1_category` VALUES ('24', '1', '4', 'news', '0,4', '新闻动态', '', 'x', 'xwdt', 'news/', '1', '24,46,36,37,38', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"media.html\",\"list\":\"media.html\",\"search\":\"news_search.html\",\"page\":\"news.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `fn_1_category` VALUES ('25', '1', '1', 'news', '0,1', '应用技术', '', 'y', 'yyjs', 'into/', '0', '25', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"pro_del.html\",\"list\":\"pro_del.html\",\"search\":\"search.html\",\"page\":\"news.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `fn_1_category` VALUES ('26', '1', '2', 'produce', '0,2', '产品中心', '', 'c', 'cpzx', 'case/', '1', '26,47,28,29,30', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_det.html\",\"category\":\"building.html\",\"list\":\"building.html\",\"search\":\"building.html\",\"page\":\"pro_det.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `fn_1_category` VALUES ('18', '1', '0', 'news', '0', '关于六为', '', 'a', 'about', '', '0', '18', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"getchild\":0,\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_del.html\",\"category\":\"pro_del.html\",\"list\":\"pro_del.html\",\"search\":\"search.html\",\"page\":\"pro_del.html\"},\"admin\":[],\"member\":[],\"html\":0}', '7');
INSERT INTO `fn_1_category` VALUES ('28', '1', '26', 'produce', '0,2,26', '产品类型1', '', 'c', 'cplx1', 'case/cpzx/', '0', '28', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_det.html\",\"category\":\"building.html\",\"list\":\"building.html\",\"search\":\"building.html\",\"page\":\"pro_det.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '2');
INSERT INTO `fn_1_category` VALUES ('29', '1', '26', 'produce', '0,2,26', '产品类型2', '', 'c', 'cplx2', 'case/cpzx/', '0', '29', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_det.html\",\"category\":\"building.html\",\"list\":\"building.html\",\"search\":\"building.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '3');
INSERT INTO `fn_1_category` VALUES ('30', '1', '26', 'produce', '0,2,26', '产品类型3', '', 'c', 'cplx3', 'case/cpzx/', '0', '30', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_det.html\",\"category\":\"building.html\",\"list\":\"building.html\",\"search\":\"building.html\",\"page\":\"pro_det.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '4');
INSERT INTO `fn_1_category` VALUES ('43', '1', '1', 'news', '0,1', '服务网络', '', '', 'fwwl', 'into/', '0', '43', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\\u4e1a\\u754c\\u65b0\\u95fb\",\"list_description\":\"\\u4e1a\\u754c\\u65b0\\u95fb\\u63cf\\u8ff0\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_del.html\",\"category\":\"pro_del.html\",\"list\":\"pro_del.html\",\"search\":\"search.html\",\"page\":\"pro_del.html\"}}', '0');
INSERT INTO `fn_1_category` VALUES ('44', '1', '1', 'news', '0,1', '人才招聘', '', '', 'rczp', 'into/', '0', '44', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\\u4e1a\\u754c\\u65b0\\u95fb\",\"list_description\":\"\\u4e1a\\u754c\\u65b0\\u95fb\\u63cf\\u8ff0\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_del.html\",\"category\":\"pro_del.html\",\"list\":\"pro_del.html\",\"search\":\"search.html\",\"page\":\"pro_del.html\"}}', '0');
INSERT INTO `fn_1_category` VALUES ('32', '1', '27', 'news', '0,3,27', '地铁机场', '', 'd', 'ditiejichang', 'chuangye/kehuanli/', '0', '32', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '2');
INSERT INTO `fn_1_category` VALUES ('33', '1', '27', 'news', '0,3,27', '市政交通', '', 's', 'szjt', 'chuangye/kehuanli/', '0', '33', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '3');
INSERT INTO `fn_1_category` VALUES ('34', '1', '27', 'news', '0,3,27', '高速公路', '', 'g', 'gaosugonglu', 'chuangye/kehuanli/', '0', '34', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '4');
INSERT INTO `fn_1_category` VALUES ('35', '1', '27', 'news', '0,3,27', '民用建筑', '', 'm', 'myjz', 'chuangye/kehuanli/', '0', '35', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '5');
INSERT INTO `fn_1_category` VALUES ('46', '1', '24', 'news', '0,4,24', '全部', '', '', 'quanbu1', 'news/xwdt/', '0', '46', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"media.html\",\"list\":\"media.html\",\"search\":\"news_search.html\",\"page\":\"news.html\"}}', '1');
INSERT INTO `fn_1_category` VALUES ('36', '1', '24', 'news', '0,4,24', '公司新闻', '', 'g', 'gongsixinwen', 'news/xwdt/', '0', '36', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"media.html\",\"list\":\"media.html\",\"search\":\"news_search.html\",\"page\":\"news.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '2');
INSERT INTO `fn_1_category` VALUES ('37', '1', '24', 'news', '0,4,24', '行业新闻', '', 'x', 'xingyexinwen', 'news/xwdt/', '0', '37', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"media.html\",\"list\":\"media.html\",\"search\":\"news_search.html\",\"page\":\"news.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '3');
INSERT INTO `fn_1_category` VALUES ('38', '1', '24', 'news', '0,4,24', '公告通知', '', 'g', 'ggtz', 'news/xwdt/', '0', '38', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"media.html\",\"list\":\"media.html\",\"search\":\"news_search.html\",\"page\":\"news.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '4');
INSERT INTO `fn_1_category` VALUES ('47', '1', '26', 'produce', '0,2,26', '全部', '', '', 'quanbu2', 'case/cpzx/', '0', '47', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"pro_det.html\",\"category\":\"building.html\",\"list\":\"building.html\",\"search\":\"building.html\",\"page\":\"pro_det.html\"}}', '1');
INSERT INTO `fn_1_category` VALUES ('40', '0', '0', '', '0', '首页', '', 'i', 'index', '', '0', '40', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"index.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '1');
INSERT INTO `fn_1_category` VALUES ('45', '1', '27', 'news', '0,3,27', '全部', '', '', 'quanbu', 'chuangye/kehuanli/', '0', '45', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news.html\",\"category\":\"case_show.html\",\"list\":\"case_show.html\",\"search\":\"search.html\",\"page\":\"page.html\"}}', '1');

-- ----------------------------
-- Table structure for fn_1_form
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_form`;
CREATE TABLE `fn_1_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='表单模型表';

-- ----------------------------
-- Records of fn_1_form
-- ----------------------------

-- ----------------------------
-- Table structure for fn_1_index
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_index`;
CREATE TABLE `fn_1_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `mid` varchar(20) NOT NULL COMMENT '模块目录',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of fn_1_index
-- ----------------------------
INSERT INTO `fn_1_index` VALUES ('1', '1', 'news', '7', '9', '1491960567');
INSERT INTO `fn_1_index` VALUES ('2', '1', 'news', '7', '9', '1491960680');
INSERT INTO `fn_1_index` VALUES ('3', '1', 'news', '7', '9', '1491960733');
INSERT INTO `fn_1_index` VALUES ('4', '1', 'news', '7', '9', '1491960798');
INSERT INTO `fn_1_index` VALUES ('5', '1', 'news', '7', '9', '1491961512');
INSERT INTO `fn_1_index` VALUES ('6', '1', 'news', '7', '9', '1491961527');
INSERT INTO `fn_1_index` VALUES ('7', '1', 'news', '7', '9', '1491961540');
INSERT INTO `fn_1_index` VALUES ('8', '1', 'news', '7', '9', '1491961552');
INSERT INTO `fn_1_index` VALUES ('9', '1', 'news', '7', '9', '1491961566');
INSERT INTO `fn_1_index` VALUES ('10', '1', 'news', '7', '9', '1491961772');
INSERT INTO `fn_1_index` VALUES ('11', '1', 'news', '8', '9', '1491961788');
INSERT INTO `fn_1_index` VALUES ('12', '1', 'news', '8', '9', '1491961810');
INSERT INTO `fn_1_index` VALUES ('13', '1', 'news', '8', '9', '1491961819');
INSERT INTO `fn_1_index` VALUES ('14', '1', 'news', '8', '9', '1491961830');
INSERT INTO `fn_1_index` VALUES ('15', '1', 'news', '8', '9', '1491961842');
INSERT INTO `fn_1_index` VALUES ('16', '1', 'news', '8', '9', '1491961853');
INSERT INTO `fn_1_index` VALUES ('17', '1', 'news', '8', '9', '1491961865');
INSERT INTO `fn_1_index` VALUES ('18', '1', 'news', '8', '9', '1491961874');
INSERT INTO `fn_1_index` VALUES ('19', '1', 'news', '8', '9', '1491961886');
INSERT INTO `fn_1_index` VALUES ('20', '1', 'news', '8', '9', '1491961901');
INSERT INTO `fn_1_index` VALUES ('21', '1', 'news', '9', '9', '1491961919');
INSERT INTO `fn_1_index` VALUES ('22', '1', 'news', '9', '9', '1491961968');
INSERT INTO `fn_1_index` VALUES ('23', '1', 'news', '9', '9', '1491961979');
INSERT INTO `fn_1_index` VALUES ('24', '1', 'news', '9', '9', '1491961989');
INSERT INTO `fn_1_index` VALUES ('25', '1', 'news', '9', '9', '1491962001');
INSERT INTO `fn_1_index` VALUES ('26', '1', 'news', '9', '9', '1491962013');
INSERT INTO `fn_1_index` VALUES ('27', '1', 'news', '9', '9', '1491962025');
INSERT INTO `fn_1_index` VALUES ('28', '1', 'news', '9', '9', '1491962036');
INSERT INTO `fn_1_index` VALUES ('29', '1', 'news', '9', '9', '1491962048');
INSERT INTO `fn_1_index` VALUES ('30', '1', 'news', '9', '9', '1491962065');
INSERT INTO `fn_1_index` VALUES ('31', '1', 'news', '2', '9', '1491962157');
INSERT INTO `fn_1_index` VALUES ('32', '1', 'news', '2', '9', '1491962218');
INSERT INTO `fn_1_index` VALUES ('33', '1', 'news', '2', '9', '1491962231');
INSERT INTO `fn_1_index` VALUES ('34', '1', 'news', '2', '9', '1491962243');
INSERT INTO `fn_1_index` VALUES ('35', '1', 'news', '2', '9', '1491962255');
INSERT INTO `fn_1_index` VALUES ('36', '1', 'news', '2', '9', '1491962288');
INSERT INTO `fn_1_index` VALUES ('37', '1', 'news', '2', '9', '1491962297');
INSERT INTO `fn_1_index` VALUES ('38', '1', 'news', '2', '9', '1491962307');
INSERT INTO `fn_1_index` VALUES ('39', '1', 'news', '2', '9', '1491962318');
INSERT INTO `fn_1_index` VALUES ('40', '1', 'news', '2', '9', '1491962330');
INSERT INTO `fn_1_index` VALUES ('41', '1', 'news', '10', '9', '1491962345');
INSERT INTO `fn_1_index` VALUES ('42', '1', 'news', '10', '9', '1491962366');
INSERT INTO `fn_1_index` VALUES ('43', '1', 'news', '10', '9', '1491962376');
INSERT INTO `fn_1_index` VALUES ('44', '1', 'news', '10', '9', '1491962387');
INSERT INTO `fn_1_index` VALUES ('45', '1', 'news', '10', '9', '1491962400');
INSERT INTO `fn_1_index` VALUES ('46', '1', 'news', '10', '9', '1491962414');
INSERT INTO `fn_1_index` VALUES ('47', '1', 'news', '10', '9', '1491962433');
INSERT INTO `fn_1_index` VALUES ('48', '1', 'news', '10', '9', '1491962449');
INSERT INTO `fn_1_index` VALUES ('49', '1', 'news', '10', '9', '1491962464');
INSERT INTO `fn_1_index` VALUES ('50', '1', 'news', '10', '9', '1491962491');
INSERT INTO `fn_1_index` VALUES ('51', '1', 'news', '11', '9', '1491962512');
INSERT INTO `fn_1_index` VALUES ('52', '1', 'news', '11', '9', '1491962537');
INSERT INTO `fn_1_index` VALUES ('53', '1', 'news', '11', '9', '1491962548');
INSERT INTO `fn_1_index` VALUES ('54', '1', 'news', '11', '9', '1491962560');
INSERT INTO `fn_1_index` VALUES ('55', '1', 'news', '11', '9', '1491962573');
INSERT INTO `fn_1_index` VALUES ('56', '1', 'news', '11', '9', '1491962585');
INSERT INTO `fn_1_index` VALUES ('57', '1', 'news', '11', '9', '1491962601');
INSERT INTO `fn_1_index` VALUES ('58', '1', 'news', '11', '9', '1491962613');
INSERT INTO `fn_1_index` VALUES ('59', '1', 'news', '11', '9', '1491962627');
INSERT INTO `fn_1_index` VALUES ('60', '1', 'news', '11', '9', '1491962640');
INSERT INTO `fn_1_index` VALUES ('61', '1', 'news', '12', '9', '1491962660');
INSERT INTO `fn_1_index` VALUES ('62', '1', 'news', '12', '9', '1491962681');
INSERT INTO `fn_1_index` VALUES ('63', '1', 'news', '12', '9', '1491962694');
INSERT INTO `fn_1_index` VALUES ('64', '1', 'news', '12', '9', '1491962703');
INSERT INTO `fn_1_index` VALUES ('65', '1', 'news', '12', '9', '1491962715');
INSERT INTO `fn_1_index` VALUES ('66', '1', 'news', '12', '9', '1491962731');
INSERT INTO `fn_1_index` VALUES ('67', '1', 'news', '12', '9', '1491962742');
INSERT INTO `fn_1_index` VALUES ('68', '1', 'news', '12', '9', '1491962758');
INSERT INTO `fn_1_index` VALUES ('69', '1', 'news', '12', '9', '1491962768');
INSERT INTO `fn_1_index` VALUES ('70', '1', 'news', '12', '9', '1491962780');
INSERT INTO `fn_1_index` VALUES ('71', '1', 'news', '13', '9', '1491962798');
INSERT INTO `fn_1_index` VALUES ('72', '1', 'news', '13', '9', '1491962819');
INSERT INTO `fn_1_index` VALUES ('73', '1', 'news', '13', '9', '1491962830');
INSERT INTO `fn_1_index` VALUES ('74', '1', 'news', '13', '9', '1491962843');
INSERT INTO `fn_1_index` VALUES ('75', '1', 'news', '13', '9', '1491962852');
INSERT INTO `fn_1_index` VALUES ('76', '1', 'news', '13', '9', '1491962861');
INSERT INTO `fn_1_index` VALUES ('77', '1', 'news', '13', '9', '1491962871');
INSERT INTO `fn_1_index` VALUES ('78', '1', 'news', '13', '9', '1491962881');
INSERT INTO `fn_1_index` VALUES ('79', '1', 'news', '13', '9', '1491962890');
INSERT INTO `fn_1_index` VALUES ('80', '1', 'news', '13', '9', '1491962902');
INSERT INTO `fn_1_index` VALUES ('81', '1', 'news', '14', '9', '1491962962');
INSERT INTO `fn_1_index` VALUES ('82', '1', 'news', '14', '9', '1491962977');
INSERT INTO `fn_1_index` VALUES ('83', '1', 'news', '14', '9', '1491962988');
INSERT INTO `fn_1_index` VALUES ('84', '1', 'news', '14', '9', '1491962997');
INSERT INTO `fn_1_index` VALUES ('85', '1', 'news', '14', '9', '1491963009');
INSERT INTO `fn_1_index` VALUES ('86', '1', 'news', '14', '9', '1491963018');
INSERT INTO `fn_1_index` VALUES ('87', '1', 'news', '14', '9', '1491963028');
INSERT INTO `fn_1_index` VALUES ('88', '1', 'news', '14', '9', '1491963040');
INSERT INTO `fn_1_index` VALUES ('89', '1', 'news', '14', '9', '1491963052');
INSERT INTO `fn_1_index` VALUES ('90', '1', 'news', '14', '9', '1491963164');
INSERT INTO `fn_1_index` VALUES ('91', '1', 'news', '15', '9', '1491963194');
INSERT INTO `fn_1_index` VALUES ('92', '1', 'news', '15', '9', '1491963214');
INSERT INTO `fn_1_index` VALUES ('93', '1', 'news', '15', '9', '1491963225');
INSERT INTO `fn_1_index` VALUES ('94', '1', 'news', '15', '9', '1491963235');
INSERT INTO `fn_1_index` VALUES ('95', '1', 'news', '15', '9', '1491963245');
INSERT INTO `fn_1_index` VALUES ('96', '1', 'news', '15', '9', '1491963255');
INSERT INTO `fn_1_index` VALUES ('97', '1', 'news', '15', '9', '1491963269');
INSERT INTO `fn_1_index` VALUES ('98', '1', 'news', '15', '9', '1491963280');
INSERT INTO `fn_1_index` VALUES ('99', '1', 'news', '15', '9', '1491963293');
INSERT INTO `fn_1_index` VALUES ('100', '1', 'news', '15', '9', '1491963305');
INSERT INTO `fn_1_index` VALUES ('101', '1', 'news', '16', '9', '1491963316');
INSERT INTO `fn_1_index` VALUES ('102', '1', 'news', '16', '9', '1491963382');
INSERT INTO `fn_1_index` VALUES ('103', '1', 'news', '16', '9', '1491963396');
INSERT INTO `fn_1_index` VALUES ('104', '1', 'news', '16', '9', '1491963405');
INSERT INTO `fn_1_index` VALUES ('105', '1', 'news', '16', '9', '1491963414');
INSERT INTO `fn_1_index` VALUES ('106', '1', 'news', '16', '9', '1491963427');
INSERT INTO `fn_1_index` VALUES ('107', '1', 'news', '16', '9', '1491963440');
INSERT INTO `fn_1_index` VALUES ('108', '1', 'news', '16', '9', '1491963453');
INSERT INTO `fn_1_index` VALUES ('109', '1', 'news', '16', '9', '1491963567');
INSERT INTO `fn_1_index` VALUES ('110', '1', 'news', '16', '9', '1491963584');
INSERT INTO `fn_1_index` VALUES ('111', '1', 'news', '17', '9', '1491963594');
INSERT INTO `fn_1_index` VALUES ('112', '1', 'news', '17', '9', '1491963620');
INSERT INTO `fn_1_index` VALUES ('113', '1', 'news', '17', '9', '1491963630');
INSERT INTO `fn_1_index` VALUES ('114', '1', 'news', '17', '9', '1491963640');
INSERT INTO `fn_1_index` VALUES ('115', '1', 'news', '17', '9', '1491963649');
INSERT INTO `fn_1_index` VALUES ('116', '1', 'news', '17', '9', '1491963661');
INSERT INTO `fn_1_index` VALUES ('117', '1', 'news', '17', '9', '1491963671');
INSERT INTO `fn_1_index` VALUES ('118', '1', 'news', '17', '9', '1491963682');
INSERT INTO `fn_1_index` VALUES ('119', '1', 'news', '17', '9', '1491963692');
INSERT INTO `fn_1_index` VALUES ('120', '1', 'news', '17', '9', '1491963722');
INSERT INTO `fn_1_index` VALUES ('121', '1', 'news', '2', '9', '1491964073');
INSERT INTO `fn_1_index` VALUES ('122', '1', 'news', '2', '9', '1491964135');
INSERT INTO `fn_1_index` VALUES ('123', '1', 'news', '2', '9', '1491964148');
INSERT INTO `fn_1_index` VALUES ('124', '1', 'news', '2', '9', '1491964156');
INSERT INTO `fn_1_index` VALUES ('125', '1', 'news', '2', '9', '1491964165');
INSERT INTO `fn_1_index` VALUES ('126', '1', 'news', '2', '9', '1491964180');
INSERT INTO `fn_1_index` VALUES ('127', '1', 'news', '7', '9', '1499824408');
INSERT INTO `fn_1_index` VALUES ('128', '1', 'images', '22', '9', '1499846999');
INSERT INTO `fn_1_index` VALUES ('129', '1', 'news', '25', '9', '1499925759');
INSERT INTO `fn_1_index` VALUES ('130', '1', 'news', '25', '9', '1499933322');
INSERT INTO `fn_1_index` VALUES ('131', '1', 'news', '25', '9', '1499933361');
INSERT INTO `fn_1_index` VALUES ('132', '1', 'news', '25', '9', '1499937064');
INSERT INTO `fn_1_index` VALUES ('133', '1', 'news', '7', '9', '1500011981');
INSERT INTO `fn_1_index` VALUES ('134', '1', 'news', '27', '9', '1500012056');
INSERT INTO `fn_1_index` VALUES ('135', '1', 'news', '35', '9', '1500014058');
INSERT INTO `fn_1_index` VALUES ('136', '1', 'news', '34', '9', '1500014077');
INSERT INTO `fn_1_index` VALUES ('137', '1', 'news', '33', '9', '1500014093');
INSERT INTO `fn_1_index` VALUES ('138', '1', 'news', '32', '9', '1500014118');
INSERT INTO `fn_1_index` VALUES ('139', '1', 'news', '24', '9', '1500016129');
INSERT INTO `fn_1_index` VALUES ('140', '1', 'news', '24', '9', '1500016147');
INSERT INTO `fn_1_index` VALUES ('141', '1', 'news', '24', '9', '1500016164');
INSERT INTO `fn_1_index` VALUES ('142', '1', 'news', '24', '9', '1500016177');
INSERT INTO `fn_1_index` VALUES ('143', '1', 'news', '28', '9', '1500254941');
INSERT INTO `fn_1_index` VALUES ('144', '1', 'news', '29', '9', '1500254984');
INSERT INTO `fn_1_index` VALUES ('145', '1', 'news', '30', '9', '1500254999');
INSERT INTO `fn_1_index` VALUES ('146', '1', 'news', '28', '9', '1500255032');
INSERT INTO `fn_1_index` VALUES ('147', '1', 'produce', '28', '9', '1500517455');
INSERT INTO `fn_1_index` VALUES ('148', '1', 'produce', '29', '9', '1500517506');
INSERT INTO `fn_1_index` VALUES ('149', '1', 'produce', '30', '9', '1500517529');
INSERT INTO `fn_1_index` VALUES ('150', '1', 'partners', '31', '9', '1500539800');
INSERT INTO `fn_1_index` VALUES ('151', '1', 'partners', '31', '9', '1500539897');
INSERT INTO `fn_1_index` VALUES ('152', '1', 'partners', '31', '9', '1500540001');
INSERT INTO `fn_1_index` VALUES ('153', '1', 'partners', '31', '9', '1500540048');
INSERT INTO `fn_1_index` VALUES ('154', '1', 'partners', '31', '9', '1500540097');
INSERT INTO `fn_1_index` VALUES ('155', '1', 'news', '37', '9', '1500560352');
INSERT INTO `fn_1_index` VALUES ('156', '1', 'news', '38', '9', '1500560465');
INSERT INTO `fn_1_index` VALUES ('157', '1', 'partners', '5', '9', '1500688786');
INSERT INTO `fn_1_index` VALUES ('158', '1', 'partners', '5', '9', '1500688864');
INSERT INTO `fn_1_index` VALUES ('159', '1', 'partners', '5', '9', '1500688897');
INSERT INTO `fn_1_index` VALUES ('160', '1', 'partners', '5', '9', '1500688934');
INSERT INTO `fn_1_index` VALUES ('161', '1', 'partners', '5', '9', '1500688973');

-- ----------------------------
-- Table structure for fn_1_news
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_news`;
CREATE TABLE `fn_1_news` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL,
  `favorites` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型主表';

-- ----------------------------
-- Records of fn_1_news
-- ----------------------------
INSERT INTO `fn_1_news` VALUES ('1', '7', '专访快看漫画陈安妮：15亿估值下的漫画独角兽2', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '12', '1', 'admin', '9', '/index.php?c=show&id=1', '0', '192.168.0.5', '1491960567', '1491960670', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('2', '7', '为什么说《王者荣耀》就是腾讯游戏业务的“微信”？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=2', '0', '192.168.0.5', '1491960680', '1491960680', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('3', '7', '4年估值80亿，黑马网易云音乐诞生记|特写', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=3', '0', '192.168.0.5', '1491960733', '1491960733', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('4', '7', '新浪网易搜狐前总编辑们接连闯入内容新赛道，谁会笑到最后？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=4', '0', '192.168.0.5', '1491960798', '1491960798', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('5', '7', '孤注一掷”奉佑生 | 映客CEO如何起死回生成直播界霸主', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=5', '0', '192.168.0.5', '1491961512', '1491961512', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('6', '7', '我们收集了300W个公众号，就为了告诉你地方号到底该写什么！', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=6', '0', '192.168.0.5', '1491961527', '1491961527', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('7', '7', '最美搜索 | 微软必应搜索产品体验报告', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=7', '0', '192.168.0.5', '1491961540', '1491961540', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('8', '7', '你可能不知道，柯洁要对阵的AlphaGo，它背后的男人和公司简直要逆天', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=8', '0', '192.168.0.5', '1491961552', '1491961552', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('9', '7', '苹果视频编辑应用Clips上架4天下载量接近100万次', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '8', '1', 'admin', '9', '/index.php?c=show&id=9', '0', '192.168.0.5', '1491961566', '1491961733', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('10', '7', '毕业生卧底代工厂 揭秘iPhone生产工人真实生活', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '2', '1', 'admin', '9', '/index.php?c=show&id=10', '0', '192.168.0.5', '1491961772', '1491961772', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('31', '2', '消息称猫扑正寻求出售，东方网或接手', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=31', '0', '192.168.0.5', '1491962157', '1491962157', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('32', '2', '几分钟了解互联网发生的事！冯大辉无码科技发布第一款产品：Readhub.me', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=32', '0', '192.168.0.5', '1491962218', '1491962218', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('33', '2', '厉害！网易云音乐4年用户数破3亿，完成7.5亿元A轮融资', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=33', '0', '192.168.0.5', '1491962231', '1491962231', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('34', '2', '刘强东斥美联航：服务最差！没有之一！', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=34', '0', '192.168.0.5', '1491962243', '1491962243', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('35', '2', '京东锤子在一起！未来3年独家首发、定制', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=35', '0', '192.168.0.5', '1491962255', '1491962255', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('36', '2', 'AirPods成了史上最难买苹果产品 到底出了什么问题？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=36', '0', '192.168.0.5', '1491962288', '1491962288', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('37', '2', '7年梦幻之作！小米6新品发布会时间确定：4月19日见', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=37', '0', '192.168.0.5', '1491962297', '1491962297', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('38', '2', '王思聪玩游戏自称国服第一鲁班 杨幂直怼是辣鸡', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=38', '0', '192.168.0.5', '1491962307', '1491962307', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('39', '2', '百度厂长28万字《智能革命》上市！AI作序、AR互动', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '1', '1', 'admin', '9', '/index.php?c=show&id=39', '0', '192.168.0.5', '1491962318', '1491962318', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('40', '2', '每月9元免费看！优酷土豆联手中国电信推出酷视卡', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=40', '0', '192.168.0.5', '1491962330', '1491962330', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('139', '24', '测试1', '', '测试1', '测试1', '16', '1', 'admin', '9', '/index.php?c=show&id=139', '0', '127.0.0.1', '1500016129', '1500016129', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('140', '24', '测试1', '', '测试1', '测试1', '1', '1', 'admin', '9', '/index.php?c=show&id=140', '0', '127.0.0.1', '1500016147', '1500016147', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('141', '24', '测试1', '', '测试1', '测试1', '0', '1', 'admin', '9', '/index.php?c=show&id=141', '0', '127.0.0.1', '1500016164', '1500016164', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('142', '24', '测试1', '', '测试1', '测试1', '28', '1', 'admin', '9', '/index.php?c=show&id=142', '0', '127.0.0.1', '1500016177', '1500016177', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('146', '28', '类型1', '', '类型1', '类型1', '0', '1', 'admin', '9', '/index.php?c=show&id=146', '0', '127.0.0.1', '1500255032', '1500255032', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('144', '29', '类型2', '', '类型2', '类型2', '0', '1', 'admin', '9', '/index.php?c=show&id=144', '0', '127.0.0.1', '1500254984', '1500254984', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('145', '30', '类型3', '', '类型3', '类型3', '0', '1', 'admin', '9', '/index.php?c=show&id=145', '0', '127.0.0.1', '1500254999', '1500254999', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('155', '37', '行业新闻', '29', '', '行业新闻', '0', '1', 'admin', '9', '/index.php?c=show&id=155', '0', '127.0.0.1', '1500560352', '1500560352', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('156', '38', '广州市六为防水工程有限公司', '30', '六为', '广州市六为防水工程有限公司主营防水，防潮材料等。公司秉承“为顾客服务，勇攀高峰”的经营理念，坚持“诚实守信”的原则为广大客户提供优质的服务。', '9', '1', 'admin', '9', '/index.php?c=show&id=156', '0', '127.0.0.1', '1500560465', '1500901221', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('129', '25', '六为防水', '7', '六为防水', '公司现拥有现代化的生产基地、先进的生产设 备和尖端的高新产品可承接防水、堵漏、防腐 保温、除霉、结构防渗补强、装饰装修等大型 工程设计及施工。', '49', '1', 'admin', '9', '/index.php?c=show&id=129', '0', '127.0.0.1', '1499925759', '1500895738', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('130', '25', '聚合物水泥基复合防水涂料 Ⅰ型、Ⅱ型', '8', '', '聚合物水泥基复合防水涂料 Ⅰ型、Ⅱ型', '1', '1', 'admin', '9', '/index.php?c=show&id=130', '0', '127.0.0.1', '1499933322', '1499933322', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('131', '25', '单组份聚氨酯-聚脲防水涂料', '9', '', '单组份聚氨酯-聚脲防水涂料', '0', '1', 'admin', '9', '/index.php?c=show&id=131', '0', '127.0.0.1', '1499933361', '1499933361', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('132', '25', '水泥基渗透结晶防水材料', '11', '', '水泥基渗透结晶防水材料', '14', '1', 'admin', '9', '/index.php?c=show&id=132', '0', '127.0.0.1', '1499937064', '1499937064', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('134', '27', '三角大楼', '13', '三角大楼', '三角大楼', '0', '1', 'admin', '9', '/index.php?c=show&id=134', '0', '127.0.0.1', '1500012056', '1500012056', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('135', '35', '测试1', '', '测试1', '测试1', '1', '1', 'admin', '9', '/index.php?c=show&id=135', '0', '127.0.0.1', '1500014058', '1500014058', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('136', '34', '测试2', '', '测试2', '测试2', '1', '1', 'admin', '9', '/index.php?c=show&id=136', '0', '127.0.0.1', '1500014077', '1500014077', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('137', '33', '测试3', '', '测试3', '测试3', '3', '1', 'admin', '9', '/index.php?c=show&id=137', '0', '127.0.0.1', '1500014093', '1500014093', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('138', '32', '测试4', '', '测试4', '测试4', '6', '1', 'admin', '9', '/index.php?c=show&id=138', '0', '127.0.0.1', '1500014118', '1500014118', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('121', '2', '当TMD成为资本新欢，人工智能会是美图的机会吗？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=121', '0', '192.168.0.5', '1491964073', '1491964073', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('122', '2', '今日头条式的“Low”还有救吗？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=122', '0', '192.168.0.5', '1491964135', '1491964135', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('123', '2', '腾讯花3.5亿和快手组队，是为了打微博+秒拍吗？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=123', '0', '192.168.0.5', '1491964148', '1491964148', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('124', '2', '微信超越 QQ，成为国内最多用户的应用了', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '1', '1', 'admin', '9', '/index.php?c=show&id=124', '0', '192.168.0.5', '1491964156', '1491964156', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('125', '2', '上海单车标准出台，能解决共享单车使用乱象吗？', '', '', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '0', '1', 'admin', '9', '/index.php?c=show&id=125', '0', '192.168.0.5', '1491964165', '1491964165', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('126', '2', '高晓松携《晓说》重回优酷，一切只因政治正确？', '', '高晓松,政治', '这期间 12 个人的团队2蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快...', '1', '1', 'admin', '9', '/index.php?c=show&id=126', '0', '192.168.0.5', '1491964180', '1492066253', '0', '0', '0');
INSERT INTO `fn_1_news` VALUES ('127', '7', '测试', '', '测试', '测试', '23', '1', 'admin', '9', '/index.php?c=show&id=127', '0', '127.0.0.1', '1499824408', '1499824408', '0', '0', '0');

-- ----------------------------
-- Table structure for fn_1_news_data_0
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_news_data_0`;
CREATE TABLE `fn_1_news_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型附表';

-- ----------------------------
-- Records of fn_1_news_data_0
-- ----------------------------
INSERT INTO `fn_1_news_data_0` VALUES ('1', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('2', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('3', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('4', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('5', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('6', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('7', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('8', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('9', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('10', '1', '7', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('31', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('32', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('33', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('34', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('35', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('36', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('37', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('38', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('39', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('40', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('139', '1', '24', '<p>测试1</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('140', '1', '24', '<p>测试1</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('141', '1', '24', '<p>测试1</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('142', '1', '24', '<p>测试1</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('146', '1', '28', '<p>类型1</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('144', '1', '29', '<p>类型2</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('145', '1', '30', '<p>类型3</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('155', '1', '37', '<p>行业新闻</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('156', '1', '38', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei UI&quot;; font-size: 24px; text-indent: 48px; background-color: rgb(255, 255, 255);\">广州市六为防水工程有限公司主营防水，防潮材料等。公司秉承“为顾客服务，勇攀高峰”的经营理念，坚持“诚实守信”的原则为广大客户提供优质的服务。</span></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('129', '1', '25', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">广州市六为防水工程有限公司是一家实施一体化及相关产业多元化战略， 围绕建筑产业链，整合建材产业资源，集研发、生产、销售、施 工于一体的大型专业防水公司。 公司现拥有现代化的生产基地、先进的生产设备和尖端的高新产品, 可承接防水、堵漏、防腐保温、除霉、结构 防渗补强、装饰装修等大型工程设计及施工。<img id=\"072f02a41c2835c7ffd806c3bcc714f5_img_18\" src=\"/uploadfile/ueditor/image/20170714/1500016882134448.png\" title=\"1500016882134448.png\" alt=\"banner-2.png\" style=\"text-indent: 2em; width: 996px; height: 344px;\" width=\"996\" height=\"344\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1建筑防水工程类：地下室防水；屋面防水；卫生间防水；隧道；涵洞；堤坝；桥梁；海岸结构； 水塔和蓄水池；电梯井；混凝土墙体及地坪； 科学实验室；混凝土预制品等。<br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2.各类建筑物的防水堵漏、抗渗防潮、防腐保温施工的承接，如：地下室人防、 新老屋面、卫生间浴室厨房、内外墙面、游泳池水池、电缆沟矿 井、设备房、水下循环水道，饮水工程环保防水等。<br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3.各种建筑渗漏的修缮处理：地下室、屋面（彩钢瓦屋面）、电梯井、基坑、卫生间、 墙面、水箱、水塔、浴池等。<br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">4.各类建筑物裂缝处理：施工缝、连接缝、楼面裂缝、止水带、沉降缝等技术服务。<br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; font-size: 16px; line-height: 24px; text-indent: 2em; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">5.国家粮库、军用坑道、污水处理、大坝维修、城市水管抢修等。</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('130', '1', '25', '<p>聚合物水泥基复合防水涂料 Ⅰ型、Ⅱ型</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('131', '1', '25', '<p>单组份聚氨酯-聚脲防水涂料</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('132', '1', '25', '<p>水泥基渗透结晶防水材料</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('134', '1', '27', '<p>三角大楼</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('135', '1', '27', '<p>测试1</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('136', '1', '27', '<p>测试2</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('137', '1', '27', '<p>测试3</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('138', '1', '27', '<p>测试4</p>');
INSERT INTO `fn_1_news_data_0` VALUES ('121', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('122', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('123', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('124', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('125', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('126', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">这期2间 12 个人的团队蜗居在北京五道口华清嘉园的一间三室两厅中，每人拿着 3000 块的基础工资。由于养不起专业的技术团队，也缺乏互联网行业人脉，陈安妮只能通过外包和qq技术群探讨的形式来打造APP。 8 个月后，快看漫画1. 0 版本上线。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，这款给陈安妮带来巨大成功和第一笔 300 万美元投资的产品远称不上完美，稳定性和界面简陋一直是被广为诟病的地方。直到融资到位，陈安妮从<a href=\"http://www.chinaz.com/tags/xiaomi.shtml\" target=\"_blank\" style=\"color: rgb(37, 37, 37); text-decoration: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(255, 200, 31);\">小米</a>、新浪等平台挖来了几位技术大牛，并在 2015 年 4 月上线了独立的完善版本之后，才最终实现了后方稳定。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">只是今时不同往日的是，当年那款差点因为瞬间流量过多而瘫痪的APP已经成长为注册用户逾 9000 万，日活近千万的条漫独角兽，一个 95 后年轻人愿意每天花上 40 分钟驻足的内容平台。而手中有钱有IP的快看漫画，也正在加速影视化和衍生品的布局。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">陈安妮说，“就目前 95 后和 00 后的阅读习惯来看，下一代的超级IP极有可能是从漫画中来。快看漫画想要做的，就是分发尽可能多的IP，在铺量的过程中尽可能保证平台能够抓到未来的超级IP。而影视和衍生品渠道，将是快看漫画下一阶段想要打通的关键节点。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1<strong>从网红漫画家到公司CEO的角色蜕变</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">出身于潮汕地区的陈安妮身上融合着漫画家与商人两种截然不同的气质，这点从她的创业经历便可管中窥豹一番。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">以 2014 年为轴，陈安妮的身份可以清晰地划出两条截然不同的轨迹。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在 2014 年之前，陈安妮的身份是在新浪微博拥有 800 万粉丝的网红漫画家。从大二开始，陈安妮用“伟大的安妮”为笔名，开始在新浪微博上连载条漫《安妮和王小明》。轻松诙谐的校园风格吸引了 800 万粉丝追更，在之后的两年中，这部漫画成功跻身一线IP阵营，并为陈安妮带来了超过百万的版税和广告收入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2014 年 3 月，带着早先积累的原始资本，陈安妮离开广州北上创业，转身快看漫画创始人兼CEO，从而触发了前述剧情。</p><p><br/></p>');
INSERT INTO `fn_1_news_data_0` VALUES ('127', '1', '7', '<p>测试测试测试测试测试赛彩色彩色测测试测试测试</p>');

-- ----------------------------
-- Table structure for fn_1_partners
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_partners`;
CREATE TABLE `fn_1_partners` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `comments` int(10) unsigned NOT NULL COMMENT '评论数量',
  `favorites` int(10) unsigned NOT NULL COMMENT '收藏数量',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型主表';

-- ----------------------------
-- Records of fn_1_partners
-- ----------------------------
INSERT INTO `fn_1_partners` VALUES ('161', '5', '洛迪硅藻泥', '36', 'http://www.lodi1813.com/', '长沙洛迪环保科技有限公司是一家集产品研发 、营销网络、服务体系、管理活动、品牌建设', '0', '1', 'admin', '9', '/index.php?c=show&id=161', '0', '127.0.0.1', '1500688973', '1500688973', '0', '0', '5');
INSERT INTO `fn_1_partners` VALUES ('160', '5', '华砂砂浆', '35', 'http://www.yhvasa.com/', '每一天，上百家地厂商在房屋建造中选择使用 华砂的产品，让建筑更安全、更可靠。上千', '0', '1', 'admin', '9', '/index.php?c=show&id=160', '0', '127.0.0.1', '1500688934', '1500688934', '0', '0', '4');
INSERT INTO `fn_1_partners` VALUES ('159', '5', '风行防水', '34', 'http://www.kmfengxing.com/', '始创于1981年，一直致力为建筑提供安全耐 久的防水系统及建筑材料为己任，是一定集', '0', '1', 'admin', '9', '/index.php?c=show&id=159', '0', '127.0.0.1', '1500688897', '1500688897', '0', '0', '3');
INSERT INTO `fn_1_partners` VALUES ('158', '5', '天鼎丰非织造布', '33', 'http://www.tdf.com.cn/', '天鼎丰现已成为国内最大的防水卷材用聚酯纺 粘油毡基布生产企业，拥有6条聚酯纺粘油', '0', '1', 'admin', '9', '/index.php?c=show&id=158', '0', '127.0.0.1', '1500688864', '1500688864', '0', '0', '2');
INSERT INTO `fn_1_partners` VALUES ('157', '5', '卧牛山保温', '32', 'http://www.jswns.com/', '国内领先的建筑墙体保温、装饰、防水等领域 的系统服务商。集材料生产、施工为一体', '0', '1', 'admin', '9', '/index.php?c=show&id=157', '0', '127.0.0.1', '1500688786', '1500688786', '0', '0', '1');

-- ----------------------------
-- Table structure for fn_1_partners_data_0
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_partners_data_0`;
CREATE TABLE `fn_1_partners_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型附表';

-- ----------------------------
-- Records of fn_1_partners_data_0
-- ----------------------------
INSERT INTO `fn_1_partners_data_0` VALUES ('161', '1', '5');
INSERT INTO `fn_1_partners_data_0` VALUES ('160', '1', '5');
INSERT INTO `fn_1_partners_data_0` VALUES ('159', '1', '5');
INSERT INTO `fn_1_partners_data_0` VALUES ('158', '1', '5');
INSERT INTO `fn_1_partners_data_0` VALUES ('157', '1', '5');

-- ----------------------------
-- Table structure for fn_1_produce
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_produce`;
CREATE TABLE `fn_1_produce` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text,
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `comments` int(10) unsigned NOT NULL COMMENT '评论数量',
  `favorites` int(10) unsigned NOT NULL COMMENT '收藏数量',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型主表';

-- ----------------------------
-- Records of fn_1_produce
-- ----------------------------
INSERT INTO `fn_1_produce` VALUES ('147', '28', '产品类型1', '21', '', '产品规格：宽度1000mm\r\n执行标准： GB 23441-2009《自粘聚合物改性沥青防水卷材》国家标准', '1', '1', 'admin', '9', '/index.php?c=show&id=147', '0', '127.0.0.1', '1500517455', '1500880030', '0', '0', '0');
INSERT INTO `fn_1_produce` VALUES ('148', '29', '产品类型2', '22', '产品类型2', '产品类型2', '4', '1', 'admin', '9', '/index.php?c=show&id=148', '0', '127.0.0.1', '1500517506', '1500517506', '0', '0', '0');
INSERT INTO `fn_1_produce` VALUES ('149', '30', '产品类型3', '23', '产品类型', '产品类型3', '5', '1', 'admin', '9', '/index.php?c=show&id=149', '0', '127.0.0.1', '1500517529', '1500517529', '0', '0', '0');

-- ----------------------------
-- Table structure for fn_1_produce_data_0
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_produce_data_0`;
CREATE TABLE `fn_1_produce_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  `cpqttp` text,
  `cpjs` varchar(255) DEFAULT NULL,
  `xnzb` varchar(255) DEFAULT NULL,
  `syfw` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型附表';

-- ----------------------------
-- Records of fn_1_produce_data_0
-- ----------------------------
INSERT INTO `fn_1_produce_data_0` VALUES ('147', '1', '28', '<p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">采用刮涂（或刷涂）法施工，应分遍涂刷。</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">●基面处理：基面要求坚实、平整、干燥、无明水、无尘土、无油污，低凹破损处须填补 抹平。</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">●附加层施工：阴阳角、穿墙管道等薄弱部位，采用附加层加固。可做成“一布二涂”或 “二布三涂”，其中胎体增强材料宜优先采用聚酯无纺布。施工时，需先涂刷一至二遍涂 料，然后立即铺贴胎体增强材料，表面再涂刷涂料覆盖。</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">●大面积涂刷：用橡胶刮板或毛刷均匀地涂刮（或涂刷）在基面上，涂层厚度宜在1.5 m m-2.0mm，可分2-3次涂刮，后一次的涂刮方向应与前一次涂刮方向相垂直，每次涂刮 厚度不宜超过0.5mm，前次涂层固化后方可进行下道涂层施工。</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">●铺贴增强材料：在涂层间夹铺胎体增强材料时，位于胎体下面的涂层厚度不宜小于1m m，最上层的涂层厚度不应少于0.5mm，应使胎体层充分浸透防水涂料，不得有白茬及 褶皱。</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">●保护层施工：已涂刷好的防水层，要及时采取保护措施，应用水泥砂浆做好保护层。</span></p>', '{\"file\":[\"40\",\"41\",\"42\"],\"title\":[\"pro-1\",\"pro-3\",\"pro-det-1\"]}', 'ST-F1型聚合物水泥基复合防水涂料，是一种既具有有机材料弹性又有无机材料耐久性好 等优点的新型防水材料，涂覆后形成高强坚韧的防水涂膜，并可根据工程需要配制彩色涂 层，是国家建设部首选推荐的防水材料之一。', '43', 'ST-F1型聚合物水泥基复合防水涂料，是一种既具有有机材料弹性又有无机材料耐久性好 等优点的新型防水材料，涂覆后形成高强坚韧的防水涂膜，并可根据工程需要配制彩色涂 层，是国家建设部首选推荐的防水材料之一。');
INSERT INTO `fn_1_produce_data_0` VALUES ('148', '1', '29', '<p>产品类型</p>', null, null, null, null);
INSERT INTO `fn_1_produce_data_0` VALUES ('149', '1', '30', '<p>产品类型3</p>', null, null, null, null);

-- ----------------------------
-- Table structure for fn_1_tag
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_tag`;
CREATE TABLE `fn_1_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0' COMMENT '父级id',
  `name` varchar(200) NOT NULL COMMENT '关键词名称',
  `code` varchar(200) NOT NULL COMMENT '关键词代码（拼音）',
  `pcode` varchar(255) DEFAULT NULL,
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  `url` varchar(255) DEFAULT NULL COMMENT '关键词url',
  `childids` varchar(255) NOT NULL COMMENT '子类集合',
  `content` text NOT NULL COMMENT '关键词描述',
  `total` int(10) NOT NULL COMMENT '点击数量',
  `displayorder` int(10) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='关键词库表';

-- ----------------------------
-- Records of fn_1_tag
-- ----------------------------
INSERT INTO `fn_1_tag` VALUES ('1', '0', '文章关键词', 'test', null, '19', '', '', '<p>1</p>', '0', '0');
INSERT INTO `fn_1_tag` VALUES ('2', '0', '中国', 'zhongguo', '', '0', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for fn_1_weixin
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_weixin`;
CREATE TABLE `fn_1_weixin` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信属性参数表';

-- ----------------------------
-- Records of fn_1_weixin
-- ----------------------------

-- ----------------------------
-- Table structure for fn_1_weixin_follow
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_weixin_follow`;
CREATE TABLE `fn_1_weixin_follow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信粉丝同步表';

-- ----------------------------
-- Records of fn_1_weixin_follow
-- ----------------------------

-- ----------------------------
-- Table structure for fn_1_weixin_menu
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_weixin_menu`;
CREATE TABLE `fn_1_weixin_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `displayorder` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信菜单表';

-- ----------------------------
-- Records of fn_1_weixin_menu
-- ----------------------------

-- ----------------------------
-- Table structure for fn_1_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `fn_1_weixin_user`;
CREATE TABLE `fn_1_weixin_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `username` varchar(100) NOT NULL,
  `groupid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL COMMENT '唯一id',
  `nickname` text NOT NULL COMMENT '微信昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '性别',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `province` varchar(30) DEFAULT NULL COMMENT '省',
  `language` varchar(30) DEFAULT NULL COMMENT '语言',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `subscribe_time` int(10) unsigned NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `subscribe_time` (`subscribe_time`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信粉丝表';

-- ----------------------------
-- Records of fn_1_weixin_user
-- ----------------------------

-- ----------------------------
-- Table structure for fn_admin
-- ----------------------------
DROP TABLE IF EXISTS `fn_admin`;
CREATE TABLE `fn_admin` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `usermenu` text COMMENT '自定义面板菜单，序列化数组格式',
  `color` text COMMENT '定制权限',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of fn_admin
-- ----------------------------
INSERT INTO `fn_admin` VALUES ('1', '网站创始人', '', 'blue');

-- ----------------------------
-- Table structure for fn_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment`;
CREATE TABLE `fn_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint(8) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `filesize` int(10) unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of fn_attachment
-- ----------------------------
INSERT INTO `fn_attachment` VALUES ('1', '1', 'admin', '1', '', '1', '0', '595098', 'png', 'bde427bfd189ef84dbe2c741da586aa8');
INSERT INTO `fn_attachment` VALUES ('2', '1', 'admin', '1', '', '1', '0', '891474', 'png', '40c9e14fa6e70001776137d1e0c8af18');
INSERT INTO `fn_attachment` VALUES ('3', '1', 'admin', '1', '', '1', '0', '595098', 'png', 'bde427bfd189ef84dbe2c741da586aa8');
INSERT INTO `fn_attachment` VALUES ('4', '1', 'admin', '1', '', '1', '0', '891474', 'png', '40c9e14fa6e70001776137d1e0c8af18');
INSERT INTO `fn_attachment` VALUES ('5', '1', 'admin', '1', '', '1', '0', '595098', 'png', 'bde427bfd189ef84dbe2c741da586aa8');
INSERT INTO `fn_attachment` VALUES ('6', '1', 'admin', '1', '', '1', '0', '595098', 'png', 'bde427bfd189ef84dbe2c741da586aa8');
INSERT INTO `fn_attachment` VALUES ('7', '1', 'admin', '1', '', '1', '0', '70799', 'png', '5bc99d8bd12bd31da64bf5f1f8e8d6ea');
INSERT INTO `fn_attachment` VALUES ('8', '1', 'admin', '1', '', '1', '0', '11274', 'png', 'e5a31dddf18959552addfff27869093e');
INSERT INTO `fn_attachment` VALUES ('9', '1', 'admin', '1', '', '1', '0', '13824', 'png', '1c0a00794d2b731050cf1bf6de5cf4ce');
INSERT INTO `fn_attachment` VALUES ('10', '1', 'admin', '1', '', '1', '0', '15882', 'png', '9d53a18e5434014e837b5e14a8203363');
INSERT INTO `fn_attachment` VALUES ('11', '1', 'admin', '1', '', '1', '0', '15882', 'png', '9d53a18e5434014e837b5e14a8203363');
INSERT INTO `fn_attachment` VALUES ('12', '1', 'admin', '1', '', '1', '0', '11274', 'png', 'e5a31dddf18959552addfff27869093e');
INSERT INTO `fn_attachment` VALUES ('13', '1', 'admin', '1', '', '1', '0', '11274', 'png', 'e5a31dddf18959552addfff27869093e');
INSERT INTO `fn_attachment` VALUES ('14', '1', 'admin', '1', '', '1', '0', '15878', 'png', '9d53a18e5434014e837b5e14a8203363');
INSERT INTO `fn_attachment` VALUES ('15', '1', 'admin', '1', '', '1', '0', '15878', 'png', '9d53a18e5434014e837b5e14a8203363');
INSERT INTO `fn_attachment` VALUES ('16', '1', 'admin', '1', '', '1', '0', '15878', 'png', '9d53a18e5434014e837b5e14a8203363');
INSERT INTO `fn_attachment` VALUES ('17', '1', 'admin', '1', '', '1', '0', '891469', 'png', '40c9e14fa6e70001776137d1e0c8af18');
INSERT INTO `fn_attachment` VALUES ('18', '1', 'admin', '1', '', '1', '0', '891469', 'png', '40c9e14fa6e70001776137d1e0c8af18');
INSERT INTO `fn_attachment` VALUES ('19', '1', 'admin', '1', '', '1', '0', '87031', 'png', 'da55690a381b3fd5cbc89c5ccb329106');
INSERT INTO `fn_attachment` VALUES ('20', '1', 'admin', '1', '', '1', '0', '184836', 'png', 'a9bf555e2011efa18cba501adff673a3');
INSERT INTO `fn_attachment` VALUES ('21', '1', 'admin', '1', '', '1', '0', '79340', 'png', '3b7590f616b05fc084d1d2eb160a8fd2');
INSERT INTO `fn_attachment` VALUES ('22', '1', 'admin', '1', '', '1', '0', '70922', 'png', 'c51bf298984463c193f3903ee4e3abaf');
INSERT INTO `fn_attachment` VALUES ('23', '1', 'admin', '1', '', '1', '0', '73349', 'png', 'f875a5fdd20acd2711734cf774a10059');
INSERT INTO `fn_attachment` VALUES ('24', '1', 'admin', '1', '', '1', '0', '7332', 'png', '50ab2dd53fba990e4b5506e8d4df6106');
INSERT INTO `fn_attachment` VALUES ('25', '1', 'admin', '1', '', '1', '0', '4014', 'png', '148236cf6b03f54d79f13804d6213a81');
INSERT INTO `fn_attachment` VALUES ('26', '1', 'admin', '1', '', '1', '0', '10486', 'png', 'aef08a92a06ec2176584e918cfe98dff');
INSERT INTO `fn_attachment` VALUES ('27', '1', 'admin', '1', '', '1', '0', '4669', 'png', '3b8ef659c41239be2a01c051b259bfce');
INSERT INTO `fn_attachment` VALUES ('28', '1', 'admin', '1', '', '1', '0', '15258', 'png', 'b7f16b15fae7dbc47245952f17c5339f');
INSERT INTO `fn_attachment` VALUES ('29', '1', 'admin', '1', '', '1', '0', '205824', 'png', '453883deeeea75b983985ec89c702c8c');
INSERT INTO `fn_attachment` VALUES ('30', '1', 'admin', '1', '', '1', '0', '87030', 'png', 'da55690a381b3fd5cbc89c5ccb329106');
INSERT INTO `fn_attachment` VALUES ('31', '1', 'admin', '1', '', '1', '0', '1741', 'png', '6da9dc533ad7d7ddf62b7b49fae808cf');
INSERT INTO `fn_attachment` VALUES ('32', '1', 'admin', '1', '', '1', '0', '7332', 'png', '50ab2dd53fba990e4b5506e8d4df6106');
INSERT INTO `fn_attachment` VALUES ('33', '1', 'admin', '1', '', '1', '0', '4014', 'png', '148236cf6b03f54d79f13804d6213a81');
INSERT INTO `fn_attachment` VALUES ('34', '1', 'admin', '1', '', '1', '0', '10486', 'png', 'aef08a92a06ec2176584e918cfe98dff');
INSERT INTO `fn_attachment` VALUES ('35', '1', 'admin', '1', '', '1', '0', '4669', 'png', '3b8ef659c41239be2a01c051b259bfce');
INSERT INTO `fn_attachment` VALUES ('36', '1', 'admin', '1', '', '1', '0', '15258', 'png', 'b7f16b15fae7dbc47245952f17c5339f');
INSERT INTO `fn_attachment` VALUES ('37', '1', 'admin', '1', '', '1', '0', '169626', 'png', '8027562e99f3aefbd2505497cb248655');
INSERT INTO `fn_attachment` VALUES ('38', '1', 'admin', '1', '', '1', '0', '50176', 'png', 'c937df24e88119fce4b1f1a74f611035');
INSERT INTO `fn_attachment` VALUES ('39', '1', 'admin', '1', '', '1', '0', '217231', 'png', '7115f45552b2ce7e02546cd560cba203');
INSERT INTO `fn_attachment` VALUES ('40', '1', 'admin', '1', '', '1', '0', '79340', 'png', '3b7590f616b05fc084d1d2eb160a8fd2');
INSERT INTO `fn_attachment` VALUES ('41', '1', 'admin', '1', '', '1', '0', '73349', 'png', 'f875a5fdd20acd2711734cf774a10059');
INSERT INTO `fn_attachment` VALUES ('42', '1', 'admin', '1', '', '1', '0', '92324', 'png', 'c94a4a59a7d6f11d42638b50f245e709');
INSERT INTO `fn_attachment` VALUES ('43', '1', 'admin', '1', '', '1', '0', '52613', 'png', '29f71d89caa16b2491cad9a9902147af');
INSERT INTO `fn_attachment` VALUES ('44', '1', 'admin', '1', '', '1', '0', '1219', 'png', 'd0283a3733f8bd20da05028a387c96be');
INSERT INTO `fn_attachment` VALUES ('45', '1', 'admin', '1', '', '1', '0', '17111', 'png', 'b5030e1f73ec28ff7407f5ecacd6df22');

-- ----------------------------
-- Table structure for fn_attachment_0
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_0`;
CREATE TABLE `fn_attachment_0` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表0';

-- ----------------------------
-- Records of fn_attachment_0
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_1
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_1`;
CREATE TABLE `fn_attachment_1` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表1';

-- ----------------------------
-- Records of fn_attachment_1
-- ----------------------------
INSERT INTO `fn_attachment_1` VALUES ('1', '1', 'admin', '', 'banner-1', 'png', '595098', '201707/8ed38ac5b4.png', '0', '', '1499827428');
INSERT INTO `fn_attachment_1` VALUES ('2', '1', 'admin', '', 'banner-2', 'png', '891474', '201707/b82cd2d7c3.png', '0', '', '1499827428');
INSERT INTO `fn_attachment_1` VALUES ('3', '1', 'admin', '', 'banner-1', 'png', '595098', '201707/a0a03a502f.png', '0', '', '1499845361');
INSERT INTO `fn_attachment_1` VALUES ('4', '1', 'admin', '', 'banner-2', 'png', '891474', '201707/d72727ff82.png', '0', '', '1499845390');
INSERT INTO `fn_attachment_1` VALUES ('5', '1', 'admin', '', 'banner-1', 'png', '595098', '201707/44344ab9e4.png', '0', '', '1499845440');
INSERT INTO `fn_attachment_1` VALUES ('6', '1', 'admin', '', 'banner-1', 'png', '595098', '201707/9204f962b0.png', '0', '', '1499847006');
INSERT INTO `fn_attachment_1` VALUES ('7', '1', 'admin', '', 'news-1', 'png', '70799', '201707/9193a3e517.png', '0', '', '1499925788');
INSERT INTO `fn_attachment_1` VALUES ('8', '1', 'admin', '', 'thumbnail-1', 'png', '11274', '201707/e7ca724e93.png', '0', '', '1499933345');
INSERT INTO `fn_attachment_1` VALUES ('9', '1', 'admin', '', 'thumbnail-3', 'png', '13824', '201707/9e34b84478.png', '0', '', '1499933376');
INSERT INTO `fn_attachment_1` VALUES ('10', '1', 'admin', '', 'thumbnail-2', 'png', '15882', '201707/2add939856.png', '0', '', '1499933400');
INSERT INTO `fn_attachment_1` VALUES ('11', '1', 'admin', '', 'thumbnail-2', 'png', '15882', '201707/b8dd3e251c.png', '0', '', '1499937088');
INSERT INTO `fn_attachment_1` VALUES ('12', '1', 'admin', '', 'thumbnail-1', 'png', '11274', '201707/6d7d37f1c4.png', '0', '', '1500012018');
INSERT INTO `fn_attachment_1` VALUES ('13', '1', 'admin', '', 'thumbnail-1', 'png', '11274', '201707/607543436b.png', '0', '', '1500012077');
INSERT INTO `fn_attachment_1` VALUES ('14', '1', 'admin', '', 'thumbnail-2', 'png', '15878', 'ueditor/image/20170714/1500015232872942.png', '0', '', '1500015232');
INSERT INTO `fn_attachment_1` VALUES ('15', '1', 'admin', '', 'thumbnail-2', 'png', '15878', 'ueditor/image/20170714/1500016503188091.png', '0', '', '1500016503');
INSERT INTO `fn_attachment_1` VALUES ('16', '1', 'admin', '', 'thumbnail-2', 'png', '15878', 'ueditor/image/20170714/1500016658795915.png', '0', '', '1500016658');
INSERT INTO `fn_attachment_1` VALUES ('17', '1', 'admin', '', 'banner-2', 'png', '891469', 'ueditor/image/20170714/1500016738288097.png', '0', '', '1500016738');
INSERT INTO `fn_attachment_1` VALUES ('18', '1', 'admin', '', 'banner-2', 'png', '891469', 'ueditor/image/20170714/1500016882134448.png', '0', '', '1500016882');
INSERT INTO `fn_attachment_1` VALUES ('19', '1', 'admin', '', 'case4', 'png', '87031', 'ueditor/image/20170720/1500516211162488.png', '0', '', '1500516211');
INSERT INTO `fn_attachment_1` VALUES ('20', '1', 'admin', '', 'dev-img', 'png', '184836', 'ueditor/image/20170720/1500516225615784.png', '0', '', '1500516225');
INSERT INTO `fn_attachment_1` VALUES ('21', '1', 'admin', '', 'pro-1', 'png', '79340', '201707/775dea1522.png', '0', '', '1500517481');
INSERT INTO `fn_attachment_1` VALUES ('22', '1', 'admin', '', 'pro-2', 'png', '70922', '201707/8edd2df858.png', '0', '', '1500517517');
INSERT INTO `fn_attachment_1` VALUES ('23', '1', 'admin', '', 'pro-3', 'png', '73349', '201707/864128e0bd.png', '0', '', '1500517544');
INSERT INTO `fn_attachment_1` VALUES ('24', '1', 'admin', '', 'woniushan', 'png', '7332', '201707/a1317cbd74.png', '0', '', '1500539843');
INSERT INTO `fn_attachment_1` VALUES ('25', '1', 'admin', '', 'tiandingfeng', 'png', '4014', '201707/08a273e8ac.png', '0', '', '1500539959');
INSERT INTO `fn_attachment_1` VALUES ('26', '1', 'admin', '', 'fenghang', 'png', '10486', '201707/93689793a9.png', '0', '', '1500540018');
INSERT INTO `fn_attachment_1` VALUES ('27', '1', 'admin', '', 'huasha', 'png', '4669', '201707/9a98301be0.png', '0', '', '1500540064');
INSERT INTO `fn_attachment_1` VALUES ('28', '1', 'admin', '', 'lodi', 'png', '15258', '201707/575b910602.png', '0', '', '1500540113');
INSERT INTO `fn_attachment_1` VALUES ('29', '1', 'admin', '', 'case2', 'png', '205824', '201707/287dc95e25.png', '0', '', '1500560454');
INSERT INTO `fn_attachment_1` VALUES ('30', '1', 'admin', '', 'case4', 'png', '87030', '201707/145618125a.png', '0', '', '1500560483');
INSERT INTO `fn_attachment_1` VALUES ('31', '1', 'admin', '', 'logo-green', 'png', '1741', '201707/02fcb9922e.png', '0', '', '1500599739');
INSERT INTO `fn_attachment_1` VALUES ('32', '1', 'admin', '', 'woniushan', 'png', '7332', '201707/f6471e5134.png', '0', '', '1500688810');
INSERT INTO `fn_attachment_1` VALUES ('33', '1', 'admin', '', 'tiandingfeng', 'png', '4014', '201707/3607d32aac.png', '0', '', '1500688884');
INSERT INTO `fn_attachment_1` VALUES ('34', '1', 'admin', '', 'fenghang', 'png', '10486', '201707/f4469d142c.png', '0', '', '1500688924');
INSERT INTO `fn_attachment_1` VALUES ('35', '1', 'admin', '', 'huasha', 'png', '4669', '201707/5f67ab31a6.png', '0', '', '1500688952');
INSERT INTO `fn_attachment_1` VALUES ('36', '1', 'admin', '', 'lodi', 'png', '15258', '201707/34b1d5dd6d.png', '0', '', '1500688991');
INSERT INTO `fn_attachment_1` VALUES ('37', '1', 'admin', '', 'banner_03', 'png', '169626', '201707/5922f557f4.png', '0', '', '1500694101');
INSERT INTO `fn_attachment_1` VALUES ('38', '1', 'admin', '', 'banner_06', 'png', '50176', '201707/570d04a504.png', '0', '', '1500694102');
INSERT INTO `fn_attachment_1` VALUES ('39', '1', 'admin', '', 'banner_08', 'png', '217231', '201707/aa61ad270e.png', '0', '', '1500694102');
INSERT INTO `fn_attachment_1` VALUES ('40', '1', 'admin', '', 'pro-1', 'png', '79340', '201707/867b05f42f.png', '0', '', '1500706935');
INSERT INTO `fn_attachment_1` VALUES ('41', '1', 'admin', '', 'pro-3', 'png', '73349', '201707/d07489a57d.png', '0', '', '1500706935');
INSERT INTO `fn_attachment_1` VALUES ('42', '1', 'admin', '', 'pro-det-1', 'png', '92324', '201707/cfdf95a4be.png', '0', '', '1500706936');
INSERT INTO `fn_attachment_1` VALUES ('43', '1', 'admin', '', 'pro-det-2', 'png', '52613', '201707/c085b253fc.png', '0', '', '1500706973');
INSERT INTO `fn_attachment_1` VALUES ('44', '1', 'admin', '', 'logo-white', 'png', '1219', '201707/1adcc956de.png', '0', '', '1500884868');
INSERT INTO `fn_attachment_1` VALUES ('45', '1', 'admin', '', 'logo2', 'png', '17111', '201707/bebdb51fa0.png', '0', '', '1500950370');

-- ----------------------------
-- Table structure for fn_attachment_2
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_2`;
CREATE TABLE `fn_attachment_2` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表2';

-- ----------------------------
-- Records of fn_attachment_2
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_3
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_3`;
CREATE TABLE `fn_attachment_3` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表3';

-- ----------------------------
-- Records of fn_attachment_3
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_4
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_4`;
CREATE TABLE `fn_attachment_4` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表4';

-- ----------------------------
-- Records of fn_attachment_4
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_5
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_5`;
CREATE TABLE `fn_attachment_5` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表5';

-- ----------------------------
-- Records of fn_attachment_5
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_6
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_6`;
CREATE TABLE `fn_attachment_6` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表6';

-- ----------------------------
-- Records of fn_attachment_6
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_7
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_7`;
CREATE TABLE `fn_attachment_7` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表7';

-- ----------------------------
-- Records of fn_attachment_7
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_8
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_8`;
CREATE TABLE `fn_attachment_8` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表8';

-- ----------------------------
-- Records of fn_attachment_8
-- ----------------------------

-- ----------------------------
-- Table structure for fn_attachment_9
-- ----------------------------
DROP TABLE IF EXISTS `fn_attachment_9`;
CREATE TABLE `fn_attachment_9` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表9';

-- ----------------------------
-- Records of fn_attachment_9
-- ----------------------------

-- ----------------------------
-- Table structure for fn_field
-- ----------------------------
DROP TABLE IF EXISTS `fn_field`;
CREATE TABLE `fn_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) NOT NULL COMMENT '字段类型',
  `relatedid` smallint(5) unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(50) NOT NULL COMMENT '相关表',
  `isedit` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint(1) unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint(1) unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint(1) unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '禁用？',
  `setting` text NOT NULL COMMENT '配置信息',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='字段表';

-- ----------------------------
-- Records of fn_field
-- ----------------------------
INSERT INTO `fn_field` VALUES ('8', '主题', 'title', 'Text', '4', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('9', '缩略图', 'thumb', 'File', '4', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"ext\":\"jpg,gif,png\",\"size\":10,\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"}}', '0');
INSERT INTO `fn_field` VALUES ('10', '关键字', 'keywords', 'Text', '4', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}', '0');
INSERT INTO `fn_field` VALUES ('11', '描述', 'description', 'Textarea', '4', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"width\":500,\"height\":60,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"filter\":\"dr_clearhtml\"}}', '0');
INSERT INTO `fn_field` VALUES ('12', '内容', 'content', 'Ueditor', '4', 'module', '1', '0', '1', '1', '1', '0', '{\"option\":{\"mode\":1,\"width\":\"90%\",\"height\":400},\"validate\":{\"xss\":1,\"required\":1}}', '0');
INSERT INTO `fn_field` VALUES ('62', '描述', 'description', 'Textarea', '13', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"width\":500,\"height\":60,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"filter\":\"dr_clearhtml\"}}', '0');
INSERT INTO `fn_field` VALUES ('61', '链接', 'keywords', 'Text', '13', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\\/^http:\\\\\\/\\\\\\/\\/\",\"errortips\":\"\\u8bf7\\u8f93\\u5165\\u6b63\\u786e\\u7684\\u94fe\\u63a5\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\" data-role=\\\"tagsinput\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('60', '缩略图', 'thumb', 'File', '13', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"ext\":\"jpg,gif,png\",\"size\":10,\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"}}', '0');
INSERT INTO `fn_field` VALUES ('58', '使用方法', 'content', 'Ueditor', '12', 'module', '1', '0', '1', '1', '0', '0', '{\"option\":{\"width\":\"90%\",\"height\":\"400\",\"autofloat\":\"0\",\"autoheight\":\"0\",\"autodown\":\"0\",\"page\":\"0\",\"mode\":\"1\",\"tool\":\"\'bold\', \'italic\', \'underline\'\",\"mode2\":\"1\",\"tool2\":\"\'bold\', \'italic\', \'underline\'\",\"mode3\":\"1\",\"tool3\":\"\'bold\', \'italic\', \'underline\'\",\"value\":\"\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '2');
INSERT INTO `fn_field` VALUES ('59', '名称', 'title', 'Text', '13', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('54', '产品名称', 'title', 'Text', '12', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('55', '缩略图', 'thumb', 'File', '12', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"ext\":\"jpg,gif,png\",\"size\":10,\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"}}', '0');
INSERT INTO `fn_field` VALUES ('56', '关键字', 'keywords', 'Text', '12', 'module', '1', '1', '1', '1', '1', '1', '{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}', '1');
INSERT INTO `fn_field` VALUES ('57', '描述', 'description', 'Textarea', '12', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"500\",\"is_mb_auto\":\"0\",\"height\":\"60\",\"value\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('64', '产品图片', 'cpqttp', 'Files', '12', 'module', '1', '0', '0', '1', '0', '0', '{\"option\":{\"width\":\"100%\",\"size\":\"20\",\"count\":\"5\",\"ext\":\"jpg,gif,png\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('65', '产品介绍', 'cpjs', 'Textarea', '12', 'module', '1', '0', '0', '1', '0', '0', '{\"option\":{\"width\":\"200\",\"is_mb_auto\":\"0\",\"height\":\"100\",\"value\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('66', '性能指标', 'xnzb', 'File', '12', 'module', '1', '0', '0', '1', '0', '0', '{\"option\":{\"size\":\"20\",\"ext\":\"jpg,gif,png\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `fn_field` VALUES ('67', '适用范围', 'syfw', 'Textarea', '12', 'module', '1', '0', '0', '1', '0', '0', '{\"option\":{\"width\":\"200\",\"is_mb_auto\":\"0\",\"height\":\"100\",\"value\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');

-- ----------------------------
-- Table structure for fn_linkage
-- ----------------------------
DROP TABLE IF EXISTS `fn_linkage`;
CREATE TABLE `fn_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` tinyint(1) unsigned NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联动菜单表';

-- ----------------------------
-- Records of fn_linkage
-- ----------------------------
INSERT INTO `fn_linkage` VALUES ('1', '中国地区', '0', 'address');

-- ----------------------------
-- Table structure for fn_linkage_data_1
-- ----------------------------
DROP TABLE IF EXISTS `fn_linkage_data_1`;
CREATE TABLE `fn_linkage_data_1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `cname` varchar(30) NOT NULL COMMENT '别名',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `hidden` tinyint(1) unsigned DEFAULT '0' COMMENT '前端隐藏',
  `childids` text COMMENT '下级所有id',
  `displayorder` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cname` (`cname`),
  KEY `hidden` (`hidden`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='联动菜单数据表';

-- ----------------------------
-- Records of fn_linkage_data_1
-- ----------------------------
INSERT INTO `fn_linkage_data_1` VALUES ('1', '1', '0', '0', '北京', 'beijing', '0', '0', '1', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('2', '1', '0', '0', '天津', 'tianjin', '0', '0', '2', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('3', '1', '0', '0', '上海', 'shanghai', '0', '0', '3', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('4', '1', '0', '0', '重庆', 'chongqing', '0', '0', '4', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('5', '1', '0', '0', '黑龙江', 'heilongjiang', '0', '0', '5', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('6', '1', '0', '0', '吉林', 'jilin', '0', '0', '6', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('7', '1', '0', '0', '辽宁', 'liaoning', '0', '0', '7', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('8', '1', '0', '0', '河北', 'hebei', '0', '0', '8', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('9', '1', '0', '0', '河南', 'henan', '0', '0', '9', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('10', '1', '0', '0', '山东', 'shandong', '0', '0', '10', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('11', '1', '0', '0', '江苏', 'jiangsu', '0', '0', '11', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('12', '1', '0', '0', '山西', 'shanxi', '0', '0', '12', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('13', '1', '0', '0', '陕西', 'shanxi1', '0', '0', '13', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('14', '1', '0', '0', '甘肃', 'gansu', '0', '0', '14', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('15', '1', '0', '0', '四川', 'sichuan', '0', '0', '15', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('16', '1', '0', '0', '青海', 'qinghai', '0', '0', '16', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('17', '1', '0', '0', '湖南', 'hunan', '0', '0', '17', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('18', '1', '0', '0', '湖北', 'hubei', '0', '0', '18', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('19', '1', '0', '0', '江西', 'jiangxi', '0', '0', '19', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('20', '1', '0', '0', '安徽', 'anhui', '0', '0', '20', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('21', '1', '0', '0', '浙江', 'zhejiang', '0', '0', '21', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('22', '1', '0', '0', '福建', 'fujian', '0', '0', '22', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('23', '1', '0', '0', '广东', 'guangdong', '0', '0', '23', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('24', '1', '0', '0', '广西', 'guangxi', '0', '0', '24', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('25', '1', '0', '0', '贵州', 'guizhou', '0', '0', '25', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('26', '1', '0', '0', '云南', 'yunnan', '0', '0', '26', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('27', '1', '0', '0', '海南', 'hainan', '0', '0', '27', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('28', '1', '0', '0', '内蒙古', 'neimenggu', '0', '0', '28', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('29', '1', '0', '0', '新疆', 'xinjiang', '0', '0', '29', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('30', '1', '0', '0', '宁夏', 'ningxia', '0', '0', '30', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('31', '1', '0', '0', '西藏', 'xicang', '0', '0', '31', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('32', '1', '0', '0', '香港', 'xianggang', '0', '0', '32', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('33', '1', '0', '0', '澳门', 'aomen', '0', '0', '33', '0');
INSERT INTO `fn_linkage_data_1` VALUES ('34', '1', '0', '0', '台湾', 'taiwan', '0', '0', '34', '0');

-- ----------------------------
-- Table structure for fn_mail_smtp
-- ----------------------------
DROP TABLE IF EXISTS `fn_mail_smtp`;
CREATE TABLE `fn_mail_smtp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  `displayorder` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='邮件账户表';

-- ----------------------------
-- Records of fn_mail_smtp
-- ----------------------------
INSERT INTO `fn_mail_smtp` VALUES ('1', 'smtp.sina.com', 'f773928614@sina.com', 'FBc986800305', '25', '2');
INSERT INTO `fn_mail_smtp` VALUES ('3', 'smtp.139.com', '13539809891@139.com', 'F773928614', '25', '1');

-- ----------------------------
-- Table structure for fn_member
-- ----------------------------
DROP TABLE IF EXISTS `fn_member`;
CREATE TABLE `fn_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '加密密码',
  `salt` char(10) NOT NULL COMMENT '随机加密码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` char(20) NOT NULL COMMENT '手机号码',
  `avatar` varchar(255) NOT NULL COMMENT '头像地址',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int(10) unsigned NOT NULL COMMENT '虚拟币',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值',
  `adminid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理组id',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `levelid` smallint(5) unsigned NOT NULL COMMENT '会员级别',
  `overdue` int(10) unsigned NOT NULL COMMENT '到期时间',
  `regip` varchar(15) NOT NULL COMMENT '注册ip',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint(6) unsigned NOT NULL COMMENT '随机验证码',
  `ismobile` tinyint(1) unsigned DEFAULT NULL COMMENT '手机认证标识',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`),
  KEY `adminid` (`adminid`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of fn_member
-- ----------------------------
INSERT INTO `fn_member` VALUES ('1', '', 'admin', 'ac7cd59472be180b81c7551b92925f03', 'b3967a0e93', '', '', '', '9999.00', '0.00', '0.00', '10000', '10000', '1', '3', '4', '0', '', '0', '0', '0');

-- ----------------------------
-- Table structure for fn_member_data
-- ----------------------------
DROP TABLE IF EXISTS `fn_member_data`;
CREATE TABLE `fn_member_data` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `complete` tinyint(1) unsigned NOT NULL COMMENT '完善资料标识',
  `is_auth` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '实名认证标识',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of fn_member_data
-- ----------------------------
INSERT INTO `fn_member_data` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for fn_member_oauth
-- ----------------------------
DROP TABLE IF EXISTS `fn_member_oauth`;
CREATE TABLE `fn_member_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `expire_at` int(10) unsigned NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员OAuth2授权表';

-- ----------------------------
-- Records of fn_member_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for fn_module
-- ----------------------------
DROP TABLE IF EXISTS `fn_module`;
CREATE TABLE `fn_module` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` text COMMENT '站点划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `share` tinyint(1) unsigned DEFAULT NULL COMMENT '是否共享模块',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否是扩展模块',
  `sitemap` tinyint(1) unsigned DEFAULT NULL COMMENT '是否生成地图',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of fn_module
-- ----------------------------
INSERT INTO `fn_module` VALUES ('4', '{\"name\":\"\\u6587\\u7ae0\",\"urlrule\":\"4\",\"search_title\":\"[\\u7b2c{page}\\u9875{join}][{keyword}{join}][{param}{join}]{modulename}{join}{SITE_NAME}\",\"search_keywords\":\"\",\"search_description\":\"\",\"use\":1}', 'news', '0', '0', '0', '', '0', '0');
INSERT INTO `fn_module` VALUES ('13', '{\"name\":\"\\u5408\\u4f5c\\u4f19\\u4f34\"}', 'partners', '0', '0', '0', '', '0', '0');
INSERT INTO `fn_module` VALUES ('12', '{\"name\":\"\\u4ea7\\u54c1\"}', 'produce', '0', '0', '0', '', '0', '0');

-- ----------------------------
-- Table structure for fn_site
-- ----------------------------
DROP TABLE IF EXISTS `fn_site`;
CREATE TABLE `fn_site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '站点名称',
  `domain` varchar(50) NOT NULL COMMENT '站点域名',
  `setting` text NOT NULL COMMENT '站点配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of fn_site
-- ----------------------------
INSERT INTO `fn_site` VALUES ('1', '六为防水官网', '192.168.3.182', '{\"SITE_CLOSE\":\"0\",\"SITE_CLOSE_MSG\":\"\\u7f51\\u7ad9\\u5347\\u7ea7\\u4e2d....\",\"SITE_NAME\":\"\\u516d\\u4e3a\\u9632\\u6c34\\u5b98\\u7f51\",\"SITE_TIME_FORMAT\":\"Y-m-d H:i\",\"SITE_LANGUAGE\":\"zh-cn\",\"SITE_THEME\":\"default\",\"SITE_TEMPLATE\":\"default\",\"SITE_TIMEZONE\":\"8\",\"SITE_DOMAINS\":\"127.0.0.1\",\"SITE_REWRITE\":\"0\",\"SITE_MOBILE\":\"\",\"SITE_SEOJOIN\":\"_\",\"SITE_TITLE\":\"\\u516d\\u4e3a\\u9632\\u6c34\\u5b98\\u7f51\",\"SITE_KEYWORDS\":\"\\u516d\\u4e3a,\\u9632\\u6c34,\\u9632\\u6f6e\",\"SITE_DESCRIPTION\":\"\\u5e7f\\u5dde\\u5e02\\u516d\\u4e3a\\u9632\\u6c34\\u5de5\\u7a0b\\u6709\\u9650\\u516c\\u53f8\\u4e3b\\u8425\\u9632\\u6c34\\u3001\\u9632\\u6f6e\\u6750\\u6599\\u7b49\\u3002\\u516c\\u53f8\\u79c9\\u627f\\u201c\\u4e3a\\u987e\\u5ba2\\u670d\\u52a1\\uff0c\\u52c7\\u6500\\u9ad8\\u5cf0\\u201d\\u7684\\u7ecf\\u8425\\u7406\\u5ff5\\uff0c\\u575a\\u6301\\u201c\\u8bda\\u5b9e\\u5b88\\u4fe1\\u201d\\u7684\\u539f\\u5219\\u4e3a\\u5e7f\\u5927\\u5ba2\\u6237\\u63d0\\u4f9b\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u3002\",\"SITE_IMAGE_RATIO\":\"1\",\"SITE_IMAGE_WATERMARK\":\"0\",\"SITE_IMAGE_VRTALIGN\":\"top\",\"SITE_IMAGE_HORALIGN\":\"left\",\"SITE_IMAGE_VRTOFFSET\":\"\",\"SITE_IMAGE_HOROFFSET\":\"\",\"SITE_IMAGE_TYPE\":\"0\",\"SITE_IMAGE_OVERLAY\":\"default.png\",\"SITE_IMAGE_OPACITY\":\"\",\"SITE_IMAGE_FONT\":\"default.ttf\",\"SITE_IMAGE_COLOR\":\"\",\"SITE_IMAGE_SIZE\":\"\",\"SITE_IMAGE_TEXT\":\"\",\"SITE_DOMAIN\":\"192.168.3.182\",\"SITE_IMAGE_CONTENT\":0}');

-- ----------------------------
-- Table structure for fn_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `fn_urlrule`;
CREATE TABLE `fn_urlrule` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) NOT NULL COMMENT '规则名称',
  `value` text NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='URL规则表';

-- ----------------------------
-- Records of fn_urlrule
-- ----------------------------
INSERT INTO `fn_urlrule` VALUES ('1', '3', '栏目规则测试', '{\"share_list\":\"{dirname}-list.html\",\"share_list_page\":\"{dirname}-list-{page}.html\",\"share_show\":\"{dirname}-show-{id}.html\",\"share_show_page\":\"{dirname}-show-{id}-{page}.html\",\"share_search\":\"\",\"share_search_page\":\"\",\"tags\":\"\"}');
INSERT INTO `fn_urlrule` VALUES ('2', '4', '站点URL测试', '{\"share_list\":\"\",\"share_list_page\":\"\",\"share_show\":\"\",\"share_show_page\":\"\",\"share_search\":\"search.html\",\"share_search_page\":\"search\\/{param}.html\",\"tags\":\"tag\\/{tag}.html\"}');
