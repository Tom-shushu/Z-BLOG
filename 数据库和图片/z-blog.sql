/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 8.0.22 : Database - db_mblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_mblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_mblog`;

/*Table structure for table `flyway_schema_history` */

DROP TABLE IF EXISTS `flyway_schema_history`;

CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  KEY `flyway_schema_history_s_idx` (`success`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `flyway_schema_history` */

insert  into `flyway_schema_history`(`installed_rank`,`version`,`description`,`type`,`script`,`checksum`,`installed_by`,`installed_on`,`execution_time`,`success`) values (1,'3.2','update','SQL','V3.2__update.sql',-53734780,'root','2019-04-29 17:53:32',114,1);

/*Table structure for table `mto_channel` */

DROP TABLE IF EXISTS `mto_channel`;

CREATE TABLE `mto_channel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int NOT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weight` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_channel` */

insert  into `mto_channel`(`id`,`key_`,`name`,`status`,`thumbnail`,`weight`) values (1,'banner','时光',0,'',0),(2,'blog','指尖',0,'',0),(3,'jotting','随笔',0,'',0),(4,'share','分享',0,'/storage/thumbnails/_signature/1H09NSQ60RJL82TFTI0VABG7GT.png',0),(5,'information','资讯',0,'/storage/thumbnails/_signature/2QTJMNTIT9AI0BL78LD0NODLO1.jpg',0),(6,'tech','科技',0,'/storage/thumbnails/_signature/2EMGTSV22NM080EIDBFNM9KL46.jpg',0);

/*Table structure for table `mto_comment` */

DROP TABLE IF EXISTS `mto_comment`;

CREATE TABLE `mto_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `pid` bigint NOT NULL,
  `post_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IK_POST_ID` (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_comment` */

/*Table structure for table `mto_favorite` */

DROP TABLE IF EXISTS `mto_favorite`;

CREATE TABLE `mto_favorite` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IK_USER_ID` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_favorite` */

/*Table structure for table `mto_links` */

DROP TABLE IF EXISTS `mto_links`;

CREATE TABLE `mto_links` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_links` */

insert  into `mto_links`(`id`,`created`,`name`,`updated`,`url`) values (1,'2019-11-06 10:17:23','Mtons','2019-11-06 10:18:25','https://www.mtons.com/'),(2,'2019-11-06 10:17:23','百度一下','2019-11-06 10:30:35','https://www.mtons.com/'),(3,'2019-11-06 10:17:23','指尖时光','2019-11-06 10:30:42','https://www.mtons.com/'),(4,'2019-11-06 10:17:23','新浪微博','2019-11-06 10:30:55','https://www.mtons.com/'),(5,'2019-11-06 10:17:23','华为官网','2019-11-06 10:31:02','https://www.mtons.com/'),(6,'2019-11-06 10:17:23','抖音','2019-11-06 10:31:11','https://www.mtons.com/'),(7,'2019-11-06 10:17:23','hao123','2019-11-06 10:31:19','https://www.mtons.com/'),(8,'2019-11-06 10:17:23','腾讯','2019-11-06 10:31:25','https://www.mtons.com/'),(9,'2019-11-06 10:17:23','阿里巴巴','2019-11-06 10:31:46','https://www.mtons.com/'),(10,'2019-11-06 10:17:23','美团','2019-11-06 10:31:51','https://www.mtons.com/');

/*Table structure for table `mto_message` */

DROP TABLE IF EXISTS `mto_message`;

CREATE TABLE `mto_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `event` int NOT NULL,
  `from_id` bigint DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_message` */

/*Table structure for table `mto_options` */

DROP TABLE IF EXISTS `mto_options`;

CREATE TABLE `mto_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT '0',
  `value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_options` */

insert  into `mto_options`(`id`,`key_`,`type`,`value`) values (1,'site_name',0,'Z-BLOG - 慢时光'),(2,'site_domain',0,'http://www.zhouhong.icu'),(3,'site_keywords',0,'慢时光,Z-BLOG,博客,社区'),(4,'site_description',0,'随时随地分享！'),(5,'site_metas',0,''),(6,'site_copyright',0,'Copyright © 慢时光'),(7,'site_icp',0,'陕ICP备19012813号'),(8,'qq_callback',0,'http://{domain}/oauth/callback/qq'),(9,'qq_app_id',0,'qq'),(10,'qq_app_key',0,'qq'),(11,'weibo_callback',0,'http://{domain}/oauth/callback/weibo'),(12,'weibo_client_id',0,'weibo'),(13,'weibo_client_sercret',0,'weibo'),(14,'github_callback',0,'http://{domain}/oauth/callback/github'),(15,'github_client_id',0,'github'),(16,'github_secret_key',0,'github'),(17,'theme',0,'youth'),(18,'site_logo',0,'/dist/images/logo/logo.png'),(19,'editor',0,'tinymce'),(20,'site_favicon',0,'/theme/youth/dist/images/logo/m.png'),(21,'site_introduce',0,'指尖时光 - 专注于互联网，网络文学资讯，好书推荐，书单评论及科技、投资、分享网络新鲜资讯等领域的IT科技网站。'),(22,'site_title_1',0,'♡ 分享你想表达的，让全世界都能听到你的心声！'),(23,'site_title_2',0,'关于文学，关于爱情，关于穿越世界的旅行。'),(24,'site_qrcode_one',0,'/theme/youth/dist/images/qqq.png'),(25,'site_qrcode_two',0,'/theme/youth/dist/images/qqh.jpg'),(26,'site_contact',0,'手机：152-49239025 </br> 邮箱：15249239205@163.com </br> QQ：1462533241');

/*Table structure for table `mto_post` */

DROP TABLE IF EXISTS `mto_post`;

CREATE TABLE `mto_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint DEFAULT NULL,
  `channel_id` int DEFAULT NULL,
  `comments` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `favors` int NOT NULL,
  `featured` int NOT NULL,
  `status` int NOT NULL,
  `summary` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tags` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `views` int NOT NULL,
  `weight` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IK_CHANNEL_ID` (`channel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_post` */

insert  into `mto_post`(`id`,`author_id`,`channel_id`,`comments`,`created`,`favors`,`featured`,`status`,`summary`,`tags`,`thumbnail`,`title`,`views`,`weight`) values (35,1,1,0,'2019-05-11 11:17:24',0,0,0,'难过就是，虽然很难，但总会过去。 今天晚上你买了很多酒，我们去楼下的餐馆炒了几个菜带了回来，摊开一张小桌子，我们就菜喝酒，说话变成了很久远的事。 久远到，你醉了，红通通的一张脸，擦眼泪旳纸装满了垃圾桶，我只知道给你递纸，所有想说的话都哽咽在你的泪...','','/storage/thumbnails/_signature/2JSCI94KFDQU985G3QJNJNNJVJ.jpg','你曾住在我心上，现在空了一个地方',67,0),(37,1,1,0,'2019-06-11 13:51:34',1,0,0,'时间敲起的一个个浪花，渐渐散开成水滴，一滴……一滴……又滴落回海里。 我们相遇在浪花里，最后散落到海里，或许还会再次相遇，却已不再是那浪花。 骄阳似火的日子似乎在昨天，冷风拂面不过在今日。 桑，你那儿天气好吗？是否和我一样冷热交叠？ 昨日梦里遇见...','夏日','/storage/thumbnails/_signature/RK15MSMH0GQ946ANA33B1C361.jpg','夏日骤凉 寒如秋至',25,0),(38,1,1,0,'2019-06-11 13:55:27',0,0,0,'陆地或海洋，相爱便好，遇见过便好，哪怕用荒凉的余生做抵偿。我们遇见了，可至始至终，都只是我爱你。 （壹） 雨是一身的过错，独成了失落。 日夜的飘雨，滴不成荒。 明明，应该是春暖花开的时节，花都开好了，却还没迎来温暖。 忘记了自己太多的事，是走的太...','时光','/storage/thumbnails/_signature/2L77LKUPNFOEE3SEMU37MKU75U.jpg','如果时光走了，谁还会等我？',39,0),(39,1,1,0,'2019-06-11 14:45:42',0,0,0,'','电音','/storage/thumbnails/_signature/31C9RJDMTR8VIBPADSLVJCJSTS.jpg','【MUSIC】Holiday Tobu / Itro 专辑：Holiday  ',149,0),(40,1,1,0,'2019-06-12 14:59:27',0,0,0,'在这缤纷的世界里，站在同一个太阳下，我们只有捧出一颗真心，真诚地对待别人，容纳别人，才能做好真正的自己。 一双灵空的耳“金无足赤，人无完人”。就是这样寥寥几字概括出一个亘古不变的真理。不错，我们每一个人都有自己的不足之处，在人生的道路上难免会出现...','微笑','/storage/thumbnails/_signature/68U8E4VQBB0387QFINIS3C6S6.jpg','用微笑面对生活，你会发现生命之美，永远与你同在',173,0);

/*Table structure for table `mto_post_attribute` */

DROP TABLE IF EXISTS `mto_post_attribute`;

CREATE TABLE `mto_post_attribute` (
  `id` bigint NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `editor` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'tinymce',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_post_attribute` */

