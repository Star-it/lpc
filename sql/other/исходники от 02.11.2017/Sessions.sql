DROP TABLE IF EXISTS `Sessions`;
CREATE TABLE `Sessions` (
  `sid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=5461;