DROP DATABASE IF EXISTS blogdb;

CREATE DATABASE blogdb;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

USE blogdb;

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `text` TEXT,
    `writerID` VARCHAR(13) NOT NULL DEFAULT '',
    `writerPW` VARCHAR(8) NOT NULL DEFAULT '',
    `admin` TINYINT(1) NOT NULL DEFAULT 0,
    `postID`INT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `cookie`;
CREATE TABLE `cookie` (
    `value` VARCHAR(255) NOT NULL DEFAULT ''
);

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `tag` VARCHAR(20) NOT NULL DEFAULT '',
    `title` VARCHAR(40) NOT NULL DEFAULT '',
    `text` TEXT,
    `writeTime` VARCHAR(20) NOT NULL DEFAULT '2000-01-01',
    `imagePath`VARCHAR(100) NOT NULL DEFAULT 'DEFAULT ASSETS IMAGE PATH',
    `imageID` INT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
        `today` INT NOT NULL DEFAULT 0,
        `total` INT NOT NULL DEFAULT 0,
        `date` VARCHAR(20) DEFAULT NULL
);
INSERT INTO `visitor` VALUES (1,199,'2023-10-29');


DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `admin` TINYINT(1) NOT NULL DEFAULT 0,
        `writerID` VARCHAR(13) NOT NULL DEFAULT '',
        `writerPW` VARCHAR(8) NOT NULL DEFAULT '',
        `text` TEXT,
        `commentID` INT NOT NULL DEFAULT 0,
        PRIMARY KEY (`id`)
);