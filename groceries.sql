/**
SQL
	Structured Query Language
**/


/**
Grocery List
**/

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);

INSERT INTO groceries VALUES (1, "Bananas", 4, 5);
INSERT INTO groceries VALUES (2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES (3, "Apples", 2, 5);
INSERT INTO groceries VALUES (4, "Milk", 2, 3);

/* selecting */
SELECT * FROM groceries WHERE aisle > 3 ORDER BY aisle; /* select all from table*/

/* aggregating */
SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle;

/* AND/OR
SELECT * FROM groceries WHERE aisle > 1 AND quantity > 2;
*/

/*Querying IN subqueries*/
SELECT * FROM groceries WHERE name NOT IN ("Jelly", "Peanut Butter");
/*
SELECT name FROM groceries WHERE name IN (select ...);
*/

/* LIKE operator 
... WHERE name LIKE "%peanut%";
*/

/* CASE */
SELECT name, 
	CASE
		WHEN aisle = 5 THEN "fruit"
		WHEN aisle = 4 THEN "dairy"
		ELSE "other"
	END as "department"
 FROM values;