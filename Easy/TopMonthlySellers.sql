SELECT seller_id, total_sales, product_category, market_place, sales_date 
from sales_data
WHERE sales_date between '2024-01-01' AND '2024-01-30'
group by seller_id
order by total_sales desc
limit 3 ;