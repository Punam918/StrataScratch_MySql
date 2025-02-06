-- You have been asked to find the five highest distinct salaries. For example, if two people earn the same amount of money, they are counted as one.

-- Table: worker

select distinct salary
from worker
order by salary desc
limit 5;