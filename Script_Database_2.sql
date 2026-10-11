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
SELECT memid,surname,firstname,joindate FROM cd.members WHERE joindate >= '2012-09-01';
SELECT DISTINCT(surname) FROM cd.members ORDER BY surname LIMIT 10;
SELECT MAX(joindate) AS latest_signup FROM cd.members;
SELECT COUNT(guestcost) FROM cd.facilities WHERE guestcost >= 10;

SELECT facid,SUM(slots) FROM cd.bookings WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01' 
GROUP BY facid ORDER BY SUM(slots);

SELECT facid,SUM(slots) AS total_slots FROM cd.bookings GROUP BY facid 
HAVING SUM(slots) > 1000 ORDER BY facid;

SELECT starttime,cd.facilities.name FROM cd.bookings INNER JOIN cd.facilities 
ON cd.facilities.facid = cd.bookings.facid WHERE DATE(starttime) = DATE '2012-09-21' 
AND cd.facilities.facid IN (0,1);

SELECT firstname,surname,starttime FROM cd.members 
INNER JOIN cd.bookings ON cd.members.memid = cd.bookings.memid
WHERE firstname = 'David' AND surname = 'Farrell';


-- CREATING DATABASES AND TABLES




