CREATE DATABASE sfiaprojectblog;


CREATE TABLE USER (
user_id INT NOT NULL AUTO_INCREMENT,
first_name varchar(30) NOT NULL,
second_name varchar(40) NOT NULL,
username varchar(20) UNIQUE NOT NULL,
email varchar(60) UNIQUE NOT NULL,
password varchar(150) NOT NULL,
PRIMARY KEY (user_id)
);


CREATE TABLE POSTS (
post_id INT NOT NULL AUTO_INCREMENT,
title varchar(40) NOT NULL,
author varchar(70) NOT NULL,
content varchar(1000) NOT NULL,
PRIMARY KEY (post_id)
);


CREATE TABLE TAG (
tag_id INT NOT NULL AUTO_INCREMENT,
post_id INT NOT NULL,
tag varchar(40) NOT NULL,
PRIMARY KEY (tag_id),
FOREIGN KEY (post_id) REFERENCES POSTS(post_id)
);


SELECT TAG.post_id POSTS.post_id 