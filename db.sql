/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jianshenfanggl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jianshenfanggl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jianshenfanggl`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'single_seach_types','单页数据类型',1,'健身房介绍',NULL,NULL,'2023-05-19 10:20:40'),(2,'jianshenkecheng_types','健身课程类型',1,'健身课程类型1',NULL,NULL,'2023-05-19 10:20:40'),(3,'jianshenkecheng_types','健身课程类型',2,'健身课程类型2',NULL,NULL,'2023-05-19 10:20:40'),(4,'jianshenkecheng_types','健身课程类型',3,'健身课程类型3',NULL,NULL,'2023-05-19 10:20:40'),(5,'jianshenkecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-19 10:20:40'),(6,'jianshenkecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-19 10:20:40'),(7,'jianshenkecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-19 10:20:40'),(8,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-05-19 10:20:40'),(9,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-05-19 10:20:40'),(10,'news_types','资讯类型',3,'资讯类型3',NULL,NULL,'2023-05-19 10:20:40'),(11,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-19 10:20:40'),(12,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-19 10:20:40'),(13,'jiaolian_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-05-19 10:20:41'),(14,'jiaolian_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-05-19 10:20:41'),(15,'jiaolian_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-05-19 10:20:41'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-19 10:20:41'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-19 10:20:41');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='健身论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaolian_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',178,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',436,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',460,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',175,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',86,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(6,'帖子标题6',3,NULL,NULL,'发布内容6',198,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',285,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',189,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',471,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',354,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',275,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',321,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',28,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',302,1,'2023-05-19 10:20:49','2023-05-19 10:20:49','2023-05-19 10:20:49'),(15,NULL,1,NULL,NULL,'111111111111111111',14,2,'2023-05-19 14:55:20',NULL,'2023-05-19 14:55:20'),(19,NULL,NULL,1,NULL,'222222222222222',14,2,'2023-05-19 14:57:04',NULL,'2023-05-19 14:57:04'),(20,NULL,NULL,NULL,1,'333333333333333333333',14,2,'2023-05-19 14:58:09',NULL,'2023-05-19 14:58:09');

/*Table structure for table `jianshenkecheng` */

DROP TABLE IF EXISTS `jianshenkecheng`;

CREATE TABLE `jianshenkecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `jianshenkecheng_name` varchar(200) DEFAULT NULL COMMENT '健身课程名称  Search111 ',
  `jianshenkecheng_photo` varchar(200) DEFAULT NULL COMMENT '健身课程照片',
  `jianshenkecheng_video` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jianshenkecheng_types` int(11) DEFAULT NULL COMMENT '健身课程类型 Search111',
  `jianshenkecheng_clicknum` int(11) DEFAULT NULL COMMENT '健身课程热度',
  `jianshenkecheng_content` longtext COMMENT '健身课程介绍 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健身课程';

/*Data for the table `jianshenkecheng` */

insert  into `jianshenkecheng`(`id`,`jiaolian_id`,`jianshenkecheng_name`,`jianshenkecheng_photo`,`jianshenkecheng_video`,`zan_number`,`cai_number`,`jianshenkecheng_types`,`jianshenkecheng_clicknum`,`jianshenkecheng_content`,`data_delete`,`insert_time`,`create_time`) values (1,1,'健身课程名称1','upload/jianshenkecheng1.jpg','upload/video.mp4',413,443,1,133,'健身课程介绍1',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,3,'健身课程名称2','upload/jianshenkecheng2.jpg','upload/video.mp4',44,456,1,477,'健身课程介绍2',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,1,'健身课程名称3','upload/jianshenkecheng3.jpg','upload/video.mp4',174,330,1,146,'健身课程介绍3',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(4,3,'健身课程名称4','upload/jianshenkecheng4.jpg','upload/video.mp4',272,60,1,275,'健身课程介绍4',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(5,3,'健身课程名称5','upload/jianshenkecheng5.jpg','upload/video.mp4',233,444,2,196,'健身课程介绍5',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(6,1,'健身课程名称6','upload/jianshenkecheng6.jpg','upload/video.mp4',38,54,2,210,'健身课程介绍6',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(7,1,'健身课程名称7','upload/jianshenkecheng7.jpg','upload/video.mp4',207,343,1,124,'健身课程介绍7',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(8,3,'健身课程名称8','upload/jianshenkecheng8.jpg','upload/video.mp4',9,213,3,244,'健身课程介绍8',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(9,3,'健身课程名称9','upload/jianshenkecheng9.jpg','upload/video.mp4',440,30,2,272,'健身课程介绍9',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(10,1,'健身课程名称10','upload/jianshenkecheng10.jpg','upload/video.mp4',127,20,2,359,'健身课程介绍10',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(11,1,'健身课程名称11','upload/jianshenkecheng11.jpg','upload/video.mp4',390,408,1,421,'健身课程介绍11',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(12,3,'健身课程名称12','upload/jianshenkecheng12.jpg','upload/video.mp4',387,429,3,55,'健身课程介绍12',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(13,3,'健身课程名称13','upload/jianshenkecheng13.jpg','upload/video.mp4',362,23,1,426,'健身课程介绍13',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(14,2,'健身课程名称14','upload/jianshenkecheng14.jpg','upload/video.mp4',240,65,2,96,'健身课程介绍14',1,'2023-05-19 10:20:49','2023-05-19 10:20:49');

/*Table structure for table `jianshenkecheng_collection` */

DROP TABLE IF EXISTS `jianshenkecheng_collection`;

CREATE TABLE `jianshenkecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '健身课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `jianshenkecheng_collection` */

