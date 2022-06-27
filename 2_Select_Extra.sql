SELECT *
FROM city
JOIN country ON city.CountryCode = country.Code; # JOIN ON should have a condition

#Lab
SELECT *
FROM city
JOIN country ON city.CountryCode = country.Code
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode;

SELECT LENGTH('Ian lives in Toronto'); # Calculate length
SELECT CONCAT('Ian ', 'eats ', 'pasta'); # combine characters
SELECT CONCAT('Ian ', NULL, 'pasta'); # NULL will always return NULL
SELECT LOCATE('help', 'Automatic context help is disabled'); # Finding where 'help' is
SELECT LEFT('Automatic context help is disabled', 9); # 9 characters from left side
SELECT UPPER('Automatic context help is disabled'); # change to upper letters
SELECT REPLACE('MSSQL', 'MS', 'My'); #Replacing letters
SELECT TRIM('                  MySQL                   '); # TRIM removes all space
SELECT TRIM(LEADING '$' FROM '$$$#$$MySQL#$$#####'); # TRIM(LEADING()) removes a specific character in the front)
SELECT TRIM(TRAILING '#' FROM '$$$#$$MySQL#$$#####'); # opposite of TRIM((LEADING())

SELECT FLOOR(11.88), CEIL(11.88), ROUND(13.58);
# SQRT(), POW(), EXP(), LOG(), SIN(), COS(), TAN(), ABS()

SELECT FORMAT(31168931996122.154845164, 2); # FORMAT puts a comma every 3 digits and second condition tells how many decimals we'll have

SELECT RAND(); # RAND will randomly select a number between 0 and 1
SELECT ROUND(RAND()*100, 0); # You need to add calculations to get a random number within a specific range

SELECT NOW(), CURDATE(), CURTIME();
SELECT NOW(),
DATE(NOW()),
DAY(NOW()),
SECOND(NOW()),
MONTHNAME(NOW()),
DAYOFMONTH(NOW()),
DAYOFYEAR(NOW());