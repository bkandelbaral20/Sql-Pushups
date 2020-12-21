
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
