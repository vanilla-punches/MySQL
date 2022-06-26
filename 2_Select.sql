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

