SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `orders_item`;

CREATE TABLE `orders_item`
(id              bigint  NOT NULL AUTO_INCREMENT,
 quantity        bigint  NOT NULL DEFAULT 0,
 item_price      DECIMAL(15, 2),
 total_price     DECIMAL(15, 2),
 product_id      bigint  NOT NULL,
 order_id        bigint  NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT `ck_orders_item_item_price`  CHECK(item_price >= 0),
 CONSTRAINT `ck_orders_item_total_price` CHECK(total_price >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;