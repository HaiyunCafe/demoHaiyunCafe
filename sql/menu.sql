CREATE DATABASE IF NOT EXISTS haiyuncafe;
USE haiyuncafe;

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(32) NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `picturepath` varchar(60),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(1, '����', 100, 18, '����', 'img/����.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(2, 'Ĩ�走��', 66, 21, 'С��', 'img/Ĩ�走��.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(3, '��ʽ�⽴��', 200, 25, '��ʳ', 'img/��ʽ�⽴��.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(4, 'Ľ˹����', 88, 19, 'С��', 'img/Ľ˹����.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(5, '����ˮ', 250, 10, '����', 'img/����ˮ.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(6, '��������', 300, 17, 'С��', 'img/��������.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(7, '��������', 100, 55, 'С��', 'img/��������.jpg');
INSERT INTO `menu`(`id`, `itemname`, `number`, `price`, `type`, `picturepath`)
  VALUES(8, '��˾', 100, 10, 'С��', 'img/��˾.jpg');