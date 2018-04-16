use pns;

CREATE TABLE `pns` (
  `PNSID` bigint(20) NOT NULL,
  `PNSGID` bigint(20) DEFAULT NULL,
  `POID` bigint(20) DEFAULT NULL COMMENT 'product owner''s id \nnormally client',
  `PRICE` bigint(20) DEFAULT NULL,
  `QUANT` bigint(20) DEFAULT NULL,
  `TOTAL` bigint(20) DEFAULT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PNSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `orders` (
  `TIMESTAMP` bigint(20) NOT NULL,
  `OID` varchar(45) DEFAULT NULL,
  `CID` bigint(20) DEFAULT NULL,
  `POID` varchar(45) DEFAULT NULL,
  `PNSID` bigint(20) DEFAULT NULL,
  `PNSGID` bigint(20) DEFAULT NULL,
  `QUANT` bigint(20) DEFAULT NULL,
  `STATUS` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `requests` (
  `RID` varchar(45) NOT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `CID` varchar(45) DEFAULT NULL,
  `TTYPE` varchar(45) DEFAULT NULL,
  `RBODY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RID`),
  UNIQUE KEY `RID_UNIQUE` (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
