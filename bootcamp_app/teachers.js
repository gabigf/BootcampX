const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const values = [`%${cohortName}%`];
const queryString = `
SELECT DISTINCT teachers.name as teachers, cohorts.name as name
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teachers;
`;


pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
   console.log(`${user.name}: ${user.teachers}`);
  })
}).catch(err => console.error('query error', err.stack));