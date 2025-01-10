select year, sum(money_spent), sum(customers_acquired) from uber_advertising
group by year
order by year;