-- CREATE TABLE cohort (
--   id SERIAL PRIMARY KEY NOT NULL,
--   name VARCHAR(255),
--   start_date DATE,
--   end_date DATE
-- );
  

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  age INTEGER,
  email VARCHAR(255),
  phone VARCHAR(255),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohort(id) ON DELETE CASCADE
);