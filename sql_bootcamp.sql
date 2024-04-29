CREATE DATABASE sql_bootcamp;
USE sql_bootcamp;

CREATE TABLE wardrobe	(
	shirt_id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR (30),
    color VARCHAR (30),
    shirt_size VARCHAR(10),
    last_worn INT
);

INSERT INTO wardrobe(article, color, shirt_size, last_worn)
VALUES	("t-shirt", "white", "S", 10),
		("t-shirt", "green", "S", 200),
        ("polp shirt", "black", "M", 10),
        ("tank top", "blue", "S", 50),
        ("t-shirt", "pink", "S", 0),
        ("polp shirt", "red", "M", 5),
        ("tank top", "white", "S", 200),
        ("tank top", "blue", "M", 15);
        
-- Updating artcile from polp shirt to polo shirt
UPDATE wardrobe
SET article = "polo shirt"
WHERE shirt_id = 3 OR shirt_id = 6;

-- Adding a new purple polo shirt, size M and last worn 50 days ago

INSERT INTO wardrobe(article, color, shirt_size, last_worn)
VALUES	("polo shirt", "purple", "M", 50);

-- Select all shirts but only print out article and color

SELECT article, color 
FROM wardrobe;

-- Select all medium shirts, print out everything but shirt_id

SELECT shirt_id
FROM wardrobe
WHERE shirt_size = "M";

-- Update all polo shirts, change their size to L

UPDATE wardrobe
SET shirt_size = "L"
WHERE article = "polo shirt";

-- Update the shirt last worn 15 days ago to 0 days

UPDATE wardrobe
SET last_worn = 0
WHERE last_worn = 15;

-- Update all white shirts, change size to XS and color to off-white

UPDATE wardrobe
SET color = "off-white", shirt_size = "XS"
WHERE color = "white";

-- Delete all old shirts last worn 200 days ago

DELETE 
FROM wardrobe
WHERE last_worn = 200;

-- Delete all tank tops

DELETE 
FROM wardrobe
WHERE article = "tank top";

-- Delete all shirts

DELETE 
FROM wardrobe;

-- Drop the entire table

DROP TABLE wardrobe;

-- Checking for above table
show tables;
DESC wardrobe;
