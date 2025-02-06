-- You have been asked to find the three lowest distinct salaries. For example, if two people earn the same amount of money, they are counted as one.

-- Table: worker
SELECT DISTINCT salary
FROM worker
ORDER BY salary ASC
LIMIT 3;
