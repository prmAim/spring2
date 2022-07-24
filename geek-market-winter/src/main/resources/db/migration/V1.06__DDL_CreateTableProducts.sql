SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products`
(id                  bigint        NOT NULL AUTO_INCREMENT,
 category_id         bigint        NOT NULL,
 vendor_code         CHAR(8)       NOT NULL,
 title               VARCHAR(250)  NOT NULL,
 shortDescription    VARCHAR(50)   NOT NULL,
 fullDescription     VARCHAR(250)  NOT NULL,
 price               DECIMAL(15,2) DEFAULT 0.0,
 createAt            DATETIME      NOT NULL,
 updateAt            DATETIME      NOT NULL,
 PRIMARY KEY (id),
 UNIQUE KEY `UK_products_vendor_code` (`vendor_code`),
 CONSTRAINT `fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
 CONSTRAINT `ck_products_code`   CHECK(vendor_code != ''),
 CONSTRAINT `ck_products_title`  CHECK(title != ''),
 CONSTRAINT `ck_products_shortD` CHECK(shortDescription != ''),
 CONSTRAINT `ck_products_fullD`  CHECK(fullDescription != ''),
 CONSTRAINT `ck_products_price`  CHECK(price >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;


