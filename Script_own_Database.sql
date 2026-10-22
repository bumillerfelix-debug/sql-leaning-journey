-- CODE CREATED AS PART OF A COURSE

-- CREATING MY OWN DATABASE

/*
-- CREATE
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE  NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	create_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);


-- INSERT
INSERT INTO account(username,password,email,create_on) 
VALUES ('Jose','password','jose@mail.com',CURRENT_TIMESTAMP);

SELECT * FROM account;
INSERT INTO job(job_name) VALUES('Astonaut')
SELECT * FROM job;
INSERT INTO job(job_name) VALUES('President')
SELECT * FROM job;

INSERT INTO account_job(user_id,job_id,hire_date) VALUES (1,1,CURRENT_TIMESTAMP);
SELECT * FROM account_job;


-- UPDATE
UPDATE account SET last_login = CURRENT_TIMESTAMP;
SELECT * FROM account;
UPDATE account SET last_login = create_on;

SELECT * FROM account;
SELECT * FROM account_job;

UPDATE account_job SET hire_date = account.create_on FROM account 
WHERE account_job.user_id = account.user_id;

SELECT * FROM account_job;

UPDATE account SET last_login = CURRENT_TIMESTAMP RETURNING email,create_on,last_login;


-- DELETE
INSERT INTO job(job_name) VALUES ('Cowboy');
SELECT * FROM job;
DELETE FROM job WHERE job_name = 'Cowboy' RETURNING job_id,job_name;
SELECT * FROM job;


-- ALTER
CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

ALTER TABLE information RENAME TO new_info;
ALTER TABLE new_info RENAME COLUMN person TO people;
SElECT * FROM new_info;
ALTER TABLE account RENAME COLUMN create_on TO created_on;
ALTER TABLE new_info ALTER COLUMN people DROP NOT NULL;
INSERT INTO new_info(title) VALUES('some new title');
SELECT * FROM new_info;


-- DROP
ALTER TABLE new_info DROP COLUMN people;
SELECT * FROM new_info;
ALTER TABLE new_info DROP COLUMN IF EXISTS people;


-- CHECK
CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK(birthdate > '1900-01-01'),
	hire_date DATE CHECK(hire_date > birthdate),
	salary INTEGER CHECK(salary > 0)
);

INSERT INTO employees(first_name,last_name,birthdate,hire_date,salary)
VALUES('Jose','Portilla','1990-11-03','2010-01-01',100);

INSERT INTO employees(first_name,last_name,birthdate,hire_date,salary)
VALUES('Sammy','Smith','1990-11-03','2010-01-01',100);

SELECT * FROM employees;


-- NULLIF
CREATE TABLE depts(first_name VARCHAR(50), department VARCHAR(50))
INSERT INTO depts(first_name,department) VALUES('Vinton','A'),('Lauren','A'),('Claire','B');
SELECT * FROM depts;

SELECT(
SUM(Case WHEN department = 'A' THEN 1 ELSE 0 END)/
SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
) AS department_ratio FROM depts;

DELETE FROM depts WHERE department = 'B';
SELECT * FROM department;
*/
SELECT(
SUM(Case WHEN department = 'A' THEN 1 ELSE 0 END)/
NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END),0)
) AS department_ratio FROM depts;


-- IMPORT AND EXPORT
/*
CREATE TABLE simple(a INT,b iNT,c INT)
*/

SELECT * FROM simple;



