DROP DATABASE IF EXISTS `netflux`;

CREATE DATABASE IF NOT EXISTS `netflux`;

USE `netflux`;

CREATE TABLE IF NOT EXISTS Users (
  id int(11) AUTO_INCREMENT primary key,
  userId int(22),
  email varchar(255),
  fullname nvarchar(48)
);

CREATE TABLE IF NOT EXISTS Services (
  id int(11) AUTO_INCREMENT primary key,
  serviceName varchar(32)
);

CREATE TABLE IF NOT EXISTS Subscriptions (
  id int(11) AUTO_INCREMENT primary key,
  userId int(11),
  servicesId int(11),
  FOREIGN KEY (userId) references Users(id),
  FOREIGN KEY (servicesId) references Services(id)
);

CREATE TABLE IF NOT EXISTS Media (
  id int(11) AUTO_INCREMENT primary key,
  movieTitle varchar(64),
  overview text,
  movieCover varchar(512)
);

CREATE TABLE IF NOT EXISTS MediaHost (
  id int(11) AUTO_INCREMENT primary key,
  mediaId int(11),
  serviceId int(11),
  FOREIGN KEY (mediaId) references Media(id),
  FOREIGN KEY (serviceId) references Services(id)
);

CREATE TABLE IF NOT EXISTS Reviews (
  id int(11) AUTO_INCREMENT primary key,
  userId int(11),
  mediaId int(11),
  review text,
  rating tinyint(1),
  FOREIGN KEY (userId) references Users(id),
  FOREIGN KEY (mediaId) references Media(id)
);

CREATE TABLE IF NOT EXISTS Likes (
  id int(11) AUTO_INCREMENT primary key,
  mediaId int(11),
  userId int(11),
  FOREIGN KEY (mediaId) references Media(id),
  FOREIGN KEY (userId) references Users(id)
);

CREATE TABLE IF NOT EXISTS Dislikes (
  id int(11) AUTO_INCREMENT primary key,
  mediaId int(11),
  userId int(11),
  FOREIGN KEY (mediaId) references Media(id),
  FOREIGN KEY (userId) references Users(id)
);

CREATE TABLE IF NOT EXISTS Friends (
  id int(36) AUTO_INCREMENT primary key,
  inviter int(11),
  invited int(11),
  FOREIGN KEY (inviter) references Users(id),
  FOREIGN KEY (invited) references Users(id)
);
