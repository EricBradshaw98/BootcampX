Select id, name, cohort_id
FROM students
WHERE email NOT LIKE '%@gmail.com%' AND phone IS NULL;

/*Get all of the students without a gmail.com account and a phone number.*/