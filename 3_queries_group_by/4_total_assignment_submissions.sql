SELECT cohort.name AS cohort, count(*) AS total_submissions
FROM cohort
LEFT OUTER JOIN students on students.cohort_id = cohort.id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohort.name
ORDER BY total_submissions DESC;