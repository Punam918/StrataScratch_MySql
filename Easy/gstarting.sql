-- Find all records with words that start with the letter 'g'.

-- Output words1 and words2 if any of them satisfies the condition.

-- Table: google_word_lists

select * from google_word_lists
where words1 like 'g%' or words2 like 'g%';