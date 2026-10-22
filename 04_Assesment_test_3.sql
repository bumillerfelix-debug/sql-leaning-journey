-- CODE CREATED AS PART OF A COURSE

-- ASSESSMENT TEST 3

/*'
CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number VARCHAR(25),
	phone VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(200) UNIQUE,
	graduation_year TIMESTAMP	
);

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number VARCHAR(25),
	department VARCHAR(50) NOT NULL,
	phone VARCHAR(50) UNIQUE,
	email VARCHAR(200) UNIQUE
);

ALTER TABLE students ALTER COLUMN graduation_year TYPE INTEGER 
USING EXTRACT(YEAR FROM graduation_year)::INT;

INSERT INTO students(first_name,last_name,homeroom_number,phone,graduation_year)
VALUES('Mark','Watney','5','777-555-1234',2035);

SELECT * FROM students;

INSERT INTO teachers(first_name,last_name,homeroom_number,department,phone,email)
VALUES('Jonas','Salk','5','Biology','777-555-4321','jsalk@school.ord');

SELECT * FROM teachers;
Update teachers SET email = 'jsalk@school.org' WHERE teacher_id = 1;
*/
SELECT * FROM teachers;

