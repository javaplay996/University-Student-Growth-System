/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmiy239
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmiy239` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmiy239`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (101,'2021-04-26 19:44:34',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (102,'2021-04-26 19:44:34',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (103,'2021-04-26 19:44:34',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (104,'2021-04-26 19:44:34',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (105,'2021-04-26 19:44:34',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (106,'2021-04-26 19:44:34',6,6,'提问6','回复6',6);

/*Table structure for table `chengjixinxi` */

DROP TABLE IF EXISTS `chengjixinxi`;

CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `kechengfenshu` int(11) NOT NULL COMMENT '课程分数',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `pingyu` longtext COMMENT '评语',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='成绩信息';

/*Data for the table `chengjixinxi` */

insert  into `chengjixinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuehao`,`xueshengxingming`,`kechengfenshu`,`shifouhege`,`laoshigonghao`,`laoshixingming`,`pingyu`) values (31,'2021-04-26 19:44:34','课程编号1','课程名称1','学号1','学生姓名1',1,'是','老师工号1','老师姓名1','评语1');
insert  into `chengjixinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuehao`,`xueshengxingming`,`kechengfenshu`,`shifouhege`,`laoshigonghao`,`laoshixingming`,`pingyu`) values (32,'2021-04-26 19:44:34','课程编号2','课程名称2','学号2','学生姓名2',2,'是','老师工号2','老师姓名2','评语2');
insert  into `chengjixinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuehao`,`xueshengxingming`,`kechengfenshu`,`shifouhege`,`laoshigonghao`,`laoshixingming`,`pingyu`) values (33,'2021-04-26 19:44:34','课程编号3','课程名称3','学号3','学生姓名3',3,'是','老师工号3','老师姓名3','评语3');
insert  into `chengjixinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuehao`,`xueshengxingming`,`kechengfenshu`,`shifouhege`,`laoshigonghao`,`laoshixingming`,`pingyu`) values (34,'2021-04-26 19:44:34','课程编号4','课程名称4','学号4','学生姓名4',4,'是','老师工号4','老师姓名4','评语4');
insert  into `chengjixinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuehao`,`xueshengxingming`,`kechengfenshu`,`shifouhege`,`laoshigonghao`,`laoshixingming`,`pingyu`) values (35,'2021-04-26 19:44:34','课程编号5','课程名称5','学号5','学生姓名5',5,'是','老师工号5','老师姓名5','评语5');
insert  into `chengjixinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuehao`,`xueshengxingming`,`kechengfenshu`,`shifouhege`,`laoshigonghao`,`laoshixingming`,`pingyu`) values (36,'2021-04-26 19:44:34','课程编号6','课程名称6','学号6','学生姓名6',6,'是','老师工号6','老师姓名6','评语6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmiy239/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmiy239/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmiy239/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussguanggaoxinxi` */

DROP TABLE IF EXISTS `discussguanggaoxinxi`;

CREATE TABLE `discussguanggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='广告信息评论表';

/*Data for the table `discussguanggaoxinxi` */

insert  into `discussguanggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-26 19:44:34',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussguanggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-04-26 19:44:34',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussguanggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-04-26 19:44:34',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussguanggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-04-26 19:44:34',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussguanggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-04-26 19:44:34',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussguanggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-04-26 19:44:34',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusswangkekecheng` */

DROP TABLE IF EXISTS `discusswangkekecheng`;

CREATE TABLE `discusswangkekecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='网课课程评论表';

/*Data for the table `discusswangkekecheng` */

insert  into `discusswangkekecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-26 19:44:34',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusswangkekecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-04-26 19:44:34',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusswangkekecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-04-26 19:44:34',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusswangkekecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-04-26 19:44:34',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusswangkekecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-04-26 19:44:34',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusswangkekecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-04-26 19:44:34',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussxuexiaoxinxi` */

DROP TABLE IF EXISTS `discussxuexiaoxinxi`;

CREATE TABLE `discussxuexiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='学校信息评论表';

/*Data for the table `discussxuexiaoxinxi` */

insert  into `discussxuexiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-26 19:44:34',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxuexiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-26 19:44:34',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxuexiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-26 19:44:34',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxuexiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-26 19:44:34',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxuexiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-26 19:44:34',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxuexiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-26 19:44:34',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `guanggaoxinxi` */

DROP TABLE IF EXISTS `guanggaoxinxi`;

CREATE TABLE `guanggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanggaobiaoti` varchar(200) DEFAULT NULL COMMENT '广告标题',
  `guanggaotupian` varchar(200) DEFAULT NULL COMMENT '广告图片',
  `guanggaoleibie` varchar(200) DEFAULT NULL COMMENT '广告类别',
  `guanggaoneirong` longtext COMMENT '广告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='广告信息';

/*Data for the table `guanggaoxinxi` */

insert  into `guanggaoxinxi`(`id`,`addtime`,`guanggaobiaoti`,`guanggaotupian`,`guanggaoleibie`,`guanggaoneirong`,`fabushijian`,`clicknum`) values (71,'2021-04-26 19:44:34','广告标题1','http://localhost:8080/ssmiy239/upload/guanggaoxinxi_guanggaotupian1.jpg','广告类别1','广告内容1','2021-04-26 19:44:34',1);
insert  into `guanggaoxinxi`(`id`,`addtime`,`guanggaobiaoti`,`guanggaotupian`,`guanggaoleibie`,`guanggaoneirong`,`fabushijian`,`clicknum`) values (72,'2021-04-26 19:44:34','广告标题2','http://localhost:8080/ssmiy239/upload/guanggaoxinxi_guanggaotupian2.jpg','广告类别2','广告内容2','2021-04-26 19:44:34',2);
insert  into `guanggaoxinxi`(`id`,`addtime`,`guanggaobiaoti`,`guanggaotupian`,`guanggaoleibie`,`guanggaoneirong`,`fabushijian`,`clicknum`) values (73,'2021-04-26 19:44:34','广告标题3','http://localhost:8080/ssmiy239/upload/guanggaoxinxi_guanggaotupian3.jpg','广告类别3','广告内容3','2021-04-26 19:44:34',3);
insert  into `guanggaoxinxi`(`id`,`addtime`,`guanggaobiaoti`,`guanggaotupian`,`guanggaoleibie`,`guanggaoneirong`,`fabushijian`,`clicknum`) values (74,'2021-04-26 19:44:34','广告标题4','http://localhost:8080/ssmiy239/upload/guanggaoxinxi_guanggaotupian4.jpg','广告类别4','广告内容4','2021-04-26 19:44:34',4);
insert  into `guanggaoxinxi`(`id`,`addtime`,`guanggaobiaoti`,`guanggaotupian`,`guanggaoleibie`,`guanggaoneirong`,`fabushijian`,`clicknum`) values (75,'2021-04-26 19:44:34','广告标题5','http://localhost:8080/ssmiy239/upload/guanggaoxinxi_guanggaotupian5.jpg','广告类别5','广告内容5','2021-04-26 19:44:34',5);
insert  into `guanggaoxinxi`(`id`,`addtime`,`guanggaobiaoti`,`guanggaotupian`,`guanggaoleibie`,`guanggaoneirong`,`fabushijian`,`clicknum`) values (76,'2021-04-26 19:44:34','广告标题6','http://localhost:8080/ssmiy239/upload/guanggaoxinxi_guanggaotupian6.jpg','广告类别6','广告内容6','2021-04-26 19:44:34',6);

/*Table structure for table `jiangchengxinxi` */

DROP TABLE IF EXISTS `jiangchengxinxi`;

CREATE TABLE `jiangchengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `huojiangshijian` date DEFAULT NULL COMMENT '获奖时间',
  `huojiangneirong` longtext COMMENT '获奖内容',
  `chengfashijian` date DEFAULT NULL COMMENT '惩罚时间',
  `chengfaneirong` longtext COMMENT '惩罚内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='奖惩信息';

/*Data for the table `jiangchengxinxi` */

insert  into `jiangchengxinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`huojiangshijian`,`huojiangneirong`,`chengfashijian`,`chengfaneirong`) values (81,'2021-04-26 19:44:34','学号1','学生姓名1','2021-04-26','获奖内容1','2021-04-26','惩罚内容1');
insert  into `jiangchengxinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`huojiangshijian`,`huojiangneirong`,`chengfashijian`,`chengfaneirong`) values (82,'2021-04-26 19:44:34','学号2','学生姓名2','2021-04-26','获奖内容2','2021-04-26','惩罚内容2');
insert  into `jiangchengxinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`huojiangshijian`,`huojiangneirong`,`chengfashijian`,`chengfaneirong`) values (83,'2021-04-26 19:44:34','学号3','学生姓名3','2021-04-26','获奖内容3','2021-04-26','惩罚内容3');
insert  into `jiangchengxinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`huojiangshijian`,`huojiangneirong`,`chengfashijian`,`chengfaneirong`) values (84,'2021-04-26 19:44:34','学号4','学生姓名4','2021-04-26','获奖内容4','2021-04-26','惩罚内容4');
insert  into `jiangchengxinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`huojiangshijian`,`huojiangneirong`,`chengfashijian`,`chengfaneirong`) values (85,'2021-04-26 19:44:34','学号5','学生姓名5','2021-04-26','获奖内容5','2021-04-26','惩罚内容5');
insert  into `jiangchengxinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`huojiangshijian`,`huojiangneirong`,`chengfashijian`,`chengfaneirong`) values (86,'2021-04-26 19:44:34','学号6','学生姓名6','2021-04-26','获奖内容6','2021-04-26','惩罚内容6');

/*Table structure for table `kechengbiao` */

DROP TABLE IF EXISTS `kechengbiao`;

CREATE TABLE `kechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dangqianxueqi` varchar(200) NOT NULL COMMENT '当前学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `kechengyi` varchar(200) DEFAULT NULL COMMENT '课程一',
  `kechenger` varchar(200) DEFAULT NULL COMMENT '课程二',
  `kechengsan` varchar(200) DEFAULT NULL COMMENT '课程三',
  `kechengsi` varchar(200) DEFAULT NULL COMMENT '课程四',
  `kechengwu` varchar(200) DEFAULT NULL COMMENT '课程五',
  `kechengliu` varchar(200) DEFAULT NULL COMMENT '课程六',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `kechengbiao` */

insert  into `kechengbiao`(`id`,`addtime`,`dangqianxueqi`,`banji`,`xingqi`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`laoshigonghao`,`laoshixingming`) values (91,'2021-04-26 19:44:34','当前学期1','班级1','星期一','课程一1','课程二1','课程三1','课程四1','课程五1','课程六1','老师工号1','老师姓名1');
insert  into `kechengbiao`(`id`,`addtime`,`dangqianxueqi`,`banji`,`xingqi`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`laoshigonghao`,`laoshixingming`) values (92,'2021-04-26 19:44:34','当前学期2','班级2','星期一','课程一2','课程二2','课程三2','课程四2','课程五2','课程六2','老师工号2','老师姓名2');
insert  into `kechengbiao`(`id`,`addtime`,`dangqianxueqi`,`banji`,`xingqi`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`laoshigonghao`,`laoshixingming`) values (93,'2021-04-26 19:44:34','当前学期3','班级3','星期一','课程一3','课程二3','课程三3','课程四3','课程五3','课程六3','老师工号3','老师姓名3');
insert  into `kechengbiao`(`id`,`addtime`,`dangqianxueqi`,`banji`,`xingqi`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`laoshigonghao`,`laoshixingming`) values (94,'2021-04-26 19:44:34','当前学期4','班级4','星期一','课程一4','课程二4','课程三4','课程四4','课程五4','课程六4','老师工号4','老师姓名4');
insert  into `kechengbiao`(`id`,`addtime`,`dangqianxueqi`,`banji`,`xingqi`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`laoshigonghao`,`laoshixingming`) values (95,'2021-04-26 19:44:34','当前学期5','班级5','星期一','课程一5','课程二5','课程三5','课程四5','课程五5','课程六5','老师工号5','老师姓名5');
insert  into `kechengbiao`(`id`,`addtime`,`dangqianxueqi`,`banji`,`xingqi`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`laoshigonghao`,`laoshixingming`) values (96,'2021-04-26 19:44:34','当前学期6','班级6','星期一','课程一6','课程二6','课程三6','课程四6','课程五6','课程六6','老师工号6','老师姓名6');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshigonghao` varchar(200) NOT NULL COMMENT '老师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshigonghao` (`laoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`shoujihaoma`,`ruzhishijian`,`gerenzhaopian`) values (21,'2021-04-26 19:44:34','老师1','123456','老师姓名1','男','13823888881','2021-04-26','http://localhost:8080/ssmiy239/upload/laoshi_gerenzhaopian1.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`shoujihaoma`,`ruzhishijian`,`gerenzhaopian`) values (22,'2021-04-26 19:44:34','老师2','123456','老师姓名2','男','13823888882','2021-04-26','http://localhost:8080/ssmiy239/upload/laoshi_gerenzhaopian2.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`shoujihaoma`,`ruzhishijian`,`gerenzhaopian`) values (23,'2021-04-26 19:44:34','老师3','123456','老师姓名3','男','13823888883','2021-04-26','http://localhost:8080/ssmiy239/upload/laoshi_gerenzhaopian3.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`shoujihaoma`,`ruzhishijian`,`gerenzhaopian`) values (24,'2021-04-26 19:44:34','老师4','123456','老师姓名4','男','13823888884','2021-04-26','http://localhost:8080/ssmiy239/upload/laoshi_gerenzhaopian4.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`shoujihaoma`,`ruzhishijian`,`gerenzhaopian`) values (25,'2021-04-26 19:44:34','老师5','123456','老师姓名5','男','13823888885','2021-04-26','http://localhost:8080/ssmiy239/upload/laoshi_gerenzhaopian5.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`shoujihaoma`,`ruzhishijian`,`gerenzhaopian`) values (26,'2021-04-26 19:44:34','老师6','123456','老师姓名6','男','13823888886','2021-04-26','http://localhost:8080/ssmiy239/upload/laoshi_gerenzhaopian6.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='学校公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-04-26 19:44:34','标题1','简介1','http://localhost:8080/ssmiy239/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2021-04-26 19:44:34','标题2','简介2','http://localhost:8080/ssmiy239/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2021-04-26 19:44:34','标题3','简介3','http://localhost:8080/ssmiy239/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2021-04-26 19:44:34','标题4','简介4','http://localhost:8080/ssmiy239/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2021-04-26 19:44:34','标题5','简介5','http://localhost:8080/ssmiy239/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2021-04-26 19:44:34','标题6','简介6','http://localhost:8080/ssmiy239/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'老师1','laoshi','老师','43m928r1gaw8ug4sjprwsnfdinzx6h8p','2021-04-26 19:46:03','2021-04-26 20:46:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-26 19:44:34');

