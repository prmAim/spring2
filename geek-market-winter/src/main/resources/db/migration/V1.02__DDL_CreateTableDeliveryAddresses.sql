SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `delivery_addresses`;

CREATE TABLE `delivery_addresses`
(id          bigint       NOT NULL AUTO_INCREMENT,
 user_id     bigint       NOT NULL,
 address     VARCHAR(200) NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT `ck_delivery_addresses_address` CHECK(address != ''),
 CONSTRAINT `fk_delivery_addresses_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;