insert  into `jianshenkecheng_collection`(`id`,`jianshenkecheng_id`,`yonghu_id`,`jianshenkecheng_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,2,3,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,3,3,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(4,4,3,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(5,5,3,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(6,6,1,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(7,7,2,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(8,8,3,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(9,9,2,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(11,11,2,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(14,14,3,1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(15,11,1,2,'2023-05-19 14:54:55','2023-05-19 14:54:55'),(16,11,1,1,'2023-05-19 14:54:57','2023-05-19 14:54:57');

/*Table structure for table `jianshenkecheng_liuyan` */

DROP TABLE IF EXISTS `jianshenkecheng_liuyan`;

CREATE TABLE `jianshenkecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '健身课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `jianshenkecheng_liuyan` */

insert  into `jianshenkecheng_liuyan`(`id`,`jianshenkecheng_id`,`yonghu_id`,`jianshenkecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-05-19 10:20:49','回复信息1','2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,2,3,'留言内容2','2023-05-19 10:20:49','回复信息2','2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,3,3,'留言内容3','2023-05-19 10:20:49','回复信息3','2023-05-19 10:20:49','2023-05-19 10:20:49'),(4,4,2,'留言内容4','2023-05-19 10:20:49','回复信息4','2023-05-19 10:20:49','2023-05-19 10:20:49'),(5,5,2,'留言内容5','2023-05-19 10:20:49','回复信息5','2023-05-19 10:20:49','2023-05-19 10:20:49'),(6,6,3,'留言内容6','2023-05-19 10:20:49','回复信息6','2023-05-19 10:20:49','2023-05-19 10:20:49'),(7,7,2,'留言内容7','2023-05-19 10:20:49','回复信息7','2023-05-19 10:20:49','2023-05-19 10:20:49'),(8,8,2,'留言内容8','2023-05-19 10:20:49','回复信息8','2023-05-19 10:20:49','2023-05-19 10:20:49'),(9,9,2,'留言内容9','2023-05-19 10:20:49','回复信息9','2023-05-19 10:20:49','2023-05-19 10:20:49'),(10,10,1,'留言内容10','2023-05-19 10:20:49','回复信息10','2023-05-19 10:20:49','2023-05-19 10:20:49'),(11,11,3,'留言内容11','2023-05-19 10:20:49','回复信息11','2023-05-19 10:20:49','2023-05-19 10:20:49'),(12,12,3,'留言内容12','2023-05-19 10:20:49','回复信息12','2023-05-19 10:20:49','2023-05-19 10:20:49'),(14,14,2,'留言内容14','2023-05-19 10:20:49','回复信息14','2023-05-19 10:20:49','2023-05-19 10:20:49'),(15,11,1,'123','2023-05-19 14:55:09','13333','2023-05-19 14:56:49','2023-05-19 14:55:09');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练名称 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '教练邮箱',
  `jiaolian_content` longtext COMMENT '教练简介 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`username`,`password`,`jiaolian_name`,`jiaolian_phone`,`jiaolian_photo`,`sex_types`,`jiaolian_email`,`jiaolian_content`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','教练名称1','17703786901','upload/jiaolian1.jpg',2,'1@qq.com','教练简介1',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,'a2','123456','教练名称2','17703786902','upload/jiaolian2.jpg',2,'2@qq.com','教练简介2',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,'a3','123456','教练名称3','17703786903','upload/jiaolian3.jpg',2,'3@qq.com','教练简介3',1,'2023-05-19 10:20:49','2023-05-19 10:20:49');

/*Table structure for table `jiaolian_yuyue` */

DROP TABLE IF EXISTS `jiaolian_yuyue`;

CREATE TABLE `jiaolian_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaolian_yuyue_text` longtext COMMENT '预约备注',
  `jiaolian_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `jiaolian_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `jiaolian_yuyue_yesno_text` longtext COMMENT '审核回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='场地预约申请';

/*Data for the table `jiaolian_yuyue` */

insert  into `jiaolian_yuyue`(`id`,`jiaolian_yuyue_uuid_number`,`yonghu_id`,`jiaolian_yuyue_text`,`jiaolian_yuyue_time`,`jiaolian_yuyue_yesno_types`,`jiaolian_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,'1684462850877',3,'预约备注1','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,'1684462850902',1,'预约备注2','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,'1684462850881',2,'预约备注3','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(4,'1684462850803',3,'预约备注4','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(5,'1684462850873',2,'预约备注5','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(6,'1684462850868',1,'预约备注6','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(7,'1684462850805',3,'预约备注7','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(8,'1684462850860',1,'预约备注8','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(10,'1684462850839',3,'预约备注10','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(11,'1684462850814',3,'预约备注11','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(14,'1684462850891',3,'预约备注14','2023-05-19 10:20:49',1,NULL,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(15,'1684479344499',1,'123123','2023-05-20 14:55:37',2,'12312','2023-05-19 14:55:45','2023-05-19 14:55:45');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健身资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'资讯标题1',1,'upload/news1.jpg','2023-05-19 10:20:49','资讯详情1','2023-05-19 10:20:49'),(2,'资讯标题2',3,'upload/news2.jpg','2023-05-19 10:20:49','资讯详情2','2023-05-19 10:20:49'),(3,'资讯标题3',2,'upload/news3.jpg','2023-05-19 10:20:49','资讯详情3','2023-05-19 10:20:49'),(4,'资讯标题4',3,'upload/news4.jpg','2023-05-19 10:20:49','资讯详情4','2023-05-19 10:20:49'),(5,'资讯标题5',1,'upload/news5.jpg','2023-05-19 10:20:49','资讯详情5','2023-05-19 10:20:49'),(6,'资讯标题6',2,'upload/news6.jpg','2023-05-19 10:20:49','资讯详情6','2023-05-19 10:20:49'),(7,'资讯标题7',1,'upload/news7.jpg','2023-05-19 10:20:49','资讯详情7','2023-05-19 10:20:49'),(8,'资讯标题8',3,'upload/news8.jpg','2023-05-19 10:20:49','资讯详情8','2023-05-19 10:20:49'),(9,'资讯标题9',3,'upload/news9.jpg','2023-05-19 10:20:49','资讯详情9','2023-05-19 10:20:49'),(10,'资讯标题10',2,'upload/news10.jpg','2023-05-19 10:20:49','资讯详情10','2023-05-19 10:20:49'),(11,'资讯标题11',3,'upload/news11.jpg','2023-05-19 10:20:49','资讯详情11','2023-05-19 10:20:49'),(12,'资讯标题12',1,'upload/news12.jpg','2023-05-19 10:20:49','资讯详情12','2023-05-19 10:20:49'),(13,'资讯标题13',1,'upload/news13.jpg','2023-05-19 10:20:49','资讯详情13','2023-05-19 10:20:49'),(14,'资讯标题14',1,'upload/news14.jpg','2023-05-19 10:20:49','资讯详情14','2023-05-19 10:20:49');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_photo`,`single_seach_content`,`create_time`) values (1,'健身房介绍',1,'/upload/1684475732921.jpg','<p>健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍1323健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介123绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍</p><p><img src=\"upload/1684475736792.jpg\"></p><p>健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房123介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍</p><p>健身房介绍健身房介绍健身房介绍健身房介123绍健身房介绍健身房介绍健身房介绍健身房介绍健身房介绍</p>','2023-05-19 13:55:58');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','kjmi0b3n4r79r67t6o0tmq810d9apvvb','2023-05-19 13:53:56','2023-05-19 15:54:53'),(2,1,'admin','users','管理员','3gakot5w0qpdzf83djwesrxyz24w5htn','2023-05-19 13:55:04','2023-05-19 15:59:09'),(3,1,'a1','jiaolian','教练','3njokmeq7wysz9o81kvujuf50rpmdac5','2023-05-19 14:56:18','2023-05-19 15:56:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-19 10:20:40');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','566.10',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','419.86',1,'2023-05-19 10:20:49','2023-05-19 10:20:49'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','392.93',1,'2023-05-19 10:20:49','2023-05-19 10:20:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
