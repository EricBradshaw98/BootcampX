/*Get the total number of assistance_requests for a teacher.*/


SELECT teachers.name, count(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teachers_id

WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;