SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `users_roles`;

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUE (1, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUE (2, 2);

SET FOREIGN_KEY_CHECKS = 1;