CREATE TABLE `manager` (
  `managerid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `privillege` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`managerid`),
  UNIQUE KEY `managerid_UNIQUE` (`managerid`),
  UNIQUE KEY `loginname_UNIQUE` (`loginname`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8