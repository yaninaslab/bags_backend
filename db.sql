-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (arm64)
--
-- Host: localhost    Database: shop_cart
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `quantity` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Mini Camera Bag With Signature Coated Canvas Detail','C$139','https://images.coach.com/is/image/Coach/c8375_imscq_a0?$desktopProductTile$',0),(2,'Box Crossbody In Signature Canvas','C$178.80','https://images.coach.com/is/image/Coach/c3148_imdqc_a0?$desktopProductTile$',0),(3,'Box Crossbody','C$178.80','https://images.coach.com/is/image/Coach/c2872_svgn_a0?$desktopProductTile$',0),(4,'Rowan File Bag','C$150','https://images.coach.com/is/image/Coach/c1556_imchk_a0?$desktopProductTile$',0),(5,'Heritage Convertible Crossbody With Hybrid In Colorblock','C$196.80','https://images.coach.com/is/image/Coach/c8141_qbtub_a0?$desktopProductTile$',0),(6,'Track Crossbody In Colorblock Signature Canvas With Coach','C$238.80','https://images.coach.com/is/image/Coach/c8128_qbttx_a0?$desktopProductTile$',0),(7,'Track Small Flap Crossbody In Signature Canvas','C$150','https://images.coach.com/is/image/Coach/c3134_qbtuo_a0?$desktopProductTile$',0),(8,'Track Crossbody In Colorblock Signature Canvas With Coach','C$238.80','https://images.coach.com/is/image/Coach/c8128_qbtu3_a0?$desktopProductTile$',0),(9,'Track Small Flap Crossbody In Signature Canvas','C$150','https://images.coach.com/is/image/Coach/c3134_qbtvq_a0?$desktopProductTile$',0),(10,'Heritage Convertible Crossbody With Hybrid In Colorblock','C$196.80','https://images.coach.com/is/image/Coach/c8141_qbtu9_a0?$desktopProductTile$',0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shop_cart'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-12 11:55:42
