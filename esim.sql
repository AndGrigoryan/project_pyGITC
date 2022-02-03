users,
user_history,
user_cart,
jobs,
products,
pages,
tenders,

CREATE TABLE `users` (
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(24) NOT NULL,
    `surname` VARCHAR(34)   NOT NULL,
    `phone_number` INT UNSIGNED NOT NULL UNIQUE,
    `card_number` INT UNSIGNED NOT NULL,
    `gender` ENUM('m', 'f') NULL DEFAULT 'm'
    `birthdate` DATE NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `address` VARCHAR(150)  NULL

    PRIMARY KEY(id)
);

INSERT INTO `users` (`name`, `surname`, `phone_number, `card_number`, `gender`, `birthdate`, `email`, `address`)
    VALUES ("Carl", "Johnson", 3727730039, 4199353398920807, "m", 1968-3-14, "cj@gmail.com",  "344 Schultz Hollow Apt. 608");

INSERT INTO `users` (`name`, `surname`, `phone_number, `card_number`, `birthdate`, `email`, `address`)
    VALUES ("Sean", "Johnson", 0179010815481, 4522348273350979, 1965-8-21, "sweet_john@gmail.com", "5978 Kertzmann Heights");

INSERT INTO `users` (`name`, `surname`, `phone_number, `card_number`, `gender`, `birthdate`, `email`, `address`)
    VALUES ("Kendl", "Johnson", 74316334447, 4946025489556064, "f", 1980-5-17, "kj@gmail.com", "75997 Jerrod Park Suite 991");

INSERT INTO `users` (`name`, `surname`, `phone_number, `card_number`, `gender`, `birthdate`, `email`, `address`)
VALUES ("Cesar", "Vialpando", 381661785840, 4634655346748483, "m", 2000-11-26, "cesar@gmail.com", "50038 Gail Ranch Apt. 225");

INSERT INTO `users` (`name`, `surname`, `phone_number, `card_number`, `gender`, `birthdate`, `email`, `address`)
    VALUES ("Lance", "Wilson", 5053819532070, 4845194984582546, "m", 1999-12-31, "lance@gmail.com", "81755 Isac Spur Suite 106");

CREATE TABLE `user_history` (
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `product_id` INT NOT NULL UNSIGNED,
    `payment_type` ENUM('online', 'offline') NULL DEFAULT 'offline',
    `isPayed` TINYINT(1) NULL UNSIGNED DEFAULT 0,
    `address` VARCHAR(150) NOT NULL

    PRIMARY KEY(id)
);

INSERT INTO `user_history` (`product_id`, `payment_type`, `isPayed`, `address`)
    VALUES(5, "online", 0, "970 Brandt Lodge Suite 057");

INSERT INTO `user_history` (`product_id`, `payment_type`, `isPayed`, `address`)
    VALUES(3, "online", 1, "75997 Jerrod Park Suite 991");

INSERT INTO `user_history` (`product_id`, `payment_type`, `isPayed`, `address`)
    VALUES(2, "offline", 1, "9180 Pollich Trail Apt. 680");

INSERT INTO `user_history` (`product_id`, `payment_type`, `isPayed`, `address`)
    VALUES(4, "online", 1, "4311 Rosalind Lodge Suite 035");

INSERT INTO `user_history` (`product_id`, `payment_type`, `isPayed`, `address`)
    VALUES(1, "online", 0, "81755 Isac Spur Suite 106");


CREATE TABLE `user_cart` (
    `id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
    `product_id` INT UNSIGNED NOT NULL,
    `date` DATETIME NOT NULL,
    `payment_type` ENUM('online', 'offline') NULL DEFAULT 'offline',
    `address` VARCHAR(150) NOT NULL

    PRIMARY KEY(id)
);

INSERT INTO `user_cart` (`product_id`, `date`, `payment_type`, `address`)
    VALUES(1, 03-02-2022, "online", "344 Schultz Hollow Apt. 608");

INSERT INTO `user_cart` (`product_id`, `date`, `payment_type`, `address`)
    VALUES(4, 01-01-2022, "offline", "9180 Pollich Trail Apt. 680");

