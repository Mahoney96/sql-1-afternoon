CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(32),
    phone_number INT
);

-- INSERT STATEMENT

INSERT INTO students
(name, email, phone_number)
VALUES
('Spongebob', 'frycook@krusty.krab', 6508901)
('Squidard', 'clarinetlove@hotmail.com', 8675309)
('Patrick', 'nothingispatrick@krustykrab', 1234567)
--Select statements

SELECT * FROM students;

SELECT * FROM students 
WHERE id = 2;

SELECT name, email FROM students;

SELECT * FROM students
WHERE name IN ('Spongebob', 'Squidward')


SELECT * FROM students
WHERE id >=2;

--SQL FUNCTIONS

SELECT COUNT(*) FROM track;

SELECT SUM(miliseconds) FROM track;


SELECT MAX(milliseconds) FROM track;
SELECT MIN(milliseconds) FROM track;

SELECT AVG(unit_price) FROM track;

-- UPDATE

UPDATE students
SET name = 'Plantkon';


UPDATE students
SET name = 'Spongebob',
email = 'mermaidman@barnacle.boy'
WHERE id = 1; 

-- DELETE

DELETE FROM students
WHERE id = 3;


-- DROP

DROP TABLE IF EXISTS students;
