-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm3v709
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm3v709`
--

/*!40000 DROP DATABASE IF EXISTS `ssm3v709`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm3v709` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm3v709`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651332058362 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2022-04-30 15:11:40',1,1,'提问1','回复1',0),(52,'2022-04-30 15:11:40',2,2,'提问2','回复2',2),(53,'2022-04-30 15:11:40',3,3,'提问3','回复3',3),(54,'2022-04-30 15:11:40',4,4,'提问4','回复4',4),(55,'2022-04-30 15:11:40',5,5,'提问5','回复5',5),(56,'2022-04-30 15:11:40',6,6,'提问6','回复6',6),(1651331856114,'2022-04-30 15:17:36',1,1,NULL,'电饭锅发的',NULL),(1651332002502,'2022-04-30 15:20:02',1651331942243,NULL,'打算发送到发送到发多少',NULL,0),(1651332058361,'2022-04-30 15:20:58',1651331942243,1,NULL,'电饭锅地方固定',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1651331864060.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingfenlei`
--

DROP TABLE IF EXISTS `dianyingfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingfenlei` varchar(200) DEFAULT NULL COMMENT '电影分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingfenlei` (`dianyingfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1651331777347 DEFAULT CHARSET=utf8 COMMENT='电影分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingfenlei`
--

LOCK TABLES `dianyingfenlei` WRITE;
/*!40000 ALTER TABLE `dianyingfenlei` DISABLE KEYS */;
INSERT INTO `dianyingfenlei` VALUES (21,'2022-04-30 15:11:40','动漫'),(22,'2022-04-30 15:11:40','电影分类2'),(23,'2022-04-30 15:11:40','电影分类3'),(24,'2022-04-30 15:11:40','电影分类4'),(25,'2022-04-30 15:11:40','电影分类5'),(26,'2022-04-30 15:11:40','电影分类6'),(1651331777346,'2022-04-30 15:16:17','武侠');
/*!40000 ALTER TABLE `dianyingfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingxinxi`
--

DROP TABLE IF EXISTS `dianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingfenlei` varchar(200) DEFAULT NULL COMMENT '电影分类',
  `dianyinghaibao` varchar(200) DEFAULT NULL COMMENT '电影海报',
  `dianyingpianduan` varchar(200) DEFAULT NULL COMMENT '电影片段',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yanyuan` varchar(200) DEFAULT NULL COMMENT '演员',
  `shangyingriqi` date DEFAULT NULL COMMENT '上映日期',
  `fangyingchangci` varchar(200) DEFAULT NULL COMMENT '放映场次',
  `fangyingshijian` varchar(200) DEFAULT NULL COMMENT '放映时间',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `yingyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '影院名称',
  `yingyuandizhi` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `dianyingjieshao` longtext COMMENT '电影介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  `number` int(11) DEFAULT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651331816370 DEFAULT CHARSET=utf8 COMMENT='电影信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingxinxi`
--

