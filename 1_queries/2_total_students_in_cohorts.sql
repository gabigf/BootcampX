-- My solution
-- SELECT COUNT(students)
-- FROM students
-- WHERE cohort_id < 4;


-- Answer 
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);
