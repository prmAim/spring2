SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `roles`;

INSERT INTO `roles` (`name`) VALUES ('ROLE_ADMIN');
INSERT INTO `roles` (`name`) VALUES ('ROLE_USER');
INSERT INTO `roles` (`name`) VALUES ('ROLE_MANAGER');

SET FOREIGN_KEY_CHECKS = 1;