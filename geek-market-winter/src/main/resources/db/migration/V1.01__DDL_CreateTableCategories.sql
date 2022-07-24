SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories`
(`id`          bigint       NOT NULL AUTO_INCREMENT,
 `title`       VARCHAR(50)  NOT NULL,
 `description` VARCHAR(200) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE KEY `UK_categories_title` (`title`),
 CONSTRAINT `ck_categories_title` CHECK(title != '')
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;