/*Table structure for table `wangkekecheng` */

DROP TABLE IF EXISTS `wangkekecheng`;

CREATE TABLE `wangkekecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) NOT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengshizhang` varchar(200) DEFAULT NULL COMMENT '课程时长',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='网课课程';

/*Data for the table `wangkekecheng` */

insert  into `wangkekecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`fengmiantupian`,`kechengjieshao`,`laoshigonghao`,`laoshixingming`,`shoujihaoma`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (61,'2021-04-26 19:44:34','课程编号1','课程名称1','课程类型1','课程时长1','http://localhost:8080/ssmiy239/upload/wangkekecheng_fengmiantupian1.jpg','课程介绍1','老师工号1','老师姓名1','手机号码1','是','','2021-04-26 19:44:34',1);
insert  into `wangkekecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`fengmiantupian`,`kechengjieshao`,`laoshigonghao`,`laoshixingming`,`shoujihaoma`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (62,'2021-04-26 19:44:34','课程编号2','课程名称2','课程类型2','课程时长2','http://localhost:8080/ssmiy239/upload/wangkekecheng_fengmiantupian2.jpg','课程介绍2','老师工号2','老师姓名2','手机号码2','是','','2021-04-26 19:44:34',2);
insert  into `wangkekecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`fengmiantupian`,`kechengjieshao`,`laoshigonghao`,`laoshixingming`,`shoujihaoma`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (63,'2021-04-26 19:44:34','课程编号3','课程名称3','课程类型3','课程时长3','http://localhost:8080/ssmiy239/upload/wangkekecheng_fengmiantupian3.jpg','课程介绍3','老师工号3','老师姓名3','手机号码3','是','','2021-04-26 19:44:34',3);
insert  into `wangkekecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`fengmiantupian`,`kechengjieshao`,`laoshigonghao`,`laoshixingming`,`shoujihaoma`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (64,'2021-04-26 19:44:34','课程编号4','课程名称4','课程类型4','课程时长4','http://localhost:8080/ssmiy239/upload/wangkekecheng_fengmiantupian4.jpg','课程介绍4','老师工号4','老师姓名4','手机号码4','是','','2021-04-26 19:44:34',4);
insert  into `wangkekecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`fengmiantupian`,`kechengjieshao`,`laoshigonghao`,`laoshixingming`,`shoujihaoma`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (65,'2021-04-26 19:44:34','课程编号5','课程名称5','课程类型5','课程时长5','http://localhost:8080/ssmiy239/upload/wangkekecheng_fengmiantupian5.jpg','课程介绍5','老师工号5','老师姓名5','手机号码5','是','','2021-04-26 19:44:34',5);
insert  into `wangkekecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`fengmiantupian`,`kechengjieshao`,`laoshigonghao`,`laoshixingming`,`shoujihaoma`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (66,'2021-04-26 19:44:34','课程编号6','课程名称6','课程类型6','课程时长6','http://localhost:8080/ssmiy239/upload/wangkekecheng_fengmiantupian6.jpg','课程介绍6','老师工号6','老师姓名6','手机号码6','是','','2021-04-26 19:44:34',6);

