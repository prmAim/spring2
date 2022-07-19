SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `orders_statuses`;

CREATE TABLE `orders_statuses`
(id           bigint      NOT NULL AUTO_INCREMENT,
 title        VARCHAR(15) NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT `ck_orders_statuses_title` CHECK(title != '')
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;