CREATE VIEW testview AS
SELECT col1, col2
FROM test;
SELECT * FROM testview;

ALTER VIEW testview AS
SELECT col1, col2, col3
FROM test;
SELECT * FROM testview;

DROP VIEW testview;

#LAB
USE world;

CREATE VIEW allview AS
SELECT city.Name, country.SurfaceArea, city.population, countrylanguage.Language
FROM city
JOIN country ON city.CountryCode = country.Code
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode
WHERE city.CountryCode = 'KOR';

SELECT * FROM allview;