/*Table structure for table `xuankejilu` */

DROP TABLE IF EXISTS `xuankejilu`;

CREATE TABLE `xuankejilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengshizhang` varchar(200) DEFAULT NULL COMMENT '课程时长',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xuankeshijian` datetime DEFAULT NULL COMMENT '选课时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='选课记录';

/*Data for the table `xuankejilu` */

insert  into `xuankejilu`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`laoshigonghao`,`laoshixingming`,`xuankeshijian`,`xuehao`,`xueshengxingming`,`lianxishouji`,`sfsh`,`shhf`) values (41,'2021-04-26 19:44:34','课程编号1','课程名称1','课程类型1','课程时长1','老师工号1','老师姓名1','2021-04-26 19:44:34','学号1','学生姓名1','联系手机1','是','');
insert  into `xuankejilu`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`laoshigonghao`,`laoshixingming`,`xuankeshijian`,`xuehao`,`xueshengxingming`,`lianxishouji`,`sfsh`,`shhf`) values (42,'2021-04-26 19:44:34','课程编号2','课程名称2','课程类型2','课程时长2','老师工号2','老师姓名2','2021-04-26 19:44:34','学号2','学生姓名2','联系手机2','是','');
insert  into `xuankejilu`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`laoshigonghao`,`laoshixingming`,`xuankeshijian`,`xuehao`,`xueshengxingming`,`lianxishouji`,`sfsh`,`shhf`) values (43,'2021-04-26 19:44:34','课程编号3','课程名称3','课程类型3','课程时长3','老师工号3','老师姓名3','2021-04-26 19:44:34','学号3','学生姓名3','联系手机3','是','');
insert  into `xuankejilu`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`laoshigonghao`,`laoshixingming`,`xuankeshijian`,`xuehao`,`xueshengxingming`,`lianxishouji`,`sfsh`,`shhf`) values (44,'2021-04-26 19:44:34','课程编号4','课程名称4','课程类型4','课程时长4','老师工号4','老师姓名4','2021-04-26 19:44:34','学号4','学生姓名4','联系手机4','是','');
insert  into `xuankejilu`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`laoshigonghao`,`laoshixingming`,`xuankeshijian`,`xuehao`,`xueshengxingming`,`lianxishouji`,`sfsh`,`shhf`) values (45,'2021-04-26 19:44:34','课程编号5','课程名称5','课程类型5','课程时长5','老师工号5','老师姓名5','2021-04-26 19:44:34','学号5','学生姓名5','联系手机5','是','');
insert  into `xuankejilu`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`kechengshizhang`,`laoshigonghao`,`laoshixingming`,`xuankeshijian`,`xuehao`,`xueshengxingming`,`lianxishouji`,`sfsh`,`shhf`) values (46,'2021-04-26 19:44:34','课程编号6','课程名称6','课程类型6','课程时长6','老师工号6','老师姓名6','2021-04-26 19:44:34','学号6','学生姓名6','联系手机6','是','');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  `ruxueshijian` date DEFAULT NULL COMMENT '入学时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxishouji`,`gerenzhaopian`,`ruxueshijian`) values (11,'2021-04-26 19:44:34','学生1','123456','学生姓名1','男','2021-04-26','13823888881','http://localhost:8080/ssmiy239/upload/xuesheng_gerenzhaopian1.jpg','2021-04-26');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxishouji`,`gerenzhaopian`,`ruxueshijian`) values (12,'2021-04-26 19:44:34','学生2','123456','学生姓名2','男','2021-04-26','13823888882','http://localhost:8080/ssmiy239/upload/xuesheng_gerenzhaopian2.jpg','2021-04-26');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxishouji`,`gerenzhaopian`,`ruxueshijian`) values (13,'2021-04-26 19:44:34','学生3','123456','学生姓名3','男','2021-04-26','13823888883','http://localhost:8080/ssmiy239/upload/xuesheng_gerenzhaopian3.jpg','2021-04-26');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxishouji`,`gerenzhaopian`,`ruxueshijian`) values (14,'2021-04-26 19:44:34','学生4','123456','学生姓名4','男','2021-04-26','13823888884','http://localhost:8080/ssmiy239/upload/xuesheng_gerenzhaopian4.jpg','2021-04-26');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxishouji`,`gerenzhaopian`,`ruxueshijian`) values (15,'2021-04-26 19:44:34','学生5','123456','学生姓名5','男','2021-04-26','13823888885','http://localhost:8080/ssmiy239/upload/xuesheng_gerenzhaopian5.jpg','2021-04-26');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxishouji`,`gerenzhaopian`,`ruxueshijian`) values (16,'2021-04-26 19:44:34','学生6','123456','学生姓名6','男','2021-04-26','13823888886','http://localhost:8080/ssmiy239/upload/xuesheng_gerenzhaopian6.jpg','2021-04-26');

/*Table structure for table `xuexiaoxinxi` */

DROP TABLE IF EXISTS `xuexiaoxinxi`;

CREATE TABLE `xuexiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `xuexiaodizhi` varchar(200) DEFAULT NULL COMMENT '学校地址',
  `xuexiaotupian` varchar(200) DEFAULT NULL COMMENT '学校图片',
  `zhandimianji` varchar(200) DEFAULT NULL COMMENT '占地面积',
  `renyuanshuliang` varchar(200) DEFAULT NULL COMMENT '人员数量',
  `xuexiaojieshao` longtext COMMENT '学校介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学校信息';

