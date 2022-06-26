SELECT * FROM city; # * shows everything
SELECT Name, District, Population FROM city; # Specific columns

SELECT Name, District, Population FROM city
WHERE Population > 8000000; # Adding condition

SELECT Name, District, Population FROM city
WHERE Population > 8000000
AND Population <10000000; 

# LAB
DESC city;

SELECT *
FROM city
WHERE CountryCode = 'KOR'
AND Population > 1000000;

SELECT *
FROM city
WHERE CountryCode = 'KOR'
AND Population BETWEEN 500000 AND 1000000; # Between can set a range

SELECT *
FROM city
WHERE Name IN('Seoul', 'New York', 'Toronto'); # IN can be used to select discrete values

SELECT *
FROM city
WHERE CountryCode LIKE 'KO_'; # LIKE is used to seach characters "_" is for one character

SELECT *
FROM city
WHERE Name LIKE 'TOR%'; # "%" is for many characters

SELECT *
FROM city
WHERE CountryCode = (	SELECT CountryCode
						FROM city
						WHERE Name = 'Seoul'); #Sub Query ---> Selecting CountryCode of Seoul then listing selected CountryCode

SELECT *
FROM city
WHERE Population > ANY (	SELECT Population
							FROM city
							WHERE District = 'New York');  
                            # ANY run the quary if any one conditions meet
                            # ANY and SOME are the same
                            
SELECT *
FROM city
WHERE Population > ALL (	SELECT Population
							FROM city
							WHERE District = 'New York'); 
                            # ALL must meet all conditions                          

SELECT *
FROM city
ORDER BY Population DESC; # ASC(Ascending) is default

SELECT *
FROM city
ORDER BY CountryCode DESC, Population ASC;

#LAB
SELECT *
FROM city
WHERE CountryCode = 'KOR'
ORDER BY Population DESC;

SELECT DISTINCT CountryCode
FROM city; # Duplicated names will only show as one name

SELECT *
FROM city
ORDER BY Population DESC
LIMIT 20; # LIMIT will only show 20 data

SELECT CountryCode, MAX(Population) AS 'MAXIMUM'
FROM city
GROUP BY CountryCode; # Grouping groups

#LAB
SELECT COUNT(*)
FROM city; # Counting # of cities

SELECT AVG(Population)
FROM city;

SELECT CountryCode, MAX(Population)
FROM city
GROUP BY CountryCode
HAVING MAX(Population) > 3000000; # HAVING is a conditional statment. HAVING must be stated after GROUP BY

SELECT CountryCode, NAme, SUM(Population)
FROM city
GROUP BY CountryCode, Name WITH ROLLUP; # ROLLUP shows sub-totals