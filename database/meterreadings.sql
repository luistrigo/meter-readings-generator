/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# tcities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tcities`;

CREATE TABLE `tcities` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tcities` WRITE;
/*!40000 ALTER TABLE `tcities` DISABLE KEYS */;

INSERT INTO `tcities` (`id`, `city`, `state`, `population`, `location`)
VALUES
	(1,'New York','New York',8804190,'40.66°N 73.93°W'),
	(2,'Los Angeles','California',3898747,'34.01°N 118.41°W'),
	(3,'Chicago','Illinois',2746388,'41.83°N 87.68°W'),
	(4,'Houston','Texas',2304580,'29.78°N 95.39°W'),
	(5,'Phoenix','Arizona',1608139,'33.57°N 112.09°W'),
	(6,'Philadelphia','Pennsylvania',1603797,'40.00°N 75.13°W'),
	(7,'San Antonio','Texas',1434625,'29.47°N 98.52°W'),
	(8,'San Diego','California',1386932,'32.81°N 117.13°W'),
	(9,'Dallas','Texas',1304379,'32.79°N 96.76°W'),
	(10,'San Jose','California',1013240,'37.29°N 121.81°W'),
	(11,'Austin','Texas',961855,'30.30°N 97.75°W'),
	(12,'Jacksonville','Florida',949611,'30.33°N 81.66°W'),
	(13,'Fort Worth','Texas',918915,'32.78°N 97.34°W'),
	(14,'Columbus','Ohio',905748,'39.98°N 82.98°W'),
	(15,'Indianapolis','Indiana',887642,'39.77°N 86.14°W'),
	(16,'Charlotte','North Carolina',874579,'35.20°N 80.83°W'),
	(17,'San Francisco','California',873965,'37.72°N 123.03°W'),
	(18,'Seattle','Washington',737015,'47.62°N 122.35°W'),
	(19,'Denver','Colorado',715522,'39.76°N 104.88°W'),
	(20,'Washington','District of Columbia',689545,'38.90°N 77.01°W'),
	(21,'Nashville','Tennessee',689447,'36.17°N 86.78°W'),
	(22,'Oklahoma City','Oklahoma',681054,'35.46°N 97.51°W'),
	(23,'El Paso','Texas',678815,'31.84°N 106.42°W'),
	(24,'Boston','Massachusetts',675647,'42.33°N 71.02°W'),
	(25,'Portland','Oregon',652503,'45.53°N 122.65°W'),
	(26,'Las Vegas','Nevada',641903,'36.22°N 115.26°W'),
	(27,'Detroit','Michigan',639111,'42.38°N 83.10°W'),
	(28,'Memphis','Tennessee',633104,'35.10°N 89.97°W'),
	(29,'Louisville','Kentucky',633045,'38.16°N 85.64°W'),
	(30,'Baltimore','Maryland',585708,'39.30°N 76.61°W'),
	(31,'Milwaukee','Wisconsin',577222,'43.06°N 87.96°W'),
	(32,'Albuquerque','New Mexico',564559,'35.10°N 106.64°W'),
	(33,'Tucson','Arizona',542629,'32.15°N 110.87°W'),
	(34,'Fresno','California',542107,'36.78°N 119.79°W'),
	(35,'Sacramento','California',524943,'38.56°N 121.46°W'),
	(36,'Kansas City','Missouri',50809,'39.12°N 94.55°W'),
	(37,'Mesa','Arizona',504258,'33.40°N 111.71°W'),
	(38,'Atlanta','Georgia',498715,'33.76°N 84.42°W'),
	(39,'Omaha','Nebraska',486051,'41.26°N 96.04°W'),
	(40,'Colorado Springs','Colorado',478961,'38.86°N 104.76°W'),
	(41,'Raleigh','North Carolina',467665,'35.83°N 78.64°W'),
	(42,'Long Beach','California',466742,'33.80°N 118.15°W'),
	(43,'Virginia Beach','Virginia',45947,'36.78°N 76.02°W'),
	(44,'Miami','Florida',442241,'25.77°N 80.20°W'),
	(45,'Oakland','California',440646,'37.76°N 122.22°W'),
	(46,'Minneapolis','Minnesota',429954,'44.96°N 93.26°W'),
	(47,'Tulsa','Oklahoma',413066,'36.12°N 95.90°W'),
	(48,'Bakersfield','California',403455,'35.32°N 119.01°W'),
	(49,'Wichita','Kansas',397532,'37.69°N 97.34°W'),
	(50,'Arlington','Texas',394266,'32.70°N 97.12°W'),
	(51,'Aurora','Colorado',386261,'39.68°N 104.68°W'),
	(52,'Tampa','Florida',384959,'27.97°N 82.47°W'),
	(53,'New Orleans','Louisiana',383997,'30.05°N 89.93°W'),
	(54,'Cleveland','Ohio',372624,'41.47°N 81.67°W'),
	(55,'Honolulu','Hawaii',350964,'21.32°N 157.84°W'),
	(56,'Anaheim','California',346824,'33.85°N 117.76°W'),
	(57,'Lexington','Kentucky',32257,'38.04°N 84.45°W'),
	(58,'Stockton','California',320804,'37.97°N 121.31°W'),
	(59,'Corpus Christi','Texas',317863,'27.75°N 97.17°W'),
	(60,'Henderson','Nevada',31761,'36.00°N 115.03°W'),
	(61,'Riverside','California',314998,'33.93°N 117.39°W'),
	(62,'Newark','New Jersey',311549,'40.72°N 74.17°W'),
	(63,'Saint Paul','Minnesota',311527,'44.94°N 93.10°W'),
	(64,'Santa Ana','California',310227,'33.73°N 117.88°W'),
	(65,'Cincinnati','Ohio',309317,'39.14°N 84.50°W'),
	(66,'Irvine','California',30767,'33.67°N 117.77°W'),
	(67,'Orlando','Florida',307573,'28.41°N 81.27°W'),
	(68,'Pittsburgh','Pennsylvania',302971,'40.43°N 79.97°W'),
	(69,'St. Louis','Missouri',301578,'38.63°N 90.24°W'),
	(70,'Greensboro','North Carolina',299035,'36.09°N 79.82°W'),
	(71,'Jersey City','New Jersey',292449,'40.71°N 74.06°W'),
	(72,'Anchorage','Alaska',291247,'61.17°N 149.28°W'),
	(73,'Lincoln','Nebraska',291082,'40.81°N 96.68°W'),
	(74,'Plano','Texas',285494,'33.05°N 96.74°W'),
	(75,'Durham','North Carolina',283506,'35.98°N 78.90°W'),
	(76,'Buffalo','New York',278349,'42.89°N 78.85°W'),
	(77,'Chandler','Arizona',275987,'33.28°N 111.85°W'),
	(78,'Chula Vista','California',275487,'32.62°N 117.01°W'),
	(79,'Toledo','Ohio',270871,'41.66°N 83.58°W'),
	(80,'Madison','Wisconsin',26984,'43.08°N 89.42°W'),
	(81,'Gilbert','Arizona',267918,'33.31°N 111.74°W'),
	(82,'Reno','Nevada',264165,'39.54°N 119.84°W'),
	(83,'Fort Wayne','Indiana',263886,'41.08°N 85.14°W'),
	(84,'North Las Vegas','Nevada',262527,'36.28°N 115.09°W'),
	(85,'St. Petersburg','Florida',258308,'27.76°N 82.64°W'),
	(86,'Lubbock','Texas',257141,'33.56°N 101.88°W'),
	(87,'Irving','Texas',256684,'32.85°N 96.97°W'),
	(88,'Laredo','Texas',255205,'27.56°N 99.48°W'),
	(89,'Winston–Salem','North Carolina',249545,'36.10°N 80.26°W'),
	(90,'Chesapeake','Virginia',249422,'36.67°N 76.30°W'),
	(91,'Glendale','Arizona',248325,'33.53°N 112.18°W'),
	(92,'Garland','Texas',246018,'32.90°N 96.63°W'),
	(93,'Scottsdale','Arizona',241361,'33.68°N 111.86°W'),
	(94,'Norfolk','Virginia',238005,'36.92°N 76.24°W'),
	(95,'Boise','Idaho',235684,'43.60°N 116.23°W'),
	(96,'Fremont','California',230504,'37.49°N 121.94°W'),
	(97,'Spokane','Washington',228989,'47.66°N 117.43°W'),
	(98,'Santa Clarita','California',228673,'34.40°N 118.50°W'),
	(99,'Baton Rouge','Louisiana',22747,'30.44°N 91.13°W'),
	(100,'Richmond','Virginia',22661,'37.53°N 77.47°W'),
	(101,'Hialeah','Florida',223109,'25.86°N 80.30°W'),
	(102,'San Bernardino','California',222101,'34.14°N 117.29°W'),
	(103,'Tacoma','Washington',219346,'47.25°N 122.45°W'),
	(104,'Modesto','California',218464,'37.63°N 121.00°W'),
	(105,'Huntsville','Alabama',215006,'34.69°N 86.67°W'),
	(106,'Des Moines','Iowa',214133,'41.57°N 93.61°W'),
	(107,'Yonkers','New York',211569,'40.94°N 73.86°W'),
	(108,'Rochester','New York',211328,'43.16°N 77.61°W'),
	(109,'Moreno Valley','California',208634,'33.92°N 117.20°W'),
	(110,'Fayetteville','North Carolina',208501,'35.08°N 78.97°W'),
	(111,'Fontana','California',208393,'34.10°N 117.46°W'),
	(112,'Columbus','Georgia',206922,'32.51°N 84.87°W'),
	(113,'Worcester','Massachusetts',206518,'42.26°N 71.80°W'),
	(114,'Port St. Lucie','Florida',204851,'27.28°N 80.38°W'),
	(115,'Little Rock','Arkansas',202591,'34.72°N 92.35°W'),
	(116,'Augusta','Georgia',202081,'33.36°N 82.07°W'),
	(117,'Oxnard','California',202063,'34.20°N 119.20°W'),
	(118,'Birmingham','Alabama',200733,'33.52°N 86.79°W'),
	(119,'Montgomery','Alabama',200603,'32.34°N 86.26°W'),
	(120,'Frisco','Texas',200509,'33.15°N 96.82°W'),
	(121,'Amarillo','Texas',200393,'35.19°N 101.83°W'),
	(122,'Salt Lake City','Utah',199723,'40.77°N 111.93°W'),
	(123,'Grand Rapids','Michigan',198917,'42.96°N 85.65°W'),
	(124,'Huntington Beach','California',198711,'33.69°N 118.00°W'),
	(125,'Overland Park','Kansas',197238,'38.88°N 94.69°W'),
	(126,'Glendale','California',196543,'34.18°N 118.24°W'),
	(127,'Tallahassee','Florida',196169,'30.45°N 84.25°W'),
	(128,'Grand Prairie','Texas',1961,'32.68°N 97.02°W'),
	(129,'McKinney','Texas',195308,'33.19°N 96.66°W'),
	(130,'Cape Coral','Florida',194016,'26.64°N 81.99°W'),
	(131,'Sioux Falls','South Dakota',192517,'43.53°N 96.73°W'),
	(132,'Peoria','Arizona',190985,'33.78°N 112.30°W'),
	(133,'Providence','Rhode Island',190934,'41.82°N 71.41°W'),
	(134,'Vancouver','Washington',190915,'45.63°N 122.59°W'),
	(135,'Knoxville','Tennessee',19074,'35.97°N 83.94°W'),
	(136,'Akron','Ohio',190469,'41.08°N 81.52°W'),
	(137,'Shreveport','Louisiana',187593,'32.46°N 93.79°W'),
	(138,'Mobile','Alabama',187041,'30.66°N 88.10°W'),
	(139,'Brownsville','Texas',186738,'25.99°N 97.45°W'),
	(140,'Newport News','Virginia',186247,'37.07°N 76.52°W'),
	(141,'Fort Lauderdale','Florida',18276,'26.14°N 80.14°W'),
	(142,'Chattanooga','Tennessee',181099,'35.06°N 85.24°W'),
	(143,'Tempe','Arizona',180587,'33.38°N 111.93°W'),
	(144,'Aurora','Illinois',180542,'41.76°N 88.29°W'),
	(145,'Santa Rosa','California',178127,'38.44°N 122.70°W'),
	(146,'Eugene','Oregon',176654,'44.05°N 123.11°W'),
	(147,'Elk Grove','California',176124,'38.41°N 121.38°W'),
	(148,'Salem','Oregon',175535,'44.92°N 123.02°W'),
	(149,'Ontario','California',175265,'34.03°N 117.60°W'),
	(150,'Cary','North Carolina',174721,'35.78°N 78.81°W'),
	(151,'Rancho Cucamonga','California',174453,'34.12°N 117.56°W'),
	(152,'Oceanside','California',174068,'33.22°N 117.30°W'),
	(153,'Lancaster','California',173516,'34.69°N 118.17°W'),
	(154,'Garden Grove','California',171949,'33.77°N 117.96°W'),
	(155,'Pembroke Pines','Florida',171178,'26.02°N 80.34°W'),
	(156,'Fort Collins','Colorado',16981,'40.54°N 105.06°W'),
	(157,'Palmdale','California',16945,'34.59°N 118.10°W'),
	(158,'Springfield','Missouri',169176,'37.19°N 93.29°W'),
	(159,'Clarksville','Tennessee',166722,'36.56°N 87.34°W'),
	(160,'Salinas','California',163542,'36.69°N 121.63°W'),
	(161,'Hayward','California',162954,'37.62°N 122.10°W'),
	(162,'Paterson','New Jersey',159732,'40.91°N 74.16°W'),
	(163,'Alexandria','Virginia',159467,'38.82°N 77.08°W'),
	(164,'Macon','Georgia',157346,'32.80°N 83.69°W'),
	(165,'Corona','California',157136,'33.86°N 117.56°W'),
	(166,'Kansas City','Kansas',156607,'39.12°N 94.74°W'),
	(167,'Lakewood','Colorado',155984,'39.69°N 105.11°W'),
	(168,'Springfield','Massachusetts',155929,'42.11°N 72.54°W'),
	(169,'Sunnyvale','California',155805,'37.38°N 122.02°W'),
	(170,'Jackson','Mississippi',153701,'32.31°N 90.21°W'),
	(171,'Killeen','Texas',153095,'31.07°N 97.73°W'),
	(172,'Hollywood','Florida',153067,'26.03°N 80.16°W'),
	(173,'Murfreesboro','Tennessee',152769,'35.85°N 86.41°W'),
	(174,'Pasadena','Texas',15195,'29.65°N 95.15°W'),
	(175,'Bellevue','Washington',151854,'47.59°N 122.15°W'),
	(176,'Pomona','California',151713,'34.05°N 117.76°W'),
	(177,'Escondido','California',151038,'33.13°N 117.07°W'),
	(178,'Joliet','Illinois',150362,'41.51°N 88.14°W'),
	(179,'Charleston','South Carolina',150227,'32.81°N 79.95°W'),
	(180,'Mesquite','Texas',150108,'32.76°N 96.58°W'),
	(181,'Naperville','Illinois',14954,'41.74°N 88.16°W'),
	(182,'Rockford','Illinois',148655,'42.25°N 89.06°W'),
	(183,'Bridgeport','Connecticut',148654,'41.18°N 73.19°W'),
	(184,'Syracuse','New York',14862,'43.04°N 76.14°W'),
	(185,'Savannah','Georgia',14778,'32.00°N 81.15°W'),
	(186,'Roseville','California',147773,'38.76°N 121.31°W'),
	(187,'Torrance','California',147067,'33.83°N 118.34°W'),
	(188,'Fullerton','California',143617,'33.88°N 117.92°W'),
	(189,'Surprise','Arizona',143148,'33.67°N 112.45°W'),
	(190,'McAllen','Texas',14221,'26.23°N 98.24°W'),
	(191,'Thornton','Colorado',141867,'39.91°N 104.94°W'),
	(192,'Visalia','California',141384,'36.32°N 119.32°W'),
	(193,'Olathe','Kansas',14129,'38.88°N 94.81°W'),
	(194,'Gainesville','Florida',141085,'29.67°N 82.34°W'),
	(195,'West Valley City','Utah',14023,'40.68°N 112.01°W'),
	(196,'Orange','California',139911,'33.78°N 117.86°W'),
	(197,'Denton','Texas',139869,'33.21°N 97.14°W'),
	(198,'Warren','Michigan',139387,'42.49°N 83.02°W'),
	(199,'Pasadena','California',138699,'34.16°N 118.13°W'),
	(200,'Waco','Texas',138486,'31.56°N 97.18°W'),
	(201,'Cedar Rapids','Iowa',13771,'41.96°N 91.67°W'),
	(202,'Dayton','Ohio',137644,'39.77°N 84.19°W'),
	(203,'Elizabeth','New Jersey',137298,'40.66°N 74.19°W'),
	(204,'Hampton','Virginia',137148,'37.04°N 76.29°W'),
	(205,'Columbia','South Carolina',136632,'34.02°N 80.89°W'),
	(206,'Kent','Washington',136588,'47.38°N 122.21°W'),
	(207,'Stamford','Connecticut',13547,'41.07°N 73.54°W'),
	(208,'Lakewood','New Jersey',135158,'40.08°N 74.21°W'),
	(209,'Victorville','California',13481,'34.52°N 117.35°W'),
	(210,'Miramar','Florida',134721,'25.97°N 80.33°W'),
	(211,'Coral Springs','Florida',134394,'26.27°N 80.25°W'),
	(212,'Sterling Heights','Michigan',134346,'42.58°N 83.03°W'),
	(213,'New Haven','Connecticut',134023,'41.31°N 72.92°W'),
	(214,'Carrollton','Texas',133434,'32.98°N 96.89°W'),
	(215,'Midland','Texas',132524,'32.02°N 102.11°W'),
	(216,'Norman','Oklahoma',128026,'35.24°N 97.34°W'),
	(217,'Santa Clara','California',127647,'37.36°N 121.96°W'),
	(218,'Athens','Georgia',127315,'33.94°N 83.37°W'),
	(219,'Thousand Oaks','California',126966,'34.19°N 118.87°W'),
	(220,'Topeka','Kansas',126587,'39.03°N 95.69°W'),
	(221,'Simi Valley','California',126356,'34.26°N 118.74°W'),
	(222,'Columbia','Missouri',126254,'38.95°N 92.32°W'),
	(223,'Vallejo','California',12609,'38.10°N 122.26°W'),
	(224,'Fargo','North Dakota',12599,'46.86°N 96.82°W'),
	(225,'Allentown','Pennsylvania',125845,'40.59°N 75.47°W'),
	(226,'Pearland','Texas',125828,'29.55°N 95.32°W'),
	(227,'Concord','California',12541,'37.97°N 122.00°W'),
	(228,'Abilene','Texas',125182,'32.45°N 99.73°W'),
	(229,'Arvada','Colorado',124402,'39.83°N 105.15°W'),
	(230,'Berkeley','California',124321,'37.86°N 122.29°W'),
	(231,'Ann Arbor','Michigan',123851,'42.27°N 83.73°W'),
	(232,'Independence','Missouri',123011,'39.08°N 94.35°W'),
	(233,'Rochester','Minnesota',121395,'44.01°N 92.47°W'),
	(234,'Lafayette','Louisiana',121374,'30.20°N 92.02°W'),
	(235,'Hartford','Connecticut',121054,'41.76°N 72.68°W'),
	(236,'College Station','Texas',120511,'30.58°N 96.29°W'),
	(237,'Clovis','California',120124,'36.82°N 119.68°W'),
	(238,'Fairfield','California',119881,'38.25°N 122.03°W'),
	(239,'Palm Bay','Florida',11976,'27.98°N 80.66°W'),
	(240,'Richardson','Texas',119469,'32.97°N 96.70°W'),
	(241,'Round Rock','Texas',119468,'30.52°N 97.66°W'),
	(242,'Cambridge','Massachusetts',118403,'42.37°N 71.11°W'),
	(243,'Meridian','Idaho',117635,'43.61°N 116.39°W'),
	(244,'West Palm Beach','Florida',117415,'26.74°N 80.12°W'),
	(245,'Evansville','Indiana',117298,'37.98°N 87.53°W'),
	(246,'Clearwater','Florida',117292,'27.97°N 82.76°W'),
	(247,'Billings','Montana',117116,'45.78°N 108.54°W'),
	(248,'West Jordan','Utah',116961,'40.60°N 112.00°W'),
	(249,'Richmond','California',116448,'37.95°N 122.36°W'),
	(250,'Westminster','Colorado',116317,'39.88°N 105.06°W'),
	(251,'Manchester','New Hampshire',115644,'42.98°N 71.44°W'),
	(252,'Lowell','Massachusetts',115554,'42.63°N 71.32°W'),
	(253,'Wilmington','North Carolina',115451,'34.20°N 77.88°W'),
	(254,'Antioch','California',115291,'37.97°N 121.79°W'),
	(255,'Beaumont','Texas',115282,'30.08°N 94.14°W'),
	(256,'Provo','Utah',115162,'40.24°N 111.64°W'),
	(257,'North Charleston','South Carolina',114852,'32.91°N 80.06°W'),
	(258,'Elgin','Illinois',114797,'42.03°N 88.32°W'),
	(259,'Carlsbad','California',114746,'33.12°N 117.28°W'),
	(260,'Odessa','Texas',114428,'31.88°N 102.34°W'),
	(261,'Waterbury','Connecticut',114403,'41.55°N 73.03°W'),
	(262,'Springfield','Illinois',114394,'39.79°N 89.64°W'),
	(263,'League City','Texas',114392,'29.49°N 95.10°W'),
	(264,'Downey','California',114355,'33.93°N 118.13°W'),
	(265,'Gresham','Oregon',114247,'45.50°N 122.44°W'),
	(266,'High Point','North Carolina',114059,'35.99°N 79.99°W'),
	(267,'Broken Arrow','Oklahoma',11354,'36.03°N 95.78°W'),
	(268,'Peoria','Illinois',11315,'40.75°N 89.61°W'),
	(269,'Lansing','Michigan',112644,'42.71°N 84.55°W'),
	(270,'Lakeland','Florida',112641,'28.05°N 81.95°W'),
	(271,'Pompano Beach','Florida',112046,'26.24°N 80.13°W'),
	(272,'Costa Mesa','California',111918,'33.66°N 117.91°W'),
	(273,'Pueblo','Colorado',111876,'38.26°N 104.61°W'),
	(274,'Lewisville','Texas',111822,'33.04°N 96.98°W'),
	(275,'Miami Gardens','Florida',11164,'25.94°N 80.24°W'),
	(276,'Las Cruces','New Mexico',111385,'32.32°N 106.78°W'),
	(277,'Sugar Land','Texas',111026,'29.59°N 95.61°W'),
	(278,'Murrieta','California',110949,'33.57°N 117.19°W'),
	(279,'Ventura','California',110763,'34.26°N 119.25°W'),
	(280,'Everett','Washington',110629,'47.95°N 122.19°W'),
	(281,'Temecula','California',110003,'33.49°N 117.13°W'),
	(282,'Dearborn','Michigan',109976,'42.31°N 83.21°W'),
	(283,'Santa Maria','California',109707,'34.93°N 120.44°W'),
	(284,'West Covina','California',109501,'34.05°N 117.90°W'),
	(285,'El Monte','California',10945,'34.07°N 118.02°W'),
	(286,'Greeley','Colorado',108795,'40.41°N 104.76°W'),
	(287,'Sparks','Nevada',108445,'39.55°N 119.73°W'),
	(288,'Centennial','Colorado',108418,'39.59°N 104.86°W'),
	(289,'Boulder','Colorado',10825,'40.02°N 105.25°W'),
	(290,'Sandy Springs','Georgia',10808,'33.93°N 84.36°W'),
	(291,'Inglewood','California',107762,'33.95°N 118.34°W'),
	(292,'Edison','New Jersey',107588,'40.52°N 74.41°W'),
	(293,'South Fulton','Georgia',107436,'33.59°N 84.67°W'),
	(294,'Green Bay','Wisconsin',107395,'44.52°N 87.98°W'),
	(295,'Burbank','California',107337,'34.19°N 118.32°W'),
	(296,'Renton','Washington',106785,'47.47°N 122.19°W'),
	(297,'Hillsboro','Oregon',106447,'45.52°N 122.93°W'),
	(298,'El Cajon','California',106215,'32.80°N 116.96°W'),
	(299,'Tyler','Texas',105995,'32.31°N 95.30°W'),
	(300,'Davie','Florida',105691,'26.07°N 80.28°W'),
	(301,'San Mateo','California',105661,'37.56°N 122.31°W'),
	(302,'Brockton','Massachusetts',105643,'42.08°N 71.02°W'),
	(303,'Concord','North Carolina',10524,'35.40°N 80.60°W'),
	(304,'Jurupa Valley','California',105053,'34.00°N 117.46°W'),
	(305,'Daly City','California',104901,'37.70°N 122.46°W'),
	(306,'Allen','Texas',104627,'33.09°N 96.66°W'),
	(307,'Rio Rancho','New Mexico',104046,'35.29°N 106.67°W'),
	(308,'Rialto','California',104026,'34.11°N 117.38°W'),
	(309,'Woodbridge','New Jersey',103639,'40.56°N 74.28°W'),
	(310,'South Bend','Indiana',103453,'41.67°N 86.26°W'),
	(311,'Spokane Valley','Washington',102976,'47.67°N 117.23°W'),
	(312,'Norwalk','California',102773,'33.90°N 118.08°W'),
	(313,'Menifee','California',102527,'33.69°N 117.19°W'),
	(314,'Vacaville','California',102386,'38.35°N 121.97°W'),
	(315,'Wichita Falls','Texas',102316,'33.90°N 98.52°W'),
	(316,'Davenport','Iowa',101724,'41.55°N 90.60°W'),
	(317,'Quincy','Massachusetts',101636,'42.25°N 71.00°W'),
	(318,'Chico','California',101475,'39.74°N 121.83°W'),
	(319,'Lynn','Massachusetts',101253,'42.47°N 70.95°W'),
	(320,'Lee\'s Summit','Missouri',101108,'38.92°N 94.37°W'),
	(321,'New Bedford','Massachusetts',101079,'41.64°N 70.93°W'),
	(322,'Federal Way','Washington',10103,'47.32°N 122.35°W'),
	(323,'Clinton','Michigan',100513,'42.59°N 82.92°W'),
	(324,'Edinburg','Texas',100243,'26.30°N 98.16°W'),
	(325,'Nampa','Idaho',1002,'43.57°N 116.56°W'),
	(326,'Roanoke','Virginia',100011,'37.27°N 79.93°W');

/*!40000 ALTER TABLE `tcities` ENABLE KEYS */;
UNLOCK TABLES;


# customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `uuid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `surename` varchar(50) DEFAULT NULL,
  `id_street` int(11) DEFAULT NULL,
  `number` tinyint(4) NOT NULL,
  `floor` tinyint(4) NOT NULL,
  `meters` int(4) NOT NULL,
  `id_city` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# meter_readings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `meter_readings`;

