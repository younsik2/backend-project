CREATE TABLE users(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
email VARCHAR (100) NOT NULL UNIQUE KEY,
Password VARCHAR (300) NOT NULL, 
name VARCHAR (50) NOT NULL, 
phone_number VARCHAR (50) NOT NULL, 
date_of_birth VARCHAR (50) NULL, 
gender VARCHAR (50) NULL, 
dormancy_prevention_period INT NULL
)


CREATE TABLE product (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_code VARCHAR (100) NOT NULL,
product_type VARCHAR (100) NOT NULL,
category VARCHAR (100) NOT NULL,
gender VARCHAR (50) NOT NULL,
title VARCHAR (100) NOT NULL,
price INT NOT NULL,
isdiscounted VARCHAR (50) NOT NULL,
discount_percent INT,
discounted_price INT,
color VARCHAR (50) NOT NULL,
size VARCHAR (50) NOT NULL,
keyword VARCHAR (500) NULL
)


CREATE TABLE informations (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_id INT NOT NULL,
contents VARCHAR (3000) NOT NULL,
material VARCHAR (500) NOT NULL,
color VARCHAR (50) NOT NULL,
size VARCHAR (50) NOT NULL,
manufacturer VARCHAR (100) NOT NULL,
country_of_manufacture VARCHAR (100) NOT NULL,
caution VARCHAR (300) NOT NULL,
guarantee VARCHAR (300) NOT NULL,
service_information VARCHAR (300) NOT NULL
)

CREATE TABLE images (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_id INT NOT NULL,
main_url VARCHAR (1000) NULL,
urls VARCHAR (3000) NULL
)

CREATE TABLE cart (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
product_id INT NOT NULL,
count INT NOT NULL,
size VARCHAR (50) NOT NULL
)