INSERT INTO `user_cart` (`product_id`, `date`, `payment_type`, `address`)
    VALUES(2, 21-01-2022, "offline", "50038 Gail Ranch Apt. 225");

INSERT INTO `user_cart` (`product_id`, `date`, `payment_type`, `address`)
    VALUES(3, 11-11-2021, "online", "81755 Isac Spur Suite 106");

INSERT INTO `user_cart` (`product_id`, `date`, `payment_type`, `address`)
    VALUES(5, 14-12-2021, "online", "970 Brandt Lodge Suite 057");


CREATE TABLE `products` (
    `id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(24) NOT NULL,
    `count` int UNSIGNED NULL DEFAULT 0,
    `price` INt UNSIGNED NOT NULL,
    `product_images_id` INT UNSIGNED NOT NULL,
    `ingredients` VARCHAR NULL,
    `produced_in` VARCHAR(100) NULL DEFAULT 'Armenia',
    `code` INT UNSIGNED NOT NULL,
    `description` TEXT NULL,

    PRIMARY KEY(id)
);

INSERT INTO `products` (`name`, `count`, `price`, `product_images_id`, `code`)
    VALUES("Տորթ «Դան Դեսերտ» Կարամել", 100, 5560, 1, 4850006490260, )

INSERT INTO `products` (`name`, `count`, `price`, `product_images_id`, `code`)
    VALUES("Սուրճ «Չայկոֆֆ» Մարակաջի", 12000, 14150, 2, 2900000205802,)

INSERT INTO `products` (`name`, `count`, `price`, `product_images_id`, `ingredients`, `produced_in`, `code`, `description`)
    VALUES("Կոնյակ «Նոյ» կոլեկցիոն 50տ", 10, 1250000, 3, "Կոնյակի թորվածք, փափկեցված ջուր, շաքարի օշարակ:", "Armenia", 4850031000472, "Պահել +5°C-ից ոչ ցածր ջերմաստիճանում և ոչ ավել, քան 85% օդի հարաբերական խոնավության պայմաններում:")

INSERT INTO `products` (`name`, `count`, `price`, `product_images_id`, `produced_in`, `code`, `description`)
    VALUES("Վիսկի «Ջեք Դենիելս» Հանի 0.7լ", 5, 18950, 4, 5099873103197, "Պահպանել +5°C-ից +20°C ջերմաստիճանի և ոչ ավել, քան 85% օդի հարաբերական խոնավության պայմաններում:")

INSERT INTO `products` (`name`, `count`, `price`, `product_images_id`, `produced_in`, `code`)
    VALUES("Կոնստրուկտոր «Լեգո» Նինջագո 71737", 256, 33220, 5, "China", 5702016888768)

CREATE TABLE `products_images` (
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `product_id` INT NOT NULL UNSIGNED,
    `image_url` VARCHAR(150) NOT NULL,
    `title` VARCHAR(100) NOT NULL

    PRIMARY KEY(id)
);

CREATE TABLE `categories`(
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `position`  TINYINT NOT NULL,
    `parent_id` INT NOT NULL UNSIGNED,

    PRIMARY KEY(id)
);

INSERT INTO `categories`(`name`, `position`, `parent_id`)
    VALUES("Հաց և հացաբուլկեղեն", 1)

INSERT INTO `categories`(`name`, `position`, `parent_id`)
    VALUES("Աղցաններ և տաք ուտեստներ", 2)

INSERT INTO `categories`(`name`, `position`, `parent_id`)
    VALUES("Քաղցրավենիք", 3 )

INSERT INTO `categories`(`name`, `position`, `parent_id`)
    VALUES("Թեյ և սուրճ", 4 )


INSERT INTO `categories`(`name`, `position`, `parent_id`)
    VALUES("Ալկոհոլային խմիչքներ", 5)

CREATE TABLE `pages`
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `description` TEXT NULL,
    `position` TINYINT NOT NULL,
    `menu_name` VARCHAR(100) NOT NULL,

    PRIMARY KEY(id)
);