insert  into `mto_post_attribute`(`id`,`content`,`editor`) values (35,'![2013103010052215.jpg_500x0.jpg](/storage/thumbnails/_signature/2789HV17N9BI0EP55B23G1NM2D.jpg)\r\n\r\n难过就是，虽然很难，但总会过去。\r\n\r\n今天晚上你买了很多酒，我们去楼下的餐馆炒了几个菜带了回来，摊开一张小桌子，我们就菜喝酒，说话变成了很久远的事。\r\n\r\n久远到，你醉了，红通通的一张脸，擦眼泪旳纸装满了垃圾桶，我只知道给你递纸，所有想说的话都哽咽在你的泪水里。\r\n\r\n“其实就算以后结婚……婚姻根本不需要爱情，我和他那么相爱了这么多年，最后不也是败给了时间，败给了距离，败给了他不愿意说，而我却只能反复问的生活里！”\r\n\r\n我不知道分手对于你来说是一次成长，还是一场打击，我不愿意看到你为了爱过的人如此落魄伤心，但是所有人都知道，爱情只是伤人。\r\n\r\n连最后剩下来的回忆，也都是泡在泪水里。\r\n\r\n你和男朋友从高中开始恋爱，时间漫长的可以从一个春夏秋冬过渡到另一个末日流年，他很爱你，身为朋友的我们都看在眼里，你们两曾经是我们所有人最羡慕的一对。说的土了点是郎才女貌，但有时候相爱的彼此能够如此，那就是最惊羡人的平凡。\r\n\r\n大学的时候我们出去写生，碰上五一放假的时间，他为了能够见到你，在火车上站了八个小时赶到你在的城市，然后又独自问路坐车，爬了几个小时的山，赶到了我们写生的那座山顶。\r\n\r\n那时候为了见你一面而不顾一切的他，真的很优秀，不仅感动你，也打动了我们许多同学，我们觉得那样幸福相爱的你们，就像是遇见了自己人生的宿命，是一种不露声色的欣喜。\r\n\r\n那就像是青春该有的模样，为了心爱的人，开始一场说走就走的旅行，路程中再多的艰苦，也都在彼此相见的那一刻，化成了值得的满足感。\r\n\r\n你哭着问我，为什么曾经最了解你的他，对你许下很多美好诺言的他，慢慢的连解释的话不愿多说一句。\r\n\r\n我记得最近你在夜里给他打去电话，问他为什么你们会变成这个样子，他说让你自己想。\r\n\r\n其实，我也不明白，为什么在恋爱最初的时候，男生可以每日每夜煲电话粥，说那么多动听的情话，可是随着时间慢慢流逝，男生的耐心是不是也流逝了？\r\n\r\n那么为什么？为什么要在最开始的时候许下那么多？做不到又何必信誓旦旦！\r\n\r\n不要怪我们总是爱当真，那是因为，我们真的爱得很真。\r\n\r\n看到别人在文章里说，恋爱结束，分手之后的俩人，还可以彼此破涕而笑平淡分手。\r\n\r\n我不知道他们是怎么做到的，我也不明白他们真的是否曾经爱到自己以为未来就是我和你，的那种不容有二的既定。\r\n\r\n但是在朋友哭着熟睡的这个深夜，我清晰地嗅到了爱情的伤痛。\r\n\r\n曾经每一个觉得平常的日子，在此刻想起来的时候，似乎都成了灼魂蚀骨的寻常。\r\n\r\n一双鞋，刚买的时候蹭一点灰都要蹲下来擦干净，穿久了之后即使被人踩了一脚可能也很少低头。人大抵是这样，无论对物还是对情。最初，她皱一下眉你都心疼，到后来，她掉眼泪你也不大紧张。\r\n生活就是这样，就算再悲伤，我们也还得擦干眼泪继续前行，我们开始变得小心翼翼控制感情，开始在爱和不爱中挣扎，我们会遇见更多的人，但是，我们想要的就只剩下平淡。\r\n\r\n收拾起眼泪，做自己生命里无冕的女王，又何苦去做爱情里卑微的奴隶？\r\n\r\n我开始想十年后的生活，那时候，朋友就会悲伤不在，成为一个幸福的人。\r\n\r\n【我要有个人和我一起吃饭，\r\n\r\n只要开心，路边摊一样吃的很满足。\r\n\r\n我要下班时，有个人在门口等我，\r\n\r\n然后手牵手一起压马路。\r\n\r\n我要在我难过时给我个肩膀让我依偎，\r\n\r\n心里的难过会好很多。\r\n\r\n我要在我孤单时，\r\n\r\n有个人给我发短信，让我听见你的声音。\r\n\r\n我要的只是一声乖，一句问候，\r\n\r\n一句别怕宝贝，我一会就去找你。','markdown'),(37,'![b452ac71gw1ehia2lj0r2j23a426lkjo-300x199.jpg](/storage/thumbnails/_signature/KUQF97QL6BH59E9GSUP2A9VMF.jpg)\r\n时间敲起的一个个浪花，渐渐散开成水滴，一滴……一滴……又滴落回海里。\r\n我们相遇在浪花里，最后散落到海里，或许还会再次相遇，却已不再是那浪花。\r\n\r\n骄阳似火的日子似乎在昨天，冷风拂面不过在今日。\r\n桑，你那儿天气好吗？是否和我一样冷热交叠？\r\n昨日梦里遇见你，留下一个背影，想念无法记得。\r\n努力想要去记起某些细节或是某些过程，可是，记忆是个很难缠的东西，越是想要记起却\r\n越是容易遗忘，而越是想要遗忘的东西却记得越是深刻。\r\n我在路边看着前几日雨水过后的残余，想着远方的你，我们是否能再次遇见。\r\n微风拂过，夹带着湿润的微凉，我就像是站在秋季一般，感觉有些凉意，而身边的路人似\r\n乎都很享受着这样的微凉，或许还依然感觉有些炎热。\r\n其实，我倒是庆幸下了这样一场雨，微凉瞬间替代了炎热，至少对于没有空调的我来说，\r\n这是一场及时雨。不过这样的突然转变却让我变成了彻彻底底的病人，或许是因为几日来\r\n玻璃窗都未关，因此有些受凉。\r\n也因为这样，半个月来不怎么用电脑和手机，手头的工作也都一直放着。直到昨日打开手机，发现好多信息，一条紧接着\r\n一条，我微微笑了笑，不免有些感动，原来我失踪了还有人会在乎。\r\n如果我从你的生活中消失了，你也会这样拼命的找我吗？\r\n曾经看过最多的一句话，不管是在哪里，看到的答案永远都是“会”。\r\n而真正在乎你的人不是应该会说，我永远都不会让你消失在我的生活中吗。\r\n我也想去拼命的寻找那个遗失了24年的妹妹，但是，我只是想而已，没有踪迹的寻找，不\r\n知该从何开始。','markdown'),(38,'![d51cb0d17545d9ff71cf2f8f42189f43.jpg](/storage/thumbnails/_signature/1UC7OV09GND2H8KOMCG0F7VV33.jpg)\r\n陆地或海洋，相爱便好，遇见过便好，哪怕用荒凉的余生做抵偿。我们遇见了，可至始至终，都只是我爱你。\r\n\r\n（壹）    雨是一身的过错，独成了失落。\r\n\r\n日夜的飘雨，滴不成荒。\r\n\r\n明明，应该是春暖花开的时节，花都开好了，却还没迎来温暖。\r\n\r\n忘记了自己太多的事，是走的太匆忙，还是因为记着你。只是，很久之后才明白： 没有要等的人，也没人等，才可以一身轻。\r\n\r\n而今，我停在这里，错过了花季。转身之后，才发现，已是千年万年。\r\n\r\n多少的是与非，都留给我一个人去辩知。所有的冷暖，自己去体会。\r\n\r\n午后，捧着一杯热茶，站在窗台。看远处无人问询的楼阁，看雨中偶尔的人迹。多少的繁华，尽于这一场烟雨。很久很久，不敢期盼一丝阳光倾蕴而至。\r\n\r\n闭上眼睛，我看不到烟雨，也看不到光亮。心，一寸一寸的，逐渐变成死灰。\r\n\r\n“阿念”\r\n\r\n“嗯？”\r\n\r\n“为什么送我这个？”\r\n\r\n“因为……我……喜欢你，我喜欢你。”\r\n\r\n“为什么喜欢我？”\r\n\r\n“安心，因为有你，就觉得很安心。”\r\n\r\n“阿念”\r\n\r\n“嗯”\r\n\r\n“其实，我给不了你想要的那种幸福”\r\n\r\n……\r\n\r\n睁开眼睛的时候，眼前是一片迷雾，脑海里只剩你发来的那首诗。\r\n\r\n书生一回逍遥醉，\r\n红唇皓齿笑意浓。\r\n水欲静而风不止，\r\n青湖有意酒无心。\r\n一滴泛起千层漾，\r\n香醇迷离心更乱 。\r\n\r\n你说，这是一个姑娘写给你的。然后，我便撕心裂肺的疼。\r\n\r\n雨是一身的过错，而我，独成了失落。\r\n\r\n（贰）    情不知何起，一往而深。\r\n\r\n雪小禅说：倾城必先倾心，而倾心了，一定是爱上一个人了。我想，爱情一定是这样的，在你还未来得及发觉，就已经埋下了祸根。嗯，对，是祸根，无从拔出。你看，就像我爱上了你之后，不知道怎么离开。\r\n\r\n铺开了雪白纸张，翻开了诗篇的一页。我提笔，却始终勾不出你身在江南的韵味。\r\n\r\n多少的黄昏，散不去的烟雨，在伞下，雨中，看不到你的身影。\r\n\r\n明明我相信着爱情，并且爱着你，可我却不信别人说的“喜欢”我。这一生，错过了你，我不知道谁才是对的人。嗯，就像有句话说的“深情一个错的你，世间再无对的人。”这一生，我知道，始终是错过了。可原谅我，无心去留恋别人的好。\r\n\r\n本子里，折起的一角，是为你写下的诗句。\r\n\r\n《忆江南》\r\n\r\n江南好，小楼夜留人，自得月下暗花香。\r\n\r\n影零乱，望中疑，谁为我歌一曲？\r\n\r\n若人问，非醉非醒，除君去，没人知。\r\n\r\n你也深知，我不甚言谈。深知我所有的脆弱以及悲伤。可，时光它，走了太远太远。我所有的悲喜，你再也不会去体会。\r\n\r\n【叁】     我无法表达孤独，也无法转述心中的喜悦。\r\n\r\n这一刻，我不知道怎么形容自己的心情，患得患失一般的去忙碌着。忙着的时候，我忘记了时间，忘了自己，忘了其实那么喜欢你。嗯，就是，无以复加的喜欢，被抽脱剥离。之后，只剩下一副躯体。\r\n\r\n洁白画纸，难以描摹的脸庞。时光伸展出触角，递与我与众不同的想象。在歇斯底里的搜寻记忆中的脸庞无果之后，都被我投进了纸篓里。\r\n\r\n关于你的一切，不想被人提及，而我却又时刻留在心底。有些话说不出来，有些情真意切也消散湮没。其实，我特别想知道多年以后的自己，重新回头看待现在的自己，这些所谓经历、所谓的爱情，会不会咯咯地笑起来。还是，会无奈地叹口气。\r\n\r\n当我写下这些字句，悲伤无以去除时，旁边的姑娘刚好叫着我的名字，一阵风从窗口漏进来，公路上的车响着，由远而近。这个时候，说不清道不明，我想去和你相遇。\r\n\r\n【肆】     明天，我们会不会在另一个纬度相遇？\r\n\r\n时光它不能停留，也不会停留，就像，你走的时候，我无论怎么伸手都握不到。过去的终究，还是过去了。我不祈求你留下来。\r\n\r\n这一生，如果要等一个人，我嫌时光它太长。可陪伴一个人，时光却又好像是太短了。而我似乎还太稚嫩，总显得有些执迷不悟。\r\n\r\n窗外好像隐约间听得见有些许雨滴溅落，打在屋檐上发出滴滴答答清亮的声音。听着电台，看完了一本书，心里湿漉漉的。并不是想流泪，也不是觉得欣喜，而是瞬间有一股轻松的安静扑过来 轻轻地拉扯着我。\r\n\r\n有时候，我很奇怪，老师为什么从来不干涉，就任我一堂课，一堂课地做着梦，任我看着与课堂无关的诗集。 偶尔，我也会在课堂上走会儿神，想着两年后的自己将会在哪里，遇见了谁，过着怎样的生活。这样偷偷幻想，小心翼翼地臆想着。\r\n\r\n我想着，如果将每一个遇见的人都安排在某一段不知名的故事里，那么那时候的画面是熙熙攘攘的嘈杂还是回眸再望的微笑呢？这样想着之后，心里满是期待。\r\n\r\n明天，我们会不会在另一个纬度相遇？多希望，昨天刚刚和你告别，而明天，你还在这里。你挑眉，望着我，斜斜的笑着。阳光，碎了一地。\r\n\r\n可是，一场风暴，使我们各分东西。你在我的航程上，而我，不在你的视线里。\r\n\r\n【伍】     陪着时光老去，留旧城一世荒芜。\r\n\r\n夜幕降临，灯光照着街角的时候，我躲在窗帘后面，看街上素不相识的人们擦肩而过。人潮拥挤，我看热闹，不敢收回视线。嗯，其实我怕，怕发现了自己的孤独。\r\n\r\n当车灯在眼际一闪而逝，仿佛时间被割开了一条裂痕，年轮跟着错乱，刺破心里的那层防备。黑暗里，我伸不出手，留不住温暖。汹涌而至的泪泉，眼皮子都挡不住。\r\n\r\n纷扰的人世里，一片慌乱。\r\n\r\n曾经，多想突然出现在你的城市里，踏着那片土地，我想，我一定会感到满足。因为也许我站着的地方，你刚好也站过。这种感觉多美好啊。\r\n\r\n而现在呢，我不敢去。\r\n\r\n我记得，我曾说：“若你不来，我便向你走去”，可此生，我不会再走向你。\r\n\r\n呵，就这样吧，让我在这个城市，陪着时光老去。\r\n\r\n【陆】     最后的温柔，是把手放开。\r\n\r\n最后，才终于知道，原来那些模糊不清的感情，是因为执着才变得深刻。不是不能忘记，而是，不想忘记。生命里，第一抹温暖，来自于你，就算悲伤得不能自己，也想努力的记着你。这是我的倔强。\r\n\r\n可是，我怕夜晚，华灯初上时，所有的孤独都无处躲藏。\r\n\r\n入夜之后，循环着一首歌。阿悄的《陪我去流浪》。\r\n\r\n哈，真是安静的雨夜。\r\n\r\n嗯，说不出再见的。可是，到此为止吧。把手放开，这是我最后的温柔。这样，我也好自由。\r\n\r\n【柒】    故事的最后，我们都没有最后，可我们还继续着生活\r\n\r\n嗯，我依旧在南宁。\r\n\r\n穿上茸茸的线衫，也不再羡慕那些四季如春的城市。庆幸自己生活在这里，冬夏分明。春天秋天不会冷得过分，冬末的回南天，也已经可以接受。我很好，安稳地在一座小城里听听风，过不快不慢的生活，偶尔和朋友去喝喝茶，说说心里话。\r\n\r\n走到楼底的树荫下，树影斑驳的间隙投射在脚下，我抬头，才发现云层里的太阳斜向着西边。红彤彤的像含少女害羞的脸庞一样，轻轻地抖一抖就红着脸跑走了。\r\n\r\n你好。你好，明天。\r\n\r\n你好。我笑着，轻轻的迈开了脚步。','markdown'),(39,'![2033445.jpg](/storage/thumbnails/_signature/1IOF57P32OMR3SAB4I220F4HK8.jpg)','markdown'),(40,'在这缤纷的世界里，站在同一个太阳下，我们只有捧出一颗真心，真诚地对待别人，容纳别人，才能做好真正的自己。\r\n\r\n\r\n一双灵空的耳“金无足赤，人无完人”。就是这样寥寥几字概括出一个亘古不变的真理。不错，我们每一个人都有自己的不足之处，在人生的道路上难免会出现这样那样的过失。\r\n\r\n但幸运的是我们还有亲人朋友，他们可以为我们排解许许多多的忧愁。在我们周围更有许多和我们志同道合之人。也许你身处逆境，但请不要灰心丧气，只要眼睛能够看到阳光，只要你敢于拼搏，只要你拥有一双灵空的耳，这个世界上，就没有什么困难能阻挡你。\r\n\r\n\r\n因为倾听是一种智慧，倾听是一笔财富，在他人的话语中，我们懂得许多自己无法发现的弊端，学会了倾听，我们才会找回真正的自己。\r\n\r\n\r\n一颗容人的心“海纳百川，有容乃大”。天空收容每一片云彩，不论美丑，所以天空广阔无边；大海吸纳每一条溪流，不论其大小，所以大海浩瀚无穷；高山接纳每一块岩石，不论其方正，所以高山巍峨无比。\r\n\r\n\r\n人生若能宽容每一次不如意，那么人生也将其乐无穷。因为宽容，春欣然接受雨的拍打，所以花香四溢；因为宽容，人们彼此体谅，所以和气满天下；也是因为宽容，人与人之间才不会有隔膜，只有微笑和惬意。拥有一颗容人的心，你的天空才会更加晴朗，你的心海才会更宽阔。\r\n\r\n\r\n一个真诚的笑笑是阳光，它能消除人们脸上的冬色，一个简单的微笑可以拉近两个人之间的距离。给陌生人一个微笑，你会得到一个好的心情；给朋友一个微笑，友谊之花会散发出更浓的芳香；给亲人一个微笑，浓浓亲情会在内心涌出；给每一条河每一座山一个真诚的笑，你会发现你天天生活在花的海洋，笑的怀抱。\r\n\r\n\r\n一双灵空的耳，学会了倾听；一颗容人的心，学会了坦然；一个真诚的笑，学会了快乐。严于律己，宽以待人，用微笑面对生活，你会发现生命之美永远与你同在。','markdown');

