-- Find SAT scores of students whose high school names do not end with 'HS'.

-- Table: sat_scores


select student_id,school, average_sat from sat_scores
where school not like '%hs';