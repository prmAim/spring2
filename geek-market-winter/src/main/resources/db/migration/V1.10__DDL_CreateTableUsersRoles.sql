SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles`
(user_id bigint  NOT NULL,
 role_id bigint  NOT NULL,
 PRIMARY KEY (`user_id`,`role_id`),
 CONSTRAINT `fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
 CONSTRAINT `fk_roles_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;