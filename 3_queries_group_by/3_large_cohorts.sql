SELECT cohort.name as cohort_name, COUNT(students.*) as student_count
FROM cohort 
JOIN students ON cohort_id = students.cohort_id
WHERE cohort.id = cohort_id
GROUP BY cohort.name
HAVING COUNT(students.*) >= 18
ORDER BY COUNT(students.*);