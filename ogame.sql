-- MySQL dump 10.13  Distrib 5.1.73, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: ogame
-- ------------------------------------------------------
-- Server version	5.1.73-1

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
-- Table structure for table `uni1_ally`
--

DROP TABLE IF EXISTS `uni1_ally`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_ally` (
  `ally_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` text,
  `name` text,
  `owner_id` int(11) DEFAULT NULL,
  `homepage` text,
  `imglogo` text,
  `open` int(11) DEFAULT NULL,
  `insertapp` int(11) DEFAULT NULL,
  `exttext` text,
  `inttext` text,
  `apptext` text,
  `nextrank` int(11) DEFAULT NULL,
  `old_tag` text,
  `old_name` text,
  `tag_until` int(10) unsigned DEFAULT NULL,
  `name_until` int(10) unsigned DEFAULT NULL,
  `score1` bigint(20) unsigned DEFAULT NULL,
  `score2` int(10) unsigned DEFAULT NULL,
  `score3` int(10) unsigned DEFAULT NULL,
  `place1` int(11) DEFAULT NULL,
  `place2` int(11) DEFAULT NULL,
  `place3` int(11) DEFAULT NULL,
  `oldscore1` bigint(20) unsigned DEFAULT NULL,
  `oldscore2` int(10) unsigned DEFAULT NULL,
  `oldscore3` int(10) unsigned DEFAULT NULL,
  `oldplace1` int(11) DEFAULT NULL,
  `oldplace2` int(11) DEFAULT NULL,
  `oldplace3` int(11) DEFAULT NULL,
  `scoredate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ally_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_ally`
--

LOCK TABLES `uni1_ally` WRITE;
/*!40000 ALTER TABLE `uni1_ally` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_ally` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_allyapps`
--

DROP TABLE IF EXISTS `uni1_allyapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_allyapps` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `ally_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `text` text,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_allyapps`
--

LOCK TABLES `uni1_allyapps` WRITE;
/*!40000 ALTER TABLE `uni1_allyapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_allyapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_allyranks`
--

DROP TABLE IF EXISTS `uni1_allyranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_allyranks` (
  `rank_id` int(11) DEFAULT NULL,
  `ally_id` int(11) DEFAULT NULL,
  `name` text,
  `rights` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_allyranks`
--

