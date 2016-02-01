-- Note: Please consult the directions for this assignment 
-- for the most explanatory version of each question.

-- 1. Select all columns for all brands in the Brands table.

SELECT * from BRANDS

--  id |    name    | founded |            headquarters            | discontinued 
-- ----+------------+---------+------------------------------------+--------------
--   1 | Ford       |    1903 | Dearborn, MI                       |             
--   2 | Chrysler   |    1925 | Auburn Hills, Michigan             |             
--   3 | Citroën    |    1919 | Saint-Ouen, France                 |             
--   4 | Hillman    |    1907 | Ryton-on-Dunsmore, England         |         1981
--   5 | Chevrolet  |    1911 | Detroit, Michigan                  |             
--   6 | Cadillac   |    1902 | New York City, NY                  |             
--   7 | BMW        |    1916 | Munich, Bavaria, Germany           |             
--   8 | Austin     |    1905 | Longbridge, England                |         1987
--   9 | Fairthorpe |    1954 | Chalfont St Peter, Buckinghamshire |         1976
--  10 | Studebaker |    1852 | South Bend, Indiana                |         1967
--  11 | Pontiac    |    1926 | Detroit, MI                        |         2010
--  12 | Buick      |    1903 | Detroit, MI                        |             
--  13 | Rambler    |    1901 | Kenosha, Washington                |         1969
--  14 | Plymouth   |    1928 | Auburn Hills, Michigan             |         2001
--  15 | Tesla      |    2003 | Palo Alto, CA                      |             
--  16 | Ford       |    1903 | Dearborn, MI                       |             
--  17 | Chrysler   |    1925 | Auburn Hills, Michigan             |             
--  18 | Citroën    |    1919 | Saint-Ouen, France                 |             
--  19 | Hillman    |    1907 | Ryton-on-Dunsmore, England         |         1981
--  20 | Chevrolet  |    1911 | Detroit, Michigan                  |             
--  21 | Cadillac   |    1902 | New York City, NY                  |             
--  22 | BMW        |    1916 | Munich, Bavaria, Germany           |             
--  23 | Austin     |    1905 | Longbridge, England                |         1987
--  24 | Fairthorpe |    1954 | Chalfont St Peter, Buckinghamshire |         1976
--  25 | Studebaker |    1852 | South Bend, Indiana                |         1967
--  26 | Pontiac    |    1926 | Detroit, MI                        |         2010
--  27 | Buick      |    1903 | Detroit, MI                        |             
--  28 | Rambler    |    1901 | Kenosha, Washington                |         1969
--  29 | Plymouth   |    1928 | Auburn Hills, Michigan             |         2001
--  30 | Tesla      |    2003 | Palo Alto, CA                      |             
-- (14 rows)


-- 2. Select all columns for all car models made by Pontiac in the Models table.

SELECT * FROM MODELS WHERE brand_name = 'Ponitiac'

--  id | year | brand_name |    name    
-- ----+------+------------+------------
--  25 | 1961 | Pontiac    | Tempest
--  27 | 1962 | Pontiac    | Grand Prix
--  36 | 1963 | Pontiac    | Grand Prix
--  42 | 1964 | Pontiac    | GTO
--  43 | 1964 | Pontiac    | LeMans
--  44 | 1964 | Pontiac    | Bonneville
--  45 | 1964 | Pontiac    | Grand Prix
--  73 | 1961 | Pontiac    | Tempest
--  75 | 1962 | Pontiac    | Grand Prix
--  84 | 1963 | Pontiac    | Grand Prix
--  90 | 1964 | Pontiac    | GTO
--  91 | 1964 | Pontiac    | LeMans
--  92 | 1964 | Pontiac    | Bonneville
--  93 | 1964 | Pontiac    | Grand Prix
-- (14 rows)



-- 3. Select the brand name and model 
--    name for all models made in 1964 from the Models table.

SELCT brand_name, name FROM models WHERE year = 1964
-- brand_name |    name     
-- ------------+-------------
--  Chevrolet  | Corvette
--  Ford       | Mustang
--  Ford       | Galaxie
--  Pontiac    | GTO
--  Pontiac    | LeMans
--  Pontiac    | Bonneville
--  Pontiac    | Grand Prix
--  Plymouth   | Fury
--  Studebaker | Avanti
--  Austin     | Mini Cooper
--  Chevrolet  | Corvette
--  Ford       | Mustang
--  Ford       | Galaxie
--  Pontiac    | GTO
--  Pontiac    | LeMans
--  Pontiac    | Bonneville
--  Pontiac    | Grand Prix
--  Plymouth   | Fury
--  Studebaker | Avanti
--  Austin     | Mini Cooper
-- (20 rows)

