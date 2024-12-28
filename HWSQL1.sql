-- Exercise 1
SELECT exam_year, printf('%,.2f', AVG(grade)) as avg
FROM grades
GROUP BY exam_year;

-- Exercise 2
SELECT student_name, printf('%,.2f', AVG(grade)) AS avg, exam_year
FROM grades
WHERE exam_year = 2024
GROUP BY student_name;

-- Exercise 3
SELECT subject_name, exam_year, MIN(grade) as min, MAX(grade) as max
FROM grades
GROUP BY subject_name, exam_year;

-- Exercise 4
SELECT subject_name, exam_year, COUNT(*) as total_per_subject
FROM grades
GROUP BY subject_name, exam_year;

-- Exercise 5
SELECT subject_name, AVG(grade) AS avg
FROM grades
GROUP BY subject_name
HAVING avg > 85;

-- Exercise 6
SELECT grade, COUNT(*) as count_95
FROM grades
GROUP BY grade
HAVING grade > 90;