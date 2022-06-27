CREATE TABLE city_2 AS SELECT * FROM city; # creating 'city_2' and copying 'city' data into 'city_2' 
SELECT * FROM city_2;

CREATE DATABASE ian;
USE ian;
SELECT * FROM test;

# A way of creating a table
CREATE TABLE test_2(
	id INT NOT NULL PRIMARY KEY,
    col1 INT NULL,
    col2 FLOAT NULL,
    col3 VARCHAR(45) NULL
    );
SELECT * FROM test_2;

ALTER TABLE test_2
ADD col4 INT NULL;

SELECT * FROM test_2;

DESC test_2;

ALTER TABLE test_2
MODIFY col4 VARCHAR(45) NULL;

DESC test_2;

ALTER TABLE test_2
DROP col4;

SELECT * FROM test_2;