SELECT * FROM states;

SELECT * FROM regions;

SELECT state_name, population
FROM states;

SELECT state_name, population
FROM states
ORDER BY population DESC;

SELECT state_name
FROM states
WHERE region_id = 7;

SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;

SELECT state_name
FROM states
WHERE(population > 1000000 and population < 1500000);

SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;

SELECT region_name
FROM regions
WHERE region_name LIKE "%Central%";

SELECT region_name, state_name
FROM states
INNER JOIN regions
ON states.region_id = regions.id
ORDER BY region_id ASC;

![Image for data base](/week-8/database-intro/data_base.png)

#What are databases for?
Databases are for store a ton of data that would be too much for arrays or 
hashes to handle. It makes it easier to access information and keeps it in
a well ordered manner.

#What is a one-to-many relationship?
A one-to-many relationship is having a one unique ID in one table but having
another table having that ID in another with many instances of that unique key. In an example that I learned today with people and having multiple cars.
Say Bob has a unique ID of 101. We cant keep using his ID in the same table
to assign cars to him, so we add another table with that can access Bob
and assign him to the cars in that table. One Bob to many cars.

#What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a unique key and a foreign key is drawing off of the unique key. You can tell the primary because it is used once in a table and the 
foreign one can be used multiple times.

#How can you select information out of a SQL database? What are some general guidelines for that?
There are many ways to do this. The one that I used the most was SELECT (columns to select) FROM(what table) is how I start my selection process. Then there are all sorts of other sub categories that you can go from there. WHERE, BETWEEN, ORDER BY, JOIN INNER, and all other sorts of good things.