-- 4. Select the model name, brand name, and headquarters for the Ford Mustang 
--    from the Models and Brands tables.

SELECT models.name, models.brand_name, headquarters 
FROM models JOIN brands ON models.brand_name = brands.name 
WHERE models.name = 'Mustang' ; 

--   name   | brand_name | headquarters 
-- ---------+------------+--------------
--  Mustang | Ford       | Dearborn, MI
--  Mustang | Ford       | Dearborn, MI
--  Mustang | Ford       | Dearborn, MI
--  Mustang | Ford       | Dearborn, MI
-- (4 rows)


-- 5. Select all rows for the three oldest brands 
--    from the Brands table (Hint: you can use LIMIT and ORDER BY).

SELECT * FROM BRANDS ORDER BY founded ASC LIMIT 3;

--  id |    name    | founded |    headquarters     | discontinued 
-- ----+------------+---------+---------------------+--------------
--  10 | Studebaker |    1852 | South Bend, Indiana |         1967
--  25 | Studebaker |    1852 | South Bend, Indiana |         1967
--  13 | Rambler    |    1901 | Kenosha, Washington |         1969
-- (3 rows)

-- 6. Count the Ford models in the database (output should be a number).

SELECT COUNT(*) FROM models WHERE brand_name = 'Ford';
--     12
-- (1 row)

-- 7. Select the name of any and all car brands that are not discontinued.
SELECT * FROM brands WHERE discontinued IS NULL

--  id |   name    | founded |       headquarters       | discontinued 
-- ----+-----------+---------+--------------------------+--------------
--   1 | Ford      |    1903 | Dearborn, MI             |             
--   2 | Chrysler  |    1925 | Auburn Hills, Michigan   |             
--   3 | Citroën   |    1919 | Saint-Ouen, France       |             
--   5 | Chevrolet |    1911 | Detroit, Michigan        |             
--   6 | Cadillac  |    1902 | New York City, NY        |             
--   7 | BMW       |    1916 | Munich, Bavaria, Germany |             
--  12 | Buick     |    1903 | Detroit, MI              |             
--  15 | Tesla     |    2003 | Palo Alto, CA            |             
--  16 | Ford      |    1903 | Dearborn, MI             |             
--  17 | Chrysler  |    1925 | Auburn Hills, Michigan   |             
--  18 | Citroën   |    1919 | Saint-Ouen, France       |             
--  20 | Chevrolet |    1911 | Detroit, Michigan        |             
--  21 | Cadillac  |    1902 | New York City, NY        |             
--  22 | BMW       |    1916 | Munich, Bavaria, Germany |             
--  27 | Buick     |    1903 | Detroit, MI              |             
--  30 | Tesla     |    2003 | Palo Alto, CA            |             
-- (16 rows)

-- 8. Select rows 15-25 of the DB in alphabetical order by model name.
SELECT *
FROM models
ORDER BY name
OFFSET 14
FETCH NEXT 11 ROWS ONLY;

--  id | year | brand_name |    name     
-- ----+------+------------+-------------
--  29 | 1962 | Studebaker | Avanti
--  24 | 1961 | Studebaker | Avanti
--  92 | 1964 | Pontiac    | Bonneville
--  44 | 1964 | Pontiac    | Bonneville
--  98 | 2015 | Malibu     | Chevrolet
--  97 | 2015 | Malibu     | Chevrolet
--  33 | 1963 | Rambler    | Classic
--  81 | 1963 | Rambler    | Classic
--  67 | 1960 | Chevrolet  | Corvair
--  19 | 1960 | Chevrolet  | Corvair
--  37 | 1963 | Chevrolet  | Corvair 500
 


-- 9. Select the brand, name, and year the model's brand was 
--    founded for all of the models from 1960. Include row(s)
--    for model(s) even if its brand is not in the Brands table.
--    (The year the brand was founded should be NULL if 
--    the brand is not in the Brands table.)
SELECT brands.name, models.name, models.year FROM models 
FULL JOIN brands ON brands.name = models.brand_name
WHERE models.year = 1960;

