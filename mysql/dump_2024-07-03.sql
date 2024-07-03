/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы motorcycle_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `motorcycle_types`;

CREATE TABLE `motorcycle_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `motorcycle_types` WRITE;
/*!40000 ALTER TABLE `motorcycle_types` DISABLE KEYS */;

INSERT INTO `motorcycle_types` (`id`, `name`)
VALUES
	(1,'Спортбайк'),
	(2,'Классический'),
	(3,'Туристический'),
	(5,'Категория1'),
	(6,'Категория2'),
	(7,'Пустая_категория1'),
	(8,'Пустая_категория2'),
	(9,'Не_пустая_категория');

/*!40000 ALTER TABLE `motorcycle_types` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы motorcycles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `motorcycles`;

CREATE TABLE `motorcycles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT '0',
  `motorcycle_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `motorcycle_type_id` (`motorcycle_type_id`),
  CONSTRAINT `motorcycles_ibfk_1` FOREIGN KEY (`motorcycle_type_id`) REFERENCES `motorcycle_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `motorcycles` WRITE;
/*!40000 ALTER TABLE `motorcycles` DISABLE KEYS */;

INSERT INTO `motorcycles` (`id`, `name`, `discontinued`, `motorcycle_type_id`)
VALUES
	(1,'YAMAHA YBR125',0,1),
	(2,'BAJAJ DOMINAR 400',1,1),
	(3,'Honda CB400SS',0,2),
	(4,'Suzuki GSX1300R Hayabusa',1,2),
	(5,'Kawasaki Ninja H2 SX',1,2),
	(6,'Honda Gold Wing',0,3),
	(7,'Планета',0,3),
	(8,'KTM Adventure 790',1,3),
	(9,'Moto1',0,1),
	(10,'Moto2',0,5),
	(11,'Moto3',0,5),
	(12,'Moto4',1,6),
	(13,'Moto5',1,6),
	(14,'Moto6',1,6),
	(15,'moto-moto-1',0,9),
	(16,'moto-moto-2',0,9),
	(17,'moto-moto-3',0,9);

/*!40000 ALTER TABLE `motorcycles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
