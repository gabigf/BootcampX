SELECT AVG(total_duration) as average_total_duration
FROM 
  (SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
  FROM cohorts
  JOIN students ON cohorts.id = students.cohort_id
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
  ) as total_duration;
