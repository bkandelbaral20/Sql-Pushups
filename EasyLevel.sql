
-- 1.

-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- The CITY table is described as follows:

-- Field       Type
-- ID          NUMBER
-- Name         varchar
-- CountryCode  varchar
-- District     varchar
-- Population   number

Select * from City
where population > 100000 AND CountryCode='USA';

-- 2.
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000.
-- The CountryCode for America is USA.

SELECT Name from City
where population > 120000 AND CountryCode='USA';

-- 3.
-- Query all columns (attributes) for every row in the CITY table.

SELECT * from City;

-- 4.
-- Query all columns for a city in CITY with the ID 1661.

SELECT * from City
where id= 1661;

-- 5.
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT * from City
where CountryCode='JPN';

-- 6.
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT name from City
where CountryCode='JPN';

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

SELECT City AND STATE from Station;

-- 8.
-- Query a list of CITY names from STATION for cities that have an even ID number.
-- Print the results in any order, but exclude duplicates from the answer.

SELECT DISTINCT CITY FROM STATION
WHERE id % 2 = 0
ORDER BY CITY;

-- 9.
-- Find the difference between the total number of CITY entries in the table
-- and the number of distinct CITY entries in the table.
-- For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru',
-- there are 2 different city names: 'New York' and 'Bengalaru'. The query returns 1 , because
-- total numbers of record - number of unique city name = 3-2 = 1


SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION ;

-- 10.
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.

SELECT DISTINCT City From STATION
WHERE  city  LIKE 'A%'
   or  city  LIKE 'E%'
   or city  LIKE 'I%'
   or city  LIKE 'O%'
   or city  LIKE 'U%';


-- 11.
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT City From STATION
WHERE  city  LIKE '%A'
   or  city  LIKE '%E'
   or city  LIKE '%I'
   or city  LIKE '%O'
   or city  LIKE '%U';
