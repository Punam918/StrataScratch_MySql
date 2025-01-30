
-- Given the education levels and salaries of a group of individuals, find what is the average salary for each level of education.

-- Table: google_salaries


select education, avg(salary) from google_salaries
group by education;