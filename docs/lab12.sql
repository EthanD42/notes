INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;


SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- part 4
SELECT course_name || ' - ' || semester AS Course_Semester
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Fri%';

SELECT * 
FROM assignments
WHERE due_date > CURRENT_DATE;

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_id, course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

SELECT course_name, UPPER(course_name) AS uppercase_course_name
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT *
FROM assignments
WHERE due_date IS NULL;