/*Data for the table `xuexiaoxinxi` */

insert  into `xuexiaoxinxi`(`id`,`addtime`,`xuexiaomingcheng`,`suozaidiqu`,`xuexiaodizhi`,`xuexiaotupian`,`zhandimianji`,`renyuanshuliang`,`xuexiaojieshao`,`clicktime`,`clicknum`) values (51,'2021-04-26 19:44:34','学校名称1','所在地区1','学校地址1','http://localhost:8080/ssmiy239/upload/xuexiaoxinxi_xuexiaotupian1.jpg','占地面积1','人员数量1','学校介绍1','2021-04-26 19:44:34',1);
insert  into `xuexiaoxinxi`(`id`,`addtime`,`xuexiaomingcheng`,`suozaidiqu`,`xuexiaodizhi`,`xuexiaotupian`,`zhandimianji`,`renyuanshuliang`,`xuexiaojieshao`,`clicktime`,`clicknum`) values (52,'2021-04-26 19:44:34','学校名称2','所在地区2','学校地址2','http://localhost:8080/ssmiy239/upload/xuexiaoxinxi_xuexiaotupian2.jpg','占地面积2','人员数量2','学校介绍2','2021-04-26 19:44:34',2);
insert  into `xuexiaoxinxi`(`id`,`addtime`,`xuexiaomingcheng`,`suozaidiqu`,`xuexiaodizhi`,`xuexiaotupian`,`zhandimianji`,`renyuanshuliang`,`xuexiaojieshao`,`clicktime`,`clicknum`) values (53,'2021-04-26 19:44:34','学校名称3','所在地区3','学校地址3','http://localhost:8080/ssmiy239/upload/xuexiaoxinxi_xuexiaotupian3.jpg','占地面积3','人员数量3','学校介绍3','2021-04-26 19:44:34',3);
insert  into `xuexiaoxinxi`(`id`,`addtime`,`xuexiaomingcheng`,`suozaidiqu`,`xuexiaodizhi`,`xuexiaotupian`,`zhandimianji`,`renyuanshuliang`,`xuexiaojieshao`,`clicktime`,`clicknum`) values (54,'2021-04-26 19:44:34','学校名称4','所在地区4','学校地址4','http://localhost:8080/ssmiy239/upload/xuexiaoxinxi_xuexiaotupian4.jpg','占地面积4','人员数量4','学校介绍4','2021-04-26 19:44:34',4);
insert  into `xuexiaoxinxi`(`id`,`addtime`,`xuexiaomingcheng`,`suozaidiqu`,`xuexiaodizhi`,`xuexiaotupian`,`zhandimianji`,`renyuanshuliang`,`xuexiaojieshao`,`clicktime`,`clicknum`) values (55,'2021-04-26 19:44:34','学校名称5','所在地区5','学校地址5','http://localhost:8080/ssmiy239/upload/xuexiaoxinxi_xuexiaotupian5.jpg','占地面积5','人员数量5','学校介绍5','2021-04-26 19:44:34',5);
insert  into `xuexiaoxinxi`(`id`,`addtime`,`xuexiaomingcheng`,`suozaidiqu`,`xuexiaodizhi`,`xuexiaotupian`,`zhandimianji`,`renyuanshuliang`,`xuexiaojieshao`,`clicktime`,`clicknum`) values (56,'2021-04-26 19:44:34','学校名称6','所在地区6','学校地址6','http://localhost:8080/ssmiy239/upload/xuexiaoxinxi_xuexiaotupian6.jpg','占地面积6','人员数量6','学校介绍6','2021-04-26 19:44:34',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
