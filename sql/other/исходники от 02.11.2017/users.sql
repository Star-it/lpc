DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type_id` int(10) DEFAULT '0',
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landline_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bin_iin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_notification` int(1) DEFAULT '0',
  `creator` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `FK_users_users_id` (`creator`) USING BTREE,
  CONSTRAINT `FK_users_users_id` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_type_id` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=963;


INSERT INTO `user_types` VALUES ('5', 'logist', 'Логистическая компания');


user_types ==> 5