SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `users`;

INSERT INTO `users` (`username`, `password`, `first_name`, `last_name`, `email`)
VALUES ('user01', '$2a$10$JDu9MA5VmRISh/1GfgmSj.0Gn.vLif9D/RuZPnIKhPmc040a64u7u', 'f_user01', 'l_name01', 'user01@mail.ru');
INSERT INTO `users` (`username`, `password`, `first_name`, `last_name`, `email`)
VALUES ('user02', '$2a$10$JDu9MA5VmRISh/1GfgmSj.0Gn.vLif9D/RuZPnIKhPmc040a64u7u', 'f_user02', 'l_name02', 'user02@mail.ru');

SET FOREIGN_KEY_CHECKS = 1;