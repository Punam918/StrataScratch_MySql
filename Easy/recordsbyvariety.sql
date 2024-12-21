SELECT DISTINCT VARIETY, COUNT(*) from iris
group by variety
order by variety asc;