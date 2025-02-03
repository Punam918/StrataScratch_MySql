-- Find the complaint id for the processed complaints of type 1.

-- Table: facebook_complaints
SELECT complaint_id
FROM facebook_complaints
WHERE type = 1
  AND processed = 1;
