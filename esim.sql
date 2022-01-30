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
);

CREATE TABLE `user_history` (
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `product_id` INT NOT NULL UNSIGNED,
    `payment_type` ENUM('online', 'offline') NULL DEFAULT 'offline',
    `isPayed` TINYINT(1) NULL UNSIGNED DEFAULT 0,
    `address` VARCHAR(150) NOT NULL
);

CREATE TABLE `user_cart` (
    `id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
    `product_id` INT UNSIGNED NOT NULL,
    `date` DATETIME NOT NULL,
    `payment_type` ENUM('online', 'offline') NULL DEFAULT 'offline',
    `address` VARCHAR(150) NOT NULL
);


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

);

CREATE TABLE `products_images` (
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `product_id` INT NOT NULL UNSIGNED,
    `image_url` VARCHAR(150) NOT NULL,
    `title` VARCHAR(100) NOT NULL
)

CREATE TABLE `categories`(
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `position`  TINYINT NOT NULL,
    `parent_id` INT NOT NULL UNSIGNED,
)

CREATE TABLE `pages`
    `id` INT NOT NULL UNSIGNED AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `description` TEXT NULL,
    `position` TINYINT NOT NULL,
    `menu_name` VARCHAR(100) NOT NULL,
)