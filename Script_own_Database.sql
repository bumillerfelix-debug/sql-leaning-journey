-- CODE CREATED AS PART OF A COURSE

-- CREATING MY OWN DATABASE

/*
-- CREATING TABLES
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE  NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	create_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
)


-- INSERT INFORMATIONS IN THE TABLES
INSERT INTO account(username,password,email,create_on) 
VALUES ('Jose','password','jose@mail.com',CURRENT_TIMESTAMP);

SELECT * FROM account;
INSERT INTO job(job_name) VALUES('Astonaut')
SELECT * FROM job;
INSERT INTO job(job_name) VALUES('President')
SELECT * FROM job;

INSERT INTO account_job(user_id,job_id,hire_date) VALUES (1,1,CURRENT_TIMESTAMP);
SELECT * FROM account_job;


-- UPDATE THE INFORMATIONS IN THE TABLES
UPDATE account SET last_login = CURRENT_TIMESTAMP;
SELECT * FROM account;
UPDATE account SET last_login = create_on;

SELECT * FROM account;
SELECT * FROM account_job;

UPDATE account_job SET hire_date = account.create_on FROM account 
WHERE account_job.user_id = account.user_id;

SELECT * FROM account_job;

UPDATE account SET last_login = CURRENT_TIMESTAMP RETURNING email,create_on,last_login;

*/
-- DELETE INFORMATIONS FROM THE TABLES