CREATE TABLE `meter_readings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `KW` decimal(18,2) NOT NULL,
  `reading` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# tstreets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tstreets`;

CREATE TABLE `tstreets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `zip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# tlastname
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tlastname`;

CREATE TABLE `tlastname` (
  `id` int(11) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tlastname` WRITE;
/*!40000 ALTER TABLE `tlastname` DISABLE KEYS */;

INSERT INTO `tlastname` (`id`, `lastname`)
VALUES
	(1,'Adams '),
	(2,'Allen '),
	(3,'Alvarez '),
	(4,'Anderson '),
	(5,'Arnold '),
	(6,'Bailey '),
	(7,'Baker '),
	(8,'Bell '),
	(9,'Bennett '),
	(10,'Black '),
	(11,'Brown '),
	(12,'Bryant '),
	(13,'Burns '),
	(14,'Butler '),
	(15,'Campbell '),
	(16,'Carter '),
	(17,'Clark '),
	(18,'Coleman '),
	(19,'Cook '),
	(20,'Cooper '),
	(21,'Cox '),
	(22,'Crawford '),
	(23,'Daniel '),
	(24,'Davis '),
	(25,'Dudley '),
	(26,'Ellis '),
	(27,'Erickson '),
	(28,'Eriksen '),
	(29,'Evans '),
	(30,'Fisher '),
	(31,'Fisher '),
	(32,'Fletcher '),
	(33,'Flores '),
	(34,'Ford '),
	(35,'Foreman '),
	(36,'Foster '),
	(37,'Francis '),
	(38,'Garcia '),
	(39,'Gentry '),
	(40,'Gibson '),
	(41,'Gomez '),
	(42,'Gonzalez '),
	(43,'Gordon '),
	(44,'Graham '),
	(45,'Grant'),
	(46,'Green '),
	(47,'Griffin '),
	(48,'Gross '),
	(49,'Guzman '),
	(50,'Hall '),
	(51,'Hamilton '),
	(52,'Harris '),
	(53,'Hicks '),
	(54,'Holland '),
	(55,'Holmes '),
	(56,'Howard '),
	(57,'Howell '),
	(58,'Hughes '),
	(59,'Hunter '),
	(60,'Jacobs '),
	(61,'Jenkins '),
	(62,'Jones '),
	(63,'Jordan '),
	(64,'Kennedy '),
	(65,'Kimmel '),
	(66,'Knight '),
	(67,'Knowles '),
	(68,'Lara '),
	(69,'Leach '),
	(70,'Lee '),
	(71,'Lindsey '),
	(72,'Little '),
	(73,'Livingston '),
	(74,'Long '),
	(75,'Lopez '),
	(76,'Lucas '),
	(77,'Martin '),
	(78,'Martinez '),
	(79,'Mason '),
	(80,'Matthews '),
	(81,'Mcdonald '),
	(82,'Meadows '),
	(83,'Miles '),
	(84,'Miller '),
	(85,'Mitchell '),
	(86,'Moody '),
	(87,'Morgan '),
	(88,'Mosby '),
	(89,'Murphy '),
	(90,'Murray '),
	(91,'Nelson '),
	(92,'Newton '),
	(93,'Noble '),
	(94,'Norman '),
	(95,'Norris '),
	(96,'Pace '),
	(97,'Parks '),
	(98,'Patel '),
	(99,'Patterson '),
	(100,'Perez '),
	(101,'Perry '),
	(102,'Peterson '),
	(103,'Phillips '),
	(104,'Potter '),
	(105,'Powell '),
	(106,'Ramirez '),
	(107,'Reid '),
	(108,'Reynolds '),
	(109,'Rice '),
	(110,'Richards '),
	(111,'Richmond '),
	(112,'Rivera '),
	(113,'Roberts '),
	(114,'Robinson '),
	(115,'Rodriguez '),
	(116,'Russell '),
	(117,'Sanders '),
	(118,'Saunders '),
	(119,'Scott '),
	(120,'Shaw '),
	(121,'Shelton '),
	(122,'Sheppard '),
	(123,'Sherman '),
	(124,'Simmons '),
	(125,'Simon '),
	(126,'Singh '),
	(127,'Smith '),
	(128,'Spencer '),
	(129,'Stanley '),
	(130,'Stephens '),
	(131,'Stewart '),
	(132,'Terry '),
	(133,'Thomas '),
	(134,'Trujillo '),
	(135,'Tucker '),
	(136,'Valentine '),
	(137,'Wagner '),
	(138,'Walker '),
	(139,'Warburton '),
	(140,'Ward '),
	(141,'Warren '),
	(142,'Watkins '),
	(143,'Weasley '),
	(144,'Wheeler '),
	(145,'White '),
	(146,'Williams '),
	(147,'Wood '),
	(148,'Woodward '),
	(149,'Wright '),
	(150,'Young ');

