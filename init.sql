
 -- #1
CREATE TABLE person (person_id SERIAL PRIMARY KEY, name VARCHAR(199), age INTEGER, height INTEGER, city VARCHAR(199), favorite_color VARCHAR(199) );


-- #2
INSERT INTO person (name, age, height, favorite_color ) VALUES ('First Last', 21, 182, 'City', 'Color' );


-- #3

SELECT * FROM person ORDER BY height DESC;

-- #4
SELECT * FROM person ORDER BY height ASC;

--#5
SELECT * FROM person ORDER BY age DESC;

--#6
SELECT * FROM person WHERE age > 20;

--#7
SELECT * FROM person WHERE age = 18;

--#8
SELECT * FROM person WHERE age < 20 OR age > 30;

--#9
SELECT * FROM person WHERE age != 27;

--#10
SELECT * FROM person WHERE favorite_color != 'red';

--#11
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

--#12
SELECT * FROM person WHERE favorite_color = 'organge' OR favorite_color = 'green';

--#13
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

--#id 14
SELECT * FROM person WHERE favorite_color IN( 'yellow', 'purple');


-- PART II --


--#1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER );

--#2
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Product', 12.50, 2);

--#3
SELECT * FROM orders;

--#4
SELECT SUM(product_price * quantity) FROM orders;

--#5
SELECT SUM(product_price * quantity) FROM orders;

--#6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0; 



