SELECT assignment_submission.assignment_id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*) as total_requests

FROM assignments

JOIN students ON students.id = student_id
JOIN assignment_submission on assignment_submission.id = assignment_submission_id
JOIN assistance_requests on assistance_requests.id = assistance_requests_id

GROUP BY assignments.name
ORDER BY total_requests

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;