/*Table structure for table `mto_post_resource` */

DROP TABLE IF EXISTS `mto_post_resource`;

CREATE TABLE `mto_post_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `resource_id` bigint NOT NULL,
  `sort` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IK_POST_ID` (`post_id`) USING BTREE,
  KEY `IK_R_POST_ID` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_post_resource` */

insert  into `mto_post_resource`(`id`,`path`,`post_id`,`resource_id`,`sort`) values (44,'/storage/thumbnails/_signature/KUQF97QL6BH59E9GSUP2A9VMF.jpg',37,82,0),(45,'/storage/thumbnails/_signature/1UC7OV09GND2H8KOMCG0F7VV33.jpg',38,84,0),(64,'/storage/thumbnails/_signature/2789HV17N9BI0EP55B23G1NM2D.jpg',35,115,0),(75,'/storage/thumbnails/_signature/1IOF57P32OMR3SAB4I220F4HK8.jpg',39,199,0);

/*Table structure for table `mto_post_tag` */

DROP TABLE IF EXISTS `mto_post_tag`;

CREATE TABLE `mto_post_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  `weight` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IK_TAG_ID` (`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_post_tag` */

insert  into `mto_post_tag`(`id`,`post_id`,`tag_id`,`weight`) values (29,37,8,1610967901121),(30,38,9,1610967884687),(31,39,10,1610967861462),(32,40,11,1610967791067);

/*Table structure for table `mto_resource` */

DROP TABLE IF EXISTS `mto_resource`;

CREATE TABLE `mto_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` bigint NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_MD5` (`md5`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_resource` */

insert  into `mto_resource`(`id`,`amount`,`create_time`,`md5`,`path`,`update_time`) values (1,0,'2019-04-30 08:57:58','BB7LFPR0P5GRG50VQ992CTTE5','/storage/thumbnails/_signature/BB7LFPR0P5GRG50VQ992CTTE5.jpg','2019-04-30 08:57:58'),(2,0,'2019-04-30 09:00:52','35Q7VBEK3OT8DGSSRP37AH4VIE','/storage/thumbnails/_signature/35Q7VBEK3OT8DGSSRP37AH4VIE.jpg','2019-11-07 15:24:09'),(3,0,'2019-04-30 09:06:31','1GHRRJCO9C76DRO5REGBJPKC9O','/storage/thumbnails/_signature/1GHRRJCO9C76DRO5REGBJPKC9O.jpg','2021-01-18 18:57:54'),(4,0,'2019-04-30 09:06:43','21PP1OUD0ID6MDLIJGAII78PJV','/storage/thumbnails/_signature/21PP1OUD0ID6MDLIJGAII78PJV.jpg','2019-04-30 09:06:43'),(5,0,'2019-04-30 09:08:19','14CCIOKI9JDE3UC0I16FJIE7DF','/storage/thumbnails/_signature/14CCIOKI9JDE3UC0I16FJIE7DF.jpg','2019-04-30 09:08:19'),(6,0,'2019-04-30 09:08:39','3J8200LKISII79JS87C75F38QD','/storage/thumbnails/_signature/3J8200LKISII79JS87C75F38QD.jpg','2021-01-18 18:57:54'),(7,0,'2019-04-30 09:10:08','1MACCTB1F7PT0R38ONDO3FHSKV','/storage/thumbnails/_signature/1MACCTB1F7PT0R38ONDO3FHSKV.jpg','2019-04-30 09:10:08'),(8,0,'2019-04-30 09:10:27','JDD3HIT8OKJ22IJGG3236MDU4','/storage/thumbnails/_signature/JDD3HIT8OKJ22IJGG3236MDU4.jpg','2021-01-18 18:58:04'),(9,0,'2019-04-30 09:11:10','15I1K8V39R73EI12MOLP8103OH','/storage/thumbnails/_signature/15I1K8V39R73EI12MOLP8103OH.jpg','2019-04-30 09:11:10'),(10,0,'2019-04-30 09:11:34','14M9I5Q5PASBLBPOGORJ0RU7RO','/storage/thumbnails/_signature/14M9I5Q5PASBLBPOGORJ0RU7RO.jpg','2021-01-18 18:58:04'),(11,0,'2019-04-30 09:12:00','2OMTC0F82IS8O3T8R36F1RA892','/storage/thumbnails/_signature/2OMTC0F82IS8O3T8R36F1RA892.jpg','2019-04-30 09:12:00'),(12,0,'2019-04-30 09:12:21','8KGLIC6U21S3FBMTH2I422RV4','/storage/thumbnails/_signature/8KGLIC6U21S3FBMTH2I422RV4.jpg','2021-01-18 18:58:04'),(13,0,'2019-04-30 09:13:10','3SGKUA4R7QTE7KCRDATD9OLR3B','/storage/thumbnails/_signature/3SGKUA4R7QTE7KCRDATD9OLR3B.jpg','2019-04-30 09:13:10'),(14,0,'2019-04-30 09:13:23','1VJ343JNSF8A9ROEGJK7M69LNG','/storage/thumbnails/_signature/1VJ343JNSF8A9ROEGJK7M69LNG.jpg','2021-01-18 18:58:05'),(15,0,'2019-04-30 09:15:22','319AMDLDUTS9CC13E4NS7HMT0P','/storage/thumbnails/_signature/319AMDLDUTS9CC13E4NS7HMT0P.jpg','2019-04-30 09:15:22'),(16,0,'2019-04-30 09:16:20','35S012TJM6TPSNLLRQHJ1N7A89','/storage/thumbnails/_signature/35S012TJM6TPSNLLRQHJ1N7A89.jpg','2021-01-18 18:58:05'),(17,0,'2019-04-30 09:17:54','2H3QLVE7J8LK49BUM0UU39J4I5','/storage/thumbnails/_signature/2H3QLVE7J8LK49BUM0UU39J4I5.jpg','2021-01-18 18:58:05'),(18,0,'2019-04-30 09:18:42','30IS58AE02END7RJMBUFOUF5QI','/storage/thumbnails/_signature/30IS58AE02END7RJMBUFOUF5QI.jpg','2021-01-18 18:58:05'),(19,0,'2019-04-30 09:18:47','1D1E5FC13UHS5LTMDSSJCNEIA4','/storage/thumbnails/_signature/1D1E5FC13UHS5LTMDSSJCNEIA4.jpg','2021-01-18 18:58:05'),(20,0,'2019-04-30 09:18:50','LG9SL8GG5TATKM9ACFJU1585D','/storage/thumbnails/_signature/LG9SL8GG5TATKM9ACFJU1585D.jpg','2021-01-18 18:58:05'),(21,0,'2019-04-30 09:18:54','2EHNAACABO1THK8KBE21KRFGRS','/storage/thumbnails/_signature/2EHNAACABO1THK8KBE21KRFGRS.jpg','2019-04-30 09:18:54'),(22,0,'2019-04-30 09:20:02','3QV25K5GT6PJEUGBBU2RKESOCV','/storage/thumbnails/_signature/3QV25K5GT6PJEUGBBU2RKESOCV.jpg','2019-04-30 09:20:02'),(23,0,'2019-04-30 09:20:22','2EP81JG7KPHJH0C5FS4TEFU77F','/storage/thumbnails/_signature/2EP81JG7KPHJH0C5FS4TEFU77F.jpg','2021-01-18 18:58:05'),(24,0,'2019-04-30 09:21:12','22VJ5JACD3G2J1MRC34GMR5BIQ','/storage/thumbnails/_signature/22VJ5JACD3G2J1MRC34GMR5BIQ.jpg','2019-04-30 09:21:12'),(25,0,'2019-04-30 09:21:24','2JRK08LCNSCS8T76529EUU8K3J','/storage/thumbnails/_signature/2JRK08LCNSCS8T76529EUU8K3J.jpg','2019-05-31 10:35:19'),(26,0,'2019-04-30 09:21:59','1737F1K5G0DFDFDP4MNUHPKI40','/storage/thumbnails/_signature/1737F1K5G0DFDFDP4MNUHPKI40.jpg','2019-04-30 09:21:59'),(27,0,'2019-04-30 09:22:27','EERFCQ255M02OET4RROSOJOH','/storage/thumbnails/_signature/EERFCQ255M02OET4RROSOJOH.jpg','2021-01-18 18:58:05'),(28,0,'2019-04-30 09:23:21','2C3K8OUQ1KCM95FFSTC4JNIF29','/storage/thumbnails/_signature/2C3K8OUQ1KCM95FFSTC4JNIF29.jpg','2021-01-18 18:58:05'),(29,0,'2019-04-30 09:23:28','3488PJKHM3J2QK2RCRAMQHH0M8','/storage/thumbnails/_signature/3488PJKHM3J2QK2RCRAMQHH0M8.jpg','2019-04-30 09:23:28'),(30,0,'2019-04-30 09:24:49','K04U65APA87BDC1GHRAK63DCD','/storage/thumbnails/_signature/K04U65APA87BDC1GHRAK63DCD.jpg','2021-01-18 18:58:13'),(31,0,'2019-04-30 09:25:34','2BVABD70KNEUS35PA9LB88CJQ3','/storage/thumbnails/_signature/2BVABD70KNEUS35PA9LB88CJQ3.jpg','2019-04-30 09:25:34'),(32,0,'2019-04-30 09:26:48','149K1U78U9BJG3U0Q4J6UE93A3','/storage/thumbnails/_signature/149K1U78U9BJG3U0Q4J6UE93A3.jpg','2019-04-30 09:26:48'),(33,0,'2019-04-30 09:26:57','2L61EEMCQN7MN39PAAF0HOPAO','/storage/thumbnails/_signature/2L61EEMCQN7MN39PAAF0HOPAO.jpg','2021-01-18 18:58:13'),(34,0,'2019-04-30 09:29:19','3MAAQR10SRUOG5LN6T7I61M4PM','/storage/thumbnails/_signature/3MAAQR10SRUOG5LN6T7I61M4PM.jpg','2019-04-30 09:29:19'),(35,0,'2019-04-30 09:29:32','2UE3F3D3DO2NR246JP0P9RJ7OH','/storage/thumbnails/_signature/2UE3F3D3DO2NR246JP0P9RJ7OH.jpg','2021-01-18 18:58:13'),(36,0,'2019-04-30 09:31:31','1J0R5OON3677O9QKKQNMFEF2A4','/storage/thumbnails/_signature/1J0R5OON3677O9QKKQNMFEF2A4.jpg','2019-04-30 09:31:31'),(37,0,'2019-04-30 09:31:39','1KJK0E2SH6J46EOMF22MB345QV','/storage/thumbnails/_signature/1KJK0E2SH6J46EOMF22MB345QV.jpg','2021-01-18 18:58:13'),(38,0,'2019-04-30 09:32:51','1UGAHSJESKRHQHN97KUI4MF88U','/storage/thumbnails/_signature/1UGAHSJESKRHQHN97KUI4MF88U.jpg','2021-01-18 18:58:13'),(39,0,'2019-04-30 09:32:56','8C56NERKLOIHLMC1IJC6D8RPF','/storage/thumbnails/_signature/8C56NERKLOIHLMC1IJC6D8RPF.jpg','2021-01-18 18:58:13'),(40,0,'2019-04-30 09:33:01','2UCN9L03JRNEHERCH69V2N3S5G','/storage/thumbnails/_signature/2UCN9L03JRNEHERCH69V2N3S5G.jpg','2021-01-18 18:58:13'),(41,0,'2019-04-30 09:33:06','2OJ5M5TOKGNOL0SOJAKBPSRNF8','/storage/thumbnails/_signature/2OJ5M5TOKGNOL0SOJAKBPSRNF8.jpg','2021-01-18 18:58:13'),(42,0,'2019-04-30 09:33:12','2TJMKEUONRNLB7KPCTQIFE4DK5','/storage/thumbnails/_signature/2TJMKEUONRNLB7KPCTQIFE4DK5.jpg','2021-01-18 18:58:13'),(43,0,'2019-04-30 09:33:23','4I84B5IDE5PV01N20DTFVEOV7','/storage/thumbnails/_signature/4I84B5IDE5PV01N20DTFVEOV7.jpg','2021-01-18 18:58:13'),(44,0,'2019-04-30 09:34:09','29BL4BM8R7A87CT1488OAQMEIK','/storage/thumbnails/_signature/29BL4BM8R7A87CT1488OAQMEIK.jpg','2019-04-30 09:34:09'),(45,0,'2019-04-30 09:35:05','12B0OHK9T8BP05MCCMC8HP8DOB','/storage/thumbnails/_signature/12B0OHK9T8BP05MCCMC8HP8DOB.jpg','2019-04-30 09:35:05'),(46,0,'2019-04-30 09:35:17','35QKKQQ9PH6KLCOH6BKKA63K6D','/storage/thumbnails/_signature/35QKKQQ9PH6KLCOH6BKKA63K6D.jpg','2021-01-18 18:58:13'),(47,0,'2019-04-30 09:40:19','2G2O8KV8KKATH1U8N26S7UO80L','/storage/thumbnails/_signature/2G2O8KV8KKATH1U8N26S7UO80L.jpg','2019-04-30 09:40:19'),(48,0,'2019-04-30 09:41:19','2QNA0S154RH5OCL0J98SC7O7SN','/storage/thumbnails/_signature/2QNA0S154RH5OCL0J98SC7O7SN.jpg','2021-01-18 18:58:13'),(49,0,'2019-04-30 09:41:23','1G9F56N6JUFKAIIE4C66USQI40','/storage/thumbnails/_signature/1G9F56N6JUFKAIIE4C66USQI40.jpg','2019-04-30 09:41:23'),(50,0,'2019-04-30 09:42:22','LTT36GFCL2RI65HLQPCJKQU9','/storage/thumbnails/_signature/LTT36GFCL2RI65HLQPCJKQU9.jpg','2021-01-18 18:58:13'),(51,0,'2019-04-30 09:42:25','235NGEK16H2C025RSLK05LI4I4','/storage/thumbnails/_signature/235NGEK16H2C025RSLK05LI4I4.jpg','2019-04-30 09:42:25'),(52,0,'2019-04-30 09:45:02','1H5CUC63OFTI0JUV93VITJM0V4','/storage/thumbnails/_signature/1H5CUC63OFTI0JUV93VITJM0V4.jpg','2019-04-30 09:45:02'),(53,0,'2019-04-30 09:45:08','1Q6STIQ0IB2GUUHQ77TBIIEJGI','/storage/thumbnails/_signature/1Q6STIQ0IB2GUUHQ77TBIIEJGI.jpg','2021-01-18 18:58:13'),(54,0,'2019-04-30 09:55:19','2TCNU0MFTRU4JB4JN5NNJLJLO2','/storage/thumbnails/_signature/2TCNU0MFTRU4JB4JN5NNJLJLO2.jpg','2019-04-30 09:55:19'),(55,0,'2019-04-30 09:56:04','2Q6RJF9GSTQMMMTF6991AT40S8','/storage/thumbnails/_signature/2Q6RJF9GSTQMMMTF6991AT40S8.jpg','2019-06-14 11:33:35'),(56,0,'2019-04-30 09:56:10','2UTA2FBHJL58VBVFRBU9M1H1J6','/storage/thumbnails/_signature/2UTA2FBHJL58VBVFRBU9M1H1J6.jpg','2019-06-14 12:55:24'),(57,0,'2019-04-30 09:56:18','EB4JDHLC2GJBF3CMQTH9OK69V','/storage/thumbnails/_signature/EB4JDHLC2GJBF3CMQTH9OK69V.jpg','2019-06-14 12:55:24'),(58,0,'2019-04-30 09:56:25','2CGNDSK11ITN4BOKG2FLBVHQU','/storage/thumbnails/_signature/2CGNDSK11ITN4BOKG2FLBVHQU.jpg','2019-06-14 12:55:24'),(59,0,'2019-04-30 09:56:29','3P40MGDIVSSBEO8JBL10JEMPV1','/storage/thumbnails/_signature/3P40MGDIVSSBEO8JBL10JEMPV1.jpg','2019-06-14 12:55:24'),(60,0,'2019-04-30 09:56:42','D1Q64QTIRAC1JLFGGK3D5B33P','/storage/thumbnails/_signature/D1Q64QTIRAC1JLFGGK3D5B33P.jpg','2019-06-14 12:55:24'),(61,0,'2019-04-30 09:56:52','16JNK9AMTEQSTJ1BTJP78TK3IB','/storage/thumbnails/_signature/16JNK9AMTEQSTJ1BTJP78TK3IB.jpg','2019-06-14 12:55:24'),(62,0,'2019-04-30 09:57:10','1IJ2EDNRP6TUUS5HPI1ENN82HK','/storage/thumbnails/_signature/1IJ2EDNRP6TUUS5HPI1ENN82HK.jpg','2019-06-14 12:55:24'),(63,0,'2019-04-30 10:03:55','2V7QNQ9IOQH8CUVFLCAHJ6OA44','/storage/thumbnails/_signature/2V7QNQ9IOQH8CUVFLCAHJ6OA44.jpg','2019-04-30 10:03:55'),(64,0,'2019-04-30 10:04:51','2QSTRL4S084P70E30R1G16OHFE','/storage/thumbnails/_signature/2QSTRL4S084P70E30R1G16OHFE.jpg','2021-01-18 18:58:34'),(65,0,'2019-05-06 07:28:29','33MRKN1MUHU6HBNJQUALKKSHRM','/storage/thumbnails/_signature/33MRKN1MUHU6HBNJQUALKKSHRM.jpg','2019-05-06 07:28:29'),(66,0,'2019-05-07 12:22:53','2VPM9PSBS4EPD0RRDLRS1Q17LC','/storage/thumbnails/_signature/2VPM9PSBS4EPD0RRDLRS1Q17LC.jpg','2019-05-07 12:22:53'),(67,0,'2019-05-08 08:10:26','39K3LIDP7R7PJ9QA2PDJLHHFBA','/storage/thumbnails/_signature/39K3LIDP7R7PJ9QA2PDJLHHFBA.jpg','2019-05-08 08:10:26'),(68,0,'2019-05-08 17:14:11','2T1L1PTH36D8LK50VAGL3R4N4H','/storage/thumbnails/_signature/2T1L1PTH36D8LK50VAGL3R4N4H.jpg','2019-05-08 17:14:11'),(69,0,'2019-05-08 17:15:20','1NK1LPLLQUQEO1T5QAALC1PBNS','/storage/thumbnails/_signature/1NK1LPLLQUQEO1T5QAALC1PBNS.jpg','2019-05-08 17:15:20'),(70,0,'2019-05-09 08:27:40','1244OQL9VCA1CTBHPC16TU4LTQ','/storage/thumbnails/_signature/1244OQL9VCA1CTBHPC16TU4LTQ.jpg','2019-05-09 08:27:40'),(71,0,'2019-05-09 10:21:44','26NOH4SBV4QBKV049IVGNMSSJR','/storage/thumbnails/_signature/26NOH4SBV4QBKV049IVGNMSSJR.jpg','2019-06-12 15:17:15'),(72,0,'2019-05-09 10:21:56','2CMK09SV1JAV0FCAN2B26L4D5J','/storage/thumbnails/_signature/2CMK09SV1JAV0FCAN2B26L4D5J.jpg','2019-06-12 15:17:15'),(73,0,'2019-05-09 10:22:02','Q378HN3H78DHAER56O4U393FK','/storage/thumbnails/_signature/Q378HN3H78DHAER56O4U393FK.jpg','2019-06-12 15:17:15'),(74,0,'2019-05-10 10:33:39','1HD2C5U9PVCHMM9RMBVC7RBUA0','/storage/thumbnails/_signature/1HD2C5U9PVCHMM9RMBVC7RBUA0.jpg','2019-05-10 10:33:39'),(75,0,'2019-05-11 11:04:06','MQ3F6K6FLD8S2LQ4M3KFA0QI0','/storage/thumbnails/_signature/MQ3F6K6FLD8S2LQ4M3KFA0QI0.jpg','2019-05-11 11:04:06'),(76,0,'2019-05-11 11:07:43','31EN7QBAFO4PG2RVGTGUVRKP6A','/storage/thumbnails/_signature/31EN7QBAFO4PG2RVGTGUVRKP6A.png','2019-05-11 11:07:43'),(77,0,'2019-05-11 11:17:19','1DFMD603K04NEKV9DM6R7T0F5Q','/storage/thumbnails/_signature/1DFMD603K04NEKV9DM6R7T0F5Q.png','2019-05-11 11:17:19'),(78,0,'2019-05-30 11:44:05','37INOCRDVEF0CAA9MK754H63VO','/storage/thumbnails/_signature/37INOCRDVEF0CAA9MK754H63VO.jpg','2019-05-30 11:44:05'),(79,0,'2019-05-30 11:46:28','1STHB5VPRQILPP9PO7OQHAPPFD','/storage/thumbnails/_signature/1STHB5VPRQILPP9PO7OQHAPPFD.jpg','2019-05-30 11:46:28'),(80,0,'2019-05-30 14:49:45','QPVA94NOLSQJOIGN33D7UDD50','/storage/thumbnails/_signature/QPVA94NOLSQJOIGN33D7UDD50.jpg','2019-05-30 14:49:45'),(81,0,'2019-05-31 10:35:17','2J814P948I2SMNMKCJASM0Q337','/storage/thumbnails/_signature/2J814P948I2SMNMKCJASM0Q337.jpg','2021-01-18 18:58:05'),(82,1,'2019-06-11 13:51:13','KUQF97QL6BH59E9GSUP2A9VMF','/storage/thumbnails/_signature/KUQF97QL6BH59E9GSUP2A9VMF.jpg','2019-06-11 13:51:33'),(83,0,'2019-06-11 13:51:26','74ED6N1KJNNQAEMD9LC6V6U1D','/storage/thumbnails/_signature/74ED6N1KJNNQAEMD9LC6V6U1D.png','2019-06-11 13:51:26'),(84,1,'2019-06-11 13:55:05','1UC7OV09GND2H8KOMCG0F7VV33','/storage/thumbnails/_signature/1UC7OV09GND2H8KOMCG0F7VV33.jpg','2019-06-11 13:55:27'),(85,0,'2019-06-11 13:55:18','276ESSF7DRJ60PMHOHRFPFRT41','/storage/thumbnails/_signature/276ESSF7DRJ60PMHOHRFPFRT41.jpg','2019-06-11 13:55:18'),(86,0,'2019-06-11 14:42:23','2T8LMEHGT8B4MMHRQEGCVE9M7U','/storage/thumbnails/_signature/2T8LMEHGT8B4MMHRQEGCVE9M7U.jpg','2019-06-11 14:42:23'),(87,0,'2019-06-11 14:45:30','3LUI43L0UONR2HS5UA612Q9QJR','/storage/thumbnails/_signature/3LUI43L0UONR2HS5UA612Q9QJR.jpg','2021-01-18 19:04:21'),(88,0,'2019-06-12 10:40:40','2TUJ6AQSG6EI5VGV67B6N40631','/storage/thumbnails/_signature/2TUJ6AQSG6EI5VGV67B6N40631.jpg','2019-06-12 10:40:40'),(89,0,'2019-06-12 14:34:50','3SU1JCP7FNA9J4SJBV6SEE9KHG','/storage/thumbnails/_signature/3SU1JCP7FNA9J4SJBV6SEE9KHG.jpg','2019-06-12 14:34:50'),(90,0,'2019-06-12 14:35:10','COAQ21PH89JV225T10LRRNOTH','/storage/thumbnails/_signature/COAQ21PH89JV225T10LRRNOTH.jpg','2019-06-12 14:43:34'),(91,0,'2019-06-12 14:40:53','U754RQKKIJLAJ5L0BPA23G9BQ','/storage/thumbnails/_signature/U754RQKKIJLAJ5L0BPA23G9BQ.jpg','2019-06-12 14:40:53'),(92,0,'2019-06-12 14:41:12','T5CF2F4HG2FV9EB91OPAPDND','/storage/thumbnails/_signature/T5CF2F4HG2FV9EB91OPAPDND.jpg','2019-06-12 14:41:12'),(93,0,'2019-06-12 14:42:40','1MO4GVDFAD2M2PFMR12AIHQ8U5','/storage/thumbnails/_signature/1MO4GVDFAD2M2PFMR12AIHQ8U5.jpeg','2019-06-12 14:42:40'),(94,0,'2019-06-12 14:59:20','F4QIPMGVVEQS6SMB1T067H1TO','/storage/thumbnails/_signature/F4QIPMGVVEQS6SMB1T067H1TO.jpg','2019-06-12 14:59:20'),(95,0,'2019-06-12 15:15:42','3DTE0EPEU6QDMDHO7NKQ9S4GFM','/storage/thumbnails/_signature/3DTE0EPEU6QDMDHO7NKQ9S4GFM.jpg','2021-01-18 18:57:40'),(96,0,'2019-06-12 15:15:46','3JA7QMVPAIBK5LQD8H50RC3P7D','/storage/thumbnails/_signature/3JA7QMVPAIBK5LQD8H50RC3P7D.jpeg','2021-01-18 18:57:40'),(97,0,'2019-06-12 15:15:51','8DKE946KOSM20TROTT4G209KR','/storage/thumbnails/_signature/8DKE946KOSM20TROTT4G209KR.jpeg','2021-01-18 18:57:40'),(98,0,'2019-06-12 15:15:55','5IIJGMI0UHP81KIMP2PIEAKQ7','/storage/thumbnails/_signature/5IIJGMI0UHP81KIMP2PIEAKQ7.jpg','2021-01-18 18:57:40'),(99,0,'2019-06-12 15:15:58','2LJ8H5ANR634498VN4U6LI39B','/storage/thumbnails/_signature/2LJ8H5ANR634498VN4U6LI39B.jpeg','2021-01-18 18:57:40'),(100,0,'2019-06-12 15:16:02','1887RIAUJF4LGTMAIUDK9MC3IJ','/storage/thumbnails/_signature/1887RIAUJF4LGTMAIUDK9MC3IJ.jpg','2021-01-18 18:57:40'),(101,0,'2019-06-12 15:16:07','322M6135UQQT3TUHRMKL553JIU','/storage/thumbnails/_signature/322M6135UQQT3TUHRMKL553JIU.jpeg','2021-01-18 18:57:40'),(102,0,'2019-06-12 15:16:12','3KFGFP314Q12MQBRBF61622LP8','/storage/thumbnails/_signature/3KFGFP314Q12MQBRBF61622LP8.jpg','2021-01-18 18:57:40'),(103,0,'2019-06-12 15:17:13','2E89LCP36V660GAJ18KTJ24E6G','/storage/thumbnails/_signature/2E89LCP36V660GAJ18KTJ24E6G.jpg','2019-06-12 15:17:13'),(104,0,'2019-06-12 15:18:48','23FOLMMTDSMUN558VLSP2U5H1P','/storage/thumbnails/_signature/23FOLMMTDSMUN558VLSP2U5H1P.jpg','2021-01-18 18:57:39'),(105,0,'2019-06-12 15:18:52','1US2M221EJ2QOUO62T3I38FPBK','/storage/thumbnails/_signature/1US2M221EJ2QOUO62T3I38FPBK.jpg','2021-01-18 18:57:39'),(106,0,'2019-06-12 15:18:55','2AR8SPDB8O00CT8SQTQJQ4KUCN','/storage/thumbnails/_signature/2AR8SPDB8O00CT8SQTQJQ4KUCN.jpg','2021-01-18 18:57:39'),(107,0,'2019-06-12 15:19:01','28VQDQ8RNP4SFLKBETE46PJ126','/storage/thumbnails/_signature/28VQDQ8RNP4SFLKBETE46PJ126.jpg','2021-01-18 18:57:39'),(108,0,'2019-06-12 15:19:06','QF6SVOSH1PRDEG58KPJUT2RIH','/storage/thumbnails/_signature/QF6SVOSH1PRDEG58KPJUT2RIH.jpg','2021-01-18 18:57:39'),(109,0,'2019-06-12 15:19:10','33H22JEPKQ35P1DRSDBP91FNKI','/storage/thumbnails/_signature/33H22JEPKQ35P1DRSDBP91FNKI.jpg','2021-01-18 18:57:39'),(110,0,'2019-06-12 15:19:14','18S2ND7EJ1ML51EUFJ696A98J3','/storage/thumbnails/_signature/18S2ND7EJ1ML51EUFJ696A98J3.jpg','2021-01-18 18:57:39'),(111,0,'2019-06-12 15:19:35','196OVS3UHRJJ83F9MNUFAQJQ6V','/storage/thumbnails/_signature/196OVS3UHRJJ83F9MNUFAQJQ6V.jpg','2019-06-12 15:19:35'),(112,0,'2019-06-12 15:21:00','KRUQBOM8VJACQ8LU6QNGSRC2B','/storage/thumbnails/_signature/KRUQBOM8VJACQ8LU6QNGSRC2B.jpg','2021-01-18 18:57:39'),(113,0,'2019-06-12 15:27:24','1USTV6KGB0I3BQ0CO3US21S5RE','/storage/thumbnails/_signature/1USTV6KGB0I3BQ0CO3US21S5RE.jpg','2019-06-12 15:27:24'),(114,0,'2019-06-12 15:28:06','C46M3O0NL1JPL2T60L8ETCC98','/storage/thumbnails/_signature/C46M3O0NL1JPL2T60L8ETCC98.jpg','2019-06-12 15:28:06'),(115,1,'2019-06-12 15:29:33','2789HV17N9BI0EP55B23G1NM2D','/storage/thumbnails/_signature/2789HV17N9BI0EP55B23G1NM2D.jpg','2019-06-12 15:29:45'),(116,0,'2019-06-12 15:29:44','7RAALQMQ1J3QCPLNFTMDKMSGS','/storage/thumbnails/_signature/7RAALQMQ1J3QCPLNFTMDKMSGS.jpg','2019-06-12 15:29:44'),(117,0,'2019-06-12 15:30:41','3B0MUF4S0DERRUQANPLHLC2LAE','/storage/thumbnails/_signature/3B0MUF4S0DERRUQANPLHLC2LAE.jpg','2019-06-12 15:30:41'),(118,0,'2019-06-12 15:31:45','30N7FNPC8DVTAKV6QUNRAGT0Q1','/storage/thumbnails/_signature/30N7FNPC8DVTAKV6QUNRAGT0Q1.jpg','2019-06-12 15:31:45'),(119,0,'2019-06-14 11:33:29','U0I7KUHLH186ACPC2KSAHTTCD','/storage/thumbnails/_signature/U0I7KUHLH186ACPC2KSAHTTCD.jpg','2019-06-14 12:55:24'),(120,0,'2019-06-14 12:54:34','2579E4DT3VMJ4NNSG5C9FBGHAC','/storage/thumbnails/_signature/2579E4DT3VMJ4NNSG5C9FBGHAC.jpg','2021-01-18 18:58:34'),(121,0,'2019-06-14 12:54:39','25K9U8TEVA68CTNNDPQA1JS36H','/storage/thumbnails/_signature/25K9U8TEVA68CTNNDPQA1JS36H.jpg','2021-01-18 18:58:34'),(122,0,'2019-06-14 12:54:47','12895O5DCRNBMVN4RL5VUJTTU6','/storage/thumbnails/_signature/12895O5DCRNBMVN4RL5VUJTTU6.jpg','2021-01-18 18:58:34'),(123,0,'2019-06-14 12:54:51','2KTEHURJEDL8J1QIAR0N0PLP33','/storage/thumbnails/_signature/2KTEHURJEDL8J1QIAR0N0PLP33.jpg','2021-01-18 18:58:34'),(124,0,'2019-06-14 12:54:58','28V8KQU6516EURHR5240JCM33A','/storage/thumbnails/_signature/28V8KQU6516EURHR5240JCM33A.jpg','2021-01-18 18:58:34'),(125,0,'2019-06-14 12:55:23','IHQASKA7RCQUM75TSOD000097','/storage/thumbnails/_signature/IHQASKA7RCQUM75TSOD000097.jpg','2019-06-14 12:55:23'),(126,0,'2019-06-29 15:20:49','3SMKTGJ6HQGC8VD29RPLKTQ942','/storage/thumbnails/_signature/3SMKTGJ6HQGC8VD29RPLKTQ942.png','2019-06-29 15:20:49'),(127,0,'2019-06-29 15:21:22','HBVQRD2FQFDDVK1OTSIP4HM4D','/storage/thumbnails/_signature/HBVQRD2FQFDDVK1OTSIP4HM4D.png','2019-06-29 15:21:22'),(128,0,'2019-06-29 15:21:50','23TQ7HV8DPSJCHSDL3C6P5CC9S','/storage/thumbnails/_signature/23TQ7HV8DPSJCHSDL3C6P5CC9S.png','2019-06-29 15:21:50'),(129,0,'2019-06-29 15:28:22','1QD1LT35ODVUGDT2558VQNSNF1','/storage/thumbnails/_signature/1QD1LT35ODVUGDT2558VQNSNF1.png','2019-06-29 15:28:22'),(130,0,'2019-06-29 15:28:43','2DQ2M4MVHHNL2JRCLP30I2IC0Q','/storage/thumbnails/_signature/2DQ2M4MVHHNL2JRCLP30I2IC0Q.png','2019-06-29 15:28:43'),(131,0,'2019-06-29 15:29:14','1CDLI3C3QRTCL31T03J10OD7FG','/storage/thumbnails/_signature/1CDLI3C3QRTCL31T03J10OD7FG.png','2019-06-29 15:29:14'),(132,0,'2019-06-29 15:33:27','2MCMO0HVQ0O78IPIM5UTPPGKQK','/storage/thumbnails/_signature/2MCMO0HVQ0O78IPIM5UTPPGKQK.png','2019-06-29 15:33:27'),(133,0,'2019-06-29 15:35:57','1H09NSQ60RJL82TFTI0VABG7GT','/storage/thumbnails/_signature/1H09NSQ60RJL82TFTI0VABG7GT.png','2019-06-29 15:35:57'),(134,0,'2019-06-29 15:36:19','11OC7HB34CETEI9TT9E1L0EOO8','/storage/thumbnails/_signature/11OC7HB34CETEI9TT9E1L0EOO8.png','2019-06-29 15:36:19'),(135,0,'2019-06-29 15:36:35','1V2U1LFPRQAMKT6CH0DAQ6IT04','/storage/thumbnails/_signature/1V2U1LFPRQAMKT6CH0DAQ6IT04.png','2019-06-29 15:36:35'),(136,0,'2019-06-29 15:37:27','2VOV446R3HMB4IEPRV9RC7QCUD','/storage/thumbnails/_signature/2VOV446R3HMB4IEPRV9RC7QCUD.png','2019-06-29 15:37:27'),(137,0,'2019-06-29 15:37:57','KQ0G3689ECERQ6FESVCE73C48','/storage/thumbnails/_signature/KQ0G3689ECERQ6FESVCE73C48.png','2019-06-29 15:37:57'),(138,0,'2019-07-02 10:16:51','1NN09FQ4VLCGSN89GFQILUU42L','/storage/thumbnails/_signature/1NN09FQ4VLCGSN89GFQILUU42L.jpg','2019-07-02 10:16:51'),(139,0,'2019-07-02 10:20:39','1VHNKKJFEF7D2NKQEOPGID1PHN','/storage/thumbnails/_signature/1VHNKKJFEF7D2NKQEOPGID1PHN.jpg','2019-07-02 10:20:39'),(140,0,'2019-07-02 10:21:09','1MQNN9KDRTV458NUDD0VM3Q713','/storage/thumbnails/_signature/1MQNN9KDRTV458NUDD0VM3Q713.jpg','2019-07-02 10:21:09'),(141,0,'2019-07-02 10:22:38','2HFFRQVF9BCJJ0TN7JTTUM8Q5M','/storage/thumbnails/_signature/2HFFRQVF9BCJJ0TN7JTTUM8Q5M.jpg','2019-07-02 10:22:38'),(142,0,'2019-08-10 15:23:22','2F6TBFSM1B2EMIMB19PGULS9OI','/storage/thumbnails/_signature/2F6TBFSM1B2EMIMB19PGULS9OI.jpg','2019-08-10 15:23:22'),(143,0,'2019-08-10 15:25:30','2MOKA4D8VIQRLGVE0RDF77QHB9','/storage/thumbnails/_signature/2MOKA4D8VIQRLGVE0RDF77QHB9.jpg','2019-08-12 10:07:34'),(144,0,'2019-08-12 10:07:32','27433T8N2V2QP9UO5KV43TAQU8','/storage/thumbnails/_signature/27433T8N2V2QP9UO5KV43TAQU8.jpg','2021-01-18 19:03:11'),(145,0,'2019-08-13 16:19:29','3IK9ST6NCH36K0T1DDUAGTS6D1','/storage/thumbnails/_signature/3IK9ST6NCH36K0T1DDUAGTS6D1.jpg','2019-08-13 16:19:29'),(146,0,'2019-08-13 16:19:51','1D8S2MTOGEUL021FHI9K9TU9D4','/storage/thumbnails/_signature/1D8S2MTOGEUL021FHI9K9TU9D4.jpg','2019-08-13 16:19:51'),(147,0,'2019-10-28 11:16:53','2LBAN05LG8N1197HF04MI2HG7P','/storage/thumbnails/_signature/2LBAN05LG8N1197HF04MI2HG7P.jpg','2019-10-28 11:16:53'),(148,0,'2019-10-28 11:19:41','341I9VDREC60067I2243569U8U','/storage/thumbnails/_signature/341I9VDREC60067I2243569U8U.jpg','2019-10-28 11:19:41'),(149,0,'2019-10-28 11:23:13','2RDAM5PMG9RBTMTTJBIUMROMFA','/storage/thumbnails/_signature/2RDAM5PMG9RBTMTTJBIUMROMFA.jpg','2019-10-28 11:23:13'),(150,0,'2019-10-28 11:25:04','FQQ3EMKVPCMEHBOKHV0UGMUEH','/storage/thumbnails/_signature/FQQ3EMKVPCMEHBOKHV0UGMUEH.jpg','2019-10-28 11:25:04'),(151,0,'2019-10-28 15:25:07','KDLB0VKCP9PHUA9B5KUBGGLOG','/storage/thumbnails/_signature/KDLB0VKCP9PHUA9B5KUBGGLOG.jpg','2019-10-28 15:25:07'),(152,0,'2019-10-28 15:26:06','2HC46O1M7PGQO7GFBPEC58FVRN','/storage/thumbnails/_signature/2HC46O1M7PGQO7GFBPEC58FVRN.jpg','2019-10-28 15:26:06'),(153,0,'2019-10-28 15:29:32','3QKIBAO8VD1GHOTG4C2J16NCD7','/storage/thumbnails/_signature/3QKIBAO8VD1GHOTG4C2J16NCD7.jpg','2019-10-28 15:29:32'),(154,0,'2019-10-29 09:26:38','17RVHDJ4D8N5PD06F6O35GM7DM','/storage/thumbnails/_signature/17RVHDJ4D8N5PD06F6O35GM7DM.jpeg','2019-10-29 09:26:38'),(155,0,'2019-10-29 09:27:20','119NAE6MTKTHV0FN82T63OVLFF','/storage/thumbnails/_signature/119NAE6MTKTHV0FN82T63OVLFF.jpg','2019-10-29 09:27:20'),(156,0,'2019-10-29 09:32:29','5FNASL763FN3KDOA304F2TEK5','/storage/thumbnails/_signature/5FNASL763FN3KDOA304F2TEK5.jpeg','2019-10-29 09:32:29'),(157,0,'2019-10-29 09:33:55','134JEE0MHB1R1ORC6TFT6VIKIJ','/storage/thumbnails/_signature/134JEE0MHB1R1ORC6TFT6VIKIJ.jpg','2019-10-29 09:33:55'),(158,0,'2019-10-29 09:35:08','2RVGSFMIBT8DD003NOUI4ICPRD','/storage/thumbnails/_signature/2RVGSFMIBT8DD003NOUI4ICPRD.jpeg','2019-10-29 09:35:08'),(159,0,'2019-10-29 09:45:35','P97R6UQCVIRLAV6QDL140G7PK','/storage/thumbnails/_signature/P97R6UQCVIRLAV6QDL140G7PK.jpeg','2019-10-29 09:45:35'),(160,0,'2019-10-29 09:47:39','2ME58ONIBIG3U2FR9444J1I410','/storage/thumbnails/_signature/2ME58ONIBIG3U2FR9444J1I410.jpg','2019-10-29 09:47:39'),(161,0,'2019-10-29 10:05:33','3D20H2NQ935S9T2SGPNM2SFVSR','/storage/thumbnails/_signature/3D20H2NQ935S9T2SGPNM2SFVSR.jpg','2019-10-29 10:05:33'),(162,0,'2019-10-29 12:38:17','3H0GKD6DH2V3GRJED4H4IKEP68','/storage/thumbnails/_signature/3H0GKD6DH2V3GRJED4H4IKEP68.jpg','2019-10-29 12:38:17'),(163,0,'2019-11-06 10:35:53','U1CH726HCB5HLJV6PAVKKU5I8','/storage/thumbnails/_signature/U1CH726HCB5HLJV6PAVKKU5I8.png','2019-11-06 10:35:53'),(164,0,'2019-11-06 10:36:44','3M7A0386T3K6LBLG6RS6SUEAVC','/storage/thumbnails/_signature/3M7A0386T3K6LBLG6RS6SUEAVC.png','2019-11-06 10:36:44'),(165,0,'2019-11-06 10:40:01','U6OP8MAIDCJ5APKK3GS24TR3Q','/storage/thumbnails/_signature/U6OP8MAIDCJ5APKK3GS24TR3Q.png','2019-11-06 10:40:01'),(166,0,'2019-11-06 10:40:10','8I0AI1CS8UKHCPHQB733ANHTF','/storage/thumbnails/_signature/8I0AI1CS8UKHCPHQB733ANHTF.png','2019-11-06 10:40:10'),(167,0,'2019-11-06 11:18:18','1MN0S7DM14U77RIPC9INAQS79U','/storage/thumbnails/_signature/1MN0S7DM14U77RIPC9INAQS79U.png','2019-11-06 11:18:18'),(168,0,'2019-11-06 14:48:56','2VL7ALBHFAROESE3TPDJT98TT3','/storage/thumbnails/_signature/2VL7ALBHFAROESE3TPDJT98TT3.jpg','2019-11-06 14:48:56'),(169,0,'2019-11-06 15:48:08','EK13GECDUE1CR8UKM8NTJ33ER','/storage/thumbnails/_signature/EK13GECDUE1CR8UKM8NTJ33ER.jpg','2019-11-06 15:48:08'),(170,0,'2019-11-07 14:45:04','3TTBDB9EDKP5BCVKJD36IU7S1H','/storage/thumbnails/_signature/3TTBDB9EDKP5BCVKJD36IU7S1H.jpg','2019-11-07 14:45:04'),(171,0,'2019-11-07 15:03:58','14IBNVM6PTE3CA609FUSHCO26E','/storage/thumbnails/_signature/14IBNVM6PTE3CA609FUSHCO26E.jpeg','2019-11-07 15:03:58'),(172,0,'2019-11-07 15:18:58','3BOC4H6MR6164S4ISJIB0KTAL2','/storage/thumbnails/_signature/3BOC4H6MR6164S4ISJIB0KTAL2.jpeg','2019-11-07 15:18:58'),(173,0,'2019-11-07 15:24:06','2IBQDSDN9JRP03D2TJH6E1CB94','/storage/thumbnails/_signature/2IBQDSDN9JRP03D2TJH6E1CB94.jpg','2019-11-12 13:47:46'),(174,0,'2019-11-12 08:58:56','3PI319VG5U6OETB106N8JNS9FJ','/storage/thumbnails/_signature/3PI319VG5U6OETB106N8JNS9FJ.jpg','2019-11-12 08:58:56'),(175,0,'2019-11-12 09:02:10','37LG0GG3PBOM9F3RE0HCVLH7PR','/storage/thumbnails/_signature/37LG0GG3PBOM9F3RE0HCVLH7PR.jpg','2019-11-12 09:02:10'),(176,0,'2019-11-12 09:04:18','12BSFV05S5GGU6M729F9DRILM3','/storage/thumbnails/_signature/12BSFV05S5GGU6M729F9DRILM3.jpg','2019-11-12 09:04:18'),(177,0,'2019-11-12 09:05:05','1NJK8DCHQ3EG240TU8SKNLBRUQ','/storage/thumbnails/_signature/1NJK8DCHQ3EG240TU8SKNLBRUQ.jpg','2019-11-12 09:05:05'),(178,0,'2019-11-12 09:06:05','V8L9GQIRQV68AM3QCFH4IM690','/storage/thumbnails/_signature/V8L9GQIRQV68AM3QCFH4IM690.jpg','2019-11-12 09:06:05'),(179,0,'2019-11-12 09:06:52','1345O42L0OO46650VF8QS16VKP','/storage/thumbnails/_signature/1345O42L0OO46650VF8QS16VKP.jpg','2019-11-12 09:06:52'),(180,0,'2019-11-12 09:07:16','36B559A71QAQLOSGS5F25C1E7M','/storage/thumbnails/_signature/36B559A71QAQLOSGS5F25C1E7M.jpeg','2019-11-12 09:07:16'),(181,0,'2019-11-12 09:08:38','14KU74SK608UDQAH89EJ3C7Q4M','/storage/thumbnails/_signature/14KU74SK608UDQAH89EJ3C7Q4M.jpeg','2019-11-12 09:08:38'),(182,0,'2019-11-12 09:08:54','1IQ43Q5RT586Q6S8AI9TB43PHS','/storage/thumbnails/_signature/1IQ43Q5RT586Q6S8AI9TB43PHS.jpg','2019-11-12 09:08:54'),(183,0,'2019-11-12 09:19:41','3V48KP5Q5HR93DF2BNR3BDSVQ','/storage/thumbnails/_signature/3V48KP5Q5HR93DF2BNR3BDSVQ.jpg','2019-11-12 09:19:41'),(184,0,'2019-11-12 09:20:04','11BT1IOLGM8I9V6RI8LVAUNAHK','/storage/thumbnails/_signature/11BT1IOLGM8I9V6RI8LVAUNAHK.jpeg','2019-11-12 09:20:04'),(185,0,'2019-11-12 09:21:42','26J7MDOKBBF4MMC68GRT04150G','/storage/thumbnails/_signature/26J7MDOKBBF4MMC68GRT04150G.jpg','2019-11-12 09:21:42'),(186,0,'2019-11-12 09:22:21','284OPN8FPN9QAK2B2ENFHU04RQ','/storage/thumbnails/_signature/284OPN8FPN9QAK2B2ENFHU04RQ.jpg','2019-11-12 09:22:21'),(187,0,'2019-11-12 09:23:12','2UGVVVKBR1B3B3OO9IBESMGN6U','/storage/thumbnails/_signature/2UGVVVKBR1B3B3OO9IBESMGN6U.jpeg','2019-11-12 09:23:12'),(188,0,'2019-11-12 09:27:22','2785V9MD62QTD6THL6PPRHFH','/storage/thumbnails/_signature/2785V9MD62QTD6THL6PPRHFH.jpeg','2019-11-12 09:27:22'),(189,0,'2019-11-12 09:28:48','1MTN0PSGBL5GOQ2QGMQ3S7BR41','/storage/thumbnails/_signature/1MTN0PSGBL5GOQ2QGMQ3S7BR41.jpg','2019-11-12 09:28:48'),(190,0,'2019-11-12 09:32:29','OBKC20UGP8VCVPC8M7ECG34GK','/storage/thumbnails/_signature/OBKC20UGP8VCVPC8M7ECG34GK.jpg','2019-11-12 09:32:29'),(191,0,'2019-11-12 09:34:15','T36GP34O43706NJR5E1NKQPRF','/storage/thumbnails/_signature/T36GP34O43706NJR5E1NKQPRF.jpg','2019-11-12 09:34:15'),(192,0,'2019-11-12 09:39:08','S7IJM4VOVS3NSQMI4PTEMFQ9M','/storage/thumbnails/_signature/S7IJM4VOVS3NSQMI4PTEMFQ9M.jpg','2019-11-12 09:39:08'),(193,0,'2019-11-12 09:41:25','38GIO51BPIVF2NH08GPLGF1TEU','/storage/thumbnails/_signature/38GIO51BPIVF2NH08GPLGF1TEU.jpg','2019-11-12 09:41:25'),(194,0,'2019-11-12 09:44:49','3RKS7CU8AA7721PEG00HLCSMJC','/storage/thumbnails/_signature/3RKS7CU8AA7721PEG00HLCSMJC.jpeg','2019-11-12 09:44:49'),(195,0,'2019-11-12 09:50:33','1263FUHL3CHFR7LIG0RCF838EA','/storage/thumbnails/_signature/1263FUHL3CHFR7LIG0RCF838EA.jpeg','2019-11-12 09:50:33'),(196,0,'2019-11-12 09:51:01','1HDVRCB66NFTC8816Q9RIDS655','/storage/thumbnails/_signature/1HDVRCB66NFTC8816Q9RIDS655.jpg','2019-11-12 09:51:01'),(197,0,'2019-11-12 13:47:45','10DF36VVTG01171B22BMC6R9CO','/storage/thumbnails/_signature/10DF36VVTG01171B22BMC6R9CO.jpeg','2021-01-18 18:57:28'),(198,0,'2021-01-18 19:03:04','68U8E4VQBB0387QFINIS3C6S6','/storage/thumbnails/_signature/68U8E4VQBB0387QFINIS3C6S6.jpg','2021-01-18 19:03:04'),(199,1,'2021-01-18 19:04:03','1IOF57P32OMR3SAB4I220F4HK8','/storage/thumbnails/_signature/1IOF57P32OMR3SAB4I220F4HK8.jpg','2021-01-18 19:04:21'),(200,0,'2021-01-18 19:04:15','31C9RJDMTR8VIBPADSLVJCJSTS','/storage/thumbnails/_signature/31C9RJDMTR8VIBPADSLVJCJSTS.jpg','2021-01-18 19:04:15'),(201,0,'2021-01-18 19:04:41','2L77LKUPNFOEE3SEMU37MKU75U','/storage/thumbnails/_signature/2L77LKUPNFOEE3SEMU37MKU75U.jpg','2021-01-18 19:04:41'),(202,0,'2021-01-18 19:04:58','RK15MSMH0GQ946ANA33B1C361','/storage/thumbnails/_signature/RK15MSMH0GQ946ANA33B1C361.jpg','2021-01-18 19:04:58'),(203,0,'2021-01-18 19:05:18','2JSCI94KFDQU985G3QJNJNNJVJ','/storage/thumbnails/_signature/2JSCI94KFDQU985G3QJNJNNJVJ.jpg','2021-01-18 19:05:18'),(204,0,'2021-01-18 19:06:46','2EMGTSV22NM080EIDBFNM9KL46','/storage/thumbnails/_signature/2EMGTSV22NM080EIDBFNM9KL46.jpg','2021-01-18 19:06:46'),(205,0,'2021-01-18 19:07:19','2QTJMNTIT9AI0BL78LD0NODLO1','/storage/thumbnails/_signature/2QTJMNTIT9AI0BL78LD0NODLO1.jpg','2021-01-18 19:07:19');

/*Table structure for table `mto_security_code` */

DROP TABLE IF EXISTS `mto_security_code`;

CREATE TABLE `mto_security_code` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `key_` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int DEFAULT NULL,
  `target` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_shxjkbkgnpxa80pnv4ts57o19` (`key_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_security_code` */

/*Table structure for table `mto_tag` */

DROP TABLE IF EXISTS `mto_tag`;

CREATE TABLE `mto_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `latest_post_id` bigint NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posts` int NOT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_9ki38gg59bw5agwxsc4xtednf` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_tag` */

insert  into `mto_tag`(`id`,`created`,`description`,`latest_post_id`,`name`,`posts`,`thumbnail`,`updated`) values (1,'2019-04-30 09:00:54',NULL,15,'语录',0,NULL,'2019-04-30 09:27:01'),(2,'2019-04-30 09:16:23',NULL,29,'指尖',1,NULL,'2019-05-06 07:29:13'),(3,'2019-04-30 09:29:34',NULL,23,'随笔',0,NULL,'2019-04-30 09:45:14'),(4,'2019-04-30 09:57:13',NULL,24,'壁纸',0,NULL,'2019-04-30 09:57:13'),(7,'2019-06-06 11:20:14',NULL,36,'感受',0,NULL,'2019-06-06 11:20:14'),(8,'2019-06-11 13:51:34',NULL,37,'夏日',1,NULL,'2019-06-11 13:51:34'),(9,'2019-06-11 13:55:27',NULL,38,'时光',1,NULL,'2019-06-11 13:55:27'),(10,'2019-06-11 14:45:42',NULL,39,'电音',1,NULL,'2019-06-11 14:45:42'),(11,'2019-06-12 14:59:27',NULL,40,'微笑',1,NULL,'2019-06-12 14:59:27'),(12,'2019-10-28 11:18:01',NULL,41,'网络',0,NULL,'2019-10-28 11:18:01'),(13,'2019-11-06 15:48:10',NULL,42,'世界',0,NULL,'2019-11-06 15:48:10'),(14,'2019-11-07 15:19:00',NULL,15,'经典语录',0,NULL,'2019-11-12 09:32:32');

/*Table structure for table `mto_user` */

DROP TABLE IF EXISTS `mto_user`;

CREATE TABLE `mto_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '/dist/images/ava/default.png',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `gender` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `comments` int NOT NULL,
  `posts` int NOT NULL,
  `signature` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_user` */

insert  into `mto_user`(`id`,`username`,`name`,`avatar`,`email`,`password`,`status`,`created`,`updated`,`last_login`,`gender`,`role_id`,`comments`,`posts`,`signature`) values (1,'admin','慢时光','/storage/avatars/000/000/001_240.jpg','example@mtons.com','3TGCQF25BLHU9R7IQUITN0FCC5',0,'2017-08-06 17:52:41','2017-07-26 11:08:36','2021-01-19 20:10:23',0,1,0,5,'');

/*Table structure for table `mto_user_oauth` */

DROP TABLE IF EXISTS `mto_user_oauth`;

CREATE TABLE `mto_user_oauth` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `access_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `expire_in` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `oauth_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `oauth_type` int DEFAULT NULL,
  `oauth_user_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `refresh_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mto_user_oauth` */

/*Table structure for table `shiro_permission` */

DROP TABLE IF EXISTS `shiro_permission`;

CREATE TABLE `shiro_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `version` int DEFAULT NULL,
  `weight` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_NAME` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `shiro_permission` */

insert  into `shiro_permission`(`id`,`description`,`name`,`parent_id`,`version`,`weight`) values (1,'进入后台','admin',0,0,0),(2,'栏目管理','channel:list',0,0,0),(3,'编辑栏目','channel:update',2,0,0),(4,'删除栏目','channel:delete',2,0,0),(5,'文章管理','post:list',0,0,0),(6,'编辑文章','post:update',5,0,0),(7,'删除文章','post:delete',5,0,0),(8,'评论管理','comment:list',0,0,0),(9,'删除评论','comment:delete',8,0,0),(10,'用户管理','user:list',0,0,0),(11,'用户授权','user:role',10,0,0),(12,'修改密码','user:pwd',10,0,0),(13,'激活用户','user:open',10,0,0),(14,'关闭用户','user:close',10,0,0),(15,'角色管理','role:list',0,0,0),(16,'修改角色','role:update',15,0,0),(17,'删除角色','role:delete',15,0,0),(18,'主题管理','theme:index',0,0,0),(19,'系统配置','options:index',0,0,0),(20,'修改配置','options:update',19,0,0);

/*Table structure for table `shiro_role` */

DROP TABLE IF EXISTS `shiro_role`;

CREATE TABLE `shiro_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `shiro_role` */

insert  into `shiro_role`(`id`,`description`,`name`,`status`) values (1,NULL,'admin',0);

/*Table structure for table `shiro_role_permission` */

DROP TABLE IF EXISTS `shiro_role_permission`;

CREATE TABLE `shiro_role_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `permission_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `shiro_role_permission` */

insert  into `shiro_role_permission`(`id`,`permission_id`,`role_id`) values (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1);

/*Table structure for table `shiro_user_role` */

DROP TABLE IF EXISTS `shiro_user_role`;

CREATE TABLE `shiro_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `shiro_user_role` */

insert  into `shiro_user_role`(`id`,`role_id`,`user_id`) values (1,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
