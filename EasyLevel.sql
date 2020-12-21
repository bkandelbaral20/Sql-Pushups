
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