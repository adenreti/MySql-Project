-- 1. Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT *
FROM city 
WHERE countrycode = "USA" AND population > 100000;

-- 2. Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name 
FROM city
WHERE countrycode = "USA" AND population > 120000;

-- 3. Query all columns (attributes) for every row in the CITY table.
SELECT *
FROM city;

-- 4. Query all columns for a city in CITY with the ID 1661.
SELECT *
FROM city
WHERE id = 1661;

-- 5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT *
FROM city
WHERE countrycode = "JPN";

-- 6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT name
FROM city
WHERE countrycode = "JPN";

-- 7. Query a list of CITY and STATE from the STATION table.
SELECT city, state
FROM station;

-- 8. Query a list of CITY names from STATION for cities that have an even ID number. 
--    Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT city
FROM station
WHERE MOD(id,2)= 0;

-- 9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT (COUNT(city) - COUNT(DISTINCT city))
FROM station;

-- 10. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
--     If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT city, LENGTH(city) 
FROM STATION 
ORDER BY LENGTH(city), city LIMIT 1; 
SELECT city, LENGTH(city) 
FROM STATION ORDER BY LENGTH(city) DESC, city LIMIT 1;

-- 11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city REGEXP "^[aeiou]";

-- 12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city REGEXP "[aeiou]$";

-- 13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP "^[aeiou]";

-- 14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP "[aeiou]$";

-- 15. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
--     Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP "^[aeiou]" 
	OR city NOT REGEXP "[aeiou]$";
    
-- 16. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
--     Your result cannot contain duplicates.
SELECT DISTINCT(CITY) 
FROM STATION 
WHERE CITY NOT REGEXP '^[aeiou]' 
    AND CITY NOT REGEXP '[aeiou]$';
    
-- 17. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name
FROM employee
ORDER BY name;

-- 18. Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. 
--     Sort your result by ascending employee_id.
SELECT name
FROM employee
WHERE salary > 2000 AND months <10
ORDER BY employee_id;

-- 19. Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
--     Output one of the following statements for each record in the table:
--     Equilateral: It's a triangle with 3 sides of equal length.
--     Isosceles: It's a triangle with 2 sides of equal length.
--     Scalene: It's a triangle with 3 sides of differing lengths.
--     Not A Triangle: The given values of A, B, and C don't form a triangle.
SELECT CASE
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
WHEN A = B AND B = C THEN 'Equilateral'
WHEN A = B OR B = C OR A = C THEN 'Isosceles'
ELSE 'Scalene'
END
FROM triangles;

-- 20. Query a count of the number of cities in CITY having a Population larger than 100000.
SELECT COUNT(name)
FROM city
WHERE population > 100000;

-- 21. Query the total population of all cities in CITY where District is California.
SELECT SUM(population)
FROM city
WHERE district = "California";

-- 22. Query the average population of all cities in CITY where District is California.
SELECT AVG(population)
FROM city
WHERE district = "California";

-- 23. Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(population) - MIN(population)
FROM city;

-- 24.  

 

