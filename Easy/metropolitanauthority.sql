select employeename,totalpay,benefits from sf_public_salaries
where jobtitle like '%METROPOLITAN TRANSIT AUTHORITY%'
order by employeename;