--     name    |   name   | year 
-- ------------+----------+------
--  Chevrolet  | Corvette | 1960
--  Chevrolet  | Corvair  | 1960
--  Chevrolet  | Corvette | 1960
--  Chevrolet  | Corvair  | 1960
--  Fairthorpe | Rockette | 1960
--  Fairthorpe | Rockette | 1960
--  Chevrolet  | Corvette | 1960
--  Chevrolet  | Corvair  | 1960
--  Chevrolet  | Corvette | 1960
--  Chevrolet  | Corvair  | 1960
--  Fairthorpe | Rockette | 1960
--  Fairthorpe | Rockette | 1960
--             | Fillmore | 1960
--             | Fillmore | 1960
-- (14 rows)


-- Part 2: Change the following queries according to the specifications. 
-- Include the answers to the follow up questions in a comment below your
-- query.

-- 1. Modify this query so it shows all brands that are not discontinued
-- regardless of whether they have any models in the models table.
-- before:
    -- SELECT b.name,
    --         b.founded,
    --         m.name
    -- FROM Model AS m
    --   LEFT JOIN brands AS b
    --     ON b.name = m.brand_name
    -- WHERE b.discontinued IS NULL;

SELECT b.name, b.founded, m.name
FROM models AS m
FULL JOIN brands AS b
    ON b.name = m.brand_name
        WHERE b.discontinued IS NULL;
-----------+---------+-------------
 Ford      |    1903 | Model T
 Ford      |    1903 | Model T
 Chrysler  |    1925 | Imperial
 Chrysler  |    1925 | Imperial
 Citroën   |    1919 | 2CV
 Citroën   |    1919 | 2CV
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 Cadillac  |    1902 | Fleetwood
 Cadillac  |    1902 | Fleetwood
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 Ford      |    1903 | Thunderbird
 Ford      |    1903 | Thunderbird
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 BMW       |    1916 | 600
 BMW       |    1916 | 600
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 BMW       |    1916 | 600
 BMW       |    1916 | 600
 Ford      |    1903 | Thunderbird
 Ford      |    1903 | Thunderbird
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
 BMW       |    1916 | 600
 BMW       |    1916 | 600
 Chevrolet |    1911 | Corvair
 Chevrolet |    1911 | Corvair
 Chevrolet |    1911 | Corvette
 Chevrolet |    1911 | Corvette
           |         | Fillmore
 Chevrolet |    1911 | Corvette
:
-- 2. Modify this left join so it only selects models that have brands in the Brands table.
-- before: 
SELECT m.name,
        m.brand_name,
        b.founded
FROM brands AS b
  LEFT JOIN models AS m 
    ON b.name = m.brand_name;

-- followup question: In your own words, describe the difference between 
-- left joins and inner joins.
-- inner joins finds the overlap between two tables, and left joins finds all the
-- finds all the elements in left table and each entry's matching elements in the right table

