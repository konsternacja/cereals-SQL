SHOW DATABASES;

CREATE DATABASE cereals;

USE cereals;

CREATE TABLE nutrition(
brand VARCHAR(255) NOT NULL,
calories INT NOT NULL,
protein INT NOT NULL,
fat INT NOT NULL,
sodium INT NOT NULL,
fiber INT NOT NULL,
carbo INT NOT NULL,
sugars INT NOT NULL,
potass INT NOT NULL,
vitamins INT NOT NULL,
PRIMARY KEY (brand)
);

CREATE TABLE other(
brand VARCHAR(255) NOT NULL,
mfr VARCHAR(255) NOT NULL,
type VARCHAR(255) NOT NULL,
shelf INT NOT NULL,
weight FLOAT NOT NULL,
cups FLOAT NOT NULL,
rating FLOAT NOT NULL,
PRIMARY KEY (brand)
);

USE cereals;

LOAD DATA LOCAL INFILE '/home/konsternacja/Git/cereals-SQL/data/cereal.csv'
INTO TABLE nutrition
FIELDS TERMINATED BY ','
LINES TERMINATED BY '/n'
IGNORE 1 ROWS
(brand, mfr, type, calories, protein, fat, sodium, fiber, carbo, sugars, potass, vitamins, shelf, weight, cups, rating);

LOAD DATA LOCAL INFILE '/home/konsternacja/Git/cereals-SQL/data/cereal.csv'
INTO TABLE nutrition
FIELDS TERMINATED BY ','
LINES TERMINATED BY '/n'
IGNORE 1 ROWS
(brand, mfr, type, shelf, weight, cups, rating);