CREATE DATABASE  IF NOT EXISTS `truckrental` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `truckrental`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: truckrental
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `corporate`
--

DROP TABLE IF EXISTS `corporate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporate` (
  `Corpo_id` int(10) NOT NULL,
  `Customer_id` int(10) DEFAULT NULL,
  `Comp_id` int(10) DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  PRIMARY KEY (`Corpo_id`),
  KEY `FKCorporate` (`Comp_id`),
  KEY `Customer_id` (`Customer_id`),
  CONSTRAINT `FKCorporate` FOREIGN KEY (`Comp_id`) REFERENCES `corporateaccount` (`Comp_id`) ON DELETE CASCADE,
  CONSTRAINT `corporate_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporate`
--

LOCK TABLES `corporate` WRITE;
/*!40000 ALTER TABLE `corporate` DISABLE KEYS */;
INSERT INTO `corporate` VALUES (500,9015,5113,'2017-09-13'),(501,9016,5113,'2017-09-17'),(502,9017,5113,'2017-12-29'),(503,9018,5113,'2017-09-05'),(504,9019,5113,'2017-12-21'),(505,9020,5113,'2017-10-23'),(506,9021,5113,'2017-12-09'),(507,9022,5113,'2017-12-23'),(508,9023,5113,'2017-09-22'),(509,9024,5113,'2017-11-17'),(510,9025,5113,'2017-09-04'),(511,9026,5113,'2017-11-22'),(512,9027,5113,'2017-10-04'),(513,9028,5113,'2017-12-23'),(514,9029,5113,'2017-12-11'),(515,9045,5113,'2017-09-13'),(516,9046,5113,'2017-11-11'),(517,9047,5113,'2017-12-17'),(518,9048,5113,'2017-11-05'),(519,9049,5113,'2017-12-06'),(520,9050,5113,'2017-12-15'),(521,9051,5113,'2017-10-02'),(522,9052,5113,'2017-09-08'),(523,9053,5113,'2017-12-19'),(524,9054,5113,'2017-11-22'),(525,9055,5113,'2017-11-26'),(526,9056,5113,'2017-12-08'),(527,9057,5113,'2017-10-12'),(528,9058,5113,'2017-10-01'),(529,9059,5113,'2017-10-09'),(530,9075,5113,'2017-12-28'),(531,9076,5113,'2017-11-19'),(532,9077,5113,'2017-09-30'),(533,9078,5113,'2017-09-02'),(534,9079,5113,'2017-10-03'),(535,9080,5113,'2017-12-21'),(536,9081,5113,'2017-09-06'),(537,9082,5113,'2017-12-22'),(538,9083,5113,'2017-09-01'),(539,9084,5113,'2017-09-12'),(540,9085,5113,'2017-11-12'),(541,9086,5113,'2017-09-19'),(542,9087,5113,'2017-09-24'),(543,9088,5113,'2017-10-29'),(544,9089,5113,'2017-10-01'),(700,9101,5113,'2018-04-27'),(701,9102,5113,'2018-04-28'),(702,9108,5113,'2018-04-28'),(703,9109,5113,'2018-04-30'),(704,9110,5113,'2018-04-30'),(705,1445,5113,'2018-05-01'),(706,9113,5113,'2018-05-01');
/*!40000 ALTER TABLE `corporate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporateaccount`
--

DROP TABLE IF EXISTS `corporateaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporateaccount` (
  `Comp_id` int(10) NOT NULL,
  `company_name` varchar(35) DEFAULT NULL,
  `accountnumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Comp_id`),
  UNIQUE KEY `accountnumber` (`accountnumber`),
  UNIQUE KEY `accountnumber_2` (`accountnumber`),
  UNIQUE KEY `company_name` (`company_name`),
  UNIQUE KEY `accountnumber_3` (`accountnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporateaccount`
--

LOCK TABLES `corporateaccount` WRITE;
/*!40000 ALTER TABLE `corporateaccount` DISABLE KEYS */;
INSERT INTO `corporateaccount` VALUES (5100,'Cubilia Curae Phasellus Consulting',9010500098),(5105,'Dolor Limited',9010500152),(5109,'Donec Porttitor Consulting',9010500195),(5113,'Erat Sed Nunc Corp.',9010500233),(5118,'In Company',9010500292),(5122,'Neque Non Ltd',9010500330),(5126,'Odio Associates',9010500373),(5131,'Porttitor Posuere Associates',9010500446),(5136,'Quisque Purus Sapien Limited',9010500497),(5141,'Risus Corp.',9010500543);
/*!40000 ALTER TABLE `corporateaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcard`
--

DROP TABLE IF EXISTS `creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditcard` (
  `card_no` varchar(30) NOT NULL,
  `Cvv` int(10) DEFAULT NULL,
  `eyear` int(10) DEFAULT NULL,
  `emonth` int(10) DEFAULT NULL,
  `eday` int(20) DEFAULT NULL,
  UNIQUE KEY `Card_no` (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcard`
--

LOCK TABLES `creditcard` WRITE;
/*!40000 ALTER TABLE `creditcard` DISABLE KEYS */;
INSERT INTO `creditcard` VALUES ('123 456 789',345,2022,2,23),('12343',233,2019,2,12),('1234567',233,2020,3,12),('123458900',244,2020,3,12),('178955442',222,2021,8,12),('235678889',234,2021,4,12),('245790',123,2022,5,12),('3429 329431 78187',151,NULL,NULL,NULL),('3447 376463 17992',341,NULL,NULL,NULL),('4026 9565 9839 9991',976,NULL,NULL,NULL),('402638 523459 5913',923,NULL,NULL,NULL),('455 64864 73542 166',938,NULL,NULL,NULL),('4916618408234',123,NULL,NULL,NULL),('4917 4359 5844 6538',954,NULL,NULL,NULL),('5365339247682073',263,NULL,NULL,NULL),('5440 9708 6128 9024',147,NULL,NULL,NULL),('549671 238367 8612',769,NULL,NULL,NULL),('550 81851 33115 050',364,NULL,NULL,NULL),('567890',896,2020,1,12),('601 17811 98192 469',387,NULL,NULL,NULL),('6443092601684185',638,NULL,NULL,NULL),('644595 136961 6895',271,NULL,NULL,NULL),('644688 024777 0716',120,NULL,NULL,NULL),('645 23046 62238 464',424,NULL,NULL,NULL),('645025 9888244252',307,NULL,NULL,NULL),('6474 0545 4045 4320',582,NULL,NULL,NULL),('6474778789204315',489,NULL,NULL,NULL);
/*!40000 ALTER TABLE `creditcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_id` int(10) NOT NULL,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `License_no` bigint(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `customer_type` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_id`),
  UNIQUE KEY `License_no` (`License_no`),
  KEY `name` (`First_name`,`Last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1433,'sofia','Edwards','DCC25EjM7CN',39597713898,'1-299-730-2828','Regular',NULL,NULL),(1443,'sofia','lone','DCC25EjM7CN',3959753898,'1-299-730-2828','regular',NULL,NULL),(1445,'sofia','lone','DCC254jM7CN',3959753098,'1-299-730-2828','corporate',NULL,NULL),(2097,'ejfoie','wjwj','',2357,'12345','Regular',NULL,'1dhfuewhfue@un.co'),(7777,'asaaa','sama','23456789',7895642,'7789064','Regular','asama','anu@gmail.com'),(9000,'Duncan','Edwards','DCC25EEM7CN',38597713899,'1-299-730-2828','Regular',NULL,NULL),(9001,'Fleur','Carpenter','XJY70EHT8VI',72561409699,'1-313-628-9812','Regular',NULL,NULL),(9002,'Whilemina','Irwin','CPM74QXR2BD',26950668799,'1-855-102-3754','Regular',NULL,NULL),(9003,'Eve','Stevenson','JEH24CEA3RP',7888580399,'1-613-466-4277','Regular',NULL,NULL),(9004,'Iola','Roy','VEY65QUG9GM',21214092399,'1-425-446-4549','Regular',NULL,NULL),(9005,'Amaya','Schroeder','BTZ86BOT4RX',97594682299,'1-723-898-4494','Regular',NULL,'xyz@edu.com'),(9006,'Tallulah','Dunn','GNI41HBN7PN',56327864099,'1-231-664-3268','Regular',NULL,NULL),(9007,'Brent','Figueroa','SYD49BPW4XB',67765794099,'1-193-313-6150','Regular',NULL,NULL),(9008,'Herman','Tyler','JNL13QGH7KT',31730409999,'1-489-174-2664','Regular',NULL,NULL),(9009,'Joshua','Benjamin','IXO86KSL9RE',93794534399,'1-137-405-6165','Regular',NULL,NULL),(9010,'Sybill','Woodard','KHQ77UCC3TP',49716120999,'1-951-477-9891','Regular',NULL,NULL),(9011,'Kelsey','Brewer','RGK68PCR7EN',31268867299,'1-159-790-8109','Regular',NULL,NULL),(9012,'Isaiah','Rowe','LIA51ILE0DI',82801301399,'1-719-713-2037','Regular',NULL,NULL),(9013,'Anthony','Riggs','KQK87GNB7ZB',68206147499,'1-941-999-9808','Regular',NULL,NULL),(9014,'Dana','Brown','GDB21ZKD2GG',81747998299,'1-131-820-4767','Regular',NULL,NULL),(9015,'Josiah','Lancaster','CZR18UNA7FL',44576253999,'1-842-571-3227','corporate',NULL,NULL),(9016,'Daphne','Kim','BLH21KLR6MM',91457601499,'1-426-222-4634','corporate',NULL,NULL),(9017,'Mikayla','Morris','KYJ64VEF9KF',28771268199,'1-171-872-5401','corporate',NULL,NULL),(9018,'Austin','Campbell','RXD11SJO0ZX',5964955199,'1-368-619-5535','corporate',NULL,NULL),(9019,'Harding','Glenn','WQR98PRT4PO',61878792999,'1-482-793-3572','corporate',NULL,NULL),(9020,'Germane','Wilkerson','ARJ14OFN3XH',59828286499,'1-570-541-5435','corporate',NULL,NULL),(9021,'Adara','Castillo','SFB94JUM1SM',91849690799,'1-646-685-3921','corporate',NULL,NULL),(9022,'Sebastian','Hardin','NSN30PXJ5KV',68943474799,'1-521-791-4850','corporate',NULL,NULL),(9023,'Cameran','Pugh','XNA21PZR4JL',30617713699,'1-310-692-9408','corporate',NULL,NULL),(9024,'Melissa','Hodge','NKB16AJZ8HD',63976781399,'1-292-637-1802','corporate',NULL,NULL),(9025,'Ashton','Burgess','RTT39RMB5OM',75798828699,'1-308-633-7691','corporate',NULL,NULL),(9026,'Eleanor','Black','JHI39MWV3LB',23570393599,'1-734-696-5868','corporate',NULL,NULL),(9027,'Ivana','Pate','VNG21NFE7UA',50869670199,'1-945-278-0022','corporate',NULL,NULL),(9028,'Nicole','Moody','DNB01FBH9CE',50809975499,'1-678-199-8272','corporate',NULL,NULL),(9029,'Leilani','Blair','OFG47BRH6UP',69777619299,'1-186-732-6851','corporate',NULL,NULL),(9030,'Martin','Adams','NWO00IEJ2EB',71987056099,'1-991-345-3832','Regular',NULL,NULL),(9031,'Aline','Townsend','OSV84XOJ4VG',45531333499,'1-296-569-7290','Regular',NULL,NULL),(9032,'Mary','Blevins','RJW78IMT8JZ',66377616399,'1-893-205-3189','Regular',NULL,NULL),(9033,'Channing','Mack','ZBH39QNT4FP',13851326599,'1-582-392-4432','Regular',NULL,NULL),(9034,'Constance','Mullen','TIG09WTK0IJ',18273591999,'1-574-650-8421','Regular',NULL,NULL),(9035,'Abdul','Parsons','TAL71UBC9SK',1352075499,'1-740-758-1377','Regular',NULL,NULL),(9036,'Richard','Langley','YBP44PGJ4ON',84556481499,'1-206-100-2445','Regular',NULL,NULL),(9037,'Jada','Whitehead','XKT72OYF6KN',7972308599,'1-274-298-1386','Regular',NULL,NULL),(9038,'Valentine','Finley','RRJ73HWK9DH',3668611399,'1-412-880-1729','Regular',NULL,NULL),(9039,'Simon','Wagner','TTI98XJI1XF',13279013199,'1-827-538-5570','Regular',NULL,NULL),(9040,'Guy','Clemons','VWC83ZNA1PQ',47687389099,'1-885-674-1031','Regular',NULL,NULL),(9041,'Rana','Donovan','VRJ64CPP5BC',51698891599,'1-930-651-3660','corporate',NULL,'xyz@edu.com'),(9042,'Callum','Hester','OML61WSX4KG',99332475599,'1-964-881-8268','Regular',NULL,NULL),(9043,'Kimberley','Allen','WPU85NHA8HW',8247751799,'1-272-723-2245','Regular',NULL,NULL),(9044,'Jonah','Huff','DLG88INU1SM',17674725099,'1-979-311-1748','Regular',NULL,NULL),(9045,'Lareina','Molina','RKJ27OWU9NQ',14805665999,'1-942-870-2372','corporate',NULL,NULL),(9046,'Germane','Boyer','HAL71HVF7QX',66624133099,'1-110-280-3384','corporate',NULL,NULL),(9047,'Amery','Dejesus','DGS42JAL1JF',82834679699,'1-100-768-0385','corporate',NULL,NULL),(9048,'Theodore','Dotson','EIS11PIA4QI',50535839799,'1-652-370-8032','corporate',NULL,NULL),(9049,'Thomas','Medina','NCY69KQC1NJ',95635127799,'1-660-946-3547','corporate',NULL,NULL),(9050,'Cherokee','Manning','UBZ62HLV8ZI',39957641499,'1-377-930-3300','corporate',NULL,NULL),(9051,'Logan','Foster','RPQ40OWP1ZK',49331506299,'1-937-795-6610','corporate',NULL,NULL),(9052,'Kaseem','Guthrie','HPC24DJE3AD',36236398399,'1-500-808-6226','corporate',NULL,NULL),(9053,'Noah','Blair','HUV63FTL2KP',49250726299,'1-581-415-6699','corporate',NULL,NULL),(9054,'Fletcher','Norris','VTO61MCO4AR',88963309699,'1-231-188-1106','corporate',NULL,NULL),(9055,'Jeremy','Potts','TNA77LMH8RM',31345466699,'1-503-657-6041','corporate',NULL,NULL),(9056,'Moana','Calderon','GSJ26GZK2ZO',21918936299,'1-832-259-8785','corporate',NULL,NULL),(9057,'Quynn','Thomas','DUZ64QPM0IN',23547622999,'1-567-906-8377','corporate',NULL,NULL),(9058,'Ali','Bentley','BSH80XVT7MJ',32864385699,'1-290-892-7868','corporate',NULL,NULL),(9059,'Destiny','Salinas','PZM91HND6BI',74469923399,'1-841-894-4763','corporate',NULL,NULL),(9060,'Camille','Barker','ISZ50RJK8TF',45862572499,'1-666-107-2551','Regular',NULL,NULL),(9061,'Arthur','Norman','ZKH31HIY6YB',11329541599,'1-986-810-2412','Regular',NULL,NULL),(9062,'Jayme','Miles','AZQ97PHW5CZ',61708623199,'1-155-195-4308','Regular',NULL,NULL),(9063,'Hashim','Anderson','HDC87TVD7MX',14888625399,'1-842-646-4927','Regular',NULL,NULL),(9064,'Fleur','Farley','YGI51YSY9UD',5989170699,'1-696-574-3638','Regular',NULL,NULL),(9065,'Justine','Wells','QSY90DTP4IA',68207620799,'1-959-318-0243','Regular',NULL,NULL),(9066,'Barbara','Emerson','YCC36VLG7NF',94603122699,'1-627-629-0050','Regular',NULL,NULL),(9067,'Denton','Cervantes','RNB40YQW3RI',86684500699,'1-905-176-9457','Regular',NULL,NULL),(9068,'Thaddeus','Terry','GSR35CLW4CV',95783664399,'1-677-571-1267','Regular',NULL,NULL),(9069,'Levi','Sanders','IWT71QUB2WE',92463896799,'1-244-818-8183','Regular',NULL,NULL),(9070,'Fredericka','Fisher','IAZ59MZK7CB',33326161099,'1-621-799-2536','Regular',NULL,NULL),(9071,'Lionel','Vazquez','WYI69DMM7FI',46550123199,'1-226-678-8190','Regular',NULL,NULL),(9072,'Kiona','Hancock','EJH22HFC8SB',74981634799,'1-983-276-8153','Regular',NULL,NULL),(9073,'Palmer','Oneill','NKC66DGX5RR',58676831799,'1-926-288-3624','Regular',NULL,NULL),(9074,'Jared','Dyer','XHZ82XWS8VY',76209188499,'1-129-617-5675','Regular',NULL,NULL),(9075,'Drake','Stuart','VWD19BLR6UD',29634612699,'1-557-811-3429','corporate',NULL,NULL),(9076,'Phillip','Albert','BZL58EYF6IB',44682476599,'1-457-299-1378','corporate',NULL,NULL),(9077,'Hedda','Chambers','YRL58ODD1CG',37788546499,'1-399-108-3933','corporate',NULL,NULL),(9078,'Arden','Fleming','WTJ38CMH8FX',82828517199,'1-445-147-3128','corporate',NULL,NULL),(9079,'Mira','Ewing','ZBQ40YDW3NF',21939455899,'1-392-248-7963','corporate',NULL,NULL),(9080,'Jack','Waters','USW37LQY8AG',34211666299,'1-403-449-8762','corporate',NULL,NULL),(9081,'Jamal','Petersen','LSR87LXS5BB',50966311799,'1-812-603-9120','corporate',NULL,NULL),(9082,'Merrill','Gardner','QKE58URE4FK',41896026099,'1-801-592-3916','corporate',NULL,NULL),(9083,'Whoopi','Garrett','VXG62HIA9TB',10307426899,'1-260-936-1569','corporate',NULL,NULL),(9084,'Zane','Mayo','LVR25WYA1KR',4538099299,'1-275-244-1418','corporate',NULL,NULL),(9085,'Magee','Ayala','SJU58DLR7ZP',3354958899,'1-667-538-5117','corporate',NULL,NULL),(9086,'Ingrid','Melton','DRB27GDA6LO',93761095199,'1-280-623-7051','corporate',NULL,NULL),(9087,'Ross','Rutledge','ITS22UKC1WG',94861707899,'1-149-818-5123','corporate',NULL,NULL),(9088,'Dexter','Taylor','CBW63EYE3JC',83558759899,'1-691-610-4083','corporate',NULL,NULL),(9089,'Elvis','Solis','XKO84LZI0UL',22727883699,'1-252-319-0936','corporate',NULL,NULL),(9090,'Raphael','Hartman','BDI80BRV5BQ',64363855799,'1-838-726-6567','Regular',NULL,NULL),(9091,'Larissa','Shelton','ONI61TMX7IP',73877464099,'1-950-236-7456','Regular',NULL,NULL),(9092,'Curran','Pearson','AIH02LDM9PM',83454279899,'1-219-843-9156','Regular',NULL,NULL),(9093,'Laura','Patel','UED16QHR0TL',44508025899,'1-979-264-0420','Regular',NULL,NULL),(9094,'Ocean','Pitts','CXB16IGV9EY',44677288499,'1-221-457-7730','Regular',NULL,NULL),(9095,'Carl','Leon','PNW56BAY5XE',6376896799,'1-910-357-9198','Regular',NULL,NULL),(9096,'Stacy','Woodward','VFL75BAS5QB',52721095799,'1-869-434-0765','Regular',NULL,NULL),(9097,'Elijah','Aguirre','SII96FDG8CV',16266800599,'1-705-444-8124','Regular',NULL,NULL),(9098,'Talon','Gray','QML99RXU1SN',85657580099,'1-364-761-2798','Regular',NULL,NULL),(9099,'Axel','Ward','TDC58GOW5GQ',44470926699,'1-640-210-8971','Regular',NULL,NULL),(9100,'asaadd','assdsd','admin',2010915678,'7797076494','Regular',NULL,'work@stupid'),(9101,'ANUSHA','SAMA','admin',56709452,'7797076495','Regular',NULL,'anushasama201091@gmail.com'),(9102,'aa','vv','457890',2789003,'1245689','Corporate',NULL,'anushasama@gmail.com'),(9103,'Chandra','Bhumireddy','12566777',1356098,'234667789','Regular','chandu','ch@email.com'),(9104,'Chandra','Bhumireddy','290154',1678045,'234667789','Regular','chandu','ch@email.com'),(9105,'Snehal','Thompson','276533',2890563,'874520','Regular','sneha','plthops@uncc.edu'),(9106,'tushara','komma','234677',55772233,'67903452','Regular','tush','tt@email.com'),(9107,'aa','ff','256789',13556900,'2466789','Regular','rr','ss@email.com'),(9108,'bb','ff','4456778',13556906,'2466789','Corporate','rr','ss@email.com'),(9109,'sam','winchester','235789',234589654,'2356789','Corporate','sammy','sam@gmail.com'),(9110,'sam','winchester','horror',234589655,'2356789','Corporate','sammy','sam@gmail.com'),(9111,'dean','winchester','horror',299767108,'34689','Regular','dean','dean@gmail.com'),(9112,'test','user','124566',2789045672,'670383747474','Regular','test','test@gmail.com'),(9113,'test','corp','admin',26890145,'23469066','Corporate','testcorp','test1@gmail.com'),(9114,'test','sama','admin',789035627,'23590877','Regular','user1','test@email.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_regular after insert on customer
for each row begin
if (new.Customer_type = "Regular") then
set @MaxRegID = (select max(reg_id) from regular);
insert into regular values(@MaxRegID+1, new.Customer_id,now());
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_corporate after insert on customer
for each row begin
if (new.Customer_type = "corporate") then
set @MaxcorpID = (select max(Corpo_id) from corporate);
insert into corporate (Corpo_id, customer_id, DOJ) values (@MaxcorpID+1, new.Customer_id, now());
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `customer_invoice`
--

DROP TABLE IF EXISTS `customer_invoice`;
/*!50001 DROP VIEW IF EXISTS `customer_invoice`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customer_invoice` AS SELECT 
 1 AS `Reservation_No`,
 1 AS `Truckmodel`,
 1 AS `startdate`,
 1 AS `enddate`,
 1 AS `baseprice`,
 1 AS `No_of_hours`,
 1 AS `Total`,
 1 AS `Name`,
 1 AS `email`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Emp_id` int(10) NOT NULL,
  `First_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `Email_id` varchar(40) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (7500,'Silas','Velasquez','cubilia.Curae.Phasellus@in.org','(446) 306-7720'),(7501,'Tarik','Pratt','Phasellus.at@vestibulumloremsit.edu','(574) 689-1249'),(7502,'Nash','Neal','Proin@magnaPhasellusdolor.co.uk','(126) 417-1686'),(7503,'Quamar','Barry','euismod.est.arcu@ipsum.edu','(365) 859-9830'),(7504,'Jade','Phillips','Duis@etultrices.org','(563) 721-7209'),(7505,'Carly','Holmes','adipiscing@consequatpurus.com','(729) 347-3440'),(7506,'Hashim','Joyner','ante.blandit.viverra@leoVivamusnibh.net','(917) 419-1903'),(7507,'Kane','Hamilton','scelerisque@fermentumarcuVestibulum.net','(930) 705-9562'),(7508,'Rajah','Miranda','Integer@nequeSedeget.com','(320) 420-1859'),(7509,'Wilma','Blevins','malesuada@Donec.com','(197) 627-4285'),(7510,'Devin','Kinney','dolor.dolor.tempus@erat.edu','(371) 212-4035'),(7511,'Zeus','Reed','mauris.Integer@nonummyFusce.edu','(324) 760-8223'),(7512,'Molly','Hogan','elit.pretium.et@temporaugue.org','(212) 474-3310'),(7513,'Todd','Dawson','non@ac.net','(482) 676-8464'),(7514,'Kenyon','Flores','Fusce.mollis@luctusvulputatenisi.co.uk','(576) 803-0193'),(7515,'Ashely','Holland','arcu.Aliquam.ultrices@Phasellus.ca','(441) 338-2348'),(7516,'Graiden','Hogan','Maecenas.iaculis@non.ca','(550) 987-3492'),(7517,'Nomlanga','Carey','tempor@ante.com','(253) 319-5982'),(7518,'Steel','Jarvis','Donec@Praesent.org','(929) 676-1051'),(7519,'Colton','Carey','ipsum@metusvitae.net','(750) 855-3211');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `Invoice_no` varchar(20) NOT NULL,
  `Reservation_id` int(20) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Invoice_no`),
  KEY `Reservation_id` (`Reservation_id`),
  CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`Reservation_id`) REFERENCES `reservation` (`Reservation_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('0KTBZT6Z3H',5105,0),('0PVG4P2A1B',5185,1),('12SRQWCDBV',5015,1),('1QLF11YQ83',5180,1),('1WBD6CJLMM',5256,0),('391O1IG71K',5125,1),('3ZIP5BN0VV',5264,0),('4IRW0VJHQZ',5065,1),('4NG886EOI2',5170,1),('4TT0TPEGAW',5215,0),('7W6ADE12MC',5060,1),('7Z0J8WX3XK',5145,1),('8XHTZKGD1G',5045,1),('9PP0GTN0QQ',5253,0),('9VKH0P0PDV',5225,0),('ASILZQONN',5257,0),('BVV3XSEEJJ',5261,0),('CDPPP9TNDD',5265,0),('DJU11W2T5A',5090,0),('ET3VYH9SB5',5100,0),('F7J43VV5KA',5095,0),('H764T84LVV',5010,0),('HLS0RWFVRF',5210,0),('JOJRH3EZII',5258,0),('K9MCSNTJ55',5262,0),('LRDCAXHY22',5266,0),('LYR8LC9IYT',5055,1),('N8D6S6VRR',5020,0),('OHBZ5AUAQ1',5245,0),('P9O7HAWW8M',5175,1),('Q4EY4BANRD',5165,1),('QQ677RJ19Z',5205,1),('RFPHQX22O8',5130,0),('S4J37GO84Z',5025,1),('T3X7ISZJ77',5259,0),('T54IRN9XST',5005,0),('U5U2VM62BB',5267,0),('UO9Z5YK5DD',5263,0),('UQVKFLZU20',5020,1),('V4WEL16400',5220,0),('X0VMRCEJRR',5085,0),('XCRA5C6QE6',5135,1),('Y090ZO745V',5050,1),('YJMD94LUE1',5010,1),('ZGQKYMXPK3',5140,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `Invoice_no` varchar(20) NOT NULL,
  `Feedback` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Invoice_no`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`Invoice_no`) REFERENCES `invoice` (`Invoice_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES ('0PVG4P2A1B','Best service'),('12SRQWCDBV','Truck is in good condition'),('1QLF11YQ83','Excellent service'),('391O1IG71K','Not satisfied'),('3ZIP5BN0VV','Bad'),('4IRW0VJHQZ','Worst  experience'),('4NG886EOI2','Value for money'),('7W6ADE12MC','Satisiactory'),('7Z0J8WX3XK','Truck in worst condition'),('8XHTZKGD1G','Will recommend'),('9PP0GTN0QQ','Good'),('BVV3XSEEJJ','Good'),('CDPPP9TNDD','Average'),('JOJRH3EZII','Average'),('K9MCSNTJ55','Good'),('LRDCAXHY22','Average'),('LYR8LC9IYT','Best service'),('P9O7HAWW8M','Truck is in good condition'),('Q4EY4BANRD','Excellent service'),('QQ677RJ19Z','Not satisfied'),('S4J37GO84Z','Worst  experience'),('T3X7ISZJ77','Good'),('U5U2VM62BB','Good'),('UQVKFLZU20','Value for money'),('XCRA5C6QE6','Satisiactory'),('Y090ZO745V',NULL),('YJMD94LUE1',NULL),('ZGQKYMXPK3',NULL);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regular`
--

DROP TABLE IF EXISTS `regular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regular` (
  `Reg_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `DOJ` date DEFAULT NULL,
  PRIMARY KEY (`Reg_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `regular_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regular`
--

LOCK TABLES `regular` WRITE;
/*!40000 ALTER TABLE `regular` DISABLE KEYS */;
INSERT INTO `regular` VALUES (100,9000,'2017-12-02'),(101,9001,'2017-12-19'),(102,9002,'2017-12-05'),(103,9003,'2017-12-10'),(104,9004,'2017-12-24'),(105,9005,'2017-12-27'),(106,9006,'2017-12-28'),(107,9007,'2017-12-05'),(108,9008,'2017-12-26'),(109,9009,'2017-12-29'),(110,9010,'2017-12-21'),(111,9011,'2017-12-14'),(112,9012,'2017-12-14'),(113,9013,'2017-12-29'),(114,9014,'2017-12-27'),(115,9030,'2017-12-20'),(116,9031,'2017-12-28'),(117,9032,'2017-12-31'),(118,9033,'2017-12-20'),(119,9034,'2017-12-30'),(120,9035,'2017-12-20'),(121,9036,'2017-12-03'),(122,9037,'2017-12-28'),(123,9038,'2017-12-15'),(124,9039,'2017-12-10'),(125,9040,'2017-12-06'),(126,9041,'2017-12-14'),(127,9042,'2017-12-06'),(128,9043,'2017-12-18'),(129,9044,'2017-12-10'),(130,9060,'2017-12-28'),(131,9061,'2017-12-09'),(132,9062,'2017-12-14'),(133,9063,'2017-12-07'),(134,9064,'2017-12-08'),(135,9065,'2017-12-22'),(136,9066,'2017-12-31'),(137,9067,'2017-12-28'),(138,9068,'2017-12-06'),(139,9069,'2017-12-27'),(140,9070,'2017-12-10'),(141,9071,'2017-12-08'),(142,9072,'2017-12-19'),(143,9073,'2017-12-24'),(144,9074,'2017-12-02'),(145,9090,'2017-12-30'),(146,9091,'2017-12-25'),(147,9092,'2017-12-15'),(148,9093,'2017-12-21'),(149,9094,'2017-12-01'),(150,9095,'2017-12-07'),(151,9096,'2017-12-28'),(152,9097,'2017-12-04'),(153,9098,'2017-12-16'),(154,9099,'2017-12-15'),(800,9101,'2018-04-27'),(801,1433,'2018-04-28'),(802,1443,'2018-04-28'),(803,9103,'2018-04-28'),(804,9104,'2018-04-28'),(805,9105,'2018-04-28'),(806,9106,'2018-04-28'),(807,9107,'2018-04-28'),(808,9111,'2018-04-30'),(809,9112,'2018-05-01'),(810,9114,'2018-05-01');
/*!40000 ALTER TABLE `regular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `Reservation_id` int(20) NOT NULL,
  `Selected_Date` datetime DEFAULT NULL,
  `Dropoff_Date` datetime DEFAULT NULL,
  `Truck_id` int(10) NOT NULL,
  `Customer_id` int(10) NOT NULL,
  `Load_Description` varchar(50) DEFAULT NULL,
  `cancel_status` tinyint(1) NOT NULL DEFAULT '0',
  `actual_selectdate` datetime DEFAULT NULL,
  `actual_dropoffdate` datetime DEFAULT NULL,
  PRIMARY KEY (`Reservation_id`),
  KEY `Truck_id` (`Truck_id`),
  KEY `Customer_id` (`Customer_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Truck_id`) REFERENCES `truck` (`Truck_id`) ON UPDATE CASCADE,
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (5000,'2018-03-01 07:41:28','2018-03-14 04:27:09',1011,9000,'moveout',1,NULL,'2018-04-23 20:18:31'),(5005,'2018-03-02 09:50:03','2018-03-08 08:00:35',1012,9001,'moveout',1,'2018-04-22 23:29:54','2018-04-23 20:29:10'),(5010,'2018-03-02 03:03:28','2018-03-10 06:32:16',1013,9002,'moveout',0,NULL,'2018-04-23 20:25:04'),(5015,'2018-03-05 17:32:01','2018-03-13 09:32:42',1014,9003,'moveout',0,NULL,'2018-04-23 20:03:54'),(5020,'2018-03-02 04:14:26','2018-03-12 19:43:03',1015,9004,'moveout',0,'2018-04-23 20:32:03','2018-04-23 20:41:03'),(5025,'2018-03-01 20:51:58','2018-03-09 15:11:25',1016,9005,'moveout',0,'2018-04-23 22:33:06','2018-04-24 11:33:30'),(5030,'2018-03-01 10:07:50','2018-03-12 05:08:19',1017,9006,'moveout',1,NULL,NULL),(5035,'2018-03-01 05:38:31','2018-03-12 08:50:08',1018,9007,'moveout',1,NULL,NULL),(5040,'2018-03-07 10:35:34','2018-03-10 23:46:08',1019,9008,'moveout',1,NULL,NULL),(5045,'2018-03-06 03:45:40','2018-03-08 09:37:14',1020,9009,'moveout',1,NULL,NULL),(5050,'2018-03-06 15:01:23','2018-03-09 15:20:32',1031,9010,'personal',0,NULL,NULL),(5055,'2018-03-07 04:03:51','2018-03-10 23:04:20',1032,9011,'personal',0,NULL,NULL),(5060,'2018-03-03 00:04:37','2018-03-13 23:30:48',1033,9012,'personal',0,NULL,NULL),(5065,'2018-03-05 06:48:53','2018-03-12 07:29:37',1034,9013,'personal',0,NULL,NULL),(5070,'2018-03-05 17:34:04','2018-03-08 03:12:00',1035,9014,'personal',1,NULL,NULL),(5075,'2018-03-07 23:59:33','2018-03-14 13:40:56',1036,9015,'personal',1,NULL,NULL),(5080,'2018-03-05 00:37:49','2018-03-09 05:38:50',1037,9016,'personal',1,NULL,NULL),(5085,'2018-03-03 17:55:12','2018-03-10 09:12:28',1038,9017,'personal',0,'2018-04-27 17:21:09','2018-04-27 17:21:28'),(5090,'2018-03-01 19:19:30','2018-03-13 15:15:04',1039,9018,'personal',0,NULL,'2018-04-27 17:15:01'),(5095,'2018-03-07 22:05:35','2018-03-09 04:38:00',1040,9019,'personal',0,NULL,NULL),(5100,'2018-03-04 08:07:01','2018-03-09 06:15:14',1051,9020,'officeequipment',0,NULL,NULL),(5105,'1969-12-31 16:00:00','2018-08-25 12:34:52',1052,9021,'officeequipment',0,NULL,NULL),(5110,'2018-03-06 05:09:52','2018-03-14 10:13:36',1053,9022,'officeequipment',1,NULL,NULL),(5115,'2018-03-05 15:30:13','2018-03-13 04:33:25',1054,9023,'officeequipment',1,NULL,NULL),(5120,'2018-03-05 07:05:55','2018-03-13 08:06:14',1055,9024,'officeequipment',1,NULL,NULL),(5125,'2018-03-05 12:51:22','2018-03-14 08:36:17',1056,9025,'officeequipment',0,NULL,NULL),(5130,'1969-12-31 16:00:00','2019-03-29 00:20:14',1057,9026,'officeequipment',0,NULL,NULL),(5135,'2018-03-01 21:46:56','2018-03-13 01:07:08',1058,9027,'officeequipment',0,NULL,NULL),(5140,'2018-03-04 15:26:18','2018-03-09 03:40:27',1059,9028,'officeequipment',0,NULL,NULL),(5145,'2018-03-04 21:02:40','2018-03-08 19:49:29',1060,9029,'officeequipment',0,NULL,NULL),(5150,'2018-03-03 23:41:25','2018-03-08 15:49:20',1071,9030,'machinary',1,NULL,NULL),(5155,'2018-03-02 08:10:20','2018-03-11 10:10:28',1072,9031,'machinary',1,NULL,NULL),(5160,'2018-03-01 07:19:22','2018-03-14 23:58:57',1073,9032,'machinary',1,NULL,NULL),(5165,'2018-03-07 20:39:37','2018-03-13 17:36:00',1074,9033,'machinary',0,NULL,NULL),(5170,'2018-03-04 13:58:56','2018-03-12 01:06:56',1075,9034,'machinary',0,NULL,NULL),(5175,'2018-03-06 09:16:23','2018-03-12 09:04:22',1076,9035,'machinary',0,NULL,NULL),(5180,'2018-03-05 09:09:18','2018-03-12 06:21:53',1077,9036,'machinary',0,NULL,NULL),(5185,'2018-03-03 13:21:28','2018-03-09 01:16:28',1078,9037,'machinary',0,NULL,NULL),(5190,'2018-03-06 17:29:38','2018-03-09 20:13:42',1079,9038,'machinary',1,NULL,NULL),(5195,'2018-03-03 16:38:13','2018-03-12 14:19:47',1080,9039,'machinary',1,NULL,NULL),(5200,'2018-03-07 20:02:15','2018-03-12 15:55:23',1091,9040,'electronics',1,NULL,NULL),(5205,'2018-03-02 02:25:38','2018-03-08 08:50:28',1092,9041,'electronics',0,'2018-04-24 23:29:11','2018-04-24 23:29:12'),(5210,'2018-03-06 12:43:27','2018-03-13 20:18:14',1093,9042,'electronics',0,NULL,NULL),(5215,'2018-03-03 08:31:25','2018-03-13 07:26:30',1094,9043,'electronics',0,NULL,NULL),(5220,'2018-03-07 01:00:14','2018-03-11 17:07:11',1095,9044,'electronics',0,NULL,NULL),(5225,'2018-03-07 15:09:57','2018-03-08 02:44:25',1096,9045,'electronics',0,NULL,NULL),(5230,'2018-03-04 16:40:46','2018-03-12 03:31:40',1097,9046,'electronics',1,NULL,NULL),(5235,'2018-03-05 01:16:17','2018-03-13 02:02:38',1098,9047,'electronics',1,NULL,NULL),(5240,'2018-03-03 04:18:46','2018-03-14 00:41:48',1099,9048,'electronics',1,NULL,NULL),(5245,'2018-03-07 20:02:15','2018-03-12 15:55:23',1100,9049,'electronics',0,NULL,NULL),(5246,'2018-04-11 00:00:00','2018-04-10 00:00:00',1014,9049,'personal',0,NULL,NULL),(5247,'2018-04-10 00:00:00','2018-04-27 00:00:00',1091,9049,'test',0,NULL,NULL),(5248,'2018-04-26 00:00:00','2018-04-28 00:00:00',1014,9049,'test',0,NULL,NULL),(5249,'2018-04-28 00:00:00','2018-04-30 00:00:00',1056,9049,'loading furniture',0,NULL,NULL),(5250,'2018-04-05 16:34:00','2018-04-30 15:00:00',1014,9049,'aa',0,NULL,NULL),(5251,'2018-04-28 19:00:00','2018-04-30 09:00:00',1038,9049,'personal',0,NULL,NULL),(5252,'2018-04-28 19:13:42','2018-04-30 22:00:00',1013,9105,'s',0,NULL,NULL),(5253,'2018-04-28 22:00:00','2018-04-30 22:00:00',1060,9106,'loading furniture',0,'2018-04-28 19:20:16','2018-04-28 19:20:39'),(5254,'2018-04-30 14:00:00','2018-05-01 15:00:00',1051,9108,'moving',1,NULL,NULL),(5255,'2018-04-30 14:00:00','2018-05-02 03:00:00',1071,9108,'moving out of state',1,NULL,NULL),(5256,'2018-05-05 08:00:00','2018-05-07 18:00:00',1020,9108,'moving out of state',0,'2018-04-29 00:27:59','2018-04-29 00:58:57'),(5257,'2018-04-30 15:00:00','2018-05-01 20:00:00',1012,9108,'22',0,'2018-04-29 00:59:09','2018-04-29 01:01:40'),(5258,'2018-04-30 14:00:00','2018-05-03 20:00:00',1016,9108,'dd',0,'2018-04-29 01:04:43','2018-04-29 01:05:00'),(5259,'2018-05-04 14:00:00','2018-04-09 07:00:00',1073,9110,'company equipment',0,'2018-04-30 18:49:11','2018-04-30 18:49:35'),(5260,'2018-05-07 09:00:00','2018-05-08 20:00:00',1015,9111,'blah',1,NULL,NULL),(5261,'2018-05-08 13:00:00','2018-05-09 15:00:00',1016,9111,'ss',0,'2018-04-30 17:55:43','2018-04-30 18:57:44'),(5262,'2018-06-01 21:00:00','2018-06-02 22:00:00',1057,9110,'personal',0,'2018-05-01 08:29:20','2018-05-01 09:45:20'),(5263,'2018-06-01 21:00:00','2018-06-02 22:00:00',1015,9110,'we',0,'2018-05-01 09:46:12','2018-05-01 09:46:23'),(5264,'2018-06-02 09:00:00','2018-06-03 10:00:00',1017,9110,'ss',0,'2018-05-01 10:00:07','2018-05-01 10:05:31'),(5265,'2018-05-01 21:00:00','2018-05-02 22:00:00',1012,9113,'personal',0,'2018-05-01 10:14:47','2018-05-01 10:14:58'),(5266,'2018-05-02 09:00:00','2018-05-03 10:00:00',1034,9113,'office relocation',0,'2018-05-01 10:53:18','2018-05-01 11:07:19'),(5267,'2018-05-03 09:00:00','2018-05-04 09:00:00',1032,9114,'personal',0,'2018-05-01 10:59:16','2018-05-01 11:04:12');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger update_availability after insert on reservation
for each row begin
update truck
set Available = 0 where truck_id= new.Truck_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger update_truck after update on reservation
for each row begin
if (new.cancel_status = 1 or new.actual_dropoffdate is not null) then
update truck
set Available = 1 where truck_id= new.Truck_id;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truck` (
  `Truck_id` int(10) NOT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `Available` tinyint(1) NOT NULL DEFAULT '0',
  `Dimension` varchar(15) DEFAULT NULL,
  `BaseRate` int(10) DEFAULT NULL,
  PRIMARY KEY (`Truck_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
INSERT INTO `truck` VALUES (1001,'Honda',2017,0,'10x5X7',20),(1002,'Nissan',2010,0,'10x5X7',20),(1003,'Nissan',2002,0,'10x5X7',20),(1004,'Honda',2013,0,'10x5X7',20),(1005,'Mahindra',2004,0,'10x5X7',20),(1006,'Chevrolet',2011,0,'10x5X7',20),(1007,'Suzuki',2014,0,'10x5X7',20),(1008,'Volkswagen',2010,0,'10x5X7',20),(1009,'Mercedes-Benz',2010,0,'10x5X7',20),(1010,'BMW',2001,0,'10x5X7',20),(1011,'Honda',2015,0,'10x5X7',20),(1012,'BMW',2018,1,'10x5X7',20),(1013,'BMW',2014,0,'10x5X7',20),(1014,'Mahindra',2009,0,'10x5X7',20),(1015,'General Motors',2002,1,'10x5X7',20),(1016,'Suzuki',2017,1,'10x5X7',20),(1017,'Toyota',2017,1,'10x5X7',20),(1018,'Toyota',2014,1,'10x5X7',20),(1019,'Chevrolet',2007,1,'10x5X7',20),(1020,'Volkswagen',2009,1,'10x5X7',20),(1021,'Mahindra',2001,0,'40x5x12',35),(1022,'BMW',2013,0,'40x5x12',35),(1023,'Chevrolet',2005,0,'40x5x12',35),(1024,'Nissan',2010,0,'40x5x12',35),(1025,'Nissan',2001,0,'40x5x12',35),(1026,'Toyota',2009,0,'40x5x12',35),(1027,'Toyota',2000,0,'40x5x12',35),(1028,'Mercedes-Benz',2013,0,'40x5x12',35),(1029,'BMW',2015,0,'40x5x12',35),(1030,'Suzuki',2009,0,'40x5x12',35),(1031,'Mahindra',2001,1,'40x5x12',35),(1032,'Mahindra',2001,1,'40x5x12',35),(1033,'Suzuki',2017,1,'40x5x12',35),(1034,'Mercedes-Benz',2018,1,'40x5x12',35),(1035,'Suzuki',2015,1,'40x5x12',35),(1036,'Chevrolet',2016,1,'40x5x12',35),(1037,'Volkswagen',2007,1,'40x5x12',35),(1038,'Mercedes-Benz',2015,0,'40x5x12',35),(1039,'Toyota',2006,0,'40x5x12',35),(1040,'General Motors',2012,1,'40x5x12',35),(1041,'Chevrolet',2008,0,'9x4x8',15),(1042,'Suzuki',2008,0,'9x4x8',15),(1043,'Suzuki',2015,0,'9x4x8',15),(1044,'Suzuki',2010,0,'9x4x8',15),(1045,'Volkswagen',2009,0,'9x4x8',15),(1046,'Suzuki',2011,0,'9x4x8',15),(1047,'General Motors',2007,0,'9x4x8',15),(1048,'General Motors',2013,0,'9x4x8',15),(1049,'Honda',2009,0,'9x4x8',15),(1050,'Suzuki',2009,0,'9x4x8',15),(1051,'BMW',2016,1,'9x4x8',15),(1052,'Nissan',2017,1,'9x4x8',15),(1053,'Honda',2011,1,'9x4x8',15),(1054,'Chevrolet',2009,1,'9x4x8',15),(1055,'Honda',2014,1,'9x4x8',15),(1056,'Chevrolet',2008,0,'9x4x8',15),(1057,'Toyota',2003,1,'9x4x8',15),(1058,'General Motors',2005,1,'9x4x8',15),(1059,'Toyota',2008,1,'9x4x8',15),(1060,'Volkswagen',2002,1,'9x4x8',15),(1061,'Honda',2004,0,'6x2x6',10),(1062,'Chevrolet',2010,0,'6x2x6',10),(1063,'Suzuki',2002,0,'6x2x6',10),(1064,'Toyota',2016,0,'6x2x6',10),(1065,'Chevrolet',2005,0,'6x2x6',10),(1066,'Nissan',2016,0,'6x2x6',10),(1067,'Toyota',2011,0,'6x2x6',10),(1068,'Toyota',2013,0,'6x2x6',10),(1069,'Chevrolet',2006,0,'6x2x6',10),(1070,'Volkswagen',2012,0,'6x2x6',10),(1071,'Chevrolet',2016,1,'6x2x6',10),(1072,'Mahindra',2013,1,'6x2x6',10),(1073,'Volkswagen',2017,1,'6x2x6',10),(1074,'Toyota',2014,1,'6x2x6',10),(1075,'Chevrolet',2009,1,'6x2x6',10),(1076,'General Motors',2000,1,'6x2x6',10),(1077,'Suzuki',2006,1,'6x2x6',10),(1078,'BMW',2003,1,'6x2x6',10),(1079,'BMW',2010,1,'6x2x6',10),(1080,'General Motors',2006,1,'6x2x6',10),(1081,'Honda',2017,0,'53x5x13',50),(1082,'Mercedes-Benz',2018,0,'53x5x13',50),(1083,'Chevrolet',2000,0,'53x5x13',50),(1084,'Mahindra',2016,0,'53x5x13',50),(1085,'Mahindra',2000,0,'53x5x13',50),(1086,'BMW',2008,0,'53x5x13',50),(1087,'Volkswagen',2004,0,'53x5x13',50),(1088,'Honda',2013,0,'53x5x13',50),(1089,'Honda',2002,0,'53x5x13',50),(1090,'Mahindra',2011,0,'53x5x13',50),(1091,'Chevrolet',2016,1,'53x5x13',50),(1092,'Chevrolet',2003,1,'53x5x13',50),(1093,'Nissan',2006,1,'53x5x13',50),(1094,'Mahindra',2016,1,'53x5x13',50),(1095,'Suzuki',2018,1,'53x5x13',50),(1096,'Toyota',2011,1,'53x5x13',50),(1097,'Mahindra',2004,1,'53x5x13',50),(1098,'BMW',2003,1,'53x5x13',50),(1099,'BMW',2004,1,'53x5x13',50),(1100,'Suzuki',2006,1,'53x5x13',50);
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'truckrental'
--

--
-- Dumping routines for database 'truckrental'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_invoice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_invoice`(IN id int)
begin
Update truckrental.reservation set actual_dropoffdate = now() where reservation_id = id;

set @randomId = concat(
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(id)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
              substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)
             );

insert into invoice (invoice_no, reservation_id, payment_status ) values (@randomId, id, 0);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customer_invoice`
--

/*!50001 DROP VIEW IF EXISTS `customer_invoice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_invoice` AS select `r`.`Reservation_id` AS `Reservation_No`,`t`.`Model` AS `Truckmodel`,`r`.`actual_selectdate` AS `startdate`,`r`.`actual_dropoffdate` AS `enddate`,`t`.`BaseRate` AS `baseprice`,timestampdiff(HOUR,`r`.`actual_selectdate`,`r`.`actual_dropoffdate`) AS `No_of_hours`,((timestampdiff(MINUTE,`r`.`actual_selectdate`,`r`.`actual_dropoffdate`) * `t`.`BaseRate`) / 60) AS `Total`,concat(`c`.`First_name`,' ',`c`.`Last_name`) AS `Name`,`c`.`email` AS `email`,`c`.`customer_type` AS `type` from ((`truck` `t` join `reservation` `r` on((`r`.`Truck_id` = `t`.`Truck_id`))) join `customer` `c` on((`c`.`Customer_id` = `r`.`Customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01 12:44:17
