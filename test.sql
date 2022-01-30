CREATE TABLE `users`(
    `id` INT UNSIGNED NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `age` TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `USERS` (`id`, `name`, `age`) VALUES (1, "John", 30);

INSERT INTO `USERS` (`id`, `name`, `age`) VALUES (2, "Mike", 28);

CREATE TABLE `products`(
    `id` INT UNSIGNED NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `description` TEXT NULL,
    `price` INT UNSIGNED NOT NULL,
    `count` INT UNSIGNED DEFAULT 0,
    `color` ENUM('red', 'green', 'blue') DEFAULT 'red',
    PRIMARY KEY (`id`)
);

INSERT INTO `PRODUCTS` (`id`, `title`, `description`, `price`, `count`, `color`)
VALUES (
        1,
        "Lorem Ipsum is simply dummy",
        " text of the printing and typesetting industry.",
        1200,
        3,
        'green'
)

INSERT INTO `PRODUCTS` (`id`, `title`, `description`, `price`, `count`, `color`)
VALUES (
        2,
        "Lorem Ipsum has been",
        "the industry's standard dummy text ever since the 1500s",
        2700,
        12,
        "red"
 )

INSERT INTO `PRODUCTS` (`id`, `title`, `description`, `price`, `count`, `color`)
VALUES (
        3,
        "not only five centuries",
        "remaining essentially unchanged. It was popularised in the 1960s",
        1400,
        22,
        "blue"
)

INSERT INTO `PRODUCTS` (`id`, `title`, `description`, `price`, `count`)
VALUES (
    4,
    " Lorem Ipsum passages",
    "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    7667,
    434
)

INSERT INTO `PRODUCTS` (`id`, `title`, `description`, `price`, `count`)
VALUES (
    5,
    "Contrary to popular belief,",
    "Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
    542,
    13
)

SELECT `id`, `title` FROM `products`;

CREATE INDEX `ixprice` ON `products` (`price`)

SELECT `id`, `title`, `count` FROM `products` ORDER BY `count`;

SELECT `id`, `title`, `count` FROM `products` LIMIT 2;

SELECT `id`, `title`, `count` FROM `products` LIMIT 2, 3;

SELECT `id`, `title`, `count`, `color` FROM `products` WHERE `color` = `red`

SELECT `id`, `title`, `count`, `price`, `color` FROM `products` WHERE `price` >  500;

SELECT `id`, `title`, `count`, `price`, `color` FROM `products` WHERE `title` LIKE 'not%';

SHOW CREATE TABLE `products`;