-- 3. Modify the query so that it only selects brands that don't have any models in the models table. 
-- (Hint: it should only show Tesla's row.)
-- before: 
SELECT brands.name, founded                                                                                                                                                    
FROM brands
LEFT JOIN models ON brands.name = models.brand_name
WHERE models.name IS NULL;

--  name  | founded 
-- -------+---------
--  Tesla |    2003
--  Tesla |    2003
-- (2 rows)

-- 4. Modify the query to add another column to the results to show 
-- the number of years from the year of the model until the brand becomes discontinued
-- Display this column with the name years_until_brand_discontinued.
-- before: 
SELECT b.name,
        m.name,
        m.year,
        b.discontinued,
        (b.discontined - m.year) as years_until_brand_discontinued
FROM Models AS m
  LEFT JOIN brands AS b
    ON m.brand_name = b.name
WHERE b.discontinued IS NOT NULL;

--  name    |       name       | year | discontinued | years_until_brand_discontinued 
-- ------------+------------------+------+--------------+--------------------------------
--  Hillman    | Minx Magnificent | 1950 |         1981 |                             31
--  Hillman    | Minx Magnificent | 1950 |         1981 |                             31
--  Austin     | Mini             | 1959 |         1987 |                             28
--  Austin     | Mini             | 1959 |         1987 |                             28
--  Fairthorpe | Rockette         | 1960 |         1976 |                             16
--  Fairthorpe | Rockette         | 1960 |         1976 |                             16
--  Austin     | Mini Cooper      | 1961 |         1987 |                             26
--  Austin     | Mini Cooper      | 1961 |         1987 |                             26
--  Studebaker | Avanti           | 1961 |         1967 |                              6
--  Studebaker | Avanti           | 1961 |         1967 |                              6
--  Pontiac    | Tempest          | 1961 |         2010 |                             49
--  Pontiac    | Tempest          | 1961 |         2010 |                             49
--  Pontiac    | Grand Prix       | 1962 |         2010 |                             48
--  Pontiac    | Grand Prix       | 1962 |         2010 |                             48
--  Studebaker | Avanti           | 1962 |         1967 |                              5
--  Studebaker | Avanti           | 1962 |         1967 |                              5
--  Austin     | Mini             | 1963 |         1987 |                             24
--  Austin     | Mini             | 1963 |         1987 |                             24
--  Austin     | Mini Cooper S    | 1963 |         1987 |                             24
--  Austin     | Mini Cooper S    | 1963 |         1987 |                             24
--  Rambler    | Classic          | 1963 |         1969 |                              6
--  Rambler    | Classic          | 1963 |         1969 |                              6
--  Studebaker | Avanti           | 1963 |         1967 |                              4
--  Studebaker | Avanti           | 1963 |         1967 |                              4
--  Pontiac    | Grand Prix       | 1963 |         2010 |                             47
--  Pontiac    | Grand Prix       | 1963 |         2010 |                             47
--  Pontiac    | GTO              | 1964 |         2010 |                             46
--  Pontiac    | GTO              | 1964 |         2010 |                             46
--  Pontiac    | LeMans           | 1964 |         2010 |                             46
--  Pontiac    | LeMans           | 1964 |         2010 |                             46
--  Pontiac    | Bonneville       | 1964 |         2010 |                             46
--  Pontiac    | Bonneville       | 1964 |         2010 |                             46
--  Pontiac    | Grand Prix       | 1964 |         2010 |                             46
--  Pontiac    | Grand Prix       | 1964 |         2010 |                             46
--  Plymouth   | Fury             | 1964 |         2001 |                             37
--  Plymouth   | Fury             | 1964 |         2001 |                             37
--  Studebaker | Avanti           | 1964 |         1967 |                              3
--  Studebaker | Avanti           | 1963 |         1967 |                              4
--  Pontiac    | Grand Prix       | 1963 |         2010 |                             47
--  Pontiac    | Grand Prix       | 1963 |         2010 |                             47
--  Pontiac    | GTO              | 1964 |         2010 |                             46
--  Pontiac    | GTO              | 1964 |         2010 |                             46
--  Pontiac    | LeMans           | 1964 |         2010 |                             46
--  Pontiac    | LeMans           | 1964 |         2010 |                             46
--  Pontiac    | Bonneville       | 1964 |         2010 |                             46
--  Pontiac    | Bonneville       | 1964 |         2010 |                             46
--  Pontiac    | Grand Prix       | 1964 |         2010 |                             46
--  Pontiac    | Grand Prix       | 1964 |         2010 |                             46
--  Plymouth   | Fury             | 1964 |         2001 |                             37
--  Plymouth   | Fury             | 1964 |         2001 |                             37
--  Studebaker | Avanti           | 1964 |         1967 |                              3
--  Studebaker | Avanti           | 1964 |         1967 |                              3
--  Austin     | Mini Cooper      | 1964 |         1987 |                             23
--  Austin     | Mini Cooper      | 1964 |         1987 |                             23
--  Hillman    | Minx Magnificent | 1950 |         1981 |                             31
--  Hillman    | Minx Magnificent | 1950 |         1981 |                             31
-- Austin     | Mini             | 1959 |         1987 |                             28
--  Austin     | Mini             | 1959 |         1987 |                             28
--  Fairthorpe | Rockette         | 1960 |         1976 |                             16
--  Fairthorpe | Rockette         | 1960 |         1976 |                             16
--  Austin     | Mini Cooper      | 1961 |         1987 |                             26
--  Austin     | Mini Cooper      | 1961 |         1987 |                             26
--  Studebaker | Avanti           | 1961 |         1967 |                              6
--  Studebaker | Avanti           | 1961 |         1967 |                              6
--  Pontiac    | Tempest          | 1961 |         2010 |                             49
--  Pontiac    | Tempest          | 1961 |         2010 |                             49
--  Pontiac    | Grand Prix       | 1962 |         2010 |                             48
--  Pontiac    | Grand Prix       | 1962 |         2010 |                             48
--  Studebaker | Avanti           | 1962 |         1967 |                              5
--  Studebaker | Avanti           | 1962 |         1967 |                              5
--  Austin     | Mini             | 1963 |         1987 |                             24
--  Austin     | Mini             | 1963 |         1987 |                             24
--  Austin     | Mini Cooper S    | 1963 |         1987 |                             24
--  Austin     | Mini Cooper S    | 1963 |         1987 |                             24
--  Rambler    | Classic          | 1963 |         1969 |                              6
--  Austin     | Mini             | 1963 |         1987 |                             24
--  Austin     | Mini             | 1963 |         1987 |                             24
--  Austin     | Mini Cooper S    | 1963 |         1987 |                             24
--  Austin     | Mini Cooper S    | 1963 |         1987 |                             24
--  Rambler    | Classic          | 1963 |         1969 |                              6
--  Rambler    | Classic          | 1963 |         1969 |                              6
--  Studebaker | Avanti           | 1963 |         1967 |                              4
--  Studebaker | Avanti           | 1963 |         1967 |                              4
--  Pontiac    | Grand Prix       | 1963 |         2010 |                             47
--  Pontiac    | Grand Prix       | 1963 |         2010 |                             47
--  Pontiac    | GTO              | 1964 |         2010 |                             46
--  Pontiac    | GTO              | 1964 |         2010 |                             46
--  Pontiac    | LeMans           | 1964 |         2010 |                             46
--  Pontiac    | LeMans           | 1964 |         2010 |                             46
--  Pontiac    | Bonneville       | 1964 |         2010 |                             46
--  Pontiac    | Bonneville       | 1964 |         2010 |                             46
--  Pontiac    | Grand Prix       | 1964 |         2010 |                             46
--  Pontiac    | Grand Prix       | 1964 |         2010 |                             46
--  Plymouth   | Fury             | 1964 |         2001 |                             37
--  Plymouth   | Fury             | 1964 |         2001 |                             37
--  Studebaker | Avanti           | 1964 |         1967 |                              3
--  Studebaker | Avanti           | 1964 |         1967 |                              3
--  Austin     | Mini Cooper      | 1964 |         1987 |                             23
--  Austin     | Mini Cooper      | 1964 |         1987 |                             23
-- :
-- :

-- Part 3: Further Study

-- 1. Select the name of any brand with more than 5 models in the database.
SELECT brands.name 
FROM brands FULL JOIN models on models.brand_name= brands.name
GROUP BY brands.name HAVING COUNT(models.name) > 5; 
--results of query between 218-220
--     name    
-- ------------
--  Studebaker
--  BMW
--  Chevrolet
--  Pontiac
--  Austin
--  Ford
-- (6 rows)

-- 2. Add the following rows to the Models table.

-- year    name       brand_name
-- ----    ----       ----------
-- 2015    Chevrolet  Malibu
-- 2015    Subaru     Outback
INSERT INTO models  (year, name, brand_name)
VALUES (2015, 'Chevrolet', 'Malibu');

INSERT INTO models  (year, name, brand_name)
VALUES (2015, 'Subaru', 'Outback');  

-- 3. Write a SQL statement to create a table called `Awards`
--    with columns `name`, `year`, and `winner`. Choose
--    an appropriate datatype and nullability for each column
--   (no need to do subqueries here).
CREATE TABLE awards 
( 
Id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(100) NOT NULL,
year INTEGER NOT NULL,
winner VARCHAR(50) NOT NULL,
);

-- 4. Write a SQL statement that adds the following rows to the Awards table:

--   name                 year      winner_model_id
--   ----                 ----      ---------------
--   IIHS Safety Award    2015      the id for the 2015 Chevrolet Malibu
--   IIHS Safety Award    2015      the id for the 2015 Subaru Outback
INSERT INTO awards (name, year, winner)
VALUES ('IIHS Safety Award', 2015,                                                                                                                                                    
(SELECT id FROM models WHERE name='Malibu')

INSERT INTO awards (name, year, winner)
VALUES ('IIHS Safety Award', 2015, 
(SELECT id FROM models WHERE name='Outback')
);
-- 5. Using a subquery, select only the *name* of any model whose 
-- year is the same year that *any* brand was founded.





