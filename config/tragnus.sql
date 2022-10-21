/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - tragnus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `tragnus`;

/*Table structure for table `game_equipments` */

DROP TABLE IF EXISTS `game_equipments`;

CREATE TABLE `game_equipments` (
  `equipment_id` varchar(255) NOT NULL,
  `game_id` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `game_equipments` */

insert  into `game_equipments`(`equipment_id`,`game_id`,`description`,`createdAt`,`updatedAt`) values 
('EQP01','GAME01','1 papan congklak','2022-10-21 20:37:02','2022-10-21 20:37:04'),
('EQP02','GAME01','98 buah kerang congklak','2022-10-21 20:37:24','2022-10-21 20:37:26');

/*Table structure for table `game_skillsets` */

DROP TABLE IF EXISTS `game_skillsets`;

CREATE TABLE `game_skillsets` (
  `skillset_id` varchar(255) NOT NULL,
  `game_id` varchar(255) DEFAULT NULL,
  `ketangkasan` int(11) DEFAULT NULL,
  `kreativitas` int(11) DEFAULT NULL,
  `kerjasama` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`skillset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `game_skillsets` */

insert  into `game_skillsets`(`skillset_id`,`game_id`,`ketangkasan`,`kreativitas`,`kerjasama`,`createdAt`,`updatedAt`) values 
('SKILLSET01','GAME01',5,5,5,'2022-10-21 20:09:26','2022-10-21 20:09:28'),
('SKILLSET02','GAME02',5,5,5,'2022-10-21 20:09:42','2022-10-21 20:09:44');

/*Table structure for table `game_steps` */

DROP TABLE IF EXISTS `game_steps`;

CREATE TABLE `game_steps` (
  `step_id` varchar(255) NOT NULL,
  `game_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`step_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `game_steps` */

insert  into `game_steps`(`step_id`,`game_id`,`title`,`description`,`createdAt`,`updatedAt`) values 
('STEP01','GAME01','Langkah 1','This is first step of congklak','2022-10-21 20:11:19','2022-10-21 20:11:22'),
('STEP02','GAME01','Langkah 2','This is second step of congklak','2022-10-21 20:11:17','2022-10-21 20:11:23'),
('STEP03','GAME02','Langkah 1','This is first step of engklek','2022-10-21 20:12:14','2022-10-21 20:12:10'),
('STEP04','GAME02','Langkah 2','This is second step of engklek','2022-10-21 20:12:49','2022-10-21 20:12:52');

/*Table structure for table `games` */

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `game_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `games` */

insert  into `games`(`game_id`,`name`,`image`,`video`,`createdAt`,`updatedAt`) values 
('GAME01','Congklak','https:','https:','2022-10-21 20:07:47','2022-10-21 20:07:48'),
('GAME02','Engklek','https:','https:','2022-10-21 20:08:42','2022-10-21 20:08:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`telp`,`password`,`token`,`createdAt`,`updatedAt`) values 
(13,'Rahmat','6281248891487','$2b$10$clpJDy6QQ3dbVjoOovPXRu7nTfNucgghWAdbgTRr3IpbGPxxLd9Oa','eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTMsIm5hbWUiOiJSYWhtYXQiLCJ0ZWxwIjoiNjI4MTI0ODg5MTQ4NyIsInBhc3N3b3JkIjoiJDJiJDEwJGhNTTdRclZ5WmpwQU1EaS5JaDdqb09wZW1yYlllRDJzeWd0QjRJSzlaREM4S1RVRHVRQTdhIiwidG9rZW4iOiJleUpoYkdjaU9pSklVekkxTmlKOS5leUpwWkNJNk1UTXNJbTVoYldVaU9pSlNZV2h0WVhRaUxDSjBaV3h3SWpvaU5qSTRNVEkwT0RnNU1UUTROeUlzSW5CaGMzTjNiM0prSWpvaUpESmlKREV3SkcxUGRVMUJZalkxYm1OQmRIcERNVXBzZUZwbk5VOXVMbTFQWW1GYU9FeGpNWFZLZVhaRVdYUTBNbHBMWkdWWmRXNWxOSGR0SWl3aWRHOXJaVzRpT201MWJHd3NJbU55WldGMFpXUkJkQ0k2SWpJd01qSXRNVEF0TVRaVU1EUTZNems2TVRrdU1EQXdXaUlzSW5Wd1pHRjBaV1JCZENJNklqSXdNakl0TVRBdE1UWlVNRFE2TXprNk1Ua3VNREF3V2lKOS5WVElkOUZ4eG9vdzNqRzd6dXdPbmtaQTJURTJSbUpwQkJFRG9MUU5nX3BNIiwiY3JlYXRlZEF0IjoiMjAyMi0xMC0xNlQwNDozOToxOS4wMDBaIiwidXBkYXRlZEF0IjoiMjAyMi0xMC0xNlQwNDo0Mzo0NS4wMDBaIn0.rbyYdUUfyp8UnnrIl-Va0aKegCTGqja2z84zP_x6tZg','2022-10-16 04:39:19','2022-10-18 03:00:06'),
(15,'Rahmat','6281212116273','$2b$10$TyT9Pq8riyum7obMl.TQxOTxkICKnsEzmUAavCwnDVYlmHzBjjAIa','eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTUsIm5hbWUiOiJSYWhtYXQiLCJ0ZWxwIjoiNjI4MTIxMjExNjI3MyIsInBhc3N3b3JkIjoiJDJiJDEwJFR5VDlQcThyaXl1bTdvYk1sLlRReE9UeGtJQ0tuc0V6bVVBYXZDd25EVllsbUh6QmpqQUlhIiwidG9rZW4iOiJleUpoYkdjaU9pSklVekkxTmlKOS5leUpwWkNJNk1UVXNJbTVoYldVaU9pSlNZV2h0WVhRaUxDSjBaV3h3SWpvaU5qSTRNVEl4TWpFeE5qSTNNeUlzSW5CaGMzTjNiM0prSWpvaUpESmlKREV3SkZSNVZEbFFjVGh5YVhsMWJUZHZZazFzTGxSUmVFOVVlR3RKUTB0dWMwVjZiVlZCWVhaRGQyNUVWbGxzYlVoNlFtcHFRVWxoSWl3aWRHOXJaVzRpT2lKbGVVcG9Za2RqYVU5cFNrbFZla2t4VG1sS09TNWxlVXB3V2tOSk5rMVVWWE5KYlRWb1lsZFZhVTlwU2xOWlYyaDBXVmhSYVV4RFNqQmFWM2gzU1dwdmFVNXFTVFJOVkVsNFRXcEZlRTVxU1ROTmVVbHpTVzVDYUdNelRqTmlNMHByU1dwdmFVcEVTbWxLUkVWM1NrWlNOVlpFYkZGalZHaDVZVmhzTVdKVVpIWlphekZ6VEd4U1VtVkZPVlZsUjNSS1VUQjBkV013VmpaaVZsWkNXVmhhUkdReU5VVldiR3h6WWxWb05sRnRjSEZSVld4b1NXbDNhV1JIT1hKYVZ6UnBUMmxLYkdWVmNHOVphMlJxWVZVNWNGTnJiRlpsYTJ0NFZHMXNTMDlUTld4bFZYQjNWMnRPU2s1ck1WVldXRTVLWWxSV2IxbHNaRlpoVlRsd1UyeE9XbFl5YURCWFZtaFNZVlY0UkZOcVFtRldNMmd6VTFkd2RtRlZOWEZUVkZKT1ZrVnNORlJYY0VabFJUVnhVMVJPVG1WVmJIcFRWelZEWVVkTmVsUnFUbWxOTUhCeVUxZHdkbUZWY0VWVGJXeExVa1ZXTTFOcldsTk9WbHBGWWtaR2FsWkhhRFZaVm1oelRWZEtWVnBJV2xwaGVrWjZWRWQ0VTFWdFZrWlBWbFpzVWpOU1MxVlVRakJrVjAxM1ZtcGFhVlpzV2tOWFZtaGhVa2RSZVU1VlZsZGlSM2g2V1d4V2IwNXNSblJqU0VaU1ZsZDRiMU5YYkROaFYxSklUMWhLWVZaNlVuQlVNakF4VFZkS1NHUXpUa3BpVlRVMVYyeGtSMDFHY0ZoVmEwcHJVVEJyTWxOWGNFcGtNREZ4VTFoU1RsWkZSakJVVmxKclZsVXhWVk5VV2s1bGJVMHlWRmh3VW1SVk1VVlJXR1JZWVZWc2VsTlhOVmRrTVhCSVVtcENZVll4U2tOYVJVNUtUbXRzY1ZOWVpFNWhhMnd3VkZaU1FtUkZNVlZhUmxaT1ZrVnJNbFJZY0dwT2F6RTJWVmhXVGxKRlJqTldNbXhMVDFNMVUwNTZTVEZpYm1Sc1drZEZNbEl4Wkc1aVZtc3pUVlJvZUZSck1VaGthbFoxWW0xd1dtSkdUbnBqTVdSMlVWVTVTMlJZYkhGV1IxcEtTV2wzYVZrelNteFpXRkpzV2tWR01FbHFiMmxOYWtGNVRXa3dlRTFETUhoT01WRjRUV3B2ZWs1NmIzcE9RelIzVFVSQ1lVbHBkMmxrV0VKcldWaFNiRnBGUmpCSmFtOXBUV3BCZVUxcE1IaE5RekI0VGpGUmVFMXFiM3BPZW04d1RtazBkMDFFUW1GSmJqQXViRGQ0WjBJM1lsODNWamh0V0dnNWIwbGtZVUphYVd4R1FUbE1NM3BGZVhCTmJHNHhUMjVSUVdWTk1DSXNJbU55WldGMFpXUkJkQ0k2SWpJd01qSXRNVEF0TVRkVU1USTZNemM2TXpRdU1EQXdXaUlzSW5Wd1pHRjBaV1JCZENJNklqSXdNakl0TVRBdE1UaFVNREk2TkRnNk5Ua3VNREF3V2lKOS5QT0wya3Z5X0VHdk52WVo1UlFjMWVWZ2JqYnpUNDc5QzdfaW53enI5c3ZVIiwiY3JlYXRlZEF0IjoiMjAyMi0xMC0xN1QxMjozNzozNC4wMDBaIiwidXBkYXRlZEF0IjoiMjAyMi0xMC0xOFQwMjo1Mjo0Mi4wMDBaIn0.7VY8PZGzTnSelMyuG8G1cDDWtOvVVdoqS95Bda6Xn0c','2022-10-17 12:37:34','2022-10-18 02:58:40'),
(16,'Rahmat','6289671617161','$2b$10$GQ598gSDhYav.koSVJoc8eSB2/0ZfoNW9lB4jud/iLiDnKFW4v3um',NULL,'2022-10-18 02:42:35','2022-10-18 02:42:35'),
(18,'R','628','$2b$10$mi/Yf/ZHgDwcJ2.5ZmFfHOmW0TjPgYKu4WHg06yMCFYVHYCZ9cDFS','eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTgsIm5hbWUiOiJSIiwidGVscCI6IjYyOCIsInBhc3N3b3JkIjoiJDJiJDEwJG1pL1lmL1pIZ0R3Y0oyLjVabUZmSE9tVzBUalBnWUt1NFdIZzA2eU1DRllWSFlDWjljREZTIiwidG9rZW4iOiJleUpoYkdjaU9pSklVekkxTmlKOS5leUpwWkNJNk1UZ3NJbTVoYldVaU9pSlNJaXdpZEdWc2NDSTZJall5T0NJc0luQmhjM04zYjNKa0lqb2lKREppSkRFd0pHbzFjVU5PUlVSRk5EQkdTa3hWV0RSMmJ6azJWSFZVT1ZwbWFsWkxWSEpOY2xCT2RuSjFUMHRUY0ZoTU1FNHZkMHQyVVVSSElpd2lkRzlyWlc0aU9tNTFiR3dzSW1OeVpXRjBaV1JCZENJNklqSXdNakl0TVRBdE1qRlVNVEk2TWpRNk5UQXVNREF3V2lJc0luVndaR0YwWldSQmRDSTZJakl3TWpJdE1UQXRNakZVTVRJNk1qUTZOVEF1TURBd1dpSjkuZEtZdmF2TDY1ZVNlQ2ozSWRybkZpdUxPT1RpRWVNQWtfZ0dSTkJoX3NDOCIsImNyZWF0ZWRBdCI6IjIwMjItMTAtMjFUMTI6MjQ6NTAuMDAwWiIsInVwZGF0ZWRBdCI6IjIwMjItMTAtMjFUMTI6MzA6NTMuMDAwWiJ9.ZQZHrGDROTSkFeVVahqbTz85CZRC7Cly34tEosVjzio','2022-10-21 12:24:50','2022-10-21 12:31:07');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
