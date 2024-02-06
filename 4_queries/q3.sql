/*Instruction
Get important data about each assistance request.*/

SELECT assignments.name, (assistance_requests.completed_at - assistance_requests.started_at) as duration, students.name as student, teachers.name as teacher
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignments_id

ORDER BY duration ASC;