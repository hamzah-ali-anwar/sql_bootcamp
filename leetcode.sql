-- Write a solution to find ids of products that are both low fat and recycleable
-- Return the table result in any order

CREATE DATABASE leetcode;
USE leetcode;

CREATE TABLE products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    low_fats VARCHAR(10),
    recycleable VARCHAR(10)
);

INSERT INTO products (low_fats, recycleable)
VALUES	("Y", "N"),
		("Y", "Y"),
        ("N", "Y"),
        ("Y", "Y"),
        ("N", "N");

SELECT product_id
FROM products
WHERE low_fats = "Y" AND recycleable = "Y";

-- Find the name of the customer that are not referred by the customer with id = 2
-- Return the result table in any order

CREATE TABLE customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    referee_id INT
);

INSERT INTO customer(name, referee_id)
VALUES	("Will", null),
		("Jane", null),
        ("Alex", 2),
        ("Bill", null),
        ("Zack", 1),
        ("Mark", 2);
        
SELECT name
FROM customer
WHERE referee_id != 2 OR referee_id is null;

-- Find the name, population and area of the big countries
-- Area at least three million or population of at least twenty-five million

CREATE TABLE world (
	name VARCHAR(50) PRIMARY KEY,
    continent VARCHAR(50),
    area INT,
    population INT,
    gdp BIGINT
);

INSERT INTO world(name, continent, area, population, gdp)
VALUES	("Afghanistan", "Asia", 652230, 25500100, 20343000000),
		("Albania", "Europe", 28748, 2831741, 12960000000),
		("Algeria", "Africa", 2381741, 37100000, 188681000000),
		("Andorra", "Europe", 468, 78115, 3712000000),
		("Angola", "Africa", 1246700, 20609294, 100990000000);

SELECT name, area, population
FROM world
WHERE area >= 3000000 OR population >= 25000000;

-- Find all the authors that views at least one of their own articles
-- Return the result table sorted by id in ascending order

CREATE TABLE views	(
	article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

INSERT INTO views (article_id, author_id, viewer_id, view_date)
VALUES	(1, 3, 5, "2019-08-01"),
		(1, 3, 6, "2019-08-02"),
        (2, 7, 7, "2019-08-01"),
        (2, 7, 6, "2019-08-02"),
        (4, 7, 1, "2019-07-22"),
        (3, 4, 4, "2019-07-21"),
        (3, 4, 4, "2019-07-21");
        
SELECT DISTINCT author_id
FROM views
WHERE author_id = viewer_id
ORDER BY author_id ASC

