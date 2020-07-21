CREATE DATABASE IF NOT EXISTS haiyuncafe;
USE haiyuncafe;

DROP TABLE IF EXISTS `userorder`;

CREATE TABLE `userorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iid` int NOT NULL,
  `itemname` varchar(20) NOT NULL,
  `itemnum` int NOT NULL,
  `itemprice` int NOT NULL,
  `orderdate` varchar(20) NOT NULL,
  `orderstate` varchar(20) NOT NULL,
  `uid` int NOT NULL,
  `user_address` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `userorder` VALUES (1,5,'柠檬水',7,10,'2020-07-15 10:45:49','未支付',2,'克莱登大学'),(2,3,'意式肉酱面',2,25,'2020-07-15 10:45:50','未支付',2,'克莱登大学'),(3,1,'拿铁',2,18,'2020-07-15 11:06:26','未支付',2,'克莱登大学'),(4,2,'抹茶蛋糕',6,21,'2020-07-15 11:06:27','未支付',2,'克莱登大学'),(5,1,'拿铁',5,18,'2020-07-20 10:44:38','未支付',2,'克莱登大学'),(6,2,'抹茶蛋糕',2,21,'2020-07-20 10:45:40','未支付',2,'克莱登大学'),(7,3,'意式肉酱面',1,25,'2020-07-20 10:45:40','未支付',2,'克莱登大学'),(8,3,'意式肉酱面',2,25,'2020-07-20 13:17:29','未支付',4,'海韵大学'),(9,5,'柠檬水',2,10,'2020-07-20 13:17:30','未支付',4,'海韵大学'),(10,8,'土司',1,10,'2020-07-20 13:17:30','未支付',4,'海韵大学'),(11,2,'抹茶蛋糕',1,21,'2020-07-20 13:17:31','未支付',4,'海韵大学'),(12,2,'抹茶蛋糕',6,21,'2020-07-20 13:31:58','未支付',3,'加里敦大学'),(13,8,'土司',1,10,'2020-07-20 13:32:16','未支付',3,'加里敦大学'),(14,5,'柠檬水',1,10,'2020-07-20 14:43:14','未支付',3,'加里敦大学'),(15,1,'拿铁',1,18,'2020-07-20 14:43:14','未支付',3,'加里敦大学'),(16,7,'至尊披萨',1,55,'2020-07-20 14:43:14','未支付',3,'加里敦大学'),(17,5,'柠檬水',2,10,'2020-07-20 14:43:31','未支付',3,'加里敦大学'),(18,1,'拿铁',1,18,'2020-07-20 14:43:31','未支付',3,'加里敦大学'),(19,5,'柠檬水',2,10,'2020-07-20 14:44:44','未支付',2,'克莱登大学'),(20,6,'提拉米苏',1,17,'2020-07-20 14:44:44','未支付',2,'克莱登大学'),(21,4,'慕斯蛋糕',1,19,'2020-07-20 14:44:45','未支付',2,'克莱登大学'),(22,7,'至尊披萨',1,55,'2020-07-20 14:44:45','未支付',2,'克莱登大学'),(23,1,'拿铁',3,18,'2020-07-20 14:44:45','未支付',2,'克莱登大学'),(24,2,'抹茶蛋糕',6,21,'2020-07-20 15:50:31','未支付',2,'克莱登大学');

