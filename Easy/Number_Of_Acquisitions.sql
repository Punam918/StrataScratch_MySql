SELECT  acquired_year, acquired_quarter, COUNT(*) as n from crunchbase_acquisitions
group by  acquired_year, acquired_quarter
order by n desc;