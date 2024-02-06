SELECT day, count(*) as total_assignments 
FROM assignments
WHERE total_assignments >= 10
GROUP BY day
ORDER BY day;

/*Instruction
The same query as before, but only return rows where total assignments is greater than or equal to 10.*/