/*!40000 ALTER TABLE `tlastname` ENABLE KEYS */;
UNLOCK TABLES;


# tname
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tname`;

CREATE TABLE `tname` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tname` WRITE;
/*!40000 ALTER TABLE `tname` DISABLE KEYS */;

INSERT INTO `tname` (`id`, `name`)
VALUES
	(1,'Aaron'),
	(2,'Adrian'),
	(3,'Aidan'),
	(4,'Albert'),
	(5,'Alberta'),
	(6,'Alberto'),
	(7,'Alexia'),
	(8,'Alexis'),
	(9,'Alice'),
	(10,'Alisa'),
	(11,'Alison'),
	(12,'Amanda'),
	(13,'Anabelle'),
	(14,'Angela'),
	(15,'Angelique'),
	(16,'Antonio'),
	(17,'Arthur'),
	(18,'Ashley'),
	(19,'Beatrice'),
	(20,'Benjamin'),
	(21,'Bethany'),
	(22,'Beverly'),
	(23,'Blake'),
	(24,'Blanca'),
	(25,'Blanche'),
	(26,'Brandi'),
	(27,'Brian'),
	(28,'Bruce'),
	(29,'Camille'),
	(30,'Cara'),
	(31,'Carlos'),
	(32,'Carolina'),
	(33,'Cedric'),
	(34,'Charlie'),
	(35,'Christina'),
	(36,'Christopher'),
	(37,'Chrysta'),
	(38,'Clarence'),
	(39,'Clark'),
	(40,'Claude'),
	(41,'Claudia'),
	(42,'Conner'),
	(43,'Connor'),
	(44,'Craig'),
	(45,'Daisy'),
	(46,'Dan'),
	(47,'Danna'),
	(48,'Dave'),
	(49,'Deborah'),
	(50,'Debra'),
	(51,'Della'),
	(52,'Desiree'),
	(53,'Douglas'),
	(54,'Eli'),
	(55,'Ernest'),
	(56,'Ethan'),
	(57,'Eunice'),
	(58,'Everett'),
	(59,'Francesca'),
	(60,'Fred'),
	(61,'Gabriela'),
	(62,'Gemma'),
	(63,'George'),
	(64,'Gerald'),
	(65,'Gilbert'),
	(66,'Glen'),
	(67,'Gloria'),
	(68,'Graciela'),
	(69,'Greyson'),
	(70,'Hanna'),
	(71,'Hannah'),
	(72,'Harmony'),
	(73,'Harold'),
	(74,'Harold'),
	(75,'Harvey'),
	(76,'Hector'),
	(77,'Helena'),
	(78,'Hope'),
	(79,'Hunter'),
	(80,'Isabel'),
	(81,'Ivan'),
	(82,'Jaime'),
	(83,'Janessa'),
	(84,'Janet'),
	(85,'Janine'),
	(86,'Jerry'),
	(87,'Jessie'),
	(88,'Jimmy'),
	(89,'Joe'),
	(90,'Joey'),
	(91,'Johnny'),
	(92,'Jorge'),
	(93,'Joshua'),
	(94,'Julian'),
	(95,'Juliana'),
	(96,'Julie'),
	(97,'Katelynn'),
	(98,'Kathie'),
	(99,'Kathryn'),
	(100,'Katrina'),
	(101,'Kayla'),
	(102,'Kayleigh'),
	(103,'Keith'),
	(104,'Kianna'),
	(105,'Kimberly'),
	(106,'Kingston'),
	(107,'Lauren'),
	(108,'Laverne'),
	(109,'Leona'),
	(110,'Lesley'),
	(111,'Lewis'),
	(112,'Liam'),
	(113,'Loretta'),
	(114,'Lucia'),
	(115,'Lucille'),
	(116,'Lucy'),
	(117,'Luisa'),
	(118,'Luka'),
	(119,'Luna'),
	(120,'Lynda'),
	(121,'Maggie'),
	(122,'Maribel'),
	(123,'Marion'),
	(124,'Mark'),
	(125,'Marlin'),
	(126,'Marshall'),
	(127,'Martin'),
	(128,'Melody'),
	(129,'Mila'),
	(130,'Miles'),
	(131,'Milton'),
	(132,'Miranda'),
	(133,'Molly'),
	(134,'Monique'),
	(135,'Morris'),
	(136,'Myra'),
	(137,'Nathalie'),
	(138,'Nathaniel'),
	(139,'Neil'),
	(140,'Nick'),
	(141,'Nicole'),
	(142,'Noel'),
	(143,'Odessa'),
	(144,'Olive'),
	(145,'Orlando'),
	(146,'Patricia'),
	(147,'Paul'),
	(148,'Paul'),
	(149,'Perry'),
	(150,'Peter'),
	(151,'Philip'),
	(152,'Phoebe'),
	(153,'Rachelle'),
	(154,'Ramon'),
	(155,'Ricardo'),
	(156,'Rick'),
	(157,'Riley'),
	(158,'Roberto'),
	(159,'Robin'),
	(160,'Robyn'),
	(161,'Romeo'),
	(162,'Ron'),
	(163,'Rosa'),
	(164,'Rose'),
	(165,'Rosie'),
	(166,'Sabrina'),
	(167,'Samuel'),
	(168,'Sandra'),
	(169,'Sandy'),
	(170,'Scott'),
	(171,'Sebastian'),
	(172,'Seth'),
	(173,'Shane'),
	(174,'Shawn'),
	(175,'Silvia'),
	(176,'Skyla'),
	(177,'Sophia'),
	(178,'Sophie'),
	(179,'Stefan'),
	(180,'Stella'),
	(181,'Stephanie'),
	(182,'Stuart'),
	(183,'Ted'),
	(184,'Teresa'),
	(185,'Terry '),
	(186,'Tommy'),
	(187,'Tracey'),
	(188,'Traci'),
	(189,'Tristin'),
	(190,'Troy'),
	(191,'Tyra'),
	(192,'Valentina'),
	(193,'Vera'),
	(194,'Vicki'),
	(195,'Victor'),
	(196,'Vivian'),
	(197,'Wade'),
	(198,'Walter'),
	(199,'Whitney'),
	(200,'Wiley');

/*!40000 ALTER TABLE `tname` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
