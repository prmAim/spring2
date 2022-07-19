SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders`
(id                     bigint        NOT NULL AUTO_INCREMENT,
user_id                 bigint        NOT NULL,
status_id               bigint        NOT NULL,
price                   DECIMAL(15,2),
delivery_price          DECIMAL(15,2),
delivery_address_id     bigint        NOT NULL,
phone_number            VARCHAR(15)   NOT NULL,
delivery_date           DATETIME      NOT NULL,
create_at               DATETIME      NOT NULL,
update_at               DATETIME      NOT NULL,
PRIMARY KEY (id),
CONSTRAINT `fk_orders_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
KEY `k_orders_status_id` (`status_id`),
KEY `k_orders_address_id` (`delivery_address_id`),
CONSTRAINT `ck_orders_price` CHECK(price >= 0),
CONSTRAINT `ck_orders_delivery_price` CHECK(delivery_price >= 0),
CONSTRAINT `ck_orders_phone_number` CHECK(phone_number != '')
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;