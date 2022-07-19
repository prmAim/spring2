SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`
(id           bigint       NOT NULL AUTO_INCREMENT,
 username     VARCHAR(255) NOT NULL,
 password     VARCHAR(512) NOT NULL,
 first_name   VARCHAR(50)  NOT NULL,
 last_name    VARCHAR(50)  NOT NULL,
 email        VARCHAR(250) NOT NULL,
 PRIMARY KEY (id),
 UNIQUE KEY `UK_users_username` (`username`),
 UNIQUE KEY `UK_users_first_last_name` (`first_name`, `last_name`),
 CONSTRAINT `ch_users_username`   CHECK(username != ''),
 CONSTRAINT `ch_users_password`   CHECK(password != ''),
 CONSTRAINT `ch_users_first_name` CHECK(first_name != ''),
 CONSTRAINT `ch_users_last_name`  CHECK(last_name != ''),
 CONSTRAINT `ch_users_email`      CHECK(email != '')
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;