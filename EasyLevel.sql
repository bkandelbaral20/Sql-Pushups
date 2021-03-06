-- 1.

-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- The CITY table is described as follows:

-- Field       Type
-- ID          NUMBER
-- Name         varchar
-- CountryCode  varchar
-- District     varchar
-- Population   number

Select *
from City
where population > 100000
  AND CountryCode = 'USA';

-- 2.
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000.
-- The CountryCode for America is USA.

SELECT Name
from City
where population > 120000
  AND CountryCode = 'USA';

-- 3.
-- Query all columns (attributes) for every row in the CITY table.

SELECT *
from City;

-- 4.
-- Query all columns for a city in CITY with the ID 1661.

SELECT *
from City
where id = 1661;

-- 5.
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT *
from City
where CountryCode = 'JPN';

-- 6.
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT name
from City
where CountryCode = 'JPN';

-- 7.
-- Query a list of CITY and STATE from the STATION table.
-- The STATION table is described as follows:

-- Field       Type
-- ID          NUMBER
-- City        varchar
-- State       varchar
-- lat_N       number
-- Long_W      number

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT City AND STATE
from Station;

-- 8.
-- Query a list of CITY names from STATION for cities that have an even ID number.
-- Print the results in any order, but exclude duplicates from the answer.

SELECT DISTINCT CITY
FROM STATION
WHERE id % 2 = 0
ORDER BY CITY;

-- 9.
-- Find the difference between the total number of CITY entries in the table
-- and the number of distinct CITY entries in the table.
-- For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru',
-- there are 2 different city names: 'New York' and 'Bengalaru'. The query returns 1 , because
-- total numbers of record - number of unique city name = 3-2 = 1


SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

-- 10.
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.

SELECT DISTINCT City
From STATION
WHERE city LIKE 'A%'
   or city LIKE 'E%'
   or city LIKE 'I%'
   or city LIKE 'O%'
   or city LIKE 'U%';


-- 11.
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT City
From STATION
WHERE city LIKE '%A'
   or city LIKE '%E'
   or city LIKE '%I'
   or city LIKE '%O'
   or city LIKE '%U';

-- 12.
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u)
-- as both their first and last characters. Your result cannot contain duplicates.

SELECT distinct CITY
FROM STATION
where (CITY LIKE 'a%'
    OR CITY LIKE 'e%'
    OR CITY LIKE 'i%'
    OR CITY LIKE 'o%'
    OR CITY LIKE 'u%'
    )
  AND (CITY LIKE '%a'
    OR CITY LIKE '%e'
    OR CITY LIKE '%i'
    OR CITY LIKE '%o'
    OR CITY LIKE '%u'
    );

-- 13.
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT City
from Station
where City Not LIKE 'a%'
   OR CITY Not LIKE 'e%'
   OR CITY Not LIKE 'i%'
   OR CITY Not LIKE 'o%'
   OR CITY Not LIKE 'u%';

-- 14.
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT City
from Station
where City Not LIKE '%a'
   OR CITY Not LIKE '%e'
   OR CITY Not LIKE '%i'
   OR CITY Not LIKE '%o'
   OR CITY Not LIKE '%u';

-- 15.
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT City
from Station
where (City Not LIKE 'a%'
    OR CITY Not LIKE 'e%'
    OR CITY Not LIKE 'i%'
    OR CITY Not LIKE 'o%'
    OR CITY Not LIKE 'u%')
   Or (City Not LIKE '%a'
    OR CITY Not LIKE '%e'
    OR CITY Not LIKE '%i'
    OR CITY Not LIKE '%o'
    OR CITY Not LIKE '%u');


-- 16.
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT City
from Station
where (City Not LIKE 'a%'
    OR CITY Not LIKE 'e%'
    OR CITY Not LIKE 'i%'
    OR CITY Not LIKE 'o%'
    OR CITY Not LIKE 'u%')
  AND (City Not LIKE '%a'
    OR CITY Not LIKE '%e'
    OR CITY Not LIKE '%i'
    OR CITY Not LIKE '%o'
    OR CITY Not LIKE '%u');

-- 17.
-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three
-- characters of each name. If two or more students both have names ending in the same last three
-- characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

-- Input Format:
-- The STUDENTS table is described as follows:

--  COLUMN    TYPE
--  Id        INTEGER
--  Name      String
--  Marks     INTEGER

-- The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT (Name, 3), ASC ID;

-- 18.
-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

--  COLUMN             TYPE
--  employee_Id        INTEGER
--  Name               String
--  Months            INTEGER
--  Salary            INTEGER


-- where employee_id is an employee's ID number, name is their name, months is the total number of months they've
-- been working for the company, and salary is their monthly salary.

SELECT name
from Employee
order by Name;

-- 19.
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a
-- salary greater than $2000 per month who have been employees for less than 10 months. Sort your result
-- by ascending employee_id.

SELECT name
from Employee
where salary > 2000
  AND months < 10
Order BY employee_Id;

-- 20.
-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with  sides of equal length.
-- Isosceles: It's a triangle with  sides of equal length.
-- Scalene: It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

SELECT CASE
           WHEN (A + B <= C) OR (B + C <= A) OR (A + C <= B) THEN "Not A Triangle"
           WHEN (A = B) AND (B = C) THEN "Equilateral"
           WHEN (A = B) OR (C = A) OR (B = C) THEN "Isosceles"
           ELSE "Scalene"
           END
FROM TRIANGLES;