USE cereals;

-- Creating table 'nutrition'
CREATE TABLE IF NOT EXISTS main (
    brand VARCHAR(255),
    mfr VARCHAR(1),
    type VARCHAR(1),
    calories INT,
    protein INT,
    fat INT,
    sodium INT,
    fiber FLOAT,
    carbo FLOAT,
    sugars INT,
    potass INT,
    vitamins INT,
    shelf INT,
    weight FLOAT,
    cups FLOAT,
    rating FLOAT,
    PRIMARY KEY (brand)
);


LOAD DATA LOCAL INFILE '/home/konsternacja/Git/cereals-SQL/data/cereal.csv'
INTO TABLE main
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

select * from main;