LOCK TABLES `dianyingxinxi` WRITE;
/*!40000 ALTER TABLE `dianyingxinxi` DISABLE KEYS */;
INSERT INTO `dianyingxinxi` VALUES (31,'2022-04-30 15:11:40','电影名称1','动漫','upload/dianyingxinxi_dianyinghaibao1.jpg','','导演1','演员1','2022-04-30','放映场次1','放映时间1','1号厅','影院名称1','影院地址1','<p>电影介绍1</p>','2022-04-30 23:16:20',2,99.9,20,'1,3,5,7,9'),(32,'2022-04-30 15:11:40','电影名称2','电影分类2','upload/dianyingxinxi_dianyinghaibao2.jpg','','导演2','演员2','2022-04-30','放映场次2','放映时间2','1号厅','影院名称2','影院地址2','电影介绍2','2022-04-30 23:11:40',2,99.9,20,'1,3,5,7,9'),(33,'2022-04-30 15:11:40','电影名称3','电影分类3','upload/dianyingxinxi_dianyinghaibao3.jpg','','导演3','演员3','2022-04-30','放映场次3','放映时间3','1号厅','影院名称3','影院地址3','电影介绍3','2022-04-30 23:21:11',7,99.9,20,'1,3,5,7,9,15'),(34,'2022-04-30 15:11:40','电影名称4','电影分类4','upload/dianyingxinxi_dianyinghaibao4.jpg','','导演4','演员4','2022-04-30','放映场次4','放映时间4','1号厅','影院名称4','影院地址4','电影介绍4','2022-04-30 23:11:40',4,99.9,20,'1,3,5,7,9'),(35,'2022-04-30 15:11:40','电影名称5','电影分类5','upload/dianyingxinxi_dianyinghaibao5.jpg','','导演5','演员5','2022-04-30','放映场次5','放映时间5','1号厅','影院名称5','影院地址5','电影介绍5','2022-04-30 23:11:40',5,99.9,20,'1,3,5,7,9'),(36,'2022-04-30 15:11:40','电影名称6','电影分类6','upload/dianyingxinxi_dianyinghaibao6.jpg','','导演6','演员6','2022-04-30','放映场次6','放映时间6','1号厅','影院名称6','影院地址6','电影介绍6','2022-04-30 23:16:59',7,99.9,20,'1,3,5,7,9'),(1651331816369,'2022-04-30 15:16:56','龙珠','动漫','upload/1651331792850.jpg','upload/1651331798210.mp4','时代发生','水电费时代','2022-04-30','时代发多少','时代发多少','3号厅','时代发多少','水电费时代','<p>电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少电商发多少发多少发多少</p><p><img src=\"http://localhost:8080/ssm3v709/upload/1651331815437.jpg\"></p>','2022-04-30 23:20:40',5,222,33,'1,3,5,7,9,14,17');
/*!40000 ALTER TABLE `dianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdianyingxinxi`
--

DROP TABLE IF EXISTS `discussdianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651332036264 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdianyingxinxi`
--

LOCK TABLES `discussdianyingxinxi` WRITE;
/*!40000 ALTER TABLE `discussdianyingxinxi` DISABLE KEYS */;
INSERT INTO `discussdianyingxinxi` VALUES (81,'2022-04-30 15:11:40',1,1,'用户名1','评论内容1','回复内容1'),(82,'2022-04-30 15:11:40',2,2,'用户名2','评论内容2','回复内容2'),(83,'2022-04-30 15:11:40',3,3,'用户名3','评论内容3','回复内容3'),(84,'2022-04-30 15:11:40',4,4,'用户名4','评论内容4','回复内容4'),(85,'2022-04-30 15:11:40',5,5,'用户名5','评论内容5','回复内容5'),(86,'2022-04-30 15:11:40',6,6,'用户名6','评论内容6','回复内容6'),(1651331904135,'2022-04-30 15:18:23',33,11,'账号1','按时打算','电商发多少3333'),(1651332036263,'2022-04-30 15:20:36',1651331816369,1651331942243,'11','时代发多少发多少发送到333','');
/*!40000 ALTER TABLE `discussdianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1651332020988 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1651331887448,'2022-04-30 15:18:06','20224302318711126968','dianyingxinxi',11,33,'电影名称3','upload/dianyingxinxi_dianyinghaibao3.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','15',NULL,NULL,NULL),(1651332020987,'2022-04-30 15:20:20','20224302320212025784','dianyingxinxi',1651331942243,1651331816369,'龙珠','upload/1651331792850.jpg',2,222,222,444,444,1,'已完成','14,17',NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651331985393 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1651331975942,'2022-04-30 15:19:35',1651331942243,1651331816369,'dianyingxinxi','龙珠','upload/1651331792850.jpg','1',NULL),(1651331985392,'2022-04-30 15:19:44',1651331942243,1651331843126,'zuixinzixun','佛挡杀佛','upload/1651331837241.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'账号1','yonghu','用户','vponopxqpw1laqrsdgmnlp49ahgqyjua','2022-04-30 15:14:21','2022-04-30 16:14:22'),(2,1,'abo','users','管理员','boo8e0gdrfvj6i0d6mhjrs0v28e2dsut','2022-04-30 15:15:59','2022-04-30 16:20:49'),(3,1651331942243,'11','yonghu','用户','3udufz96xiv44c1oh3i2jy68twarvtft','2022-04-30 15:19:06','2022-04-30 16:19:07');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-30 15:11:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1651331942244 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-30 15:11:40','账号1','123456','姓名1',1,'男','13823888881','upload/yonghu_zhaopian1.jpg',0.1),(12,'2022-04-30 15:11:40','账号2','123456','姓名2',2,'男','13823888882','upload/yonghu_zhaopian2.jpg',100),(13,'2022-04-30 15:11:40','账号3','123456','姓名3',3,'男','13823888883','upload/yonghu_zhaopian3.jpg',100),(14,'2022-04-30 15:11:40','账号4','123456','姓名4',4,'男','13823888884','upload/yonghu_zhaopian4.jpg',100),(15,'2022-04-30 15:11:40','账号5','123456','姓名5',5,'男','13823888885','upload/yonghu_zhaopian5.jpg',100),(16,'2022-04-30 15:11:40','账号6','123456','姓名6',6,'男','13823888886','upload/yonghu_zhaopian6.jpg',100),(1651331942243,'2022-04-30 15:19:02','11','11','发给',11,'女','11122223333','upload/1651331991896.jpg',111777);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuixinzixun`
--

DROP TABLE IF EXISTS `zuixinzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuixinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651331843127 DEFAULT CHARSET=utf8 COMMENT='最新资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuixinzixun`
--

LOCK TABLES `zuixinzixun` WRITE;
/*!40000 ALTER TABLE `zuixinzixun` DISABLE KEYS */;
INSERT INTO `zuixinzixun` VALUES (41,'2022-04-30 15:11:40','标题1','资讯类型1','2022-04-30','upload/zuixinzixun_fengmian1.jpg','内容1','2022-04-30 23:11:40',1),(42,'2022-04-30 15:11:40','标题2','资讯类型2','2022-04-30','upload/zuixinzixun_fengmian2.jpg','内容2','2022-04-30 23:11:40',2),(43,'2022-04-30 15:11:40','标题3','资讯类型3','2022-04-30','upload/zuixinzixun_fengmian3.jpg','内容3','2022-04-30 23:11:40',3),(44,'2022-04-30 15:11:40','标题4','资讯类型4','2022-04-30','upload/zuixinzixun_fengmian4.jpg','内容4','2022-04-30 23:19:21',6),(45,'2022-04-30 15:11:40','标题5','资讯类型5','2022-04-30','upload/zuixinzixun_fengmian5.jpg','内容5','2022-04-30 23:11:40',5),(46,'2022-04-30 15:11:40','标题6','资讯类型6','2022-04-30','upload/zuixinzixun_fengmian6.jpg','内容6','2022-04-30 23:11:40',6),(1651331843126,'2022-04-30 15:17:22','佛挡杀佛',' 时代发送到','2022-04-30','upload/1651331837241.jpg','<p>的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代的份上发多少发送到发送到发送到时代</p>','2022-04-30 23:20:25',3);
/*!40000 ALTER TABLE `zuixinzixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03 20:48:18
