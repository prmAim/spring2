SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `products_images`;

CREATE TABLE `products_images`
(id           bigint       NOT NULL AUTO_INCREMENT,
 product_id   bigint       NOT NULL,
 path         VARCHAR(255) NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT `fk_products_images_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
 CONSTRAINT `ch_products_images_path` CHECK(path != '')
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;