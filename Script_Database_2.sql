-- CODE CREATED AS PART OF A COURSE

-- SECOND DATABASE


-- ASSESMENT TEST 2
SELECT * FROM cd.facilities;
SELECT name,membercost FROM cd.facilities;
SELECT * FROM cd.facilities WHERE membercost != 0;

SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities 
WHERE membercost < (monthlymaintenance/50) AND membercost != 0;

SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';

SELECT * FROM cd.facilities WHERE facid IN(1,5);



