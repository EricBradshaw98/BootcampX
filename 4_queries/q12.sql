/*Get the name of all teachers that performed an assistance request during a cohort.*/

SELECT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN cohorts on cohorts.id = cohort_id


GROUP BY teacher
ORDER by teacher

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;