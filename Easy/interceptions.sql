SELECT qb AS quarterback,int
FROM  qbstats_2015_2016
WHERE  year = 2016
GROUP BY  qb
ORDER BY interceptions DESC;