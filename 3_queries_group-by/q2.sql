SELECT day, count(*) as total_assignments 
FROM assignments
WHERE total_assignments >= 10
GROUP BY day
ORDER BY day;