LOCK TABLES `uni1_allyranks` WRITE;
/*!40000 ALTER TABLE `uni1_allyranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_allyranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_battledata`
--

DROP TABLE IF EXISTS `uni1_battledata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_battledata` (
  `battle_id` int(11) NOT NULL AUTO_INCREMENT,
  `source` text,
  `title` text,
  `report` text,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`battle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_battledata`
--

LOCK TABLES `uni1_battledata` WRITE;
/*!40000 ALTER TABLE `uni1_battledata` DISABLE KEYS */;
INSERT INTO `uni1_battledata` VALUES (3,'Rapidfire = 1\nFID = 30\nDID = 0\nAttackers = 1\nDefenders = 1\nAttacker0 = (<devnull> 10005 1 1 4 40 40 40 0 2 2 2 2 2 2 2 2 2 0 2 2 10 )\nDefender0 = (<Legor> 2 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )\n','<a href=\"#\" onclick=\"fenster(\'index.php?page=admin&session={PUBLIC_SESSION}&mode=BattleReport&bericht=3\', \'Bericht_Kampf\');\" ><span class=\"combatreport_ididattack_draw\">Боевой доклад [1:1:2] (V:0,A:0)</span></a>','Дата/Время: 08-12 14:20:22 . Произошёл бой между следующими флотами:<br><table border=1 width=100%><tr></tr></table><table border=1 width=100%><tr></tr></table><br><p><br>Атакующий потерял 0 единиц.<br>Обороняющийся потерял 0 единиц.<br>Теперь на этих пространственных координатах находится 0 металла и 0 кристалла.',1376306422),(2,'Rapidfire = 1\nFID = 30\nDID = 0\nAttackers = 1\nDefenders = 1\nAttacker0 = (<devnull> 10002 1 1 4 40 40 40 0 0 0 5 0 0 5 0 0 10 0 5 2 10 )\nDefender0 = (<Legor> 1 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )\n','<a href=\"#\" onclick=\"fenster(\'index.php?page=admin&session={PUBLIC_SESSION}&mode=BattleReport&bericht=2\', \'Bericht_Kampf\');\" ><span class=\"combatreport_ididattack_draw\">Боевой доклад [1:1:2] (V:0,A:0)</span></a>','Дата/Время: 08-10 09:47:39 . Произошёл бой между следующими флотами:<br><table border=1 width=100%><tr></tr></table><table border=1 width=100%><tr></tr></table><br><p><br>Атакующий потерял 0 единиц.<br>Обороняющийся потерял 0 единиц.<br>Теперь на этих пространственных координатах находится 0 металла и 0 кристалла.',1376117259);
/*!40000 ALTER TABLE `uni1_battledata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_botqueue`
--

DROP TABLE IF EXISTS `uni1_botqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_botqueue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `type` text,
  `eval` text,
  `op1` text,
  `op2` text,
  `op3` text,
  `op4` text,
  `op5` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_botqueue`
--

LOCK TABLES `uni1_botqueue` WRITE;
/*!40000 ALTER TABLE `uni1_botqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_botqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_botstrat`
--

DROP TABLE IF EXISTS `uni1_botstrat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_botstrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `source` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_botstrat`
--

LOCK TABLES `uni1_botstrat` WRITE;
/*!40000 ALTER TABLE `uni1_botstrat` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_botstrat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_botvars`
--

DROP TABLE IF EXISTS `uni1_botvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_botvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `var` text,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_botvars`
--

LOCK TABLES `uni1_botvars` WRITE;
/*!40000 ALTER TABLE `uni1_botvars` DISABLE KEYS */;
INSERT INTO `uni1_botvars` VALUES (1,100000,'TimeLimit','94608000');
/*!40000 ALTER TABLE `uni1_botvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_browse`
--

DROP TABLE IF EXISTS `uni1_browse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_browse` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `url` text,
  `method` text,
  `getdata` text,
  `postdata` text,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_browse`
--

LOCK TABLES `uni1_browse` WRITE;
/*!40000 ALTER TABLE `uni1_browse` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_browse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_buddy`
--

DROP TABLE IF EXISTS `uni1_buddy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_buddy` (
  `buddy_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_from` int(11) DEFAULT NULL,
  `request_to` int(11) DEFAULT NULL,
  `text` text,
  `accepted` int(11) DEFAULT NULL,
  PRIMARY KEY (`buddy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_buddy`
--

LOCK TABLES `uni1_buddy` WRITE;
/*!40000 ALTER TABLE `uni1_buddy` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_buddy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_buildqueue`
--

DROP TABLE IF EXISTS `uni1_buildqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_buildqueue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  `tech_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `destroy` int(11) DEFAULT NULL,
  `start` int(10) unsigned DEFAULT NULL,
  `end` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_buildqueue`
--

LOCK TABLES `uni1_buildqueue` WRITE;
/*!40000 ALTER TABLE `uni1_buildqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_buildqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_debug`
--

DROP TABLE IF EXISTS `uni1_debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_debug` (
  `error_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `ip` text,
  `agent` text,
  `url` text,
  `text` text,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10059 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_debug`
--

LOCK TABLES `uni1_debug` WRITE;
/*!40000 ALTER TABLE `uni1_debug` DISABLE KEYS */;
INSERT INTO `uni1_debug` VALUES (10000,1,'89.117.240.252','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=admin&session=006dfb4d3f06&mode=BotEdit','12:30 - Old scores saved',1373189425),(10001,1,'89.117.251.59','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=b_building&session=e76f3a5d4b66&planet=1','16:05 - Old scores saved',1373210076),(10002,100000,'89.117.251.199','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=e955ac8dd59e&lgn=1','20:05 - Old scores saved',1373307904),(10003,100000,'89.117.251.199','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=e955ac8dd59e&lgn=1','Чистка уничтоженных планет (0)',1373307904),(10004,100000,'89.117.251.199','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=e955ac8dd59e&lgn=1','Удалено бесконечных далей : 0',1373307904),(10005,100000,'89.117.251.199','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=769d09d08dcf&lgn=1','08:05 - Old scores saved',1373307927),(10006,100000,'89.117.251.199','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=769d09d08dcf','16:05 - Old scores saved',1373307930),(10007,100000,'89.117.251.199','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=b_building&session=769d09d08dcf','20:05 - Old scores saved',1373307938),(10008,100000,'89.117.252.237','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=4ddab7ab58d4&lgn=1','Чистка уничтоженных планет (0)',1373353451),(10009,100000,'89.117.252.237','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=4ddab7ab58d4&lgn=1','Удалено бесконечных далей : 0',1373353451),(10010,100000,'89.117.252.237','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=4ddab7ab58d4&lgn=1','08:05 - Old scores saved',1373353451),(10011,100000,'84.46.242.240','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=604defd55e1a&lgn=1','16:05 - Old scores saved',1373388815),(10012,100000,'84.46.242.240','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=b_building&session=604defd55e1a&planet=10000','20:05 - Old scores saved',1373389899),(10013,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=d066ecfb098b&lgn=1','Чистка уничтоженных планет (0)',1373788167),(10014,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=d066ecfb098b&lgn=1','Удалено бесконечных далей : 0',1373788167),(10015,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=d066ecfb098b&lgn=1','08:05 - Old scores saved',1373788167),(10016,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=c557f0a2520c','Исследование Weapons Technology уровня 1 для пользователя 100000 завершено.',1373788500),(10017,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Forschung','Исследование Energy Technology уровня 1 для пользователя 100000 завершено.',1373789182),(10018,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Forschung','Исследование Energy Technology уровня 2 для пользователя 100000 завершено.',1373789764),(10019,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Forschung','Исследование Energy Technology уровня 3 для пользователя 100000 завершено.',1373789903),(10020,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=c557f0a2520c&modus=add&techid=14&planet=10000','Исследование Energy Technology уровня 4 для пользователя 100000 завершено.',1373790163),(10021,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=c557f0a2520c','Исследование Weapons Technology уровня 2 для пользователя 100000 завершено.',1373790507),(10022,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=statistics&session=c557f0a2520c','Исследование Computer Technology уровня 1 для пользователя 100000 завершено.',1373790836),(10023,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=resources&session=c557f0a2520c','Исследование Computer Technology уровня 2 для пользователя 100000 завершено.',1373791325),(10024,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Forschung&bau=115','Исследование Combustion Drive уровня 1 для пользователя 100000 завершено.',1373791644),(10025,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Forschung','Исследование Combustion Drive уровня 2 для пользователя 100000 завершено.',1373791674),(10026,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=c557f0a2520c&planet=10000','Исследование Shielding Technology уровня 1 для пользователя 100000 завершено.',1373792000),(10027,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Flotte','Исследование Espionage Technology уровня 1 для пользователя 100000 завершено.',1373792158),(10028,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=c557f0a2520c','Исследование Impulse Drive уровня 1 для пользователя 100000 завершено.',1373792457),(10029,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=buildings&session=c557f0a2520c&mode=Forschung','Исследование Graviton Technology уровня 1 для пользователя 100000 завершено.',1373792701),(10030,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=8442e240736e&lgn=1','16:05 - Old scores saved',1373807755),(10031,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=infos&session=611b87e4de90','20:05 - Old scores saved',1373822491),(10032,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130308 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=bc3b8e367c76&lgn=1','Удалено виртуальных ПО : 0',1374482014),(10033,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130308 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=bc3b8e367c76&lgn=1','Чистка уничтоженных планет (0)',1374482015),(10034,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130308 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=bc3b8e367c76&lgn=1','Удалено бесконечных далей : 0',1374482015),(10035,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130308 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=bc3b8e367c76&lgn=1','08:05 - Old scores saved',1374482015),(10036,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130308 Firefox/17.0 TenFourFox/7450','/game/index.php?page=micropayment&session=ad64aae536e7','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near &rsquo; k = k + , lastpeek = 1374483733 WHERE planet_id = 10001&rsquo; at line 1<br>UPDATE uni1_planets SET m = m + , k = k + , lastpeek = 1374483733 WHERE planet_id = 10001<br>&nbsp;file=planet.php, line=327, function=dbquery<br>&nbsp;&nbsp;file=battle.php, line=734, function=AddDebris<br>&nbsp;&nbsp;&nbsp;file=fleet.php, line=524, function=StartBattle<br>&nbsp;&nbsp;&nbsp;&nbsp;file=fleet.php, line=962, function=AttackArrive<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=queue.php, line=139, function=Queue_Fleet_End<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=micropayment.php, line=14, function=UpdateQueue<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=index.php, line=144, function=include<br>',1374483733),(10037,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=f76e98b1940e&lgn=1','16:05 - Old scores saved',1375425206),(10038,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=f76e98b1940e&lgn=1','Чистка уничтоженных планет (0)',1375425206),(10039,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=f76e98b1940e&lgn=1','Удалено бесконечных далей : 0',1375425206),(10040,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=overview&session=f76e98b1940e&lgn=1','Удалено виртуальных ПО : 1',1375425206),(10041,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=overview&session=fdbb9a0aba15&lgn=1','20:05 - Old scores saved',1376112696),(10042,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=overview&session=fdbb9a0aba15&lgn=1','Чистка уничтоженных планет (0)',1376112696),(10043,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=overview&session=fdbb9a0aba15&lgn=1','Удалено бесконечных далей : 0',1376112696),(10044,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=overview&session=fdbb9a0aba15&lgn=1','Удалено виртуальных ПО : 0',1376112696),(10045,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=overview&session=78dff5f959a9&lgn=1','08:05 - Old scores saved',1376112704),(10046,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130620 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=a42997d49347&lgn=1','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near &rsquo; k = k + , lastpeek = 1376301789 WHERE planet_id = 10002&rsquo; at line 1<br>UPDATE uni1_planets SET m = m + , k = k + , lastpeek = 1376301789 WHERE planet_id = 10002<br>&nbsp;file=planet.php, line=327, function=dbquery<br>&nbsp;&nbsp;file=battle.php, line=734, function=AddDebris<br>&nbsp;&nbsp;&nbsp;file=fleet.php, line=524, function=StartBattle<br>&nbsp;&nbsp;&nbsp;&nbsp;file=fleet.php, line=962, function=AttackArrive<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=queue.php, line=139, function=Queue_Fleet_End<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=overview.php, line=18, function=UpdateQueue<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=index.php, line=110, function=include<br>',1376301789),(10047,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130620 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=a42997d49347&lgn=1','16:05 - Old scores saved',1376301789),(10048,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130620 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=a42997d49347&lgn=1','Чистка уничтоженных планет (0)',1376301789),(10049,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130620 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=a42997d49347&lgn=1','Удалено бесконечных далей : 0',1376301789),(10050,100000,'192.168.1.1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.4; rv:17.0) Gecko/20130620 Firefox/17.0 TenFourFox/7450','/game/index.php?page=overview&session=a42997d49347&lgn=1','Удалено виртуальных ПО : 1',1376301789),(10051,100000,'88.216.5.243','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36','/game/index.php?page=overview&session=24c215a00968&lgn=1','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near &rsquo; k = k + , lastpeek = 1377835593 WHERE planet_id = 10003&rsquo; at line 1<br>UPDATE uni1_planets SET m = m + , k = k + , lastpeek = 1377835593 WHERE planet_id = 10003<br>&nbsp;file=planet.php, line=327, function=dbquery<br>&nbsp;&nbsp;file=battle.php, line=734, function=AddDebris<br>&nbsp;&nbsp;&nbsp;file=fleet.php, line=524, function=StartBattle<br>&nbsp;&nbsp;&nbsp;&nbsp;file=fleet.php, line=962, function=AttackArrive<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=queue.php, line=139, function=Queue_Fleet_End<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=overview.php, line=18, function=UpdateQueue<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file=index.php, line=110, function=include<br>',1377835593),(10052,100000,'88.216.5.243','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36','/game/index.php?page=overview&session=24c215a00968&lgn=1','20:05 - Old scores saved',1377835594),(10053,100000,'88.216.5.243','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36','/game/index.php?page=overview&session=24c215a00968&lgn=1','Чистка уничтоженных планет (0)',1377835594),(10054,100000,'88.216.5.243','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36','/game/index.php?page=overview&session=24c215a00968&lgn=1','Удалено бесконечных далей : 0',1377835594),(10055,100000,'88.216.5.243','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36','/game/index.php?page=overview&session=24c215a00968&lgn=1','Удалено виртуальных ПО : 1',1377835594),(10056,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36','/game/index.php?page=overview&session=2707b3efe2d1&lgn=1','08:05 - Old scores saved',1378887516),(10057,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36','/game/index.php?page=overview&session=2707b3efe2d1&lgn=1','Чистка уничтоженных планет (0)',1378887516),(10058,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36','/game/index.php?page=overview&session=2707b3efe2d1&lgn=1','Удалено виртуальных ПО : 0',1378887516);
/*!40000 ALTER TABLE `uni1_debug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_errors`
--

DROP TABLE IF EXISTS `uni1_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_errors` (
  `error_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `ip` text,
  `agent` text,
  `url` text,
  `text` text,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_errors`
--

LOCK TABLES `uni1_errors` WRITE;
/*!40000 ALTER TABLE `uni1_errors` DISABLE KEYS */;
INSERT INTO `uni1_errors` VALUES (10000,100000,'89.117.252.237','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=overview&session=769d09d08dcf','Сессия недействительна.',1373353410),(10001,100000,'84.46.242.240','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=b_building&session=89ba043b8971&planet=10000','Сессия недействительна.',1373386376),(10002,100000,'86.38.14.238','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=b_building&session=604defd55e1a&planet=10000','Сессия недействительна.',1373483615),(10003,100000,'86.38.14.238','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36','/game/index.php?page=b_building&session=604defd55e1a&planet=10000','Сессия недействительна.',1373483615),(10004,100000,'86.38.13.23','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=604defd55e1a&planet=10000','Сессия недействительна.',1373787651),(10005,100000,'86.38.183.131','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=611b87e4de90','Сессия недействительна.',1373859376),(10006,100000,'86.38.183.131','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36','/game/index.php?page=b_building&session=611b87e4de90','Сессия недействительна.',1373859409),(10007,100000,'88.216.5.243','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=statistics&session=4c82d1f9b1d6','Сессия недействительна.',1375635640),(10008,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=statistics&session=4c82d1f9b1d6','Сессия недействительна.',1376108153),(10009,100000,'88.216.5.200','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36','/game/index.php?page=statistics&session=4c82d1f9b1d6','Сессия недействительна.',1376112684),(10010,100000,'89.117.242.79','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1379487102),(10011,100000,'89.117.241.102','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1379676053),(10012,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1379716833),(10013,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1379718485),(10014,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1379780175),(10015,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1380210733),(10016,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1380223285),(10017,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1380311396),(10018,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1380831881),(10019,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1381143533),(10020,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1381610327),(10021,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1382532699),(10022,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1382860044),(10023,100000,'84.32.73.129','Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36','/game/index.php?page=options&session=2707b3efe2d1','Сессия недействительна.',1382895262);
/*!40000 ALTER TABLE `uni1_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_exptab`
--

DROP TABLE IF EXISTS `uni1_exptab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_exptab` (
  `chance_success` int(11) DEFAULT NULL,
  `depleted_min` int(11) DEFAULT NULL,
  `depleted_med` int(11) DEFAULT NULL,
  `depleted_max` int(11) DEFAULT NULL,
  `chance_depleted_min` int(11) DEFAULT NULL,
  `chance_depleted_med` int(11) DEFAULT NULL,
  `chance_depleted_max` int(11) DEFAULT NULL,
  `chance_alien` int(11) DEFAULT NULL,
  `chance_pirates` int(11) DEFAULT NULL,
  `chance_dm` int(11) DEFAULT NULL,
  `chance_lost` int(11) DEFAULT NULL,
  `chance_delay` int(11) DEFAULT NULL,
  `chance_accel` int(11) DEFAULT NULL,
  `chance_res` int(11) DEFAULT NULL,
  `chance_fleet` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_exptab`
--

LOCK TABLES `uni1_exptab` WRITE;
/*!40000 ALTER TABLE `uni1_exptab` DISABLE KEYS */;
INSERT INTO `uni1_exptab` VALUES (70,25,50,75,25,50,75,95,85,70,69,63,60,25,1);
/*!40000 ALTER TABLE `uni1_exptab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_fleet`
--

DROP TABLE IF EXISTS `uni1_fleet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_fleet` (
  `fleet_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `union_id` int(11) DEFAULT NULL,
  `m` double DEFAULT NULL,
  `k` double DEFAULT NULL,
  `d` double DEFAULT NULL,
  `fuel` int(11) DEFAULT NULL,
  `mission` int(11) DEFAULT NULL,
  `start_planet` int(11) DEFAULT NULL,
  `target_planet` int(11) DEFAULT NULL,
  `flight_time` int(11) DEFAULT NULL,
  `deploy_time` int(11) DEFAULT NULL,
  `ipm_amount` int(11) DEFAULT NULL,
  `ipm_target` int(11) DEFAULT NULL,
  `ship202` int(11) DEFAULT NULL,
  `ship203` int(11) DEFAULT NULL,
  `ship204` int(11) DEFAULT NULL,
  `ship205` int(11) DEFAULT NULL,
  `ship206` int(11) DEFAULT NULL,
  `ship207` int(11) DEFAULT NULL,
  `ship208` int(11) DEFAULT NULL,
  `ship209` int(11) DEFAULT NULL,
  `ship210` int(11) DEFAULT NULL,
  `ship211` int(11) DEFAULT NULL,
  `ship212` int(11) DEFAULT NULL,
  `ship213` int(11) DEFAULT NULL,
  `ship214` int(11) DEFAULT NULL,
  `ship215` int(11) DEFAULT NULL,
  PRIMARY KEY (`fleet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_fleet`
--

LOCK TABLES `uni1_fleet` WRITE;
/*!40000 ALTER TABLE `uni1_fleet` DISABLE KEYS */;
INSERT INTO `uni1_fleet` VALUES (10007,100000,0,0,0,0,2194,1,10000,2,4435,0,0,0,5,5,5,5,10,9,8,5,205,10,0,5,2,60);
/*!40000 ALTER TABLE `uni1_fleet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_fleetlogs`
--

DROP TABLE IF EXISTS `uni1_fleetlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_fleetlogs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `union_id` int(11) DEFAULT NULL,
  `pm` double DEFAULT NULL,
  `pk` double DEFAULT NULL,
  `pd` double DEFAULT NULL,
  `m` double DEFAULT NULL,
  `k` double DEFAULT NULL,
  `d` double DEFAULT NULL,
  `fuel` int(11) DEFAULT NULL,
  `mission` int(11) DEFAULT NULL,
  `flight_time` int(11) DEFAULT NULL,
  `deploy_time` int(11) DEFAULT NULL,
  `start` int(10) unsigned DEFAULT NULL,
  `end` int(10) unsigned DEFAULT NULL,
  `origin_g` int(11) DEFAULT NULL,
  `origin_s` int(11) DEFAULT NULL,
  `origin_p` int(11) DEFAULT NULL,
  `origin_type` int(11) DEFAULT NULL,
  `target_g` int(11) DEFAULT NULL,
  `target_s` int(11) DEFAULT NULL,
  `target_p` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `ipm_amount` int(11) DEFAULT NULL,
  `ipm_target` int(11) DEFAULT NULL,
  `ship202` int(11) DEFAULT NULL,
  `ship203` int(11) DEFAULT NULL,
  `ship204` int(11) DEFAULT NULL,
  `ship205` int(11) DEFAULT NULL,
  `ship206` int(11) DEFAULT NULL,
  `ship207` int(11) DEFAULT NULL,
  `ship208` int(11) DEFAULT NULL,
  `ship209` int(11) DEFAULT NULL,
  `ship210` int(11) DEFAULT NULL,
  `ship211` int(11) DEFAULT NULL,
  `ship212` int(11) DEFAULT NULL,
  `ship213` int(11) DEFAULT NULL,
  `ship214` int(11) DEFAULT NULL,
  `ship215` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_fleetlogs`
--

LOCK TABLES `uni1_fleetlogs` WRITE;
/*!40000 ALTER TABLE `uni1_fleetlogs` DISABLE KEYS */;
INSERT INTO `uni1_fleetlogs` VALUES (8,100000,1,0,2810957.4154697,161217.251702,2164540215.1138,0,0,0,2194,1,4435,0,1378887588,1378892023,1,1,4,1,1,1,2,0,0,0,5,5,5,5,10,9,8,5,205,10,0,5,2,60);
/*!40000 ALTER TABLE `uni1_fleetlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_iplogs`
--

DROP TABLE IF EXISTS `uni1_iplogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_iplogs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(16) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg` int(11) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_iplogs`
--

LOCK TABLES `uni1_iplogs` WRITE;
/*!40000 ALTER TABLE `uni1_iplogs` DISABLE KEYS */;
INSERT INTO `uni1_iplogs` VALUES (1,'89.117.240.252',1,0,1373189322),(2,'89.117.240.252',1,0,1373191993),(3,'89.117.240.252',1,0,1373192053),(4,'89.117.240.252',100000,1,1373192556),(5,'89.117.240.252',100000,0,1373192556),(6,'88.216.5.243',100000,0,1373192666),(7,'89.117.240.252',100000,0,1373192717),(8,'89.117.240.252',1,0,1373192899),(9,'89.117.251.59',1,0,1373210728),(10,'89.117.251.199',100000,0,1373307904),(11,'89.117.251.199',100000,0,1373307926),(12,'89.117.252.237',100000,0,1373353450),(13,'89.117.252.237',100000,0,1373353462),(14,'84.46.242.240',100000,0,1373388814),(15,'86.38.13.23',100000,0,1373788167),(16,'86.38.13.23',100000,0,1373788179),(17,'86.38.13.23',1,0,1373793498),(18,'86.38.13.23',100000,0,1373807755),(19,'86.38.13.23',100000,0,1373809709),(20,'192.168.1.1',100000,0,1374482014),(21,'192.168.1.1',100000,0,1374482033),(22,'88.216.5.200',100000,0,1375425206),(23,'88.216.5.200',100000,0,1375425221),(24,'88.216.5.200',100000,0,1376112695),(25,'88.216.5.200',100000,0,1376112704),(26,'192.168.1.1',100000,0,1376301788),(27,'192.168.1.1',100000,0,1376301798),(28,'88.216.5.243',100000,0,1377835580),(29,'88.216.5.200',100000,0,1378887515);
/*!40000 ALTER TABLE `uni1_iplogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_messages`
--

DROP TABLE IF EXISTS `uni1_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `pm` int(11) DEFAULT NULL,
  `msgfrom` text,
  `subj` text,
  `text` text,
  `shown` int(11) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10018 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_messages`
--

LOCK TABLES `uni1_messages` WRITE;
/*!40000 ALTER TABLE `uni1_messages` DISABLE KEYS */;
INSERT INTO `uni1_messages` VALUES (10003,1,2,'Командование флотом','<a href=\"#\" onclick=\"fenster(\'index.php?page=bericht&session={PUBLIC_SESSION}&bericht=10002\', \'Bericht_Kampf\');\" ><span class=\"combatreport_igotattacked_draw\">Боевой доклад [1:1:2] (V:0,A:0)</span></a>','',0,1374483714),(10009,1,2,'Командование флотом','<a href=\"#\" onclick=\"fenster(\'index.php?page=bericht&session={PUBLIC_SESSION}&bericht=10008\', \'Bericht_Kampf\');\" ><span class=\"combatreport_igotattacked_draw\">Боевой доклад [1:1:2] (V:0,A:0)</span></a>','',0,1376117259),(10008,1,6,'Командование флотом','Боевой доклад','Дата/Время: 08-10 09:47:39 . Произошёл бой между следующими флотами:<br><table border=1 width=100%><tr></tr></table><table border=1 width=100%><tr></tr></table><br><p><br>Атакующий потерял 0 единиц.<br>Обороняющийся потерял 0 единиц.<br>Теперь на этих пространственных координатах находится 0 металла и 0 кристалла.',1,1376117259),(10007,1,2,'Командование флотом','Ракетная атака','40 ракетам из общего числа выпущенных ракет с планеты Plutonas <a href=# onclick=showGalaxy(1,1,4); >[1:1:4]</a>  удалось попасть на Вашу планету Arakis <a href=# onclick=showGalaxy(1,1,2); >[1:1:2]</a> !<br><table width=400><tr><td class=c colspan=4>Поражённая оборона</td></tr></tr></tr></tr></tr></tr></tr></tr></tr></tr></tr></table><br>\n',0,1376112895),(10002,1,6,'Командование флотом','Боевой доклад','Дата/Время: 07-22 12:01:54 . Произошёл бой между следующими флотами:<br><table border=1 width=100%><tr></tr></table><table border=1 width=100%><tr></tr></table><br><p><br>Атакующий потерял 0 единиц.<br>Обороняющийся потерял 0 единиц.<br>Теперь на этих пространственных координатах находится 0 металла и 0 кристалла.',1,1374483714),(10014,1,2,'Командование флотом','<a href=\"#\" onclick=\"fenster(\'index.php?page=bericht&session={PUBLIC_SESSION}&bericht=10013\', \'Bericht_Kampf\');\" ><span class=\"combatreport_igotattacked_draw\">Боевой доклад [1:1:2] (V:0,A:0)</span></a>','',0,1376306422),(10013,1,6,'Командование флотом','Боевой доклад','Дата/Время: 08-12 14:20:22 . Произошёл бой между следующими флотами:<br><table border=1 width=100%><tr></tr></table><table border=1 width=100%><tr></tr></table><br><p><br>Атакующий потерял 0 единиц.<br>Обороняющийся потерял 0 единиц.<br>Теперь на этих пространственных координатах находится 0 металла и 0 кристалла.',1,1376306422);
/*!40000 ALTER TABLE `uni1_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_notes`
--

DROP TABLE IF EXISTS `uni1_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `subj` text,
  `text` text,
  `textsize` int(11) DEFAULT NULL,
  `prio` int(11) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_notes`
--

LOCK TABLES `uni1_notes` WRITE;
/*!40000 ALTER TABLE `uni1_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_planets`
--

DROP TABLE IF EXISTS `uni1_planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_planets` (
  `planet_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `g` int(11) DEFAULT NULL,
  `s` int(11) DEFAULT NULL,
  `p` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `diameter` int(11) DEFAULT NULL,
  `temp` int(11) DEFAULT NULL,
  `fields` int(11) DEFAULT NULL,
  `maxfields` int(11) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `b1` int(11) DEFAULT NULL,
  `b2` int(11) DEFAULT NULL,
  `b3` int(11) DEFAULT NULL,
  `b4` int(11) DEFAULT NULL,
  `b12` int(11) DEFAULT NULL,
  `b14` int(11) DEFAULT NULL,
  `b15` int(11) DEFAULT NULL,
  `b21` int(11) DEFAULT NULL,
  `b22` int(11) DEFAULT NULL,
  `b23` int(11) DEFAULT NULL,
  `b24` int(11) DEFAULT NULL,
  `b31` int(11) DEFAULT NULL,
  `b33` int(11) DEFAULT NULL,
  `b34` int(11) DEFAULT NULL,
  `b41` int(11) DEFAULT NULL,
  `b42` int(11) DEFAULT NULL,
  `b43` int(11) DEFAULT NULL,
  `b44` int(11) DEFAULT NULL,
  `d401` int(11) DEFAULT NULL,
  `d402` int(11) DEFAULT NULL,
  `d403` int(11) DEFAULT NULL,
  `d404` int(11) DEFAULT NULL,
  `d405` int(11) DEFAULT NULL,
  `d406` int(11) DEFAULT NULL,
  `d407` int(11) DEFAULT NULL,
  `d408` int(11) DEFAULT NULL,
  `d502` int(11) DEFAULT NULL,
  `d503` int(11) DEFAULT NULL,
  `f202` int(11) DEFAULT NULL,
  `f203` int(11) DEFAULT NULL,
  `f204` int(11) DEFAULT NULL,
  `f205` int(11) DEFAULT NULL,
  `f206` int(11) DEFAULT NULL,
  `f207` int(11) DEFAULT NULL,
  `f208` int(11) DEFAULT NULL,
  `f209` int(11) DEFAULT NULL,
  `f210` int(11) DEFAULT NULL,
  `f211` int(11) DEFAULT NULL,
  `f212` int(11) DEFAULT NULL,
  `f213` int(11) DEFAULT NULL,
  `f214` int(11) DEFAULT NULL,
  `f215` int(11) DEFAULT NULL,
  `m` double DEFAULT NULL,
  `k` double DEFAULT NULL,
  `d` double DEFAULT NULL,
  `mprod` double DEFAULT NULL,
  `kprod` double DEFAULT NULL,
  `dprod` double DEFAULT NULL,
  `sprod` double DEFAULT NULL,
  `fprod` double DEFAULT NULL,
  `ssprod` double DEFAULT NULL,
  `lastpeek` int(10) unsigned DEFAULT NULL,
  `lastakt` int(10) unsigned DEFAULT NULL,
  `gate_until` int(10) unsigned DEFAULT NULL,
  `remove` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`planet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_planets`
--

LOCK TABLES `uni1_planets` WRITE;
/*!40000 ALTER TABLE `uni1_planets` DISABLE KEYS */;
INSERT INTO `uni1_planets` VALUES (1,'Arakis',102,1,1,2,1,12800,40,9,163,1373185691,2,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,335,0,1,1,1,1,1,1,1376301789,1376117259,0,0),(2,'Mond',0,1,1,2,1,8944,10,0,0,1373185691,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1377835593,1376306422,0,0),(10000,'Plutonas',1,1,1,4,100000,12800,27,32,163,1373192556,30,30,80,120,40,20,20,20,40,40,40,40,20,20,0,0,0,60,300,101,50,10,11,10,0,1,50,10,0,0,0,0,0,0,0,0,0,0,90,0,0,0,2813355.3254696,162815.299202,2164821651.1545,1,1,1,1,1,1,1378887771,1378887771,0,0);
/*!40000 ALTER TABLE `uni1_planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_pranger`
--

DROP TABLE IF EXISTS `uni1_pranger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_pranger` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` char(20) DEFAULT NULL,
  `user_name` char(20) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ban_when` int(10) unsigned DEFAULT NULL,
  `ban_until` int(10) unsigned DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`ban_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_pranger`
--

LOCK TABLES `uni1_pranger` WRITE;
/*!40000 ALTER TABLE `uni1_pranger` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_pranger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_queue`
--

DROP TABLE IF EXISTS `uni1_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_queue` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `start` int(10) unsigned DEFAULT NULL,
  `end` int(10) unsigned DEFAULT NULL,
  `prio` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_queue`
--

LOCK TABLES `uni1_queue` WRITE;
/*!40000 ALTER TABLE `uni1_queue` DISABLE KEYS */;
INSERT INTO `uni1_queue` VALUES (174,100000,'RecalcPoints',0,0,0,1378887515,1378933800,500),(178,99999,'CleanDebris',0,0,0,1378887516,1379279400,600),(177,99999,'CleanPlanets',0,0,0,1378887516,1378937400,700),(176,99999,'CleanPlayers',0,0,0,1378887516,1378937400,900),(175,99999,'UpdateStats',0,0,0,1376370300,1378904700,510),(17,1,'GeologeOff',0,0,0,1373211199,1380987199,0),(13,100000,'CommanderOff',0,0,0,1373192556,2237106156,0),(179,100000,'Fleet',10007,0,0,1378887588,1378892023,201),(103,1,'CommanderOff',0,0,0,1373793822,1381569822,0),(173,99999,'RecalcAllyPoints',0,0,0,1378887515,1378933800,400),(172,99999,'UnloadAll',0,0,0,1378887515,1378944000,777);
/*!40000 ALTER TABLE `uni1_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_template`
--

DROP TABLE IF EXISTS `uni1_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `ship202` int(11) DEFAULT NULL,
  `ship203` int(11) DEFAULT NULL,
  `ship204` int(11) DEFAULT NULL,
  `ship205` int(11) DEFAULT NULL,
  `ship206` int(11) DEFAULT NULL,
  `ship207` int(11) DEFAULT NULL,
  `ship208` int(11) DEFAULT NULL,
  `ship209` int(11) DEFAULT NULL,
  `ship210` int(11) DEFAULT NULL,
  `ship211` int(11) DEFAULT NULL,
  `ship212` int(11) DEFAULT NULL,
  `ship213` int(11) DEFAULT NULL,
  `ship214` int(11) DEFAULT NULL,
  `ship215` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_template`
--

LOCK TABLES `uni1_template` WRITE;
/*!40000 ALTER TABLE `uni1_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_uni`
--

DROP TABLE IF EXISTS `uni1_uni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_uni` (
  `num` int(11) NOT NULL,
  `speed` float DEFAULT NULL,
  `fspeed` float DEFAULT NULL,
  `galaxies` int(11) DEFAULT NULL,
  `systems` int(11) DEFAULT NULL,
  `maxusers` int(11) DEFAULT NULL,
  `acs` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `rapid` int(11) DEFAULT NULL,
  `moons` int(11) DEFAULT NULL,
  `defrepair` int(11) DEFAULT NULL,
  `defrepair_delta` int(11) DEFAULT NULL,
  `usercount` int(11) DEFAULT NULL,
  `freeze` int(11) DEFAULT NULL,
  `news1` text,
  `news2` text,
  `news_until` int(10) unsigned DEFAULT NULL,
  `startdate` int(10) unsigned DEFAULT NULL,
  `battle_engine` text,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_uni`
--

LOCK TABLES `uni1_uni` WRITE;
/*!40000 ALTER TABLE `uni1_uni` DISABLE KEYS */;
INSERT INTO `uni1_uni` VALUES (10,3,3,14,499,12500,4,30,0,1,1,70,10,2,0,'','',0,1373185691,'/game/battle.php');
/*!40000 ALTER TABLE `uni1_uni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_union`
--

DROP TABLE IF EXISTS `uni1_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_union` (
  `union_id` int(11) NOT NULL AUTO_INCREMENT,
  `fleet_id` int(11) DEFAULT NULL,
  `target_player` int(11) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `players` text,
  PRIMARY KEY (`union_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_union`
--

LOCK TABLES `uni1_union` WRITE;
/*!40000 ALTER TABLE `uni1_union` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni1_union` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_userlogs`
--

DROP TABLE IF EXISTS `uni1_userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_userlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `type` text,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_userlogs`
--

LOCK TABLES `uni1_userlogs` WRITE;
/*!40000 ALTER TABLE `uni1_userlogs` DISABLE KEYS */;
INSERT INTO `uni1_userlogs` VALUES (117,100000,1378887588,'FLEET','Отправка флота 10007: Атака убывает Plutonas [1:1:4] -&gt; Mond [1:1:2]<br>Small Cargo 5 Large Cargo 5 Light Fighter 5 Heavy Fighter 5 Cruiser 10 Battleship 9 Colony Ship 8 Recycler 5 Espionage Probe 205 Bomber 10 Destroyer 5 Deathstar 2 Battlecruiser 60 <br>Время полёта: 1h 13m 55s, удержание: , затраты дейтерия: 2.194, союз: 0');
/*!40000 ALTER TABLE `uni1_userlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni1_users`
--

DROP TABLE IF EXISTS `uni1_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni1_users` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `regdate` int(10) unsigned DEFAULT NULL,
  `ally_id` int(11) DEFAULT NULL,
  `joindate` int(10) unsigned DEFAULT NULL,
  `allyrank` int(11) DEFAULT NULL,
  `session` char(12) DEFAULT NULL,
  `private_session` char(32) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `oname` char(20) DEFAULT NULL,
  `name_changed` int(11) DEFAULT NULL,
  `name_until` int(10) unsigned DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `temp_pass` char(32) DEFAULT NULL,
  `pemail` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `email_changed` int(11) DEFAULT NULL,
  `email_until` int(10) unsigned DEFAULT NULL,
  `disable` int(11) DEFAULT NULL,
  `disable_until` int(10) unsigned DEFAULT NULL,
  `vacation` int(11) DEFAULT NULL,
  `vacation_until` int(10) unsigned DEFAULT NULL,
  `banned` int(11) DEFAULT NULL,
  `banned_until` int(10) unsigned DEFAULT NULL,
  `noattack` int(11) DEFAULT NULL,
  `noattack_until` int(10) unsigned DEFAULT NULL,
  `lastlogin` int(10) unsigned DEFAULT NULL,
  `lastclick` int(10) unsigned DEFAULT NULL,
  `ip_addr` char(15) DEFAULT NULL,
  `validated` int(11) DEFAULT NULL,
  `validatemd` char(32) DEFAULT NULL,
  `hplanetid` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `sortby` int(11) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `skin` char(80) DEFAULT NULL,
  `useskin` int(11) DEFAULT NULL,
  `deact_ip` int(11) DEFAULT NULL,
  `maxspy` int(11) DEFAULT NULL,
  `maxfleetmsg` int(11) DEFAULT NULL,
  `lang` char(4) DEFAULT NULL,
  `aktplanet` int(11) DEFAULT NULL,
  `dm` int(10) unsigned DEFAULT NULL,
  `dmfree` int(10) unsigned DEFAULT NULL,
  `sniff` int(11) DEFAULT NULL,
  `debug` int(11) DEFAULT NULL,
  `redesign` int(11) DEFAULT NULL,
  `trader` int(11) DEFAULT NULL,
  `rate_m` double DEFAULT NULL,
  `rate_k` double DEFAULT NULL,
  `rate_d` double DEFAULT NULL,
  `score1` bigint(20) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
  `place1` int(11) DEFAULT NULL,
  `place2` int(11) DEFAULT NULL,
  `place3` int(11) DEFAULT NULL,
  `oldscore1` bigint(20) DEFAULT NULL,
  `oldscore2` int(11) DEFAULT NULL,
  `oldscore3` int(11) DEFAULT NULL,
  `oldplace1` int(11) DEFAULT NULL,
  `oldplace2` int(11) DEFAULT NULL,
  `oldplace3` int(11) DEFAULT NULL,
  `scoredate` int(10) unsigned DEFAULT NULL,
  `r106` int(11) DEFAULT NULL,
  `r108` int(11) DEFAULT NULL,
  `r109` int(11) DEFAULT NULL,
  `r110` int(11) DEFAULT NULL,
  `r111` int(11) DEFAULT NULL,
  `r113` int(11) DEFAULT NULL,
  `r114` int(11) DEFAULT NULL,
  `r115` int(11) DEFAULT NULL,
  `r117` int(11) DEFAULT NULL,
  `r118` int(11) DEFAULT NULL,
  `r120` int(11) DEFAULT NULL,
  `r121` int(11) DEFAULT NULL,
  `r122` int(11) DEFAULT NULL,
  `r123` int(11) DEFAULT NULL,
  `r124` int(11) DEFAULT NULL,
  `r199` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni1_users`
--

LOCK TABLES `uni1_users` WRITE;
/*!40000 ALTER TABLE `uni1_users` DISABLE KEYS */;
INSERT INTO `uni1_users` VALUES (99999,1373185691,0,0,0,'','','space','space',0,0,'b242d38b7110f823c37b8814daa6ecb3','','','',0,0,0,0,0,0,0,0,0,0,0,0,'0.0.0.0',1,'',1,2,0,0,'http://ogame.gameofthronesgame.org/evolution/',1,1,1,3,'en',0,0,0,0,0,0,0,0,0,0,-1,-1,-1,0,0,0,-1,-1,-1,0,0,0,1376370300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1,1373185691,0,0,0,'','601ae5f1a5a1c8fa5375bd04aa5dedf5','legor','Legor',0,0,'f46e762b722a700cc398740ff5c76e00','','justinas@res.lt','justinas@res.lt',0,0,0,0,0,0,0,0,0,0,1373793498,1373793842,'86.38.13.23',1,'',1,2,0,0,'http://ogame.gameofthronesgame.org/evolution/',1,1,1,3,'en',1,775000,0,0,0,0,1,3,1.91,0.88,-1,-1,-1,0,0,0,-1,-1,-1,0,0,0,1376370300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(100000,1373192556,0,0,0,'2707b3efe2d1','','devnull','devnull',0,0,'','','','',0,0,0,0,0,0,0,0,0,0,1378887515,1378887771,'88.216.5.200',1,'',10000,0,0,0,'http://ogame.gameofthronesgame.org/evolution/',1,0,1,3,'en',10000,0,0,0,0,0,0,0,0,0,9223372036854775807,424,440,1,1,1,9223372036854775807,424,440,1,1,1,1376370300,40,40,40,40,40,40,20,20,20,20,20,20,20,20,20,20);
/*!40000 ALTER TABLE `uni1_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-20 18:11:43
