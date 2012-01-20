CREATE TABLE `CONTACT_TYPE` (
  `TYPE_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `TYPE` VARCHAR(255) NOT NULL,
  `ICON` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=INNODB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

CREATE TABLE `USER_CONTACT` (
  `CONTACT_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `VALUE` VARCHAR(255) COLLATE utf8_bin NOT NULL,
  `TYPE_ID` BIGINT(20) NOT NULL,
  `USER_ID` BIGINT(20) NOT NULL,
  PRIMARY KEY (`CONTACT_ID`),
  KEY `FK_USER` (`USER_ID`),
  KEY `FK_TYPE` (`TYPE_ID`),
  CONSTRAINT `FK_TYPE_REF` FOREIGN KEY (`TYPE_ID`) REFERENCES `CONTACT_TYPE` (`TYPE_ID`),
  CONSTRAINT `FK_USER_REF` FOREIGN KEY (`USER_ID`) REFERENCES `USERS` (`ID`)
) ENGINE=INNODB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;